surface.CreateFont('restartFont', {
	font = 'Calibri',
	extended = true,
	size = 36,
	weight = 350,
})

local function resTime(time)
	
	local m, s = math.floor(time / 60) % 60, math.floor(time) % 60
	return string.format('Перезагрузка сервера через %02i:%02i', m, s)

end

local restartTime = 0
local function drawOverlay()

	local x, y = ScrW() / 2, ScrH() - 1050
	local timeLeft = restartTime - CurTime()
	local text = resTime(math.max(timeLeft, 0))
	local res = 'Перезагружаемся...'

	local f = {
		text = text,
		font = 'restartFont',
		pos = { x, y },
		color = color_white,
		xalign = TEXT_ALIGN_CENTER,
		yalign = TEXT_ALIGN_CENTER,
	}

	draw.Text(f)

end

local function resText()

	local x, y = ScrW() / 2, ScrH() - 1050

	local q = {
		text = 'Перезагружаемся...',
		font = 'restartFont',
		pos = { x, y },
		color = color_white,
		xalign = TEXT_ALIGN_CENTER,
		yalign = TEXT_ALIGN_CENTER,
	}

	draw.Text(q)

end

local function checkAccess()

	chat.AddText(Color(255, 0, 0), '[~] Недоступно обычным игрокам.')
	surface.PlaySound( "buttons/button15.wav" )

end

concommand.Add( 'dev_restart', function(ply, cmd, args, delay)

	if ply:SteamID() ~= 'STEAM_0:0:30588797' then checkAccess() return false end

	restartTime = CurTime() + delay
	hook.Add('HUDPaint', 'restartCmd', drawOverlay)
	
	timer.Simple(delay, function()

		hook.Remove('HUDPaint', 'restartCmd')
		hook.Add('HUDPaint', 'restartCmd', resText)

		netstream.Start( 'goRestart' )

	end)	

end)

