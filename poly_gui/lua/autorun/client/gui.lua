library.client('fonts')

local noAmmoFor = {
	weapon_physcannon = true,
}

local name, health, armor, ammo1, ammo2 = '', 0, 0, 0, 0
local posOff1, angOff1 = 1, Vector(-10,0,0), Angle()

local function drawGui(ply)

	if not ply:Alive() then return end

		local ply = LocalPlayer()
		local time = string.FormattedTime(ply:GetUTimeTotalTime())
		local format = string.format('%i:%02i:%02i', time.h, time.m, time.s)
		
		local fps = math.Round(1 / RealFrameTime())
		local ping = math.Round( ply:Ping() )

        local top, left = ScrH() - 65, 30

			draw.Text {
				font = "library-hud.large",
				text = 'Polytopia V',
				pos = { 9, 5 },
				xalign = TEXT_ALIGN_LEFT,
				yalign = TEXT_ALIGN_TOP,
				color = Color(200, 200, 200)
			} draw.Text {
				font = "library-hud.small",
				text = "Желаем приятной игры, " .. ply:GetName() .. '!',
				pos = { 10, 40 },
				xalign = TEXT_ALIGN_LEFT,
				yalign = TEXT_ALIGN_TOP,
				color = Color(200, 200, 200)
			}


			local rnkAdmin = library.toKeys({
				'd_lux',
				'd_exclusive',
				'd_sponsor',
			})

			if rnkAdmin[ply:GetUserGroup()] or ply:IsAdmin() then

				draw.Text {
					font = "library-hud.small",
					text = "Ранг администратора",
					pos = { left + 260, top + 15 },
					xalign = TEXT_ALIGN_LEFT,
					yalign = TEXT_ALIGN_BOTTOM,
					color = Color(200, 200, 200, (math.sin(CurTime()) + 1) * 100)
				} draw.Text {
					font = "library-hud.verysmall",
					text = "Не забывайте следить за сервером!",
					pos = { left + 260, top + 35 },
					xalign = TEXT_ALIGN_LEFT,
					yalign = TEXT_ALIGN_BOTTOM,
					color = Color(200, 200, 200, (math.sin(CurTime()) + 1) * 100)
				}

			end


			local wep = ply:GetActiveWeapon()
			if IsValid(wep) and wep:Clip1() ~= -1 and not noAmmoFor[wep:GetClass()] then

				local atxt = math.floor(ammo1) .. ' / ' .. math.floor(ammo2)
				local bottom, right = ScrH() - 10, ScrW() - 15
				
				draw.Text {
					text = atxt,
					font = 'library-hud.medium',
					pos = { left * 63.2, top + 40 },
					xalign = TEXT_ALIGN_RIGHT,
					yalign = TEXT_ALIGN_BOTTOM,
					color = color_white,
				}

			end

			-- draw.RoundedBox(2, left - 10, top - 55, 270, 40, Color(38,50,56, 220)) --38,50,56
			-- draw.RoundedBox(2, left - 10, top - 15, 270, 60, Color(38,50,56, 220)) --38,50,56


		local deathColors = {
			[ "$pp_colour_addr" ] = 0.3,
			[ "$pp_colour_addg" ] = 0,
			[ "$pp_colour_addb" ] = 0,
			[ "$pp_colour_brightness" ] = 0.4,
			[ "$pp_colour_contrast" ] = 0.4,
			[ "$pp_colour_colour" ] = 0,
			[ "$pp_colour_mulr" ] = 2,
			[ "$pp_colour_mulg" ] = 0,
			[ "$pp_colour_mulb" ] = 0
		}

		if ply:Health() < 20 then
			surface.DrawOutlinedRect( left - 10, top - 15, 270, 60, math.floor( math.sin( CurTime() * 5 ) * 5 ) + 1 )
		
			DrawColorModify( deathColors ) 
			DrawMotionBlur( 0.2, 1, 0.01 )
			ply:SetDSP(7)
		else
			ply:SetDSP(0) 
		end

		draw.Text {
			text = format,
			font = 'library-hud.small',
			pos = { left + 1, top  },
			xalign = TEXT_ALIGN_LEFT,
			yalign = TEXT_ALIGN_CENTER,
			color = color_white,
		} draw.Text {
            text = 'PING: ' .. ping,
            font = 'library-hud.small',
            pos = { left + 180, top },
            xalign = TEXT_ALIGN_LEFT,
            yalign = TEXT_ALIGN_CENTER,
            color = Color(255,255,255),
        }

	local w = 250
	draw.RoundedBox(1, left, top + 25, w * health, 6.5, Color(255,20,50)) --222,91,73
	draw.RoundedBox(1, left, top + 20, w * armor, 6.5, Color(30,144,255, 255)) --67,133,209, 255

	ply = LocalPlayer()
	plypos = ply:GetPos()
			local bottom, right = ScrH() - 0, ScrW() - 0

end


local offsetA, offsetB = Vector(10,0,0), Angle()
local function drawPlrs()

	local pos, ang = EyePos(), EyeAngles()

	for i, ply in ipairs(ents.FindInCone(pos, ang:Forward(), 400, 0.9)) do

		if ply:IsPlayer() and ply:Alive() and ply ~= LocalPlayer() then

			local pos, ang
			local head = ply:LookupBone('ValveBiped.Bip01_Head1')

			if head then
				pos, ang = ply:GetBonePosition(head)
			else
				pos, ang = ply:GetShootPos(), ply:EyeAngles()
			end

			local tr = util.TraceLine({
				start = pos,
				endpos = pos,
				filter = ply,
			})

			if not tr.Hit then

				pos, ang = LocalToWorld(offsetA, offsetB, pos, ang)
				local p = pos:ToScreen()
				p.x, p.y = math.floor(p.x), math.floor(p.y)

				local name = ply:Name()
				local rank = team.GetName( ply:Team() ) 
				local rankclr = team.GetColor( ply:Team() )
				
                draw.Text {
					text = name,
					font = 'library-hud.normal',
					pos = { p.x, p.y - 10 },
					xalign = TEXT_ALIGN_CENTER,
					yalign = TEXT_ALIGN_CENTER,
					color = Color(255,255,255, 200),
				} draw.Text {
					text = rank,
					font = 'library-hud.normal',
					pos = { p.x, p.y - 35 },
					xalign = TEXT_ALIGN_CENTER,
					yalign = TEXT_ALIGN_CENTER,
					color = rankclr,
				} 

				local w = 0
				local w2 = w / 2
				draw.RoundedBox(4, p.x - w2, p.y - 24, w, 4, Color(38,50,56))
				draw.RoundedBox(4, p.x - w2, p.y - 24, w * math.Clamp(ply:Health() / ply:GetMaxHealth(), 0, 1), 6, Color(222,91,73))
				draw.RoundedBox(3, p.x - w2, p.y - 24, w * math.Clamp(ply:Armor() / 100, 0, 1), 6, Color(67,133,209, 255))
			
			end

		end

	end

end

local function richApproach(from, to, fraction, min)

	local delta = math.max(math.abs((to - from) * fraction), min) * FrameTime()
	return math.Approach(from, to, delta)

end

hook.Add('Think', 'library-hud', function()

	local ply = LocalPlayer()
	if not IsValid(ply) then return end

	name = ply:Name()

	local showHealth = richApproach(health, math.Clamp(ply:Health() / ply:GetMaxHealth(), 0, 1), 5, 0.1)
	
	if showHealth ~= health then fadeAfter1 = CurTime() + 3 end
	health = showHealth

	local showArmor = richApproach(armor, math.Clamp(ply:Armor() / 100, 0, 1), 5, 0.2)
	
	if showArmor ~= armor then fadeAfter1 = CurTime() + 3 end
	armor = showArmor

	local wep = ply:GetActiveWeapon()
	if IsValid(wep) then
		local newammo1 = wep:Clip1()
		ammo1 = newammo1

		local newammo2 = richApproach(ammo2, ply:GetAmmoCount(wep:GetPrimaryAmmoType()), 5, 1)
		ammo2 = newammo2
	end

end)

hook.Add('HUDPaint', 'library-hud', function()

	local ply = LocalPlayer()

	drawGui(ply)
	drawPlrs()

end)


local hideHUDElements = {
	-- CHudCrosshair = true,
	CHudHealth = true,
	CHudBattery = true,
	CHudAmmo = true,
	CHudSecondaryAmmo = true
}

hook.Add('HUDShouldDraw', 'library-hud', function(name)

	if hideHUDElements[name] then return false end
	
end)

local mInp = false

local function showMouse()

  mInp = not mInp
  gui.EnableScreenClicker(mInp)

end

local keys = {
	gm_showspare1 = showMouse,
}

hook.Add('PlayerBindPress', 'octoparty-gui', function(ply, bind, pressed)

	local toggle = keys[bind]
	if toggle then toggle() end

end)
