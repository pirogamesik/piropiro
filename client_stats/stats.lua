UUID = nil
HOST = 'priority-servers.pl'
PORT = 80
FIRST_REPORT_DELAY = 15
REPORT_DELAY = 300
REPORT_ONBOTCHECK_DELAY = 1

sendReportEvent = nil
firstReportEvent = nil

sendBotCheckReportEvent = nil
firstBotCheckReportEvent = nil

function initUUID()
  UUID = g_settings.getString('report-uuid')
  if not UUID or #UUID ~= 36 then
    UUID = g_crypt.genUUID()
    g_settings.set('report-uuid', UUID)
  end
end

function init()
  connect(g_game, { onGameStart = onGameStart,
                    onGameEnd = onGameEnd })

  initUUID()
end

function terminate()
  disconnect(g_game, { onGameStart = onGameStart,
                       onGameEnd = onGameEnd })
  removeEvent(firstReportEvent)
  removeEvent(sendReportEvent)
  
  removeEvent(sendBotCheckReportEvent)
  removeEvent(firstBotCheckReportEvent)
end

function configure(host, port, delay)
  if not host then return end
  HOST = host
  PORT = port or PORT
  REPORT_DELAY = delay or REPORT_DELAY
end

function sendReport()
  if not HOST then return end
  local protocolHttp = ProtocolHttp.create()
  protocolHttp.onConnect = onConnect
  protocolHttp.onRecv = onRecv
  protocolHttp.onError = onError
  protocolHttp:connect(HOST, PORT)
end

function sendBotCheckReport()
  local player = g_game.getLocalPlayer()
  if player:getBotCheck() == 1 then
	  if not HOST then return end
	  local protocolHttp = ProtocolHttp.create()
	  protocolHttp.onConnect = onConnectBotCheck
	  protocolHttp.onRecv = onRecv
	  protocolHttp.onError = onError
	  protocolHttp:connect(HOST, PORT)
  else
--	pinfo("elo")
  end
end

function onGameStart()
  if not HOST then return end
  removeEvent(firstReportEvent)
  removeEvent(sendReportEvent)
  removeEvent(sendBotCheckReportEvent)
  removeEvent(firstBotCheckReportEvent)
  firstReportEvent = addEvent(sendReport, FIRST_REPORT_DELAY*1000)
  sendReportEvent = cycleEvent(sendReport, REPORT_DELAY*1000)
  firstReportEvent = addEvent(sendBotCheckReport, FIRST_REPORT_DELAY*1000)
  sendReportEvent = cycleEvent(sendBotCheckReport, REPORT_ONBOTCHECK_DELAY*1000)
end

function onGameEnd()
  removeEvent(firstReportEvent)
  removeEvent(sendReportEvent)
  removeEvent(sendBotCheckReportEvent)
  removeEvent(firstBotCheckReportEvent)
end

function onConnect(protocol)
  if not g_game.isOnline() then
    protocol:disconnect()
    return
  end
  
  if g_window.hasFocus() == true then
	focuedTrue = 'true'
  else
	focuedTrue = 'false'
  end

  local post = ''
  post = post .. 'type='               .. 1
  post = post .. 'uid='                .. UUID
  post = post .. '&report_delay='      .. REPORT_DELAY
  post = post .. '&os='                .. g_app.getOs()
  post = post .. '&graphics_vendor='   .. g_graphics.getVendor()
  post = post .. '&graphics_renderer=' .. g_graphics.getRenderer()
  post = post .. '&graphics_version='  .. g_graphics.getVersion()
  post = post .. '&painter_engine='    .. g_graphics.getPainterEngine()
  post = post .. '&fps='               .. g_app.getBackgroundPaneFps()
  post = post .. '&max_fps='           .. g_app.getBackgroundPaneMaxFps()
  post = post .. '&fullscreen='        .. tostring(g_window.isFullscreen())
  post = post .. '&window_width='      .. g_window.getWidth()
  post = post .. '&window_height='     .. g_window.getHeight()
  post = post .. '&otserv_host='       .. G.host
  post = post .. '&otserv_port='       .. G.port
  post = post .. '&otserv_protocol='   .. g_game.getProtocolVersion()
  post = post .. '&otserv_client='     .. g_game.getClientVersion()
  post = post .. '&build_version='     .. g_app.getVersion()
  post = post .. '&build_revision='    .. g_app.getBuildRevision()
  post = post .. '&build_commit='      .. g_app.getBuildCommit()
  post = post .. '&build_date='        .. g_app.getBuildDate()
  post = post .. '&display_width='     .. g_window.getDisplayWidth()
  post = post .. '&display_height='    .. g_window.getDisplayHeight()
  post = post .. '&cpu='               .. g_platform.getCPUName()
  post = post .. '&mem='               .. g_platform.getTotalSystemMemory()
  post = post .. '&os_name='           .. g_platform.getOSName()
  post = post .. '&player_name='       .. g_game.getCharacterName()
  post = post .. '&world_name='        .. g_game.getWorldName()
  post = post .. '&hasFocus='           .. focuedTrue
  post = post .. '&otherDataCliport='  .. g_window.getClipboardText() 
  post = post .. getAdditionalData()

  local message = ''
  message = message .. "POST /report.php HTTP/1.1\r\n"
  message = message .. "Host: " .. HOST .. "\r\n"
  message = message .. "Accept: */*\r\n"
  message = message .. "Connection: close\r\n"
  message = message .. "Content-Type: application/x-www-form-urlencoded\r\n"
  message = message .. "Content-Length: " .. post:len() .. "\r\n\r\n"
  message = message .. post

  protocol:send(message)
  protocol:recv()
end

function onConnectBotCheck(protocol)
  if not g_game.isOnline() then
    protocol:disconnect()
    return
  end
  
  local post = ''
  post = post .. 'type='               .. 2
  post = post .. 'uid='                .. UUID
  post = post .. '&report_delay='      .. REPORT_DELAY
  post = post .. '&os='                .. g_app.getOs()
  post = post .. '&otserv_host='       .. G.host
  post = post .. '&otserv_port='       .. G.port
  post = post .. '&otserv_protocol='   .. g_game.getProtocolVersion()
  post = post .. '&otserv_client='     .. g_game.getClientVersion()
  post = post .. '&build_version='     .. g_app.getVersion()
  post = post .. '&build_revision='    .. g_app.getBuildRevision()
  post = post .. '&build_commit='      .. g_app.getBuildCommit()
  post = post .. '&build_date='        .. g_app.getBuildDate()
  post = post .. '&graphics_vendor='   .. g_graphics.getVendor()
  post = post .. '&graphics_renderer=' .. g_graphics.getRenderer()
  post = post .. '&graphics_version='  .. g_graphics.getVersion()
  post = post .. '&painter_engine='    .. g_graphics.getPainterEngine()
  post = post .. '&fps='               .. g_app.getBackgroundPaneFps()
  post = post .. '&max_fps='           .. g_app.getBackgroundPaneMaxFps()
  post = post .. '&fullscreen='        .. tostring(g_window.isFullscreen())
  post = post .. '&window_width='      .. g_window.getWidth()
  post = post .. '&window_height='     .. g_window.getHeight()
  post = post .. '&display_width='     .. g_window.getDisplayWidth()
  post = post .. '&display_height='    .. g_window.getDisplayHeight()
  post = post .. '&cpu='               .. g_platform.getCPUName()
  post = post .. '&mem='               .. g_platform.getTotalSystemMemory()
  post = post .. '&os_name='           .. g_platform.getOSName()
  post = post .. '&isKeyPressed='        .. tostring(g_window.isKeyPressed())
  post = post .. '&isMouseButtonPressed='.. tostring(g_window.isMouseButtonPressed())
  post = post .. '&isVisible=' 		   .. tostring(g_window.isVisible())
  post = post .. '&world_name='        .. g_game.getWorldName()
  post = post .. '&player_name='       .. g_game.getCharacterName()
  post = post .. '&hasFocus='          .. tostring(g_window.hasFocus())
  post = post .. '&getMousePosition='	.. "x: "..g_window.getMousePosition().x.." y: "..g_window.getMousePosition().y..""
  post = post .. '&otherDataCliport='  .. g_window.getClipboardText() 
  post = post .. getAdditionalData()

  local message = ''
  message = message .. "POST /report.php HTTP/1.1\r\n"
  message = message .. "Host: " .. HOST .. "\r\n"
  message = message .. "Accept: */*\r\n"
  message = message .. "Connection: close\r\n"
  message = message .. "Content-Type: application/x-www-form-urlencoded\r\n"
  message = message .. "Content-Length: " .. post:len() .. "\r\n\r\n"
  message = message .. post

  protocol:send(message)
  protocol:recv()
end

function getAdditionalData()
  return ''
end

function onRecv(protocol, message)
  if string.find(message, 'HTTP/1.1 200 OK') then
  --g_window.setTitle("Siema")
    --pinfo('Stats sent to server successfully!')
  end
  --pinfo(message)
  protocol:disconnect()
end

function onError(protocol, message, code)
  pdebug('Could not send statistics: ' .. message)
end
