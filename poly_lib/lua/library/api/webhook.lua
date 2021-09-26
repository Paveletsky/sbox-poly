--
-- chat log
--

if SERVER then require( 'chttp' ) end

local steam_api_key = '4FC68AEF87B73FD8BFF60F32F23385DC'

local api_get_steam_sum = 'http://api.steampowered.com/ISteamUser/GetPlayerSummaries/v0002/?key=' .. steam_api_key

local webhook = 'https://discord.com/api/webhooks/888095251661738034/G3-M22mAElDaOpoSIRyhkTdmOHDefFMUkpx-ZvUe5sxTHyNvBrjWdZAziop8CIL6RgKL'

local banWebhook = 'https://discord.com/api/webhooks/888388967903399957/P5a7tMTCJCLHi3n0-lWLCtDXUJFlGwT5wTy-7O0NVJc3bFFXnW5IWAs7IBX6MGOcA-CC'

local time = os.date( "%H:%M:%S - %d/%m/%Y" , os.time() )

gameevent.Listen( "player_disconnect" )

hook.Add( "player_disconnect", "polylogs.onDisconnect", function( data )

	local name = data.name		
	local steamid = data.networkid		
	local id = data.userid			
	local bot = data.bot		
	local reason = data.reason	
 
    if SERVER then

        CHTTP ({
            
            failed = function(reason) print(reason) end,
            success = function(code, body, headers)

                local response = util.JSONToTable(body)

                local params = {

                    ['username'] = name .. ' - ' .. steamid,
                    ['avatar_url'] = 'https://cdn.discordapp.com/avatars/882291845600800768/f84c088d6bd8740e9f70385ded80eb29.webp?size=128',
                    ['content'] = "```css\n[" .. time .. "] Отключен от сервера. " .. reason .. " - " .. steamid .. "\n```",

                }

                CHTTP ({

                    method = 'POST',
                    url = banWebhook .. '?wait=true',
                    body = util.TableToJSON( params ),
                    headers = {
                        ["content-Type"] = "application/json",
                        ["accept"] =  "application/json",
                    },
                    type = "application/json; charset=utf-8"

                })

            end,

            method = 'GET',
            url = api_get_steam_sum .. '&steamids=' .. steamid
            
        })

    end

end)



gameevent.Listen( "player_connect" )

hook.Add( "player_connect", "polylogs.onConnect", function( data )

	local name = data.name
	local steamid = data.networkid
	local ip = data.address			
	local id = data.userid			
	local bot = data.bot

 
    if SERVER then

        CHTTP ({
            
            failed = function(reason) print(reason) end,
            success = function(code, body, headers)

                local response = util.JSONToTable(body)

                local params = {

                    ['username'] = name .. ' - ' .. steamid,
                    ['avatar_url'] = 'https://cdn.discordapp.com/avatars/882291845600800768/f84c088d6bd8740e9f70385ded80eb29.webp?size=128',
                    ['content'] = "```css\n[" .. time .. "] Подключается к серверу. " .. ip .. " - " .. steamid .. "\n```",
                    -- ['embeds'] = { 

                    --     {
                    --         description = '[' .. ply:SteamID() .. ']' .. '(' .. profile_url .. ')'                        
                    --     } 

                    -- }
                }

                CHTTP ({

                    method = 'POST',
                    url = banWebhook .. '?wait=true',
                    body = util.TableToJSON( params ),
                    headers = {
                        ["content-Type"] = "application/json",
                        ["accept"] =  "application/json",
                    },
                    type = "application/json; charset=utf-8"

                })

            end,

            method = 'GET',
            url = api_get_steam_sum .. '&steamids=' .. steamid
            
        })
        
    end

end)



hook.Add("PlayerSay", "TrynnaHook", function (ply, text)

    local steam_id = ply:SteamID64()

    CHTTP({
        
        failed = function(reason) print(reason) end,
        success = function(code, body, headers)

            local response = util.JSONToTable(body)
            local jpg = response['response']['players'][1]['avatarfull'] 
            local nickname = response['response']['players'][1]['personaname']
            local profile_url = response['response']['players'][1]['profileurl']
            local params = {

                ['username'] = '[' .. team.GetName( ply:Team() ) .. '] ' .. nickname,
                ['avatar_url'] = jpg,
                ['content'] = '> — ' .. text,
                ['embeds'] = { 

                    {
                        description = '[' .. ply:SteamID() .. ']' .. '(' .. profile_url .. ')'                        
                    } 

                }
            }

            CHTTP ({

                method = 'POST',
                url = webhook .. '?wait=true',
                body = util.TableToJSON( params ),
                headers = {
                    ["content-Type"] = "application/json",
                    ["accept"] =  "application/json",
                },
                type = "application/json; charset=utf-8"

            })

        end,

        method = 'GET',
        url = api_get_steam_sum .. '&steamids=' .. steam_id
        
    })

end)

netstream.Hook( 'polyshop.orderWep', function( ply, link ) 

    local steam_id = ply:SteamID64()

    CHTTP({
        
        failed = function(reason) print(reason) end,
        success = function(code, body, headers)

            local response = util.JSONToTable(body)
            local jpg = response['response']['players'][1]['avatarfull'] 
            local nickname = response['response']['players'][1]['personaname']
            local profile_url = response['response']['players'][1]['profileurl']
            local params = {

                ['username'] = nickname,
                ['avatar_url'] = jpg,
                ['content'] = "@here",
                ['embeds'] = { 

                    {
                        description = ply:Name() .. ' (' .. ply:SteamID() .. ') заказал оружие. Ссылка - [*__нажми__*]('..link..')'                    
                    } 

                }
            }

            CHTTP ({

                method = 'POST',
                url = 'https://discord.com/api/webhooks/888519910735609866/0Lb1swc8tsiKu64p2pnc_CtZBGUN4txKbKkGi7_JMIrL9tvMQQmWD-SINop9BhF5JNBM' .. '?wait=true',
                body = util.TableToJSON( params ),
                headers = {
                    ["content-Type"] = "application/json",
                    ["accept"] =  "application/json",
                },
                type = "application/json; charset=utf-8"

            })

        end,

        method = 'GET',
        url = api_get_steam_sum .. '&steamids=' .. steam_id
        
    })

end)


netstream.Hook( 'polyshop.orderMdl', function( ply, link ) 

    local steam_id = ply:SteamID64()

    CHTTP({
        
        failed = function(reason) print(reason) end,
        success = function(code, body, headers)

            local response = util.JSONToTable(body)
            local jpg = response['response']['players'][1]['avatarfull'] 
            local nickname = response['response']['players'][1]['personaname']
            local profile_url = response['response']['players'][1]['profileurl']
            local params = {

                ['username'] = nickname,
                ['avatar_url'] = jpg,
                ['content'] = "@here",
                ['embeds'] = { 

                    {
                        description = ply:Name() .. ' (' .. ply:SteamID() .. ') заказал модельку. Ссылка - [*__нажми__*]('..link..')'                    
                    } 

                }
            }

            CHTTP ({

                method = 'POST',
                url = 'https://discord.com/api/webhooks/888519910735609866/0Lb1swc8tsiKu64p2pnc_CtZBGUN4txKbKkGi7_JMIrL9tvMQQmWD-SINop9BhF5JNBM' .. '?wait=true',
                body = util.TableToJSON( params ),
                headers = {
                    ["content-Type"] = "application/json",
                    ["accept"] =  "application/json",
                },
                type = "application/json; charset=utf-8"

            })

        end,

        method = 'GET',
        url = api_get_steam_sum .. '&steamids=' .. steam_id
        
    })

end)