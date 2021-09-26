randWords = {
    'Пам-парам, удачи в строительстве!',
    'Построй нам что-нибудь красивое! <3',
    'Любишь строить? :)',
    'Строй сколько влезет, но соблюдай правила! :]',
}

local delay = 5
local goit = -delay

local function teleportZ(ply)

	local elapsed = CurTime() - goit

	if elapsed < delay then

        polyMsg( 1, 'Эй, остынь! Подожди еще ' .. math.floor( delay - elapsed ) .. ' секунд.' )

	else

        netstream.Start( 'goBuilding' )

            polyMsg( 4, randWords[math.random(1, #randWords)] )

        goit = CurTime()
	end

end


--
--  Show Frame
--

local function showMenu(ply)
    
    if IsValid( f ) then f:Remove() end
    
    f = vgui.Create 'DFrame'

    f:SetSize( 170, 190 )
    f:DockPadding( 0, 24, 0, 0 )
    f:AlignTop( ScrH() / 2 - 150 )
    f:AlignRight( 5 )
    f:SetVisible( true )
    f:SetDraggable( false )
    f:ShowCloseButton( true )
    f:SetTitle( 'Меню опций' )
    f.Paint = function()

        draw.RoundedBox( 2, 0, 0, 500, 25, Color( 255, 106, 0, 200 ))
        draw.RoundedBox( 2, 0, 0, 500, 500, Color( 0, 0, 0, 200 ))

		surface.SetDrawColor( Color( 255, 255, 255, 25 ) )
		f:DrawOutlinedRect()

    end

    --
    --  Teleport Button
    --

    local bt = f:Add 'DButton'
     bt:SetSize( 120, 40 )
     bt:SetPos( ScrH() / 45, ScrW() / 32 )
     bt:SetText( '' )
     bt.DoClick = function( ply )
        teleportZ( ply )
     end

     bt.Paint = function()
        draw.RoundedBox( 2, 0, 0, 500, 500, Color( 255, 106, 0, 70 ))
		surface.SetDrawColor( Color( 255, 255, 255, 25 ) )
		bt:DrawOutlinedRect()
     end

    local tx = bt:Add 'DLabel'
     tx:SetText( 'Телепорт в зону \n строительства' )
     tx:SetWide( 240 )
     tx:SetTall( 36 )
     tx:SetPos( 11, 0 )
     tx:SetFont( 'library-hud.veryverysmall' )


    local sh = f:Add 'DButton'
     sh:SetSize( 120, 40 )
     sh:SetPos( ScrH() / 45, ScrW() / 17 )
     sh:SetText( '' )
     sh.DoClick = function( ply )
        RunConsoleCommand( 'lib_openstore' )
     end

     sh.Paint = function()
        draw.RoundedBox( 2, 0, 0, 500, 500, Color( 255, 106, 0, 70 ))
		surface.SetDrawColor( Color( 255, 255, 255, 25 ) )
		bt:DrawOutlinedRect()
     end


    local tx2 = sh:Add 'DLabel'
     tx2:SetText( 'Открыть магазин' )
     tx2:SetWide( 240 )
     tx2:SetTall( 36 )
     tx2:SetPos( 11, 0 )
     tx2:SetFont( 'library-hud.veryverysmall' )

end

netstream.Hook( 'f4Open', function( ply )
    local ply = LocalPlayer()
        showMenu(ply)
end)

