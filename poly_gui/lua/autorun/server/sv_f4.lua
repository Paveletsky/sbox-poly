netstream.Hook('getVip', function(ply)
    
    ply:SetNetVar('isPussy', true)
    ply:SetPos(Vector(746, -2759, -10559))

end)

netstream.Hook('notVip', function(ply)
    
    ply:SetNetVar('isPussy', false)
    ply:SetPos(Vector(76, -2759, -10559))

end)

concommand.Add( 'lib_openstore', function( ply )
    netstream.Start( ply, 'openStore' )
end)

hook.Add('ShowSpare2', 'startHook', function( ply)
    netstream.Start( ply, 'f4Open' )
end)

netstream.Hook( 'goBuilding', function( ply ) 

    local coords = { 
        Vector( math.random(-5466, 1555), math.random(11777, 9039), -11079 ),
        Vector( math.random(-12806, -9422), math.random(12895, 8960), -11136 )
    }

    ply:SetPos(table.Random( coords ))

end)

hook.Add( 'PlayerSpawn', 'x', function( ply )
    netstream.Start( ply, 'as.deleteAccessory' )
end)