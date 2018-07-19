ADDON_SETS = {
  [1] = { 1 },
  [2] = { 2 },
  [3] = { 1, 2 },
  [4] = { 3 },
  [5] = { 1, 3 },
  [6] = { 2, 3 },
  [7] = { 1, 2, 3 }
}

outfitWindow = nil
outfit = nil
outfits = nil
outfitCreature = nil
currentOutfit = 1

addons = nil
currentColorBox = nil
currentClotheButtonBox = nil
colorBoxes = {}

mount = nil
mounts = nil
mountCreature = nil
currentMount = 1

lighting = nil
lightings = nil
currentLighting = 1

aura = nil
auras = nil
currentAura = 1

function init()
  connect(g_game, {
    onOpenOutfitWindow = create,
    onGameEnd = destroy
  })
end

function terminate()
  disconnect(g_game, {
    onOpenOutfitWindow = create,
    onGameEnd = destroy
  })
  destroy()
end

function updateMount()
  if table.empty(mounts) or not mount then
    return
  end
  local nameMountWidget = outfitWindow:getChildById('mountName')
  nameMountWidget:setText(mounts[currentMount][2])

  mount.type = mounts[currentMount][1]
  mountCreature:setOutfit(mount)
end

function updateLighting()
  if table.empty(lightings) or not lighting then
    return
  end
  local nameLightingWidget = outfitWindow:getChildById('lightingName')
  nameLightingWidget:setText('#' .. lightings[currentLighting][1])
  local imageLighting = outfitWindow:getChildById('lightingBox'):setImageSource('/images/game/effects/lighting/'..lightings[currentLighting][1])
  if lightings[currentLighting][1] and lightings[currentLighting][1] > 0 then
	local imageLightingLook = outfitWindow:getChildById('lightingOnOutfit'):setImageSource('/images/game/effects/lighting/'..lightings[currentLighting][1])
  end
  --mountCreature:setOutfit(lighting)
end

function updateAura()
  if table.empty(auras) or not aura then
    return
  end
  local nameAuraWidget = outfitWindow:getChildById('auraName')
  nameAuraWidget:setText('#' .. auras[currentAura][1])
  local imageAura = outfitWindow:getChildById('auraBox'):setImageSource('/images/game/effects/aura/'..auras[currentAura][1])
  if auras[currentAura][1] and auras[currentAura][1] > 0 then
	local imageAuraLook = outfitWindow:getChildById('auraOnOutfit'):setImageSource('/images/game/effects/aura/'..auras[currentAura][1])
  end
  --mountCreature:setOutfit(lighting)
end

function dump(o)
   if type(o) == 'table' then
      local s = '{ '
      for k,v in pairs(o) do
         if type(k) ~= 'number' then k = '"'..k..'"' end
         s = s .. '['..k..'] = ' .. dump(v) .. ','
      end
      return s .. '} '
   else
      return tostring(o)
   end
end

function create(creatureOutfit, outfitList, creatureMount, mountList, lightingList, auraList)
  if outfitWindow and not outfitWindow:isHidden() then
    return
  end

  outfitCreature = creatureOutfit
  mountCreature = creatureMount
  outfits = outfitList
  mounts = mountList
  lightings = lightingList
  auras = auraList
 -- g_game.talk('!b ss')
  destroy()

  outfitWindow = g_ui.displayUI('outfitwindow')
   --outfitWindow:getChildById('lightingName'):setText(dump(lightingList))
   g_logger.info(dump(lightingList))
 
  local colorBoxPanel = outfitWindow:getChildById('colorBoxPanel')

  -- setup outfit/mount display boxs
  local outfitCreatureBox = outfitWindow:getChildById('outfitCreatureBox')
  if outfitCreature then
    outfit = outfitCreature:getOutfit()
    outfitCreatureBox:setCreature(outfitCreature)
  else
    outfitCreatureBox:hide()
    outfitWindow:getChildById('outfitName'):hide()
    outfitWindow:getChildById('outfitNextButton'):hide()
    outfitWindow:getChildById('outfitPrevButton'):hide()
  end

  local mountCreatureBox = outfitWindow:getChildById('mountCreatureBox')
  if mountCreature then
    mount = mountCreature:getOutfit()
    mountCreatureBox:setCreature(mountCreature)
  else
    mountCreatureBox:hide()
    outfitWindow:getChildById('mountName'):hide()
    outfitWindow:getChildById('mountNextButton'):hide()
    outfitWindow:getChildById('mountPrevButton'):hide()
  end

  -- set addons
  addons = {
    [1] = {widget = outfitWindow:getChildById('addon1'), value = 1},
    [2] = {widget = outfitWindow:getChildById('addon2'), value = 2},
    [3] = {widget = outfitWindow:getChildById('addon3'), value = 4}
  }

  for _, addon in pairs(addons) do
    addon.widget.onCheckChange = function(self) onAddonCheckChange(self, addon.value) end
  end
  
 outfitWindow:getChildById('showLighting').onCheckChange = function(self) onLightingCheckChange(self) end
 outfitWindow:getChildById('showAura').onCheckChange = function(self) onAuraCheckChange(self) end

  if outfit.addons and outfit.addons > 0 then
    for _, i in pairs(ADDON_SETS[outfit.addons]) do
      addons[i].widget:setChecked(true)
    end
  end

  -- hook outfit sections
  currentClotheButtonBox = outfitWindow:getChildById('head')
  outfitWindow:getChildById('head').onCheckChange = onClotheCheckChange
  outfitWindow:getChildById('primary').onCheckChange = onClotheCheckChange
  outfitWindow:getChildById('secondary').onCheckChange = onClotheCheckChange
  outfitWindow:getChildById('detail').onCheckChange = onClotheCheckChange

  -- populate color panel
  for j=0,6 do
    for i=0,18 do
      local colorBox = g_ui.createWidget('ColorBox', colorBoxPanel)
      local outfitColor = getOutfitColor(j*19 + i)
      colorBox:setImageColor(outfitColor)
      colorBox:setId('colorBox' .. j*19+i)
      colorBox.colorId = j*19 + i

      if j*19 + i == outfit.head then
        currentColorBox = colorBox
        colorBox:setChecked(true)
      end
      colorBox.onCheckChange = onColorCheckChange
      colorBoxes[#colorBoxes+1] = colorBox
    end
  end

  -- set current outfit/mount
  currentOutfit = 1
  for i=1,#outfitList do
    if outfit and outfitList[i][1] == outfit.type then
      currentOutfit = i
      break
    end
  end
  currentMount = 1
  for i=1,#mountList do
    if mount and mountList[i][1] == mount.type then
      currentMount = i
      break
    end
  end
  
  if not currentLighting or not lighting then
	  currentLighting = 1
	  lighting = 0
	  for i=1,#lightingList do
		if lightingList[i][1] and i == 1 then
		  currentLighting = 1
		  break
		end
	  end
  end
  
  if not currentAura or not aura then
	  currentAura = 1
	  aura = 0
	  for i=1,#auraList do
		if auraList[i][1] and i == 1 then
		  currentAura = 1
		  break
		end
	  end
  end
  

  updateOutfit()
  updateMount()
  updateLighting()
  updateAura()
end

function destroy()
  if outfitWindow then
    outfitWindow:destroy()
    outfitWindow = nil
    outfitCreature = nil
    mountCreature = nil
    currentColorBox = nil
    currentClotheButtonBox = nil
    colorBoxes = {}
    addons = {}
  end
end

function randomize()
  local outfitTemplate = {
    outfitWindow:getChildById('head'),
    outfitWindow:getChildById('primary'),
    outfitWindow:getChildById('secondary'),
    outfitWindow:getChildById('detail')
  }

  for i = 1, #outfitTemplate do
    outfitTemplate[i]:setChecked(true)
    colorBoxes[math.random(1, #colorBoxes)]:setChecked(true)
    outfitTemplate[i]:setChecked(false)
  end
  outfitTemplate[1]:setChecked(true)
end

function accept()
  if mount then outfit.mount = mount.type end
  g_game.changeOutfit(outfit)

  --:recursiveGetChildById('value')
  if not lightings[currentLighting][1] then
	 lightings[currentLighting][1] = 0
  end  
  if not auras[currentAura][1] then
	 auras[currentAura][1] = 0
  end    
  g_game.talk('!current '..lightings[currentLighting][1]..','..auras[currentAura][1]..'')
  g_logger.info('!current '..lightings[currentLighting][1]..','..auras[currentAura][1]..'')

  destroy()
end

function nextOutfitType()
  if not outfits then
    return
  end
  currentOutfit = currentOutfit + 1
  if currentOutfit > #outfits then
    currentOutfit = 1
  end
  updateOutfit()
end

function previousOutfitType()
  if not outfits then
    return
  end
  currentOutfit = currentOutfit - 1
  if currentOutfit <= 0 then
    currentOutfit = #outfits
  end
  updateOutfit()
end

function nextMountType()
  if not mounts then
    return
  end
  currentMount = currentMount + 1
  if currentMount > #mounts then
    currentMount = 1
  end
  updateMount()
end

function previousMountType()
  if not mounts then
    return
  end
  currentMount = currentMount - 1
  if currentMount <= 0 then
    currentMount = #mounts
  end
  updateMount()
end

function nextLighting()
  if not lightings then
    return
  end
  currentLighting = currentLighting + 1
  if currentLighting > #lightings then
    currentLighting = 1
  end
  updateLighting()
end

function previousLighting()
  if not lightings then
    return
  end
  currentLighting = currentLighting - 1
  if currentLighting <= 0 then
    currentLighting = #lightings
  end
  updateLighting()
end

function nextAura()
  if not auras then
    return
  end
  currentAura = currentAura + 1
  if currentAura > #auras then
    currentAura = 1
  end
  updateAura()
end

function previousAura()
  if not auras then
    return
  end
  currentAura = currentAura - 1
  if currentAura <= 0 then
    currentAura = #auras
  end
  updateAura()
end


function onAddonCheckChange(addon, value)
  if addon:isChecked() then
    outfit.addons = outfit.addons + value
  else
    outfit.addons = outfit.addons - value
  end
  outfitCreature:setOutfit(outfit)
end

function onLightingCheckChange(widget)
  if widget:isChecked() then
      outfitWindow:getChildById('lightingOnOutfit'):setVisible(true)
  else
      outfitWindow:getChildById('lightingOnOutfit'):setVisible(false)
  end
end

function onAuraCheckChange(widget)
  if widget:isChecked() then
      outfitWindow:getChildById('auraOnOutfit'):setVisible(true)
  else
      outfitWindow:getChildById('auraOnOutfit'):setVisible(false)
  end
end

function onColorCheckChange(colorBox)
  if colorBox == currentColorBox then
    colorBox.onCheckChange = nil
    colorBox:setChecked(true)
    colorBox.onCheckChange = onColorCheckChange
  else
    currentColorBox.onCheckChange = nil
    currentColorBox:setChecked(false)
    currentColorBox.onCheckChange = onColorCheckChange

    currentColorBox = colorBox

    if currentClotheButtonBox:getId() == 'head' then
      outfit.head = currentColorBox.colorId
    elseif currentClotheButtonBox:getId() == 'primary' then
      outfit.body = currentColorBox.colorId
    elseif currentClotheButtonBox:getId() == 'secondary' then
      outfit.legs = currentColorBox.colorId
    elseif currentClotheButtonBox:getId() == 'detail' then
      outfit.feet = currentColorBox.colorId
    end

    outfitCreature:setOutfit(outfit)
  end
end

function onClotheCheckChange(clotheButtonBox)
  if clotheButtonBox == currentClotheButtonBox then
    clotheButtonBox.onCheckChange = nil
    clotheButtonBox:setChecked(true)
    clotheButtonBox.onCheckChange = onClotheCheckChange
  else
    currentClotheButtonBox.onCheckChange = nil
    currentClotheButtonBox:setChecked(false)
    currentClotheButtonBox.onCheckChange = onClotheCheckChange

    currentClotheButtonBox = clotheButtonBox

    local colorId = 0
    if currentClotheButtonBox:getId() == 'head' then
      colorId = outfit.head
    elseif currentClotheButtonBox:getId() == 'primary' then
      colorId = outfit.body
    elseif currentClotheButtonBox:getId() == 'secondary' then
      colorId = outfit.legs
    elseif currentClotheButtonBox:getId() == 'detail' then
      colorId = outfit.feet
    end
    outfitWindow:recursiveGetChildById('colorBox' .. colorId):setChecked(true)
  end
end

function updateOutfit()
  if table.empty(outfits) or not outfit then
    return
  end
  local nameWidget = outfitWindow:getChildById('outfitName')
  nameWidget:setText(outfits[currentOutfit][2])

  local availableAddons = outfits[currentOutfit][3]

  local prevAddons = {}
  for k, addon in pairs(addons) do
    prevAddons[k] = addon.widget:isChecked()
    addon.widget:setChecked(false)
    addon.widget:setEnabled(false)
  end
  outfit.addons = 0

  if availableAddons > 0 then
    for _, i in pairs(ADDON_SETS[availableAddons]) do
      addons[i].widget:setEnabled(true)
      addons[i].widget:setChecked(true)
    end
  end

  outfit.type = outfits[currentOutfit][1]
  outfitCreature:setOutfit(outfit)
end

