-- @docclass
g_effects = {}

function g_effects.fadeIn(widget, time, elapsed)
  if not elapsed then elapsed = 0 end
  if not time then time = 300 end
  widget:setOpacity(math.min(elapsed/time, 1))
  removeEvent(widget.fadeEvent)
  if elapsed < time then
    removeEvent(widget.fadeEvent)
    widget.fadeEvent = scheduleEvent(function()
      g_effects.fadeIn(widget, time, elapsed + 30)
    end, 30)
  else
    widget.fadeEvent = nil
  end
end

function g_effects.fadeOut(widget, time, elapsed)
  if not elapsed then elapsed = 0 end
  if not time then time = 300 end
  elapsed = math.max((1 - widget:getOpacity()) * time, elapsed)
  removeEvent(widget.fadeEvent)
  widget:setOpacity(math.max((time - elapsed)/time, 0))
  if elapsed < time then
    widget.fadeEvent = scheduleEvent(function()
      g_effects.fadeOut(widget, time, elapsed + 30)
    end, 30)
  else
    widget.fadeEvent = nil
  end
end

function g_effects.cancelFade(widget)
  removeEvent(widget.fadeEvent)
  widget.fadeEvent = nil
end

function g_effects.startBlink(widget, duration, interval, clickCancel)
  duration = duration or 0 -- until stop is called
  interval = interval or 500
  clickCancel = clickCancel or true

  removeEvent(widget.blinkEvent)
  removeEvent(widget.blinkStopEvent)

  widget.blinkEvent = cycleEvent(function()
    widget:setOn(not widget:isOn())
  end, interval)

  if duration > 0 then
    widget.blinkStopEvent = scheduleEvent(function()
      g_effects.stopBlink(widget)
    end, duration)
  end

  connect(widget, { onClick = g_effects.stopBlink })
end

function g_effects.stopBlink(widget)
  disconnect(widget, { onClick = g_effects.stopBlink })
  removeEvent(widget.blinkEvent)
  removeEvent(widget.blinkStopEvent)
  widget.blinkEvent = nil
  widget.blinkStopEvent = nil
  widget:setOn(false)
end

function g_effects.startFlying(widget, duration, interval, clickCancel)
  duration = duration or 0 -- until stop is called
  interval = interval or 500
  clickCancel = clickCancel or true

  removeEvent(widget.flyingEvent)
  removeEvent(widget.flyingStopEvent)

  widget.flyingEvent = cycleEvent(function()
	removeEvent(widget.Event1)
	removeEvent(widget.Event2)
	removeEvent(widget.Event3)
	removeEvent(widget.Event4)
	removeEvent(widget.Event5)
	removeEvent(widget.Event6)
	widget.Event1 = scheduleEvent(function() widget:setMarginBottom(-1) end, 50)
	widget.Event2 = scheduleEvent(function() widget:setMarginBottom(-2) end, 150)
	widget.Event3 = scheduleEvent(function() widget:setMarginBottom(-3) end, 250)
	widget.Event4 = scheduleEvent(function() widget:setMarginBottom(-2) end, 350)
	widget.Event5 = scheduleEvent(function() widget:setMarginBottom(-1) end, 450)
	widget.Event6 = scheduleEvent(function() widget:setMarginBottom(0) end, 550)
  end, interval)

  if duration > 0 then
    widget.blinkStopEvent = scheduleEvent(function()
      g_effects.stopFlying(widget)
    end, duration)
  end

  connect(widget, { onClick = g_effects.stopFlying })
end

function g_effects.stopFlying(widget)
  disconnect(widget, { onClick = g_effects.stopFlying })
  removeEvent(widget.flyingEvent)
  removeEvent(widget.flyingStopEvent)
  widget.flyingEvent = nil
  widget.flyingStopEvent = nil
  widget:setOn(false)
end
