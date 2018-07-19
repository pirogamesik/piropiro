Icons = {}
Icons[PlayerStates.Poison] = { tooltip = tr('You are poisoned'), path = '/images/game/states/poisoned', id = 'condition_poisoned' }
Icons[PlayerStates.Burn] = { tooltip = tr('You are burning'), path = '/images/game/states/burning', id = 'condition_burning' }
Icons[PlayerStates.Energy] = { tooltip = tr('You are electrified'), path = '/images/game/states/electrified', id = 'condition_electrified' }
Icons[PlayerStates.Drunk] = { tooltip = tr('You are drunk'), path = '/images/game/states/drunk', id = 'condition_drunk' }
Icons[PlayerStates.ManaShield] = { tooltip = tr('You are protected by a magic shield'), path = '/images/game/states/magic_shield', id = 'condition_magic_shield' }
Icons[PlayerStates.Paralyze] = { tooltip = tr('You are paralysed'), path = '/images/game/states/slowed', id = 'condition_slowed' }
Icons[PlayerStates.Haste] = { tooltip = tr('You are hasted'), path = '/images/game/states/haste', id = 'condition_haste' }
Icons[PlayerStates.Swords] = { tooltip = tr('You may not logout during a fight'), path = '/images/game/states/logout_block', id = 'condition_logout_block' }
Icons[PlayerStates.Drowning] = { tooltip = tr('You are drowning'), path = '/images/game/states/drowning', id = 'condition_drowning' }
Icons[PlayerStates.Freezing] = { tooltip = tr('You are freezing'), path = '/images/game/states/freezing', id = 'condition_freezing' }
Icons[PlayerStates.Dazzled] = { tooltip = tr('You are dazzled'), path = '/images/game/states/dazzled', id = 'condition_dazzled' }
Icons[PlayerStates.Cursed] = { tooltip = tr('You are cursed'), path = '/images/game/states/cursed', id = 'condition_cursed' }
Icons[PlayerStates.PartyBuff] = { tooltip = tr('You are strengthened'), path = '/images/game/states/strengthened', id = 'condition_strengthened' }
Icons[PlayerStates.PzBlock] = { tooltip = tr('You may not logout or enter a protection zone'), path = '/images/game/states/protection_zone_block', id = 'condition_protection_zone_block' }
Icons[PlayerStates.Pz] = { tooltip = tr('You are within a protection zone'), path = '/images/game/states/protection_zone', id = 'condition_protection_zone' }
Icons[PlayerStates.Bleeding] = { tooltip = tr('You are bleeding'), path = '/images/game/states/bleeding', id = 'condition_bleeding' }
Icons[PlayerStates.Hungry] = { tooltip = tr('You are hungry'), path = '/images/game/states/hungry', id = 'condition_hungry' }

healthInfoWindow = nil
healthBar = nil
manaBar = nil
experienceBar = nil
playerBar = nil
healthBar2 = nil
manaBar2 = nil
lvlBar2 = nil
avatarBar2 = nil
healthTooltip = 'Your character health is %d out of %d.'
manaTooltip = 'Your character mana is %d out of %d.'
experienceTooltip = 'You have %d%% to advance to level %d.'

function init()

  g_ui.importStyle('healthinfo2')

  connect(LocalPlayer, { onHealthChange = onHealthChange,
                         onManaChange = onManaChange,
                         onLevelChange = onLevelChange,
						 onVocationChange = onVocationChange})

  connect(g_game, { onGameEnd = offline })

  healthInfoButton = modules.client_topmenu.addRightGameToggleButton('healthInfoButton', tr('Health Information'), '/images/topbuttons/healthinfo', toggle)
  healthInfoButton:setOn(true)

  healthInfoWindow = g_ui.loadUI('healthinfo', modules.game_interface.getRightPanel())
  healthInfoWindow:disableResize()
  healthBar = healthInfoWindow:recursiveGetChildById('healthBar')
  manaBar = healthInfoWindow:recursiveGetChildById('manaBar')
  experienceBar = healthInfoWindow:recursiveGetChildById('experienceBar')
      healthInfoButton:setOn(false)
  playerBar = g_ui.createWidget('PlayerBarWindow', rootWidget)
  --playerBar:setX(-100)
  --playerBar:setY(-100)
  healthBar2 = playerBar:recursiveGetChildById('healthBar2')
  manaBar2 = playerBar:recursiveGetChildById('manaBar2')
  lvlBar2 = playerBar:recursiveGetChildById('lvlBar2')
  avatarBar2 = playerBar:recursiveGetChildById('AvatarBar')
  
  if g_game.isOnline() then
    local localPlayer = g_game.getLocalPlayer()
    onHealthChange(localPlayer, localPlayer:getHealth(), localPlayer:getMaxHealth())
    onManaChange(localPlayer, localPlayer:getMana(), localPlayer:getMaxMana())
    onLevelChange(localPlayer, localPlayer:getLevel(), localPlayer:getLevelPercent())
	onVocationChange(localPlayer, localPlayer:getVocation())
    --onStatesChange(localPlayer, localPlayer:getStates(), 0)
    onSoulChange(localPlayer, localPlayer:getSoul())
    onFreeCapacityChange(localPlayer, localPlayer:getFreeCapacity())
  end

  healthInfoWindow:setup()
end

function terminate()
  disconnect(LocalPlayer, { onHealthChange = onHealthChange,
                            onManaChange = onManaChange,
                            onLevelChange = onLevelChange,
							onVocationChange = onVocationChange})

  disconnect(g_game, { onGameEnd = offline })

  healthInfoWindow:destroy()
  healthInfoButton:destroy()
  playerBar:destroy()
end

function changePanel()
  --healthInfoWindow2 = g_ui.loadUI('healthinfo2', modules.game_interface.getRightPanel())
 -- if playerBar then return end
 local panel = g_settings.getBoolean('displayPlayerBar')
 if panel == true then
	g_settings.set('displayPlayerBar', false)
	playerBar:setVisible(false)
	healthInfoWindow:open()
 else
	g_settings.set('displayPlayerBar', true)
    playerBar:setVisible(true)
	healthInfoWindow:close()
 end
 
  --playerBar:disableResize()
  --playerBar:setFocusable(false)
  --healthInfoWindow2:disableResize()
  --healthInfoWindow2:setup()
end

function toggle()
  local panel = g_settings.getBoolean('displayPlayerBar')

  if healthInfoButton:isOn() then
	playerBar:setVisible(false)
    healthInfoWindow:close()
    healthInfoButton:setOn(false)
  else
	if panel == true then
		playerBar:setVisible(true)
	else
		healthInfoWindow:open()
	end
    healthInfoButton:setOn(true)
  end
end


-- hooked events
function onMiniWindowClose()
  healthInfoButton:setOn(false)
end

function onHealthChange(localPlayer, health, maxHealth)
  healthBar:setText(health .. ' / ' .. maxHealth)
  healthBar:setTooltip(tr(healthTooltip, health, maxHealth))
  healthBar:setValue(health, 0, maxHealth)
  if healthBar2 then
      healthBar2:setText(health .. ' / ' .. maxHealth)
	  healthBar2:setValue(health, 0, maxHealth)
  end
end

function onManaChange(localPlayer, mana, maxMana)
  manaBar:setText(mana .. ' / ' .. maxMana)
  manaBar:setTooltip(tr(manaTooltip, mana, maxMana))
  manaBar:setValue(mana, 0, maxMana)
  if manaBar2 then
      manaBar2:setText(mana .. ' / ' .. maxMana)
	  manaBar2:setValue(mana, 0, maxMana)
  end
end

function onLevelChange(localPlayer, value, percent)
  experienceBar:setText(percent .. '%')
  experienceBar:setTooltip(tr(experienceTooltip, percent, value+1))
  experienceBar:setPercent(percent)

  if lvlBar2 then
      lvlBar2:setText(value .. ' lvl')
	--  manaBar2:setValue(mana, 0, maxMana)
  end
  
end

function onVocationChange(localPlayer, voc)

  if voc > 0 and avatarBar2 then
	--[[if isGoku(voc) == 1 then 
		avatarBar2:setImageSource("/images/avatars/goku")
	elseif isVegeta(voc) == 1 then
		avatarBar2:setImageSource("/images/avatars/vegeta")
	elseif isBrolly(voc) == 1 then
		avatarBar2:setImageSource("/images/avatars/brolly")
	elseif isGohan(voc) == 1 then
		avatarBar2:setImageSource("/images/avatars/gohan")
	elseif isTrunks(voc) == 1 then
		avatarBar2:setImageSource("/images/avatars/trunks")
	elseif isCell(voc) == 1 then
		avatarBar2:setImageSource("/images/avatars/cell")
	elseif isMajin(voc) == 1 then
		avatarBar2:setImageSource("/images/avatars/majin")
	elseif isJanemba(voc) == 1 then
		avatarBar2:setImageSource("/images/avatars/janemba")
	elseif isFreezer(voc) == 1 then
		avatarBar2:setImageSource("/images/avatars/freezer")
	elseif isCooler(voc) == 1 then
		avatarBar2:setImageSource("/images/avatars/cooler")
	elseif isShenron(voc) == 1 then
		avatarBar2:setImageSource("/images/avatars/shenron")
	elseif isNamekNW(voc) == 1 then
		avatarBar2:setImageSource("/images/avatars/nw")
	elseif isNamekSPC(voc) == 1 then
		avatarBar2:setImageSource("/images/avatars/spc")
	elseif isTuffle(voc) == 1 then
		avatarBar2:setImageSource("/images/avatars/tuffle")
	elseif isHuman(voc) == 1 then
		avatarBar2:setImageSource("/images/avatars/human")
	elseif isVidel(voc) == 1 then
		avatarBar2:setImageSource("/images/avatars/videl")
	end]]--
	avatarBar2:setImageSource("/images/avatars/" .. voc)
  end
  
end

-- personalization functions
function hideLabels()
  local removeHeight = math.max(capLabel:getMarginRect().height, soulLabel:getMarginRect().height)
  capLabel:setOn(false)
  soulLabel:setOn(false)
  healthInfoWindow:setHeight(math.max(healthInfoWindow.minimizedHeight, healthInfoWindow:getHeight() - removeHeight))
end

function hideLabels()
  local removeHeight = math.max(capLabel:getMarginRect().height, soulLabel:getMarginRect().height)
  capLabel:setOn(false)
  soulLabel:setOn(false)
  healthInfoWindow:setHeight(math.max(healthInfoWindow.minimizedHeight, healthInfoWindow:getHeight() - removeHeight))
end

function hideExperience()
  local removeHeight = experienceBar:getMarginRect().height
  experienceBar:setOn(false)
  healthInfoWindow:setHeight(math.max(healthInfoWindow.minimizedHeight, healthInfoWindow:getHeight() - removeHeight))
end

function setHealthTooltip(tooltip)
  healthTooltip = tooltip

  local localPlayer = g_game.getLocalPlayer()
  if localPlayer then
    healthBar:setTooltip(tr(healthTooltip, localPlayer:getHealth(), localPlayer:getMaxHealth()))
  end
end

function setManaTooltip(tooltip)
  manaTooltip = tooltip

  local localPlayer = g_game.getLocalPlayer()
  if localPlayer then
    manaBar:setTooltip(tr(manaTooltip, localPlayer:getMana(), localPlayer:getMaxMana()))
  end
end

function setExperienceTooltip(tooltip)
  experienceTooltip = tooltip

  local localPlayer = g_game.getLocalPlayer()
  if localPlayer then
    experienceBar:setTooltip(tr(experienceTooltip, localPlayer:getLevelPercent(), localPlayer:getLevel()+1))
  end
end

function isInArray(t, v, c)
    v = (c ~= nil and string.lower(v)) or v
    if type(t) == "table" and v ~= nil then
        for key, value in pairs(t) do
            value = (c ~= nil and string.lower(value)) or value
            if v == value then
                return 1
            end
        end
    end
    return -1
end

function isGoku(voc)
	return isInArray({1, 2, 3, 4, 5, 6, 94}, voc)
end
function isVegeta(voc)
	return isInArray({7, 8, 9, 10, 11, 12, 95}, voc)
end
function isBrolly(voc)
	return isInArray({13, 14, 15, 16, 17, 18, 96}, voc)
end
function isGohan(voc)
	return isInArray({19, 20, 21, 22, 23, 97}, voc)
end
function isTrunks(voc)
	return isInArray({24, 25, 26, 27, 28, 98}, voc)
end
function isTuffle(voc)
	return isInArray({29, 30, 31, 32, 33, 34, 99}, voc)
end
function isCell(voc)
	return isInArray({35, 36, 37, 38, 39, 40, 100}, voc)
end
function isCooler(voc)
	return isInArray({41, 42, 43, 44, 45, 46, 101}, voc)
end
function isFreezer(voc)
	return isInArray({47, 48, 49, 50, 51, 52, 102}, voc)
end
function isMajin(voc)
	return isInArray({53, 54, 55, 56, 57, 58, 103}, voc)
end
function isJanemba(voc)
	return isInArray({59, 60, 61, 62, 63, 104}, voc)
end
function isShenron(voc)
	return isInArray({64, 65, 66, 67, 68, 69, 70}, voc)
end
function isHuman(voc)
	return isInArray({71, 72, 73, 74, 75, 76, 105}, voc)
end
function isVidel(voc)
	return isInArray({77, 78, 79, 80, 81, 82, 106}, voc)
end
function isNamekSPC(voc)
	return isInArray({84, 85, 86, 87, 88, 107}, voc)
end
function isNamekNW(voc)
	return isInArray({89, 90, 91, 92, 93, 108}, voc)
end
