CharacterList = { }

-- private variables
local charactersWindow
local loadBox
local characterList
local errorBox
local waitingWindow
local updateWaitEvent
local resendWaitEvent

-- private functions
local function tryLogin(charInfo, tries)
  tries = tries or 1

  if tries > 50 then
    return
  end

  if g_game.isOnline() then
    if tries == 1 then
      g_game.safeLogout()
    end
    scheduleEvent(function() tryLogin(charInfo, tries+1) end, 100)
    return
  end

  CharacterList.hide()

  g_game.loginWorld(G.account, G.password, charInfo.worldName, charInfo.worldHost, charInfo.worldPort, charInfo.characterName)

  loadBox = displayCancelBox(tr('Please wait'), tr('Connecting to game server...'))
  connect(loadBox, { onCancel = function()
                                  loadBox = nil
                                  g_game.cancelLogin()
                                  CharacterList.show()
                                end })

  -- save last used character
  g_settings.set('last-used-character', charInfo.characterName)
  g_settings.set('last-used-world', charInfo.worldName)
end

local function updateWait(timeStart, timeEnd)
  if waitingWindow then
    local time = g_clock.seconds()
    if time <= timeEnd then
      local percent = ((time - timeStart) / (timeEnd - timeStart)) * 100
      local timeStr = string.format("%.0f", timeEnd - time)

      local progressBar = waitingWindow:getChildById('progressBar')
      progressBar:setPercent(percent)

      local label = waitingWindow:getChildById('timeLabel')
      label:setText(tr('Trying to reconnect in %s seconds.', timeStr))

      updateWaitEvent = scheduleEvent(function() updateWait(timeStart, timeEnd) end, 1000 * progressBar:getPercentPixels() / 100 * (timeEnd - timeStart))
      return true
    end
  end

  if updateWaitEvent then
    updateWaitEvent:cancel()
    updateWaitEvent = nil
  end
end

local function resendWait()
  if waitingWindow then
    waitingWindow:destroy()
    waitingWindow = nil

    if updateWaitEvent then
      updateWaitEvent:cancel()
      updateWaitEvent = nil
    end

    if charactersWindow then
      local selected = characterList:getFocusedChild()
      if selected then
        local charInfo = { worldHost = selected.worldHost,
                           worldPort = selected.worldPort,
                           worldName = selected.worldName,
                           characterName = selected.characterName }
        tryLogin(charInfo)
      end
    end
  end
end

local function onLoginWait(message, time)
  CharacterList.destroyLoadBox()

  waitingWindow = g_ui.displayUI('waitinglist')

  local label = waitingWindow:getChildById('infoLabel')
  label:setText(message)

  updateWaitEvent = scheduleEvent(function() updateWait(g_clock.seconds(), g_clock.seconds() + time) end, 0)
  resendWaitEvent = scheduleEvent(resendWait, time * 1000)
end

function onGameLoginError(message)
  CharacterList.destroyLoadBox()
  errorBox = displayErrorBox(tr("Login Error"), message)
  errorBox.onOk = function()
    errorBox = nil
    CharacterList.showAgain()
  end
end

function onGameConnectionError(message, code)
  CharacterList.destroyLoadBox()
  if code == 10054 then -- pog
    CharacterList.showAgain()
  else
    local text = translateNetworkError(code, g_game.getProtocolGame() and g_game.getProtocolGame():isConnecting(), message)
    errorBox = displayErrorBox(tr("Connection Error"), text)
    errorBox.onOk = function()
      errorBox = nil
      CharacterList.showAgain()
    end
  end
end

function onGameUpdateNeeded(signature)
  CharacterList.destroyLoadBox()
  errorBox = displayErrorBox(tr("Update needed"), tr('Enter with your account again to update your client.'))
  errorBox.onOk = function()
    errorBox = nil
    CharacterList.showAgain()
  end
end

-- public functions
function CharacterList.init()
  connect(g_game, { onLoginError = onGameLoginError })
  connect(g_game, { onUpdateNeeded = onGameUpdateNeeded })
  connect(g_game, { onConnectionError = onGameConnectionError })
  connect(g_game, { onGameStart = CharacterList.destroyLoadBox })
  connect(g_game, { onLoginWait = onLoginWait })
  connect(g_game, { onGameEnd = CharacterList.showAgain })

  if G.characters then
    CharacterList.create(G.characters, G.characterAccount)
  end
end

function CharacterList.terminate()
  disconnect(g_game, { onLoginError = onGameLoginError })
  disconnect(g_game, { onUpdateNeeded = onGameUpdateNeeded })
  disconnect(g_game, { onConnectionError = onGameConnectionError })
  disconnect(g_game, { onGameStart = CharacterList.destroyLoadBox })
  disconnect(g_game, { onLoginWait = onLoginWait })
  disconnect(g_game, { onGameEnd = CharacterList.showAgain })

  if charactersWindow then
    characterList = nil
    charactersWindow:destroy()
    charactersWindow = nil
  end

  if loadBox then
    g_game.cancelLogin()
    loadBox:destroy()
    loadBox = nil
  end

  if waitingWindow then
    waitingWindow:destroy()
    waitingWindow = nil
  end

  if updateWaitEvent then
    updateWaitEvent:cancel()
    updateWaitEvent = nil
  end

  if resendWaitEvent then
    resendWaitEvent:cancel()
    resendWaitEvent = nil
  end

  CharacterList = nil
end

function CharacterList.create(characters, account)
  if charactersWindow then
    charactersWindow:destroy()
  end

  charactersWindow = g_ui.displayUI("characterlist")
  characterList = charactersWindow:getChildById("characters")

  -- characters
  G.characters = characters
  G.characterAccount = account

  characterList:destroyChildren()
  local focusLabel
  for i,characterInfo in ipairs(characters) do
    local widget = g_ui.createWidget("CharacterWidget", characterList)
	
	g_effects.startFlying(widget:getChildById("levelPercent"), 0, 650, true)
	
    widget:getChildById("name"):setText(characterInfo.name)
	if(characterInfo.online == 1)then
	    widget:getChildById("name"):setColor('#6cff6c')
	else
		widget:getChildById("name"):setColor('#ff6c6c')
	end
    widget:getChildById("worldName"):setText("("..characterInfo.worldName..")")
    widget:getChildById("outfit"):setOutfit(characterInfo.outfit)
    --widget:getChildById("health"):setText("100 / 100")
    widget:getChildById("health"):setValue(characterInfo.hp, 0, characterInfo.maxHp)
    widget:getChildById("levelPercent"):setPercent(characterInfo.ki * 100 / characterInfo.maxKi)
    widget:getChildById("level"):setText("Level: "..characterInfo.level.."")
	widget:getChildById("level"):setColor('#fde518')
	if(characterInfo.effect > 0)then
		widget:getChildById("effect"):setImageSource('/images/game/effects/lighting/'..characterInfo.effect..'')
    end
	if(characterInfo.aura > 0)then
		widget:getChildById("effectDymu"):setImageSource('/images/game/effects/aura/'..characterInfo.aura..'')
    end
	  --  image-source: /images/game/effects/aura/
	--widget:getChildById("caught"):setText("Caught: "..characterInfo.caught)
    
    --local subWidget
    --[[for i=1, characterInfo.pokemons do
      local subWidget = widget:getChildById('pokeball_'..i)
      if subWidget then
        subWidget:setImageSource('/images/game/pokeball')
      end
    end]]--

    -- these are used by login
    widget.characterName = characterInfo.name
    widget.worldName = characterInfo.worldName
    widget.worldHost = characterInfo.worldIp
    widget.worldPort = characterInfo.worldPort

    connect(widget, { onDoubleClick = function () CharacterList.doLogin() return true end } )
    
    connect(widget, { onMouseWheel = function (self, mousePos, direction)
        if direction == MouseWheelDown then
            characterList:focusNextChild()
        elseif direction == MouseWheelUp then
            characterList:focusPreviousChild()
        end
        return true
    end } )

    if i == 1 or (g_settings.get('last-used-character') == widget.characterName and g_settings.get('last-used-world') == widget.worldName) then
      focusLabel = widget
    end
  end

  if focusLabel then
    characterList:focusChild(focusLabel, KeyboardFocusReason)
    addEvent(function() characterList:ensureChildVisible(focusLabel) end)
  end

  -- account
  local accountStatusLabel = charactersWindow:getChildById("accountStatusLabel")
  if account.premDays > 0 and account.premDays < 65535 then
    accountStatusLabel:setText(tr("Premium Account (%s) days left", account.premDays))
  elseif account.premDays >= 65535 then
    accountStatusLabel:setText(tr("Lifetime Premium Account"))
  else
    accountStatusLabel:setText(tr('Free Account'))
  end

  if account.premDays > 0 and account.premDays <= 7 then
    accountStatusLabel:setOn(true)
  else
    accountStatusLabel:setOn(false)
  end
end

function CharacterList.destroy()
  CharacterList.hide(true)

  if charactersWindow then
    characterList = nil
    charactersWindow:destroy()
    charactersWindow = nil
  end
end

function CharacterList.show()
  if loadBox or errorBox or not charactersWindow then return end
  charactersWindow:show()
  charactersWindow:raise()
  charactersWindow:focus()
end

function CharacterList.hide(showLogin)
  showLogin = showLogin or false
  charactersWindow:hide()

  if showLogin and EnterGame and not g_game.isOnline() then
    EnterGame.show()
  end
end

function CharacterList.showAgain()
  if characterList and characterList:hasChildren() then
    CharacterList.show()
  end
end

function CharacterList.isVisible()
  if charactersWindow and charactersWindow:isVisible() then
    return true
  end
  return false
end

function CharacterList.doLogin()
  local selected = characterList:getFocusedChild()
  if selected then
    local charInfo = { worldHost = selected.worldHost,
                       worldPort = selected.worldPort,
                       worldName = selected.worldName,
                       characterName = selected.characterName }
    charactersWindow:hide()
    tryLogin(charInfo)
  else
    displayErrorBox(tr('Error'), tr('You must select a character to login!'))
  end
end

function CharacterList.destroyLoadBox()
  if loadBox then
    loadBox:destroy()
    loadBox = nil
  end
end

function CharacterList.cancelWait()
  if waitingWindow then
    waitingWindow:destroy()
    waitingWindow = nil
  end

  if updateWaitEvent then
      updateWaitEvent:cancel()
      updateWaitEvent = nil
  end

  if resendWaitEvent then
    resendWaitEvent:cancel()
    resendWaitEvent = nil
  end

  CharacterList.destroyLoadBox()
  CharacterList.showAgain()
end

function CharacterList.updateCharacter(characterInfo)
  for i, widget in pairs(characterList:recursiveGetChildren()) do
    if widget.characterName == characterInfo.name then
      if characterInfo.worldName then widget:getChildById("worldName"):setText("("..characterInfo.worldName..")") end
      if characterInfo.outfit then widget:getChildById("outfit"):setOutfit(characterInfo.outfit) end
      if characterInfo.health then
        widget:getChildById("health"):setText(characterInfo.health .. ' / ' .. characterInfo.healthMax)
        widget:getChildById("health"):setValue(characterInfo.health, 0, characterInfo.healthMax)
      end
      if characterInfo.levelPercent then widget:getChildById("levelPercent"):setPercent(characterInfo.levelPercent) end
      if characterInfo.level then widget:getChildById("level"):setText("Level: "..characterInfo.level) end
     -- if characterInfo.caught then widget:getChildById("caught"):setText("Caught: "..characterInfo.caught) end
		if(characterInfo.effect > 0)then
			widget:getChildById("effect"):setImageSource('/images/game/effects/'..characterInfo.effect..'')
		end
      break
    end
  end
end
