lib = lib or {}

lib.maps = {
  gm_bigcity_improved = {
    'buildZone1', Vector(-2057, -2128, 0), Vector(2029, 2347, 1825), Vector(-11181, 10836, -11135),
    'buildZone2', Vector(-5983, 8720, -8814), Vector(2271, 12063, -11079), Vector(0, 0, -63)
  },
}

  local mins1 = lib.maps[game.GetMap()] and lib.maps[game.GetMap()][2] or Vector(0,0,0)
  local maxs1 = lib.maps[game.GetMap()] and lib.maps[game.GetMap()][3] or Vector(0,0,0)
  local gens1 = lib.maps[game.GetMap()] and lib.maps[game.GetMap()][4] or Vector(0,0,0)

  local mins2 = lib.maps[game.GetMap()] and lib.maps[game.GetMap()][6] or Vector(0,0,0)
  local maxs2 = lib.maps[game.GetMap()] and lib.maps[game.GetMap()][7] or Vector(0,0,0)
  local gens2 = lib.maps[game.GetMap()] and lib.maps[game.GetMap()][8] or Vector(0,0,0)

hook.Add('PostDrawOpaqueRenderables', 'drawZone', function( ply )

  local angs1,angs2 = Angle( 0, 0, 0 ), Angle(0,0,0)
    
    render.DrawWireframeBox( gens1, angs1, mins1, maxs1, Color( 134, 208, 145 ), true)
    render.DrawWireframeBox( gens2, angs2, mins2, maxs2, Color( 134, 208, 145 ), true)
    -- render.DrawWireframeBox( gens3, angs3, mins3, maxs3, Color( 134, 208, 145 ), true)

end)

surface.CreateFont('bzFont', {
	font = 'Calibri',
	extended = true,
	size = 30,
	weight = 350,
  xalign = TEXT_ALIGN_CENTER,
})

local spawnTxt = 'Безопасная зона'

local function drawSpawnZone()
	local plypos = LocalPlayer():GetPos()
	
        if plypos.x > -13224 and plypos.x < -9139 
			and plypos.y < 13182 and plypos.y > 8707 
			and plypos.z < -9311 and plypos.z > -11246 or
		
        plypos.x > -5983 and plypos.x < 2270 
			and plypos.y < 12063 and plypos.y > 8721 
			and plypos.z < -8858 and plypos.z > -11246 then
		

		local x, y = ScrW() / 2.23, ScrH() / 50
		draw.WordBox(2, x, y, '  Безопасная зона  ', 'bzFont', Color(0, 0, 0, 150), Color( 255, 255, 255 ))
		draw.WordBox(2, x / 1.12, y + 35, '  Урон отключен, разрешен полет  ', 'bzFont', Color(0, 0, 0, 150), Color( 255, 255, 255 ))
  
  end
end

hook.Add('HUDPaint', 'octoparty-hud', function()

	local ply = LocalPlayer()

	drawSpawnZone()

end)
