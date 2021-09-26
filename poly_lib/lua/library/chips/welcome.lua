--
--
--

local showWelcome = CreateClientConVar( 'library_welcome', '1', true, false )

function library.openDiscordlnk()

    if fr then fr:Remove() end

    fr = vgui.Create( 'DFrame' )

    fr:SetSize( 500, 215)

    fr:Center()

    fr:MakePopup()

    fr:SetDraggable( false )

    fr:ShowCloseButton( false )

    fr:SetTitle( '' )


    local but = fr:Add 'DButton'

    but:Dock( BOTTOM )

    but:SetText( 'Понятно' )

    but.DoClick = function(  )
        fr:Remove()
        LocalPlayer():ConCommand( 'library_welcome 0' )
    end


    local dbut = fr:Add 'DButton'

    dbut:Dock( BOTTOM )

    dbut:SetText( 'Дискорд' )

    dbut.DoClick = function(  )
        gui.OpenURL( 'https://discord.gg/tFYctGUXMA' )
    end


    local txt = fr:Add 'DLabel'

    txt:Dock(FILL)

    txt:SetFont( 'library-hud.verysmall' )

    txt:SetText( [[
Привет, если ты зашел впервые, то должен знать, что у нас есть
дискорд сервер, который наверянка тебе в будущем будет 
полезен! Надеемся, сервер понравится тебе и твоим друзьям.
Желаем удачи, играй на Политопии вместе с нами! ;)

                   ~ На F4 открывается мини-менюшка.
    ]] )


    fr.Paint = function( self, w, h )

        Derma_DrawBackgroundBlur( self, self.startTime)

        draw.RoundedBox( 2, 0, 0, w, h, Color( 0, 0, 0, 200 ))

        draw.RoundedBox( 2, 0, 0, w, h - 210, Color( 255, 165, 0, 180 ))

    end


end


hook.Add( 'Think', 'welcome-onNewUser', function()
    
    hook.Remove( 'Think', 'welcome-onNewUser' )

    if showWelcome:GetBool() then library.openDiscordlnk() end

end)