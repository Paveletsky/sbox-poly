-- хуй

GM = GAMEMODE or GM

library.shared('funcs/lib')

library.client('chips/restart/client')
library.server('chips/restart/server')

library.shared('api/webhook')

library.client('chips/buildzone/client')
library.server('chips/buildzone/server')
library.server('chips/ranks')
library.client('chips/welcome')

library.shared('library/netwrapper/sh_netwrapper')
library.client('library/netwrapper/cl_netwrapper')
library.server('library/netwrapper/sv_netwrapper')

library.shared('library/netstream')
library.shared('library/netstream2')

library.module('library/netwrapper')

library.shared('library/promise')
library.shared('library/pon')
library.shared('library/string')
library.shared('library/von')
library.shared('library/utf8')

local function spawnColide(ply)
    ply:SetCollisionGroup(11)
end

local function leaveVeh(ply)
	ply:SetCollisionGroup(11)
end

hook.Add( "PlayerSpawn", "onSpawn", spawnColide)
hook.Add("PlayerLeaveVehicle", "onLeave.vehicle", leaveVeh)

chipPussy = {
    'STEAM_0:1:1852784401', 
}

chipDev = {
    'STEAM_0:0:305188797',  
}

-- hook.Add( "PlayerSpawn", "checkChips", function()

--     timer.Create( "startCheck", 5, 0, function(ply) 
    
--         local steamid = ply:SteamID()

--         if (table.HasValue(chipPussy, steamid)) then
--             ply:SetNetVar( 'hasPussy', true ) else ply:SetNetVar( 'hasPussy', false )
--         end

--         if (table.HasValue(chipDev, steamid)) then
--             ply:SetNetVar( 'isDev', true )
--         end
    
--     end )

-- end)

--
-- pointboy event by Lasexille
--

local function checkBoy()

    if SERVER then

        for k, v in pairs( ents.FindByClass( "event_pointboy" ) ) do
        
            v:Remove()

        end

    end

end


if SERVER then

    local function createBoy( ply )

        local spawnPoints = { 

            { Vector( 195, -255, -11095 ), Angle(0, 118, 0), 'Гнома увидели в окошке домика' },
            { Vector( -887, -4098, -10452 ), Angle(0, -144, 0), 'Дом показывает срамоту в окне многоэтажки' },
            { Vector( 2295, 12475, -11280 ), Angle(4, -8, -0), 'Гном ловит рыбу у водоема' },
            { Vector( -11091, 533, -11137 ), Angle(0, 14, 0), 'Гном собирается уезжать на автобусе' },
            { Vector( -1085, -7430, 576 ), Angle(0, 273, 0), 'Гном проказничает на вышке' },

        }

        local rand = math.random( #spawnPoints )
        local ent = ents.Create( 'event_pointboy' )

        ent:SetPos( spawnPoints[rand][1] )
        ent:SetAngles( spawnPoints[rand][2] )
        ent:Spawn()

        RunConsoleCommand( 'ulx', 'csay', '[~] Гном сбежал из огорода вместе с пойнтами, найдите его и заберите пойнты себе!')

        -- if ply:IsAdmin() then
        --     -- ply:ChatPrint('[~ Admins] Гном заспавнился ' .. spawnPoints[rand][3] )
        -- end

        for _, pl in pairs( player.GetAll() ) do
            netstream.Start( pl, 'poly.sendNotify', 4, spawnPoints[rand][3] .. ', ловите его!' )
        end

        if ent:GetPos() == Vector( -1085, -7430, 576 ) then ent:SetModel( 'models/gta_prop_michou/prop_gnome3.mdl' ) end
        if ent:GetPos() == Vector( -887, -4098, -10452 ) then ent:SetModel( 'models/gta_prop_michou/prop_gnome3.mdl' ) end
        if ent:GetPos() == Vector( 2295, 12475, -11280 ) then 
            ent:SetModel( 'models/gta_prop_michou/prop_gnome1.mdl' )  
            ent:SetModelScale( 3 )
        end

        netstream.Start( ply, 'spawnSound' )
        

    end

    timer.Create( 'checkerBoys', 500, 0, checkBoy )
    timer.Create( 'spawnerBoys', 502, 0, createBoy )

    -- timer.Destroy( 'checkerBoys' )
    -- timer.Destroy( 'spawnerBoys' )

    -- for k, d in pairs( ents.FindByClass( "event_pointboy" ) ) do
    --     print( d:GetPos() )
    --     print( d:GetAngles() )
    -- end

end