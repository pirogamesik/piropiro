if not UIWindow then dofile 'uiwindow' end

-- @docclass
UIStoreAcceptBox = extends(UIWindow, "UIStoreAcceptBox")

-- messagebox cannot be created from otui files
UIStoreAcceptBox.create = nil

function UIStoreAcceptBox.display(title, message, buttons, onEnterCallback, onEscapeCallback)
  local messageBox = UIStoreAcceptBox.internalCreate()
  rootWidget:addChild(messageBox)

  messageBox:setStyle('AcceptWindow')
  messageBox:setText(title)
  --messageBox:setImageSource('/images/game/effects/aura/12')
  
  --[[local titleImage = g_ui.createWidget('MessageBoxLabel', messageBox)
  titleImage:setWidth(70)
  titleImage:setHeight(70)
  titleImage:setText("XXXXXXXXXXXXXXXXXXXXXXXXXXXX\nXXXXXXXXXXXXXXXXXXXXXXXXXXXX\nXXXXXXXXXXXXXXXXXXXXXXXXXXXX\n")
  titleImage:addAnchor(AnchorTop, 'prev', AnchorBottom)]]---
  
  
  local messageLabel = g_ui.createWidget('MessageBoxLabel', messageBox)
  messageLabel:addAnchor(AnchorBottom, titleImage, AnchorTop)
  messageLabel:setText(message)
  messageLabel:setColor("orange")
  messageLabel:setFont('magistralic13')

  local buttonsWidth = 0
  local buttonsHeight = 0
  
  local anchor = AnchorRight
  if buttons.anchor then anchor = buttons.anchor end  
  

  local buttonHolder = g_ui.createWidget('MessageBoxButtonHolder', messageBox)
  buttonHolder:addAnchor(anchor, 'parent', anchor)

  for i=1,#buttons do
    local button = messageBox:addButton(buttons[i].text, buttons[i].callback)
    if i == 1 then
      button:setMarginLeft(0)
      button:addAnchor(AnchorBottom, 'parent', AnchorBottom)
      button:addAnchor(AnchorLeft, 'parent', AnchorLeft)
      buttonsHeight = button:getHeight()
    else
      button:addAnchor(AnchorBottom, 'prev', AnchorBottom)
      button:addAnchor(AnchorLeft, 'prev', AnchorRight)
    end
    buttonsWidth = buttonsWidth + button:getWidth() + button:getMarginLeft()
  end

  buttonHolder:setWidth(buttonsWidth)
  buttonHolder:setHeight(buttonsHeight)

  if onEnterCallback then connect(messageBox, { onEnter = onEnterCallback }) end
  if onEscapeCallback then connect(messageBox, { onEscape = onEscapeCallback }) end

  messageBox:setWidth(math.max(messageLabel:getWidth(), messageBox:getTextSize().width, buttonHolder:getWidth()) + messageBox:getPaddingLeft() + messageBox:getPaddingRight())
  messageBox:setHeight(messageLabel:getHeight() + messageBox:getPaddingTop() + messageBox:getPaddingBottom() + buttonHolder:getHeight() + buttonHolder:getMarginTop())
  return messageBox
end

function displayInfoBox(title, message)
  local messageBox
  local defaultCallback = function() messageBox:ok() end
  messageBox = UIStoreAcceptBox.display(title, message, {{text='Ok', callback=defaultCallback}}, defaultCallback, defaultCallback)
  return messageBox
end

function displayErrorBox(title, message)
  local messageBox
  local defaultCallback = function() messageBox:ok() end
  messageBox = UIStoreAcceptBox.display(title, message, {{text='Ok', callback=defaultCallback}}, defaultCallback, defaultCallback)
  return messageBox
end

function displayCancelBox(title, message)
  local messageBox
  local defaultCallback = function() messageBox:cancel() end
  messageBox = UIStoreAcceptBox.display(title, message, {{text='Cancel', callback=defaultCallback}}, defaultCallback, defaultCallback)
  return messageBox
end

function displayAcceptBox(title, message, buttons, onEnterCallback, onEscapeCallback)
  return UIStoreAcceptBox.display(title, message, buttons, onEnterCallback, onEscapeCallback)
end

function UIStoreAcceptBox:addButton(text, callback)
  local buttonHolder = self:getChildById('buttonHolder')
  local button = g_ui.createWidget('MessageBoxButton', buttonHolder)
  button:setText(text)
  button:setStyle('ButtonShop')
  connect(button, { onClick = callback })
  return button
end

function UIStoreAcceptBox:ok()
  signalcall(self.onOk, self)
  self.onOk = nil
  self:destroy()
end

function UIStoreAcceptBox:cancel()
  signalcall(self.onCancel, self)
  self.onCancel = nil
  self:destroy()
end
