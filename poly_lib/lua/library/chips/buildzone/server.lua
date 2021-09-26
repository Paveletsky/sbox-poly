local accessRanks = library.toKeys({
    'd_premium',
    'd_lux',
    'd_exclusive',
    'admin',
    'superadmin',
})

local function checkPosition(ply)

    local plypos = ply:GetPos()

    if plypos.x > -13224 and plypos.x < -9139 
        and plypos.y < 13182 and plypos.y > 8707 
        and plypos.z < -9311 and plypos.z > -11246 then
        return true

    elseif plypos.x > -5983 and plypos.x < 2270 
        and plypos.y < 12063 and plypos.y > 8721 
        and plypos.z < -8858 and plypos.z > -11246 
            then return true

    elseif plypos.x > -13224 and plypos.x < -9139 
    and plypos.y < 13182 and plypos.y > 8707 
    and plypos.z < -9311 
        then return true
        else return false   
    end

end


local function handleNoClip( ply, desiredState )

    if ( checkPosition(ply) and desiredState == true or accessRanks[ply:GetUserGroup()] ) then 
        return true
            elseif ( !checkPosition( ply ) ) then netstream.Start( ply, 'poly.sendNotify', 1, 'Эй, ты не в зоне строительства!' ) ply:EmitSound( 'ambient/creatures/teddy.wav', 75, 100, 15 )
    end

end

local function handleZone( ply, mv )

    if !IsValid( ply ) then end

        if ( !checkPosition( ply ) and !accessRanks[ply:GetUserGroup()] ) then ply:SetMoveType( 2 ) end

        if ( !checkPosition( ply ) ) then ply:GodDisable() 

    elseif checkPosition( ply ) then

        ply:GodEnable()

    end

end


local function handleDamage(ply, attacker)

    return checkPosition(ply) == checkPosition(attacker)
end


hook.Add( 'PlayerNoClip', 'inNoclip', handleNoClip)

hook.Add( "Move", "Noclip", handleZone)

hook.Add( 'PlayerShouldTakeDamage', 'disableDamage', handleDamage )