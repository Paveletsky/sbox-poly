--
-- jetpack
--

local accessGroups = library.toKeys({

    'd_lux',
    'd_exclusive',
    'd_premium',
    'd_sponsor',
    'superadmin',
    'admin',

})

hook.Add( 'PlayerInitialSpawn', 'polyshop.checkChips', function( ply )

    timer.Simple( 50, function()

        if !IsValid( ply ) then return false end

        for k, v in pairs( shop_chips ) do

            if ply:GetPData( 'polyshop.chipTime-' .. v.key ) == os.date( "%Y/%m/%d", os.time() ) then 
                    ply:RemovePData( 'polyshop.chipTime-' .. v.key ) 
                ply:RemovePData( 'polyshop.chipName-' .. v.key )

                ply:EmitSound( "friends/message.wav", 75, 100, 1 )
                netstream.Start( ply, 'poly.sendNotify', 1, 'Время действия фишки закончилось!' )

            end

        end

    end)

end)

hook.Add( 'PlayerSpawnSENT', 'polyshop.blockSpawn', function( ply, class )

    if ( ply:GetPData( 'polyshop.chipName-Jet' ) != 'true' and class == 'sneakyjetpack' ) then

        netstream.Start( ply, 'poly.sendNotify', 1, 'Джетпак доступен только при покупке.' )
        
           ply:EmitSound( 'ambient/creatures/rats1.wav', 75, 100, 15 )

        return false

	end


    if ( class == 'event_pointboy' ) then

        netstream.Start( ply, 'poly.sendNotify', 1, 'Шо ты удумал?' )

            ply:EmitSound( 'ambient/creatures/teddy.wav', 75, 100, 15 )

        return false

	end

    if ( ply:GetPData( 'polyshop.chipName-builderTool' ) != 'true' and class == 'gmod_playx' or class == 'gmod_playx_repeater' ) then

        netstream.Start( ply, 'poly.sendNotify', 1, 'Доступно только в наборе #1.' )
        
           ply:EmitSound( 'ambient/creatures/rats1.wav', 75, 100, 15 )

        return false

	end

end)

local restrictionTools = library.toKeys ({
    
    'witchergate',
    'streamradio',
    'unbreakable',

})

hook.Add( "CanTool", "CanToolExample", function( ply, tr, toolname, tool, button )

    if ply:GetPData( 'polyshop.chipName-builderTool' ) != 'true' and restrictionTools[toolname] then

        netstream.Start( ply, 'poly.sendNotify', 1, 'Данный инструмент доступен только при покупке.' )

            ply:EmitSound( 'ambient/creatures/teddy.wav', 75, 100, 15 ) 

        return false

    end

end )