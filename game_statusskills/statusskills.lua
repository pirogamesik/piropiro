statusSkillsWindow = nil
statusSkillsButton = nil
statusSkillsTable = {}
statusRemoveTable = {}

function init()
  connect(LocalPlayer, {
	onStatusPointsChange = onStatusPointsChange, 
	onRemovePointsChange = onRemovePointsChange,
	onStatusAgilityChange = onStatusAgilityChange, 
	onStatusPowerChange = onStatusPowerChange,
	onStatusVitalityChange = onStatusVitalityChange,
	onStatusKiForceChange = onStatusKiForceChange,
	onStatusCriticalChange = onStatusCriticalChange,
	onStatusDexterityChange = onStatusDexterityChange, 
	onStatusRegenerationChange = onStatusRegenerationChange
  })
  connect(g_game, {
    onGameStart = refresh,
    onGameEnd = offline
  })

  statusSkillsButton = modules.client_topmenu.addRightGameToggleButton('statusskills', tr('Status Skills') .. ' (Ctrl+U)', '/images/topbuttons/statusskills', toggle)
  statusSkillsButton:setOn(true)
  statusSkillsWindow = g_ui.loadUI('statusskills', modules.game_interface.getRightPanel())

  g_keyboard.bindKeyDown('Ctrl+U', toggle)

  refresh()
  statusSkillsWindow:setup()
end

function terminate()
  disconnect(LocalPlayer, {
	onStatusPointsChange = onStatusPointsChange, 
	onRemovePointsChange = onRemovePointsChange,
	onStatusAgilityChange = onStatusAgilityChange, 
	onStatusPowerChange = onStatusPowerChange,
	onStatusVitalityChange = onStatusVitalityChange,
	onStatusKiForceChange = onStatusKiForceChange,
	onStatusCriticalChange = onStatusCriticalChange,
	onStatusDexterityChange = onStatusDexterityChange, 
	onStatusRegenerationChange = onStatusRegenerationChange
  })
  disconnect(g_game, {
    onGameStart = refresh,
    onGameEnd = offline
  })

  g_keyboard.unbindKeyDown('Ctrl+U')
  statusSkillsWindow:destroy()
  statusSkillsButton:destroy()
end

function expForLevel(level)
  return math.floor((50*level*level*level)/3 - 100*level*level + (850*level)/3 - 200)
end

function expToAdvance(currentLevel, currentExp)
  return expForLevel(currentLevel+1) - currentExp
end

function resetSkillColor(id)
  local skill = statusSkillsWindow:recursiveGetChildById(id)
  local widget = skill:getChildById('value')
  widget:setColor('#bbbbbb')
end

function toggleSkill(id, state)
  local skill = statusSkillsWindow:recursiveGetChildById(id)
  skill:setVisible(state)
end

function setSkillBase(id, value, baseValue)
  if baseValue <= 0 or value < 0 then
    return
  end
  local skill = statusSkillsWindow:recursiveGetChildById(id)
  local widget = skill:getChildById('value')

  if value > baseValue then
    widget:setColor('#008b00') -- green
    skill:setTooltip(baseValue .. ' +' .. (value - baseValue))
  elseif value < baseValue then
    widget:setColor('#b22222') -- red
    skill:setTooltip(baseValue .. ' ' .. (value - baseValue))
  else
    widget:setColor('#bbbbbb') -- default
    skill:removeTooltip()
  end
end

function setSkillValue(id, value)
  local skill = statusSkillsWindow:recursiveGetChildById(id)
  local widget = skill:getChildById('value')
  widget:setText(value)
end

function setSkillColor(id, value)
  local skill = statusSkillsWindow:recursiveGetChildById(id)
  local widget = skill:getChildById('value')
  widget:setColor(value)
end

function setSkillTooltip(id, value)
  local skill = statusSkillsWindow:recursiveGetChildById(id)
  local widget = skill:getChildById('value')
  widget:setTooltip(value)
end

function setSkillPercent(id, percent, tooltip)
  local skill = statusSkillsWindow:recursiveGetChildById(id)
  local widget = skill:getChildById('percent')
  if widget then
    widget:setPercent(math.floor(percent))

    if tooltip then
      widget:setTooltip(tooltip)
    end
  end
end

function checkAlert(id, value, maxValue, threshold, greaterThan)
  if greaterThan == nil then greaterThan = false end
  local alert = false

  -- maxValue can be set to false to check value and threshold
  -- used for regeneration checking
  if type(maxValue) == 'boolean' then
    if maxValue then
      return
    end

    if greaterThan then
      if value > threshold then
        alert = true
      end
    else
      if value < threshold then
        alert = true
      end
    end
  elseif type(maxValue) == 'number' then
    if maxValue < 0 then
      return
    end

    local percent = math.floor((value / maxValue) * 100)
    if greaterThan then
      if percent > threshold then
        alert = true
      end
    else
      if percent < threshold then
        alert = true
      end
    end
  end

  if alert then
    setSkillColor(id, '#b22222') -- red
  else
    resetSkillColor(id)
  end
end

function refresh()
  local player = g_game.getLocalPlayer()
  if not player then return end

--  onStaminaChange(player, player:getStamina())
	onStatusPointsChange(player, player:getStatusPoints())  
	onRemovePointsChange(player, player:getRemovePoints())  
	onStatusAgilityChange(player, player:getStatusAgility())  
	onStatusPowerChange(player, player:getStatusPower())  
	onStatusVitalityChange(player, player:getStatusVitality())  
	onStatusKiForceChange(player, player:getStatusKiForce())  
	onStatusCriticalChange(player, player:getStatusCritical())  
	onStatusDexterityChange(player, player:getStatusDexterity())  
	onStatusRegenerationChange(player, player:getStatusRegeneration())  
	
  local contentsPanel = statusSkillsWindow:getChildById('contentsPanel')
  
--[[	if tonumber(player:getRemovePoints()) > 0 then
		skill = statusSkillsWindow:recursiveGetChildById('power')
		widget = skill:getChildById('valueRemove')
		widget:enable(false)
		widget:setOpacity(30)
	else
		skill = statusSkillsWindow:recursiveGetChildById('power')
		widget = skill:getChildById('valueRemove')
		widget:enable(false)
		widget:setOpacity(30)
	end
  ]]--
  statusSkillsWindow:setContentMinimumHeight(44)
  if hasAdditionalSkills then
    statusSkillsWindow:setContentMaximumHeight(235)
  else
    statusSkillsWindow:setContentMaximumHeight(235)
  end
end

function offline()
  if expSpeedEvent then expSpeedEvent:cancel() expSpeedEvent = nil end
end

function toggle()
  if statusSkillsButton:isOn() then
    statusSkillsWindow:close()
    statusSkillsButton:setOn(false)
  else
    statusSkillsWindow:open()
    statusSkillsButton:setOn(true)
  end
end

function checkExpSpeed()
  local player = g_game.getLocalPlayer()
  if not player then return end

  local currentExp = player:getExperience()
  local currentTime = g_clock.seconds()
  if player.lastExps ~= nil then
    player.expSpeed = (currentExp - player.lastExps[1][1])/(currentTime - player.lastExps[1][2])
    --onLevelChange(player, player:getLevel(), player:getLevelPercent())
  else
    player.lastExps = {}
  end
  table.insert(player.lastExps, {currentExp, currentTime})
  if #player.lastExps > 30 then
    table.remove(player.lastExps, 1)
  end
end

function onMiniWindowClose()
  statusSkillsButton:setOn(false)
end

function onSkillButtonClick(button)
  local percentBar = button:getChildById('percent')
  if percentBar then
    percentBar:setVisible(not percentBar:isVisible())
    if percentBar:isVisible() then
      button:setHeight(21)
    else
      button:setHeight(21 - 6)
    end
  end
end

function onExperienceChange(localPlayer, value)
  --setSkillValue('experience', value)
end


function onKarmaChange(localPlayer, karma)
  --stamina = stamina / 60
  if(karma < 100) then
	karmaDesc = (100-karma).."% (good)"
	setSkillColor('karma', '#54f764')
  elseif(karma == 100) then
	karmaDesc = "(neutral)"
	setSkillColor('karma', 'white')
  else
	karmaDesc = (100-karma).."% (bad)"
	setSkillColor('karma', '#f75454')
  end  
  
  setSkillValue('karma', karmaDesc)
--  setSkillPercent('karma', math.abs(karma-100), tr('You have %s percent', (karma-100)))
end

function numWithCommas(n)
  if n > 999 then
	return tostring(math.floor(n)):reverse():gsub("(%d%d%d)","%1.")
                                :gsub(",(%-?)$","%1"):reverse()
  else
	return n
  end
end

function onBalanceChange(localPlayer, balance)
  --stamina = stamina / 60
  setSkillColor('balance', '#f7f154')
  setSkillValue('balance', numWithCommas(balance) .. " $")
  --setSkillPercent('balance', balance, tr('You have %s', balance))
end

function onOfflineTrainingChange(localPlayer, offlineTrainingTime)
  if not g_game.getFeature(GameOfflineTrainingTime) then
    return
  end
  local hours = math.floor(offlineTrainingTime / 60)
  local minutes = offlineTrainingTime % 60
  if minutes < 10 then
    minutes = '0' .. minutes
  end
  local percent = 100 * offlineTrainingTime / (12 * 60) -- max is 12 hours

  --setSkillValue('offlineTraining', hours .. ":" .. minutes)
  --setSkillPercent('offlineTraining', percent, tr('You have %s percent', percent))
end

function onRegenerationChange(localPlayer, regenerationTime)
  if not g_game.getFeature(GamePlayerRegenerationTime) or regenerationTime < 0 then
    return
  end
  local minutes = math.floor(regenerationTime / 60)
  local seconds = regenerationTime % 60
  if seconds < 10 then
    seconds = '0' .. seconds
  end

  --setSkillValue('regenerationTime', minutes .. ":" .. seconds)
  --checkAlert('regenerationTime', regenerationTime, false, 300)
end


function onSpeedChange(localPlayer, speed)

  --setSkillColor('speed', 'red')
  setSkillValue('speed', speed)

  onBaseSpeedChange(localPlayer, localPlayer:getBaseSpeed())
end

--------------- MOJE

function onStatusPointsChange(localPlayer, points)

	if points > 0 then
		showAddButtons()
	else
		hideAddButtons()
	end
  setSkillValue('level', points)
end

function onRemovePointsChange(localPlayer, points)
	if points > 0 then
		showRemoveButtons()
	else
		hideRemoveButtons()
	end
  local skill = statusSkillsWindow:recursiveGetChildById('level')
  local widget = skill:getChildById('value2')
  widget:setText(points)  
  --setSkillValue('level', points+1)
end

function onStatusAgilityChange(localPlayer, points)
  setSkillValue('agility', points)
  local widget = statusSkillsWindow:recursiveGetChildById('agility')
  if widget then
      widget:setTooltip("Agility (Max 100 points) \nEach point increases your damage absorption by 0.55%\n\nRight now Agility provides "..(points*0.55).."% damage absorption. (Max 55%)")
  end
end

function onStatusPowerChange(localPlayer, points)
  setSkillValue('power', points)
  local widget = statusSkillsWindow:recursiveGetChildById('power')
  if widget then
      widget:setTooltip("Power (Max 100 points) \nEach point increases your weapon damage by 0.95%\n\nRight now Power provides "..(points*0.95).." increased weapon damage. (Max 95%)")
  end
end

function onStatusKiForceChange(localPlayer, points)
  setSkillValue('ki force', points)
  local widget = statusSkillsWindow:recursiveGetChildById('ki force')
  if widget then
      widget:setTooltip("Ki Force (Max 100 points) \nEach point increases your spells damage by 0.85%\n\nRight now Ki Force provides "..(points*0.85).."% increased spells damage. (Max 85%)")
  end
end

function onStatusVitalityChange(localPlayer, points)
  setSkillValue('vitality', points)
  local widget = statusSkillsWindow:recursiveGetChildById('vitality')
  if widget then
      widget:setTooltip("Vitality (Max 100 points) \nEach point increases your Max Health 100 and Max Ki by 200\n\nRight now Vitality provides "..(points*100).." Max Health and "..(points*200).." Max Ki.\n(Max 10000 Hp and 20000 Ki)")
  end
end

function onStatusCriticalChange(localPlayer, points)
  setSkillValue('critical', points)
  local widget = statusSkillsWindow:recursiveGetChildById('critical')
  if widget then
      widget:setTooltip("Critical (Max 10 points) \nEach point increases your Critical Hit chance by 1%\n\nRight now Critical provides "..(points).."% Critical Hit chance. (Max 10%)")
  end
end

function onStatusDexterityChange(localPlayer, points)
  setSkillValue('dexterity', points)
  local widget = statusSkillsWindow:recursiveGetChildById('dexterity')
  if widget then
      widget:setTooltip("Dexterity (Max 10 points) \nEach point increases your chance to Dodge Miss any source of damage and 50 Movement Speed\n\nRight now Dexterity provides "..(points).."% Dodge Miss chance and "..(points*50).." Movement Speed.\n(Max 10% Dodge Miss and 500 Movement Speed)")
  end
end

function onStatusRegenerationChange(localPlayer, points)
  setSkillValue('regeneration', points)
  local widget = statusSkillsWindow:recursiveGetChildById('regeneration')
  if widget then
      widget:setTooltip("Regeneration (Max 10 points) \nEach point increases your HP and Ki Regeneration (every 2sec. when you are fed) by 15 + Level * 0.2\n\nRight Now Regeneration provides "..math.floor(((localPlayer:getLevel()*0.2)+15)*points).." Hp and Ki regeneration.")
  end
end

function onAddStatusPointsToSkill(button)
     local skillName = button:getParent():getId()
	 g_game.talk('!status ' .. skillName .. ',add')
 -- local player = g_game.getLocalPlayer()
 -- if not player then return end
 -- player:parsePlayerStats()
	--onStatusPointsChange(player, player:getStatusPoints())  
	--onStatusAgilityChange(player, player:getStatusAgility())  
	showEvent1 = hideAddButtons()
	showEvent2 = scheduleEvent(showAddButtons, 3000)
end

function onRemoveStatusPointsToSkill(button)
     local skillName = button:getParent():getId()
	 g_game.talk('!status ' .. skillName .. ',remove')
 -- local player = g_game.getLocalPlayer()
 -- if not player then return end
 -- player:parsePlayerStats()
	--onStatusPointsChange(player, player:getStatusPoints())  
	--onStatusAgilityChange(player, player:getStatusAgility())  
	showEvent1 = hideRemoveButtons()
	showEvent2 = scheduleEvent(showRemoveButtons, 3000)
	
end

function hideAddButtons()
	statusSkillsTable[0] = statusSkillsWindow:recursiveGetChildById('agility'):getChildById('valueAdd')
	statusSkillsTable[1] = statusSkillsWindow:recursiveGetChildById('power'):getChildById('valueAdd')
	statusSkillsTable[2] = statusSkillsWindow:recursiveGetChildById('vitality'):getChildById('valueAdd')
	statusSkillsTable[3] = statusSkillsWindow:recursiveGetChildById('ki force'):getChildById('valueAdd')
	statusSkillsTable[4] = statusSkillsWindow:recursiveGetChildById('critical'):getChildById('valueAdd')
	statusSkillsTable[5] = statusSkillsWindow:recursiveGetChildById('dexterity'):getChildById('valueAdd')
	statusSkillsTable[6] = statusSkillsWindow:recursiveGetChildById('regeneration'):getChildById('valueAdd')
	for i=0, 6 do	
		statusSkillsTable[i]:disable()
		statusSkillsTable[i]:setOpacity(0.3)
	end
end

function hideRemoveButtons()
	statusSkillsTable[0] = statusSkillsWindow:recursiveGetChildById('agility'):getChildById('valueRemove')
	statusSkillsTable[1] = statusSkillsWindow:recursiveGetChildById('power'):getChildById('valueRemove')
	statusSkillsTable[2] = statusSkillsWindow:recursiveGetChildById('vitality'):getChildById('valueRemove')
	statusSkillsTable[3] = statusSkillsWindow:recursiveGetChildById('ki force'):getChildById('valueRemove')
	statusSkillsTable[4] = statusSkillsWindow:recursiveGetChildById('critical'):getChildById('valueRemove')
	statusSkillsTable[5] = statusSkillsWindow:recursiveGetChildById('dexterity'):getChildById('valueRemove')
	statusSkillsTable[6] = statusSkillsWindow:recursiveGetChildById('regeneration'):getChildById('valueRemove')
	for i=0, 6 do	
		statusSkillsTable[i]:disable()
		statusSkillsTable[i]:setOpacity(0.3)
	end
end

function showAddButtons()
	local player = g_game.getLocalPlayer()
	if not player then return end
	
	if player:getStatusPoints() > 0 then
		statusSkillsTable[0] = statusSkillsWindow:recursiveGetChildById('agility'):getChildById('valueAdd')
		statusSkillsTable[1] = statusSkillsWindow:recursiveGetChildById('power'):getChildById('valueAdd')
		statusSkillsTable[2] = statusSkillsWindow:recursiveGetChildById('vitality'):getChildById('valueAdd')
		statusSkillsTable[3] = statusSkillsWindow:recursiveGetChildById('ki force'):getChildById('valueAdd')
		statusSkillsTable[4] = statusSkillsWindow:recursiveGetChildById('critical'):getChildById('valueAdd')
		statusSkillsTable[5] = statusSkillsWindow:recursiveGetChildById('dexterity'):getChildById('valueAdd')
		statusSkillsTable[6] = statusSkillsWindow:recursiveGetChildById('regeneration'):getChildById('valueAdd')
		for i=0, 6 do	
			statusSkillsTable[i]:enable()
			statusSkillsTable[i]:setOpacity(1)
		end
	end
end

function showRemoveButtons()
	local player = g_game.getLocalPlayer()
	if not player then return end
	
	if player:getRemovePoints() > 0 then
		statusSkillsTable[0] = statusSkillsWindow:recursiveGetChildById('agility'):getChildById('valueRemove')
		statusSkillsTable[1] = statusSkillsWindow:recursiveGetChildById('power'):getChildById('valueRemove')
		statusSkillsTable[2] = statusSkillsWindow:recursiveGetChildById('vitality'):getChildById('valueRemove')
		statusSkillsTable[3] = statusSkillsWindow:recursiveGetChildById('ki force'):getChildById('valueRemove')
		statusSkillsTable[4] = statusSkillsWindow:recursiveGetChildById('critical'):getChildById('valueRemove')
		statusSkillsTable[5] = statusSkillsWindow:recursiveGetChildById('dexterity'):getChildById('valueRemove')
		statusSkillsTable[6] = statusSkillsWindow:recursiveGetChildById('regeneration'):getChildById('valueRemove')
		for i=0, 6 do	
			statusSkillsTable[i]:enable()
			statusSkillsTable[i]:setOpacity(1)
		end
	end
end

