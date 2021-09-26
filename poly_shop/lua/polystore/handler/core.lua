local meta = FindMetaTable( "Player" )

function meta:GetMoney()
	return tonumber( self:GetPData("donator_money", 0) )
end

function meta:HasMoney( count )
	return self:GetMoney() >= count
end

function meta:SetMoney( count )
	self:SetPData( "donator_money", count )
	self:SetNWInt("donator_money", count)
end

function meta:GiveMoney( count )
	self:SetMoney( self:GetMoney() + count )
end

function meta:TakeMoney( count )
	self:SetMoney( self:GetMoney() - count )
end

hook.Add( "PlayerInitialSpawn", "DonatorMoney_SetOnJoin", function(ply)
	if ply:GetMoney() ~= 0 then
		ply:SetNWInt("donator_money",ply:GetMoney())
	end
end)

-- timer.Create('check', 2, 0, function(ply)

-- 	for _, a in pairs(player.GetAll()) do
-- 		if a:GetMoney() ~= 0 then
-- 			a:SetNWInt("donator_money",a:GetMoney())
-- 		end
-- 	end

-- 	print('GET BALANCE')

-- end)

timer.Destroy( 'check' )

concommand.Add( "donatormoney_add", function(ply, _, args)
	if IsValid( ply ) and not ply:IsSuperAdmin() then return end
	local sid, num = args[1], tonumber(args[2])
	if not num then MsgC( Color(255,100,0), "[~ Poly] ", Color(255,255,255), "Неверное кол-во\n") return end
	local steamid_valid = true
	if not steamid_valid then
		MsgC( Color(255,100,0), "[~ Poly] ", Color(255,255,255), "Неверно указан SteamID\n")
		return
	end

	local ply = player.GetBySteamID(sid)
	if IsValid(ply) then
		MsgC( Color(255,120,0), "[~ Poly] ", Color(255,255,255), "Игрок онлайн, деньги выданы\n")
		ply:GiveMoney(num) return
	else
		MsgC( Color(255,120,0), "[~ Poly] ", Color(255,255,255), "Игрок оффлайн, зачислено на счет "..sid.."\n")
		util.SetPData( sid, "donator_money", util.GetPData(sid, "donator_money",0) + num ) return
	end
end)

concommand.Add( "donatormoney_set", function(ply, _, args)
	if IsValid( ply ) and not ply:IsSuperAdmin() then return end
	local sid, num = args[1], tonumber(args[2])
	if not num then MsgC( Color(255,100,0), "[~ Poly] ", Color(255,255,255), "Неверное кол-во\n") return end
	local steamid_valid = true
	if not steamid_valid then
		MsgC( Color(255,100,0), "[~ Poly] ", Color(255,255,255), "Неверно указан SteamID\n")
		return
	end

	local ply = player.GetBySteamID(sid)
	if IsValid(ply) then
		MsgC( Color(255,120,0), "[~ Poly] ", Color(255,255,255), "Игрок онлайн, деньги изменены\n")
		ply:SetMoney(num) return
	else
		MsgC( Color(255,120,0), "[~ Poly] ", Color(255,255,255), "Игрок оффлайн, изменен счет "..sid.."\n")
		util.SetPData( sid, "donator_money", num ) return
	end
end)

