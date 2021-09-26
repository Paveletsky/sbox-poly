
local rankTable = {

	['r_oldr'] = 1,
	
	['r_lleyt'] = 1,
	
	['r_leyt'] = 2,
	
	['r_cap'] = 3,

	['r_mayor'] = 4,

}


concommand.Add( "polyshop.buyRank", function(ply, _, args)

	local id = args[1]

	local time = args[2] == "perm" and "perm" or "mon"

	if not id or not shop_ranks[id] then

		ply:ChatPrint("Неверная аргументация")

		return

	end
	local mdata = shop_ranks[id]

	if not ply:HasMoney(mdata[time]) then

		netstream.Start( ply, 'poly.sendNotify', 1, 'Недостаточно кредитов.')

		return

	end

	local data = os.date("[%H:%M:%S - %d/%m/%Y] ") .. string.format("%s (%s) купил %s", ply:Name(), ply:SteamID(), mdata.name)

	file.Write( "shop_purchases.txt", data )

	print(data)

		ply:TakeMoney( mdata[time] )

	if time == "perm" then

		RunConsoleCommand("ulx", "adduserid", ply:SteamID(), mdata.rank)

	else

		RunConsoleCommand("ulx", "tempadduserid", ply:SteamID(), mdata.rank, "43800", "user")

	end
	
	netstream.Start( ply, 'poly.sendNotify', 1, 'Вы успешно купили ' .. mdata.name )

end)


--
-- chips
--

concommand.Add( "polyshop.buyChip", function(ply, _, args)

	local id = args[1]

	local time = args[2] == "perm" and "perm" or "mon"


	if not id or not shop_chips[id] then

		ply:ChatPrint("Неверная аргументация")

		return

	end
	local mdata = shop_chips[id]

	if not ply:HasMoney(mdata[time]) then

		netstream.Start( ply, 'poly.sendNotify', 1, 'Недостаточно кредитов.')

		return

	end

	local data = os.date("[%H:%M:%S - %d/%m/%Y] ") .. string.format("%s (%s) купил %s", ply:Name(), ply:SteamID(), mdata.name)

	file.Write( "shop_purchases.txt", data )

	print(data)



	if ply:GetPData( 'polyshop.chipName-' .. mdata.key ) == 'true' then 

		netstream.Start( ply, 'poly.sendNotify', 1, 'Вы уже приобрели ' .. mdata.name )

			ply:EmitSound( 'vo/ravenholm/monk_pain12.wav', 75, 100, 1 )

		return false

	end

	if time == "mon" then

		ply:TakeMoney( mdata[time] )

		local lostTime = os.date( "%Y/%m/%d", os.time() + 30 * 86400 )

		ply:SetPData( 'polyshop.chipName-' .. mdata.key, 'true' )
		ply:SetPData( 'polyshop.chipTime-' .. mdata.key, tostring( lostTime ) )

		ply:EmitSound( 'vo/npc/barney/ba_yell.wav', 75, 100, 1 )

		netstream.Start( ply, 'poly.sendNotify', 1, 'Вы успешно купили ' .. mdata.name .. '. ' .. mdata.notify )		

	end

	mdata.onBuy(ply)

	-- if mdata.key == 'orderWep' then

	-- 	netstream.Start( ply, 'polyshop.openLinkbox' )

	-- end

	-- if mdata.key == 'orderMdl' then

	-- 	netstream.Start( ply, 'polyshop.openLinkMdlbox')

	-- end


end)

