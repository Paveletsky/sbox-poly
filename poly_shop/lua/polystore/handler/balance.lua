require 'chttp'

local SECRET_KEY = "eyJ2ZXJzaW9uIjoiUDJQIiwiZGF0YSI6eyJwYXlpbl9tZXJjaGFudF9zaXRlX3VpZCI6InlkbmhpOC0wMCIsInVzZXJfaWQiOiI3OTUzMjgyNTc1MiIsInNlY3JldCI6IjllZmM1YTFiOWUzOTIyYTk2YmY3NWVjMjMzZDVkMjQxMjEwZGUxNjJlNmM4ZTRiMzU0MWNhZjcwNWNhNWIxNDYifX0="

util.AddNetworkString( 'polyshop.openLink' )

local function uuid_generate()

    local result = ""

    for i=0,5 do

        local substr = ""

        for j=0,4 do

            local let

            if(math.random(0, 1) == 1) then let = string.char(math.random(97, 122)) else let = math.random(0, 9) end

            substr = substr .. let

        end

        result = result .. substr

        if (i != 5) then result = result .. "-" end

    end

    return result

end

concommand.Add( 'polyshop.pay', function( ply, url, args )

    local paramInv = {

        amount = {
            currency = 'RUB',
            value = args[1]
        },
        
        expirationDateTime = os.date("%Y-%m-%dT%H:%M:%S+03:00", os.time() + 900)

    }

    local createInv = ({

        failed = function( code ) print( "shit" ) end,

        success = function( code, body, headers ) MsgC( Color(255,120,0), "[~ Poly] ", Color(255,255,255), ply:SteamID() .. ' создал счет - ' .. util.JSONToTable(body)["billId"] .. "\n") 

            ply:ChatPrint( util.JSONToTable(body)["payUrl"] )

            timer.Simple( 900, function() 

                if util.JSONToTable(body)['status']['value'] == 'WAITING' then ply:RemovePData( 'invoiceData' ) ply:ChatPrint( '[~] Ваш преждний неоплаченный счет был удален.' ) end 
                
                if util.JSONToTable(body)['status']['value'] == 'PAID' then ply:ChatPrint( '[~] Вы всё еще не получили кредиты. Нажмите "обновить" в магазине.' ) end
            
            end)

        end,

        method = "PUT",

        url = "https://api.qiwi.com/partner/bill/v1/bills/" .. uuid_generate(),

        headers = {

            ["authorization"] = "Bearer " .. SECRET_KEY,
            ["content-Type"] = "application/json",
            ["accept"] =  "application/json",
            
        },
        
        body = util.TableToJSON( paramInv, 1 ),

        type = "application/json; charset=utf-8"

    })

    if ply:GetPData( 'invoiceData' ) != nil then ply:ChatPrint( '[~] У вас уже имеется неоплаченный счет!' ) return false else ply:SetPData( 'invoiceData', createInv.url ) end

    CHTTP( createInv )

end)


concommand.Add( 'polyshop.checkInv', function( ply )

    if ply:GetPData( 'invoiceData' ) == nil then ply:ChatPrint( '[~] Счет не найден.' ) return false end

    local checkInv = ({

        failed = function( code ) print( code ) end,

        success = function( code, body, headers ) 
        
            if util.JSONToTable(body)['status']['value'] == 'WAITING' then ply:ChatPrint( '[~] Проверка прошла: ожидаю оплаты.' ) return false end

            if util.JSONToTable(body)['status']['value'] == 'PAID' then 

                ply:RemovePData( 'invoiceData' )
                   
                    ply:ChatPrint( '[~] Кредиты зачислены! ' .. math.Round( util.JSONToTable( body )['amount']['value'] ) .. 'кр.' ) 
                
                RunConsoleCommand( 'donatormoney_add', ply:SteamID(), math.Round( util.JSONToTable( body )['amount']['value'] ) )
            
            end

        end,

        method = 'get',

        url = ply:GetPData( 'invoiceData' ), 
        
        headers = {

            ["authorization"] = "Bearer " .. SECRET_KEY,
            ["content-Type"] = "application/json",
            ["accept"] =  "application/json",

        }

    })

    CHTTP( checkInv )

end)


timer.Create( 'polyshop.checkInvoices', 120, 0, function( ply )

    for _, plys in pairs( player.GetAll() ) do

        if plys:GetPData( 'invoiceData' ) != nil then plys:ConCommand( 'polyshop.checkInv' ) else return false end

    end

end)