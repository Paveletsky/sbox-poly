hook.Add('Think', 'restartHook', function()

    netstream.Hook( 'goRestart', function()

        for k, v in pairs(player.GetAll()) do
            v:Kick('Пара-пам, связь потеряна, перезагрузка...')
        end

        RunConsoleCommand('changelevel', game.GetMap())
        
    end)

end)