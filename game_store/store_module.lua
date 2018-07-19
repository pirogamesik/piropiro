dofile('ui/uistoreacceptbox')

local storeWindow = nil
local indexDescription = nil
local indexList = nil
local imageDesc = nil
local titleDesc = nil
local description = nil
local acceptWindow = nil
--local transferPointsWindow = nil

local function short(value)
  local text = value
  if string.len(text) >= 13 then
    shorten = string.sub(text, 1, 10)
    return shorten .. "..."
  else
    return text
  end
end

local function formatNumbers(number)
	local ret = number
	while true do  
		ret, k = string.gsub(ret, "^(-?%d+)(%d%d%d)", '%1 %2')
		if k == 0 then
			break
		end
	end
	return ret
end

function init()
  g_ui.importStyle('ui/acceptwindow')

  storeWindow = g_ui.displayUI('store_module')
  storeWindow:hide()
  
  connect(LocalPlayer, {
    onPointsChange = onPointsChange
  })
    
  if g_game.isOnline() then
    local localPlayer = g_game.getLocalPlayer()
	if localPlayer then
		onPointsChange(localPlayer, localPlayer:getPremiumPoints())
	end
  end  
 -- g_keyboard.bindKeyPress('Ctrl+U', toggle)
 
  local coinsMaster = 0
 -- ProtocolGame.registerExtendedOpcode(54, 4)
  
  --transferPointsWindow = g_ui.displayUI('--transferPoints')
  
  indexList = storeWindow:getChildById('indexList')
  indexDescription = storeWindow:getChildById('indexDescription')
  imageDesc = storeWindow:getChildById('indexDescription'):getChildById('imageDesc')
  titleDesc = storeWindow:getChildById('indexDescription'):getChildById('titleDesc')
  description = storeWindow:getChildById('indexDescription'):getChildById('description')
  
  productList = storeWindow:getChildById('productList')
  
  for i = 1, #storeIndex do
    local label = g_ui.createWidget('StoreButton', indexList)
	
    label:setId(i)
    --image-color: red
	label:setIcon(storeIndex[i].imageList)
	label:setText(tr(storeIndex[i].name))
	label.index = i
	
	local labelId = storeWindow:getChildById('indexList'):getChildById(i)
    labelId.onClick = function(self)
      local descriptionImage = storeWindow:getChildById('indexDescription'):getChildById('imageDesc')
	  descriptionImage:setImageSource(storeIndex[i].image)
	
	  local descriptionTitle = storeWindow:getChildById('indexDescription'):getChildById('titleDesc')
	  descriptionTitle:setText("#"..storeIndex[i].name)
	
	  local description = storeWindow:getChildById('indexDescription'):getChildById('description')
	  description:setText(storeIndex[i].description)
	  
	  local productsPanel = storeWindow:getChildById('productList')
	  local children = productsPanel:getChildren()
	  for k = 1, #children do
	    children[k]:destroy()
	  end
	  
	  for j=1, #storeProducts do
	    if storeIndex[i].id == storeProducts[j].category_id then
		  local productLabel = g_ui.createWidget('ProductButton', productList)

			
		  productLabel:setId(j)
		  productLabel:setTooltip(storeProducts[j].tooltip)
		  
		  local productLabelTitle = storeWindow:getChildById('productList'):getChildById(j):getChildById('productLabelTitle')
		  productLabelTitle:setText(short(storeProducts[j].name))
			
		  local productLabelImage = storeWindow:getChildById('productList'):getChildById(j):getChildById('productLabelImage')
		  productLabelImage:setImageSource(storeProducts[j].image)
		  
		  if storeProducts[j].category_id == "4" then
			  local outfitBefore = storeWindow:getChildById('productList'):getChildById(j):getChildById('outfitBefore')
			  --outfitBefore:setOutfit(g_game.getLocalPlayer():getOutfit())
		  end
		  
		  if storeProducts[j].category_id == "5" then
			  local outfitAfter = storeWindow:getChildById('productList'):getChildById(j):getChildById('outfitAfter')
			  --outfitAfter:setOutfit(g_game.getLocalPlayer():getOutfit())
		  end
		  --pinfo(storeProducts[j].category_id)
		  
		  
			if storeProducts[j].special then
			  local productSpecialImage = storeWindow:getChildById('productList'):getChildById(j):getChildById('productSpecialImage')
			  productSpecialImage:setImageSource(storeProducts[j].special)
			end
			
          local productLabelTokenPrice = storeWindow:getChildById('productList'):getChildById(j):getChildById('productLabelTokenPrice')
		  productLabelTokenPrice:setText(formatNumbers(storeProducts[j].price))
		  
		  local buyWindow = storeWindow:getChildById('productList'):getChildById(j)
		  buyWindow.onClick = function(self)
            if acceptWindow then
              return true
            end

            local acceptFunc = function()
			  --[[local balance = storeWindow:getChildById('balanceInfo'):getChildById('coinBalance'):getText()
			  local unformatted = balance:gsub(',', '')
			  unformatted = balance:gsub(' ', '')
			  unformatted = balance:gsub('.', '')
			  local balanceInfo = tonumber(unformatted)

				balanceInfo = 10000]]--
			  local localPlayer = g_game.getLocalPlayer()
			  if localPlayer:getPremiumPoints() >= storeProducts[j].price then
                g_game.talk(COMMAND_BUYITEM .. ' ' ..  storeIndex[i].id  .. ', ' .. storeProducts[j].id)
	            acceptWindow:destroy()
	            acceptWindow = nil
			  
			   --[[ local balance = storeWindow:getChildById('balanceInfo'):getChildById('coinBalance'):getText()
			    local unformatted = balance:gsub(',', '')
			    local balanceInfo = tonumber(unformatted)
					balanceInfo = 10000
			    local balanceAfterPurchase = balanceInfo - storeProducts[j].price
				
			  
			    local balanceLabel = storeWindow:getChildById('balanceInfo'):getChildById('coinBalance')
			    balanceLabel:setText((formatNumbers(balanceAfterPurchase)))]]--
			  else
				g_game.talk(COMMAND_BUYITEM)
			    g_platform.openUrl("priogames.com/#!/account")
			    acceptWindow:destroy()
	            acceptWindow = nil

			--ProtocolGame.sendExtendedOpcode(4, "x")
			  end
            end
  
            local cancelFunc = function() acceptWindow:destroy() acceptWindow = nil end
		
		    --transferPointsWindow:setVisible(false)
			
            acceptWindow = displayAcceptBox(tr('Buy ' .. storeProducts[j].name), tr(storeProducts[j].description),
              { { text=tr('Buy'), callback=acceptFunc },
              { text=tr('Cancel'), callback=cancelFunc },
              anchor=AnchorHorizontalCenter }, acceptFunc, cancelFunc)
            return true
		  end
	    end
      end
	end
  end
  
    connect(g_game, {
	onGameStart = refresh,
    onGameEnd = offline
  })
  
  refresh()
  
end

function terminate()
  storeWindow:hide()
  g_keyboard.unbindKeyPress('Ctrl+U')
  --ProtocolGame.unregisterExtendedOpcode(4)
  
  connect(LocalPlayer, {
    onPointsChange = onPointsChange
  })
  
  disconnect(g_game, {
    onGameStart = refresh,
    onGameEnd = offline
  })

end

function onPointsChange(localPlayer, points)
    local balanceLabel = storeWindow:getChildById('balanceInfo'):getChildById('coinBalance')
    balanceLabel:setText(formatNumbers(points))
	--pinfo("PP: "..points.."")
end

function refresh()
	local player = g_game.getLocalPlayer()
	if not player then
		return
	end
end

function offline()
  storeWindow:hide()
end

function toggle()
  if storeWindow:isVisible() then
    onCloseStore()
  else
    onOpenStore()
  end
end

function onOpenStore()
  storeWindow:show()
  storeWindow:raise()
  storeWindow:focus()
  
  local descriptionImage = storeWindow:getChildById('indexDescription'):getChildById('imageDesc')
  descriptionImage:setImageSource(storeIndex[1].image)
	
  local descriptionTitle = storeWindow:getChildById('indexDescription'):getChildById('titleDesc')
  descriptionTitle:setText("#"..storeIndex[1].name)
	
  local description = storeWindow:getChildById('indexDescription'):getChildById('description')
  description:setText(storeIndex[1].description)

  local productsPanel = storeWindow:getChildById('productList')
  local children = productsPanel:getChildren()
  for k = 1, #children do
    children[k]:destroy()
  end

  for j=1, #storeProducts do
	if storeIndex[1].id == storeProducts[j].category_id then
	  local productLabel = g_ui.createWidget('ProductButton', productList)
			
	  productLabel:setId(j)
	  productLabel:setTooltip(storeProducts[j].tooltip)
	  local productLabelTitle = storeWindow:getChildById('productList'):getChildById(j):getChildById('productLabelTitle')
	  productLabelTitle:setText(short(storeProducts[j].name))
	  		
	  local productLabelImage = storeWindow:getChildById('productList'):getChildById(j):getChildById('productLabelImage')
	  productLabelImage:setImageSource(storeProducts[j].image)
	  
	  if storeProducts[j].category_id == "5" then
		  local outfitBefore = storeWindow:getChildById('productList'):getChildById(j):getChildById('outfitBefore')
		 -- outfitBefore:setOutfit(g_game.getLocalPlayer():getOutfit())
	  end
	  
	  if storeProducts[j].category_id == "4" then
		  local outfitAfter = storeWindow:getChildById('productList'):getChildById(j):getChildById('outfitAfter')
		 -- outfitAfter:setOutfit(g_game.getLocalPlayer():getOutfit())
	  end
	  --pinfo(storeProducts[j].category_id)
			
      local productLabelTokenPrice = storeWindow:getChildById('productList'):getChildById(j):getChildById('productLabelTokenPrice')
	  productLabelTokenPrice:setText(formatNumbers(storeProducts[j].price))
	  
	  local buyWindow = storeWindow:getChildById('productList'):getChildById(j)
	  buyWindow.onClick = function(self)
        if acceptWindow then
          return true
        end

        local acceptFunc = function()
		  --[[local balance = storeWindow:getChildById('balanceInfo'):getChildById('coinBalance'):getText()
		  local unformatted = balance:gsub(',', '')
		  unformatted = balance:gsub(' ', '')
		  unformatted = balance:gsub('.', '')]]--
		  
		  local localPlayer = g_game.getLocalPlayer()
		  if localPlayer:getPremiumPoints() >= storeProducts[j].price then
            g_game.talk(COMMAND_BUYITEM .. ' ' ..  storeIndex[1].id  .. ', ' .. storeProducts[j].id)
	        acceptWindow:destroy()
	        acceptWindow = nil
			  
		   --[[ local balance = storeWindow:getChildById('balanceInfo'):getChildById('coinBalance'):getText()
		    local unformatted = balance:gsub(',', '')
		    local balanceInfo = tonumber(unformatted)
		    local balanceAfterPurchase = balanceInfo - storeProducts[j].price
			  
		    local balanceLabel = storeWindow:getChildById('balanceInfo'):getChildById('coinBalance')
		    balanceLabel:setText((formatNumbers(balanceAfterPurchase)))]]--
		  else
			g_game.talk(COMMAND_BUYITEM)
		    g_platform.openUrl("priogames.com/#!/account")
			acceptWindow:destroy()
	        acceptWindow = nil

			--ProtocolGame.sendExtendedOpcode(4, "x")
		  end
        end
  
        local cancelFunc = function() acceptWindow:destroy() acceptWindow = nil end
		
		--transferPointsWindow:setVisible(false)
		
        acceptWindow = displayAcceptBox(tr('Buy ' .. storeProducts[j].name), tr(storeProducts[j].description),
          { { text=tr('Buy'), callback=acceptFunc },
          { text=tr('Cancel'), callback=cancelFunc },
          anchor=AnchorHorizontalCenter }, acceptFunc, cancelFunc)
        return true
	  end
	end
  end
end

function onCloseStore()
  storeWindow:hide()
  --transferPointsWindow:setVisible(false)
  if acceptWindow then
    acceptWindow:destroy()
	acceptWindow = nil
  end
end

function getCoins()
--io.popen('start ' .. WEBSITE_GETCOINS)
 g_platform.openUrl("priogames.com/#!/account")
end