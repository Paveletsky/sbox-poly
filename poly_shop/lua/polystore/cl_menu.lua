surface.CreateFont( "ItemName", {
	size = 24,
	weight = 350,
	antialias = true,
	extended = true,
	font = "Calibri"
})

surface.CreateFont( "TermsFont", {
	size = 18,
	weight = 350,
	antialias = true,
	extended = true,
	font = "Roboto"
})

local function openShop( ply )

	if IsValid(shop) then

		shop:Remove()

	end

	shop = vgui.Create("DFrame")

	shop:SetSize(450,400)

	shop:SetTitle("")

	shop:MakePopup()

	shop:Center()

	local shop_icon = Material("icon16/cart_add.png")

	shop.Paint = function( self, w, h )

		draw.RoundedBox( 5, 0, 0, w, h, Color( 0, 0, 0, 220))

		draw.RoundedBox( 5, 0, self:GetTall() - 775, w, h, Color( 230, 138, 0, 220))

	end

	shop.PaintOver = function(self, w, h)

		surface.SetMaterial(shop_icon)

		surface.SetDrawColor(255,255,255)

		surface.DrawTexturedRect(5, 5, 16, 16)


		draw.DrawText( "Магазин", "DermaDefault", 27, 6, Color(255,255,255) )

		draw.DrawText( "Баланс: " .. LocalPlayer():GetNWInt("donator_money",0) .. "₽", "DermaDefault", w-120, 6, color_white, 2)

	end

	local terms = shop:Add 'DPanel'

	terms:Dock(FILL)

	local tEntry = terms:Add 'DTextEntry'

	tEntry:Dock( FILL )

	tEntry:SetMultiline( true)

	tEntry:SetEditable( false )

	terms.Paint = function( self, w, h )



	end

	tEntry.Paint = function( self, w, h )

		draw.DrawText( [[
		Пополняя баланс в магазине Политопии вы соглашаетесь с 
		некоторыми условиями:
		
		- Деньги возвращаются в случае, если при оплате 
		   произошёл баг/недоработка;

		- Деньги НЕ возвращаются, если товар не понравился 
		   покупателю.

		- Цены являются фиксированными, исключение - 
		   событие "Кредиты x2".

		- Любые ваши данные являются конфиденциальными. 
	]], "TermsFont", self:GetWide() - 490, 10, Color( 255, 255, 255, 255 ), TEXT_ALIGN_LEFT, TEXT_ALIGN_LEFT)

	end


	local upd = shop:Add 'DButton'

	upd:SetPos( shop:GetWide() - 375, 3 )

	upd:SetSize( 60, 19 )

	upd:SetText( 'Обновить' )

	upd.DoClick = function()

		RunConsoleCommand( 'polyshop.checkInv' )

	end

	local btn = shop:Add( "DButton" )

	btn:SetPos(shop:GetWide()-120,1)

	btn:SetSize(24,24)

	btn:SetText("")

	btn:SetImage( "icon16/add.png" )

	btn.Paint = nil

	btn.DoClick = function()

		local add_funds = vgui.Create("DFrame")

		add_funds:SetSize(300, 110)

		add_funds:SetTitle("Пополнить счет")

		add_funds:MakePopup()

		add_funds:Center()

		add_funds:SetWrap(true)

		add_funds.PaintOver = function(self,w,h)

			draw.DrawText( "Введите сумму для пополнения\nКомиссии при переводе с кошелька не будет", "DermaDefault", 5, 40, color_white )

		end

		add_funds.Paint = function( self, w, h )

			draw.RoundedBox( 5, 0, 0, w, h, Color( 0, 0, 0, 220))

			draw.RoundedBox( 5, 0, -575, w, h, Color( 230, 138, 0, 220))

		end

		local sum = add_funds:Add("DNumberWang")

		sum:SetSize(50,24)

		sum:SetPos(240, 40)

		sum:SetValue(100)

		sum:SetMax(math.huge)

		local btn = add_funds:Add("DButton")

		btn:SetPos(5,74)

		btn:SetSize(290,24)

		btn:SetText("Оплатить")

		btn.DoClick = function()

			RunConsoleCommand( 'polyshop.pay', sum:GetValue() )

		end

	end

	local top = shop:Add("EditablePanel")

	top:Dock(TOP)

	top:SetTall(30)


	local tab_ranks = top:Add("DButton")

	tab_ranks:SetSize(100,24)

	tab_ranks:SetPos( shop:GetWide() - 450, 1)

	tab_ranks:SetText("Привелегии")


	local tab_chips = top:Add("DButton")

	tab_chips:SetSize(100,24)

	tab_chips:SetDisabled( false )

	tab_chips:SetToolTip( 'В разработке' )

	tab_chips:SetPos( shop:GetWide() - 347, 1)

	tab_chips:SetText("Плюхи")

	local activeTab

	tab_ranks.DoClick = function()

		if IsValid(activeTab) then

			activeTab:Remove()

		end

		terms:Remove()

		activeTab = shop:Add("DScrollPanel")

		activeTab:Dock(FILL)

		for k,v in pairs(shop_ranks) do

			local newrank = activeTab:Add("DPanel")

			newrank:Dock(TOP)

			newrank:SetTall(40)

			newrank:DockMargin(0,0,0,2)

			newrank.Paint = function(self, w, h)

				surface.SetDrawColor(60,60,60)

				surface.DrawOutlinedRect(0,0,w,h)

				draw.RoundedBox(0,0,0,w,h,Color(255,255,255,5))

				draw.DrawText( v.name, "ItemName", 50, 7, color_white )

				draw.DrawText( v.mon..' рублей', "ItemName", 220, 7, color_white )

				if v.material then

					surface.SetMaterial(v.material)

					surface.SetDrawColor(255,255,255)

					surface.DrawTexturedRect(0, 0, w / 10, h )

				else

					draw.SimpleText('Нет лого', "DermaDefault", w/2, h/2, color_black, 1, 1)

				end

			end

			newrank.Buy = newrank:Add("DButton")

			newrank.Buy:Dock(RIGHT)

			newrank.Buy:DockMargin(2,8,8,8)

			newrank.Buy:SetWide(100)

			newrank.Buy:SetText("Купить")

			newrank.Buy.DoClick = function()

				local pur = vgui.Create("DFrame")

				pur:SetSize(300,520)

				pur:Center()

				pur:SetTitle("Покупка - " .. v.name )

				pur:MakePopup()

				pur.Paint = function( self, w, h )

					draw.RoundedBox( 5, 0, 0, w, h, Color( 0, 0, 0, 220))

					draw.RoundedBox( 5, 0, -497, w, h, Color( 230, 138, 0, 220))

				end

				local top = pur:Add("DPanel")

				top:Dock(TOP)

				top:SetTall(80)

				top.Paint = function(_,w,h)

					draw.RoundedBox( 0, 0, 0, w, h, Color( 0, 0, 0, 100 ) )

				end

				do

					local logo = top:Add("DPanel")

					logo:Dock(LEFT)
					
					logo:SetWide(76)

					logo:DockMargin(2,2,2,2)

					logo.Paint = function(_,w,h)

						if v.material then

							surface.SetMaterial(v.material)

							surface.SetDrawColor(255,255,255)

							surface.DrawTexturedRect(0,0,w,h)

						else

							draw.SimpleText('Нет лого', "DermaDefault", w/2, h/2, color_black, 1, 1)

						end

						surface.SetDrawColor(60,60,60)

						surface.DrawOutlinedRect(0,0,w,h)

					end

				end

				local con = top:Add("DPanel")

				con:Dock(FILL)

				con:DockMargin(0,2,2,2)

				con.Paint = function(_,w,h)

					draw.RoundedBox( 2, 0, 0, w, h, Color( 0, 0, 0, 100 ) )

					draw.DrawText( v.name, "ItemName", 5, 5, color_white )

				end

				local date = con:Add("DButton")

				date:SetPos(5,35)

				date:SetSize(100,24)

				date:SetText("Купить")

				date.DoClick = function(self)

					local function buy(time)

						return function()

							local function yes()

								RunConsoleCommand('polyshop.buyRank', k, time)

							end

							Derma_Query( "Вы действительно хотите купить " .. v.name .. "?", "Покупка рангов", "Да", yes, "Нет", function() end)

						end
					end

					local opt = DermaMenu()

					opt:AddOption( "Месяц - " .. v.mon, buy('mon') )

					opt:Open()

				end

				local TextEntry = vgui.Create( "RichText", pur ) -- create the form as a child of frame

				TextEntry:Dock(FILL)

				TextEntry:AppendText( v.desc or "Нет описания" )

				function TextEntry:PerformLayout()

					self:SetFontInternal( "DermaDefault" )

					self:SetFGColor( Color( 255, 255, 255 ) )

				end

			end

		end

	end



	tab_chips.DoClick = function()

		if IsValid(activeTab) then

			activeTab:Remove()

		end

		terms:Remove()

		activeTab = shop:Add("DScrollPanel")

		activeTab:Dock(FILL)

		for k,v in pairs(shop_chips) do

			local newrank = activeTab:Add("DPanel")

			newrank:Dock(TOP)

			newrank:SetTall(40)

			newrank:DockMargin(0,0,0,2)

			newrank.Paint = function(self, w, h)

				surface.SetDrawColor(60,60,60)

				surface.DrawOutlinedRect(0,0,w,h)

				draw.RoundedBox(0,0,0,w,h,Color(255,255,255,5))

				draw.DrawText( v.name, "ItemName", 50, 7, color_white )

				draw.DrawText( v.mon..' рублей', "ItemName", 220, 7, color_white )

				if v.material then

					surface.SetMaterial(v.material)

					surface.SetDrawColor(255,255,255)

					surface.DrawTexturedRect(0, 0, w / 10, h )

				else

					draw.SimpleText('Нет лого', "DermaDefault", w/2, h/2, color_black, 1, 1)

				end

			end

			newrank.Buy = newrank:Add("DButton")

			newrank.Buy:Dock(RIGHT)

			newrank.Buy:DockMargin(2,8,8,8)

			newrank.Buy:SetWide(100)

			newrank.Buy:SetText("Купить")

			newrank.Buy.DoClick = function()

				local pur = vgui.Create("DFrame")

				pur:SetSize(300,520)

				pur:Center()

				pur:SetTitle("Покупка - " .. v.name )

				pur:MakePopup()

				pur.Paint = function( self, w, h )

					draw.RoundedBox( 5, 0, 0, w, h, Color( 0, 0, 0, 220))

					draw.RoundedBox( 5, 0, -497, w, h, Color( 230, 138, 0, 220))

				end

				local top = pur:Add("DPanel")

				top:Dock(TOP)

				top:SetTall(80)

				top.Paint = function(_,w,h)

					draw.RoundedBox( 0, 0, 0, w, h, Color( 0, 0, 0, 100 ) )

				end

				do

					local logo = top:Add("DPanel")

					logo:Dock(LEFT)
					
					logo:SetWide(76)

					logo:DockMargin(2,2,2,2)

					logo.Paint = function(_,w,h)

						if v.material then

							surface.SetMaterial(v.material)

							surface.SetDrawColor(255,255,255)

							surface.DrawTexturedRect(0,0,w,h)

						else

							draw.SimpleText('Нет лого', "DermaDefault", w/2, h/2, color_black, 1, 1)

						end

						surface.SetDrawColor(60,60,60)

						surface.DrawOutlinedRect(0,0,w,h)

					end

				end

				local con = top:Add("DPanel")

				con:Dock(FILL)

				con:DockMargin(0,2,2,2)

				con.Paint = function(_,w,h)

					draw.RoundedBox( 2, 0, 0, w, h, Color( 0, 0, 0, 100 ) )

					draw.DrawText( v.name, "ItemName", 5, 5, color_white )

				end

				local date = con:Add("DButton")

				date:SetPos(5,35)

				date:SetSize(100,24)

				date:SetText("Купить")

				date.DoClick = function(self)

					local function buy(time)

						return function()

							local function yes()

								RunConsoleCommand('polyshop.buyChip', k, time)

							end

							Derma_Query( "Вы действительно хотите купить " .. v.name .. "?", "Покупка рангов", "Да", yes, "Нет", function() end)

						end
					end

					local opt = DermaMenu()

					opt:AddOption( "Месяц - " .. v.mon, buy('mon') )

					opt:Open()

				end

				local TextEntry = vgui.Create( "RichText", pur ) -- create the form as a child of frame

				TextEntry:Dock(FILL)

				TextEntry:AppendText( v.desc or "Нет описания" )

				function TextEntry:PerformLayout()

					self:SetFontInternal( "DermaDefault" )

					self:SetFGColor( Color( 255, 255, 255 ) )

				end

			end

		end

	end

end


local function openInputGun()

	local inp = vgui.Create("DFrame")

	inp:SetSize( 500, 80 )

	inp:MakePopup()

	inp:Center()

	inp:SetTitle( 'Укажите ссылку на оружие ( Workshop )' )

	inp:SetKeyBoardInputEnabled( true )
	

	local inpEn = inp:Add 'DTextEntry'

	inpEn:SetEditable( true )

	inpEn:Dock( TOP )


	local inpBut = inp:Add 'DButton'

	inpBut:Dock( TOP )

	inpBut:SetText( 'Отправить' )

	inpBut.DoClick = function( self )

		netstream.Start( 'polyshop.orderWep', inpEn:GetValue() )

		polyMsg( 3, 'Ссылка отправлена на проверку разработчикам. Она занимает до двух дней, после чего аддон будет добавлен на сервер и только у вас будет доступ к нему. Если вы уверены, что произошла ошибка, отпишите в личные сообщения людям с ролью @sourceMaster в дискорде.' )

		inp:Remove()

	end

	inp.PaintOver = function(self, w, h)

		local sendTxt = inpEn:GetText()

		surface.SetDrawColor(54,255,54)
		
		surface.SetMaterial(Material("icon16/accept.png"))

		inpBut:SetDisabled( false )
		
		inpBut:SetText( 'Отправить' )


		if not sendTxt:match("https://steamcommunity.com/sharedfiles/") then
			
			surface.SetDrawColor(255,54,54)

			surface.SetMaterial(Material("icon16/cross.png"))

			inpBut:SetDisabled( true )

			inpBut:SetText( 'Некорректная ссылка' )

		end

		surface.DrawOutlinedRect(0,0,w,h)
		
		surface.DrawTexturedRect( w / 2.3, 5, 16, 16 )

		if sendTxt == "" then

			draw.SimpleText( "https://steamcommunity.com/sharedfiles/**************", "DermaDefault", 5, h/2, Color(40,40,40,200), 0, 1)
		
		end
	
	end

end

netstream.Hook( 'polyshop.openLinkbox', openInputGun )

netstream.Hook( 'openStore', function( ply )

    openShop()

end)


local function openInputMdl()

	local inp = vgui.Create("DFrame")

	inp:SetSize( 500, 80 )

	inp:MakePopup()

	inp:Center()

	inp:SetTitle( 'Укажите ссылку на модель ( Workshop )' )

	inp:SetKeyBoardInputEnabled( true )
	

	local inpEn = inp:Add 'DTextEntry'

	inpEn:SetEditable( true )

	inpEn:Dock( TOP )


	local inpBut = inp:Add 'DButton'

	inpBut:Dock( TOP )

	inpBut:SetText( 'Отправить' )

	inpBut.DoClick = function( self )

		netstream.Start( 'polyshop.orderMdl', inpEn:GetValue() )

		polyMsg( 3, 'Ссылка отправлена на проверку разработчикам. Она занимает до двух дней, после чего аддон будет добавлен на сервер и только у вас будет доступ к нему. Если вы уверены, что произошла ошибка, отпишите в личные сообщения людям с ролью @sourceMaster в дискорде.' )

		inp:Remove()

	end

	inp.PaintOver = function(self, w, h)

		local sendTxt = inpEn:GetText()

		surface.SetDrawColor(54,255,54)
		
		surface.SetMaterial(Material("icon16/accept.png"))

		inpBut:SetDisabled( false )
		
		inpBut:SetText( 'Отправить' )


		if not sendTxt:match("https://steamcommunity.com/sharedfiles/") then
			
			surface.SetDrawColor(255,54,54)

			surface.SetMaterial(Material("icon16/cross.png"))

			inpBut:SetDisabled( true )

			inpBut:SetText( 'Некорректная ссылка' )

		end

		surface.DrawOutlinedRect(0,0,w,h)
		
		surface.DrawTexturedRect( w / 2.3, 5, 16, 16 )

		if sendTxt == "" then

			draw.SimpleText( "https://steamcommunity.com/sharedfiles/**************", "DermaDefault", 5, h/2, Color(40,40,40,200), 0, 1)
		
		end
	
	end

end

netstream.Hook( 'polyshop.openLinkMdlbox', openInputMdl )