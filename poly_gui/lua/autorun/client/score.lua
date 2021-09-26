library.client( 'fonts' )

hook.Add('Think', 'createScore', function()

	GM = GAMEMODE or {}

	local hints = {
		'Hello World!',
		'Hello Pedik!',
	}

	local function showScore()

		local w, h = ScrW(), ScrH()
		b = vgui.Create 'DFrame'
		b:SetTitle( '' )
		b:SetSize( 600, 800 )
		b:ShowCloseButton( false )
		b:Center()
			b.Paint = function()
				draw.RoundedBox( 0, 0, 0, w, h, Color( 22, 30, 33, 210 ) )

				surface.SetDrawColor( Color( 255, 255, 255, 150 ) )
				b:DrawOutlinedRect()
			end

		t = vgui.Create( 'DLabel', b )
		t:SetText( 'Polytopia V' )
		t:Dock(TOP)
		t:DockMargin(213, -15, 0, 0)
		t:SetSize( 1000, 50 )
		t:SetFont( 'library-hud.large' )

		p = vgui.Create( 'DPanel', b )
		p:Dock( FILL )
		p:DockMargin(0, 10, 0, 0)
		p:SetAlpha(230)
			p.Paint = function()
				draw.RoundedBox( 0, 0, 0, w, h, Color( 22, 30, 33, 210 ) )
			end

		l = vgui.Create( "DListView", p )
		l:Dock( FILL )
		l:SetMultiSelect( false )
		l:SetHeaderHeight( 20 )
		
		l:AddColumn( "Никнейм" ):SetFixedWidth(200)
		l:AddColumn( "Ранг" )
		l:AddColumn( "Часы" ):SetFixedWidth(150)
		l:AddColumn( "Фишка" ):SetFixedWidth(60)
		
		l:SetDataHeight( 20 )
		
			l.Paint = function()
				
				draw.RoundedBox( 0, 0, 0, w, h, Color( 22, 30, 33, 210 ) )	

				draw.RoundedBox( 0, 200, 0, 1, h, Color( 255, 255, 255, 20 ) )	
				draw.RoundedBox( 0, 377, 0, 1, h, Color( 255, 255, 255, 20 ) )	
				draw.RoundedBox( 0, 526, 0, 1, h, Color( 255, 255, 255, 20 ) )	


			end

		-- hts = vgui.Create('DLabel', b)
		-- hts:SetPos(55,0)
		-- hts:SetSize(500,0)
		-- hts:DockMargin(0,3,0,0)
		-- hts:SetTall(20)
		-- hts:SetContentAlignment(5)
		-- hts:SetText(hints[1])
		-- hts:SetFont('library-hud.verysmall')
		-- curHint = 1
		-- 	timer.Create('crim-score.hint', 5, 0, function()
		-- 		curHint = curHint + 1
		-- 		if curHint > #hints then
		-- 			curHint = 1
		-- 		end
		-- 		hts:SetText(hints[curHint])
		-- 	end)

			local function alphaBut(self, w, h)
			
				surface.SetDrawColor(255,255,255, 255)
				surface.SetMaterial(self.icon)
				surface.DrawTexturedRect(2, 4, 16, 16)
			
			end

		for i, ply in ipairs(player.GetAll()) do

		local time = string.FormattedTime(ply:GetUTimeTotalTime())
		local niceTime = string.format('%i:%02i:%02i', time.h, time.m, time.s)

			lv = l:AddLine( ply:Name(), team.GetName(ply:Team()), niceTime )
			
			lv:SetSelectable(false)

			lv.Columns[1]:SetContentAlignment(2)
			lv.Columns[2]:SetContentAlignment(2)
			lv.Columns[3]:SetContentAlignment(2)
			lv.Columns[4]:SetContentAlignment(2)

			lv.Columns[1]:SetMouseInputEnabled(true)
			lv.Columns[4]:SetMouseInputEnabled(true)

			lv.Columns[1]:SetTextColor(Color(255,255,255, 255))
			lv.Columns[2]:SetTextColor(Color(255,255,255, 255))
			lv.Columns[3]:SetTextColor(Color(255,255,255, 255))

			lv.Columns[1]:SetFont('library-hud.col')
			lv.Columns[2]:SetFont('library-hud.col')
			lv.Columns[3]:SetFont('library-hud.col')						
			

			rnk = lv.Columns[2]:Add 'DButton'
				rnk.icon = Material( 'icon16/user_suit.png' )
				rnk:SetPaintBackground(false)
				rnk:SetText('')
				rnk:AlignLeft(145)
				rnk.Paint = alphaBut

			inf = lv.Columns[1]:Add 'DButton'
				inf.icon = Material( 'icon16/report_user.png' )
				inf:SetPaintBackground(false)
				inf:SetText('')
				inf:AlignLeft(165)
				inf.Paint = alphaBut	 

			clk = lv.Columns[3]:Add 'DButton'
				clk.icon = Material( 'icon16/clock.png' )
				clk:SetPaintBackground(false)
				clk:SetText('')
				clk:AlignLeft(115)
				clk.Paint = alphaBut

			a = lv.Columns[1]:Add 'AvatarImage'
			a:Dock(LEFT)
			a:SetSize(22,50)
			a:SetPlayer(ply, 32)

			ab = a:Add 'DButton'
			ab:Dock(FILL)
			ab:SetText('')
			ab:SetPaintBackground(false)
			ab:SetToolTip(ply:Name())
				ab.DoClick = function()
					ply:ShowProfile()
				end

			if ply:GetNetVar( 'hasPussy' ) then

				lvr = lv.Columns[4]:Add 'DButton'
				lvr:SetToolTip( 'Пупсик' )
				lvr:SetSize(24, 24)
				lvr:SetText( '' )
				lvr.icon = Material( 'icon16/heart.png' )
				lvr.Paint = alphaBut			 
				lvr:SetPos( lv:GetWide() - 25 )

			end

			if ply:GetNetVar( 'isDev' ) then

				lvr = lv.Columns[4]:Add 'DButton'
				lvr:SetToolTip( 'Разработчик' )
				lvr:SetText( '' )
				lvr:SetSize(24, 24)
				lvr.icon = Material( 'icon16/application_osx_terminal.png' )
				lvr.Paint = alphaBut			 
				lvr:SetPos( lv:GetWide() - 45 )

			end
		

		end

	end

	function GM:ScoreboardShow()
	        
		showScore()
		gui.EnableScreenClicker(true)

	end

	function GM:ScoreboardHide()

		gui.EnableScreenClicker(false)
		b:Hide()
		DermaMenu():Remove()

	end

end)