include('shared.lua')

function ENT:Draw()
    self:DrawModel()
end

netstream.Hook( 'spawnSound', function() 

    local spawnSounds = {
        'https://static.wikia.nocookie.net/dota2_ru_gamepedia/images/b/b2/Meepo_respawn_02_ru.mp3/revision/latest?cb=20170413071556',
        'https://static.wikia.nocookie.net/dota2_ru_gamepedia/images/d/da/Meepo_respawn_07_ru.mp3/revision/latest?cb=20170413071620',
        'https://static.wikia.nocookie.net/dota2_ru_gamepedia/images/a/a4/Meepo_respawn_10_ru.mp3/revision/latest?cb=20170413071634',
        'https://static.wikia.nocookie.net/dota2_ru_gamepedia/images/8/82/Meepo_bottle_03_ru.mp3/revision/latest?cb=20170413065521',
        'https://static.wikia.nocookie.net/dota2_ru_gamepedia/images/a/a1/Meepo_purch_01_ru.mp3/revision/latest?cb=20170413071459',
        'https://static.wikia.nocookie.net/dota2_ru_gamepedia/images/8/81/Meepo_deny_09_ru.mp3/revision/latest?cb=20170413065726',
        'https://static.wikia.nocookie.net/dota2_ru_gamepedia/images/c/ca/Meepo_deny_12_ru.mp3/revision/latest?cb=20170413065740',    
    }

    sound.PlayURL( table.Random(spawnSounds), "mono", function( station1 )
        if IsValid(station1) then 
        station1:SetVolume(5) 
        station1:Play() else LocalPlayer():ChatPrint('ERROR') end
    end )

end)


netstream.Hook('eventSound', function(c,a)

    local pickSounds = {
        'https://static.wikia.nocookie.net/dota2_ru_gamepedia/images/3/33/Meepo_death_12_ru.mp3/revision/latest?cb=20170413065635',
        'https://static.wikia.nocookie.net/dota2_ru_gamepedia/images/f/f8/Meepo_lasthit_03_ru.mp3/revision/latest?cb=20170413070628',
        'https://static.wikia.nocookie.net/dota2_ru_gamepedia/images/9/93/Meepo_death_13_ru.mp3/revision/latest?cb=20170413065640',
        'https://static.wikia.nocookie.net/dota2_ru_gamepedia/images/6/6c/Meepo_death_09_ru.mp3/revision/latest?cb=20170413065621',
        'https://static.wikia.nocookie.net/dota2_ru_gamepedia/images/7/7f/Meepo_death_14_ru.mp3/revision/latest?cb=20170413065645',
    }

    sound.PlayURL( table.Random(pickSounds), "mono", function( station )
        if IsValid(station) then 
        station:SetVolume(5) 
        station:Play() else LocalPlayer():ChatPrint('ERROR') end
    end )

end)

netstream.Hook( 'eventSparks', function()

	local ply = LocalPlayer()
	em = ParticleEmitter(ply:GetPos())
		for i=0, 50 do
			local part = em:Add( "effects/spark", ply:GetPos() + VectorRand()*math.random(-30,30) + Vector(math.random(1,10),math.random(1,10),math.random(50,175)) )
			part:SetAirResistance( 100 )
			part:SetBounce( 0.3 )
			part:SetCollide( true )
			part:SetColor( math.random(10,250),math.random(10,250),math.random(10,250),255 )
			part:SetDieTime( 2 )
			part:SetEndAlpha( 0 )
			part:SetEndSize( 0 )
			part:SetGravity( Vector( 0, 0, -250 ) )
			part:SetRoll( math.Rand(0, 360) )
			part:SetRollDelta( math.Rand(-7,7) )    
			part:SetStartAlpha( math.Rand( 80, 250 ) )
			part:SetStartSize( math.Rand(6,12) )
			part:SetVelocity( VectorRand() * 75 )
		end
	em:Finish()

end)