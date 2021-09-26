--[[
Server Name: [#] OctoParty
Server IP:   37.230.137.242:27117
File Path:   addons/library/lua/library/misc/string.lua
		 __        __              __             ____     _                ____                __             __         
   _____/ /_____  / /__  ____     / /_  __  __   / __/____(_)__  ____  ____/ / /_  __     _____/ /____  ____ _/ /__  _____
  / ___/ __/ __ \/ / _ \/ __ \   / __ \/ / / /  / /_/ ___/ / _ \/ __ \/ __  / / / / /    / ___/ __/ _ \/ __ `/ / _ \/ ___/
 (__  ) /_/ /_/ / /  __/ / / /  / /_/ / /_/ /  / __/ /  / /  __/ / / / /_/ / / /_/ /    (__  ) /_/  __/ /_/ / /  __/ /    
/____/\__/\____/_/\___/_/ /_/  /_.___/\__, /  /_/ /_/  /_/\___/_/ /_/\__,_/_/\__, /____/____/\__/\___/\__,_/_/\___/_/     
                                     /____/                                 /____/_____/                                  
--]]

local utfP = '[%z\x01-\x7F\xC2-\xF4][\x80-\xBF]*'
local letterP = '[%z%s\x41-\x5A\x61-\x7A\x7F-\x7F\xC2-\xF4][\x80-\xBF]*'
local lowers = {['А']='а',['Б']='б',['В']='в',['Г']='г',['Д']='д',['Е']='е',['Ё']='ё',['Ж']='ж',['З']='з',['И']='и',['Й']='й',['К']='к',['Л']='л',['М']='м',['Н']='н',['О']='о',['П']='п',['Р']='р',['С']='с',['Т']='т',['У']='у',['Ф']='ф',['Х']='х',['Ц']='ц',['Ч']='ч',['Ш']='ш',['Щ']='щ',['Ъ']='ъ',['Ы']='ы',['Ь']='ь',['Э']='э',['Ю']='ю',['Я']='я'}
local uppers = {['а']='А',['б']='Б',['в']='В',['г']='Г',['д']='Д',['е']='Е',['ё']='Ё',['ж']='Ж',['з']='З',['и']='И',['й']='Й',['к']='К',['л']='Л',['м']='М',['н']='Н',['о']='О',['п']='П',['р']='Р',['с']='С',['т']='Т',['у']='У',['ф']='Ф',['х']='Х',['ц']='Ц',['ч']='Ч',['ш']='Ш',['щ']='Щ',['ъ']='Ъ',['ы']='Ы',['ь']='Ь',['э']='Э',['ю']='Ю',['я']='Я'}

function library.upper(str)

	local res = ''
	for c in string.gmatch(str, utfP) do
		res = res .. (uppers[c] or string.upper(c))
	end

	return res

end

function library.lower(str)

	local res = ''
	for c in string.gmatch(str, utfP) do
		res = res .. (lowers[c] or string.lower(c))
	end

	return res

end

function library.camel(str)

	local res = ''
	for w in string.gmatch(str, '[^%s]+') do
		local f = true
		for c in string.gmatch(w, utfP) do
			if f then
				res = res .. (uppers[c] or string.upper(c))
				f = false
			else
				res = res .. (lowers[c] or string.lower(c))
			end
		end
		res = res .. ' '
	end

	return res:sub(1,-2)

end

function library.word(str)

	local res = ''
	for c in string.gmatch(str, letterP) do
		res = res .. c
	end

	return res

end

function library.wordc(str, add)

	local res = ''
	for c in string.gmatch(str, '[%z%s' .. (add or '') .. '\x7F-\x7F\xC2-\xF4][\x80-\xBF]*') do
		res = res .. c
	end

	return res

end

function library.sub(str, st, en)

	if not st then return str end

	local len = utf8.len(str)
	if not en then en = len end
	if st < 0 then st = len + st + 1 end
	if en < 0 then en = len + en + 1 end
	if st == 1 and en >= len then return str end

	local res, i = '', 0
	for c in string.gmatch(str, utfP) do
		i = i + 1
		if i >= st then res = res .. c end
		if i >= en then break end
	end

	return res

end

function library.httpEscape(text)
	if not isstring(text) then text = tostring(text) end

	local ndata = text:gsub('[^%w _~%.%-]', function(str)
		local nstr = ('%X'):format(string.byte(str))
		return '%' .. ((nstr:len() == 1) and '0' or '') .. nstr
	end)

	return ndata:gsub(' ', '+')

end

function library.signedNumber(num)
	num = tonumber(num) or 0
	if num > 0 then return '+' .. num
	else return num end
end

function library.formatCount(num, single, plural, plural2)

	num = math.abs(num)
	if plural2 then
		if num > 4 and num < 21 then
			return plural2
		else
			local lastDigit = num % 10
			if lastDigit == 1 then
				return single
			elseif lastDigit > 1 and lastDigit < 5 then
				return plural
			else
				return plural2
			end
		end
	else
		return num == 1 and single or plural
	end

end

function library.formatCountExt(num, rules)

	for i, rule in ipairs(rules) do
		local nextRule = rules[i+1]
		if not nextRule or num < nextRule[1] then
			local _num = math.floor(num / rule[1])
			return ('%s %s'):format(_num, library.formatCount(_num, unpack(rule, 2)))
		end
	end

end

local rulesTime = {
	{1, 'секунда', 'секунды', 'секунд'},
	{60, 'минута', 'минуты', 'минут'},
	{60 * 60, 'час', 'часа', 'часов'},
	{60 * 60 * 24, 'день', 'дня', 'дней'},
	{60 * 60 * 24 * 7, 'неделя', 'недели', 'недель'},
	{60 * 60 * 24 * 30, 'месяц', 'месяца', 'месяцев'},
	{60 * 60 * 24 * 365, 'год', 'года', 'лет'},
} library.rulesTime = rulesTime

function library.formatTime(sec, wordsOverride)

	return library.formatCountExt(sec, rulesTime)

end

local rulesTimeIn = table.Copy(rulesTime)
rulesTimeIn[1][2] = 'секунду'
rulesTimeIn[2][2] = 'минуту'

function library.timeIn(sec, short)

	if short then
		return library.formatCountExt(sec, rulesTimeIn)
	else
		return 'через ' .. library.formatCountExt(sec, rulesTimeIn)
	end

end

function library.isSteamID(str)

	if not isstring(str) then return false end
	return str:find('^STEAM_[0-5]:[01]:%d+$') ~= nil

end

function library.isSteamID64(str)

	if not isstring(str) then return false end
	return str:gmatch('^7656119%d%d%d%d%d%d%d%d%d%d$') ~= nil

end

local urlPattern = 'https?://[^%s/%$%.%?#].[^%s]*'
function library.isUrl(str)
	return isstring(str) and str:gsub(urlPattern, '', 1) == ''
end

function library.exposeUrls(str)

	if not isstring(str) then return {} end

	local nonUrls = string.Explode(urlPattern, str, true)
	local urls = {}
	for v in string.gmatch(str, urlPattern) do
		urls[#urls + 1] = v
	end

	local united = {}
	local nextUrl, nextPhrase = 1, 1
	if string.StartWith(str, nonUrls[1]) then
		united[1] = nonUrls[1]
		nextPhrase = 2
	end

	for i = nextPhrase, #nonUrls do
		if urls[nextUrl] then
			united[#united + 1] = {urls[nextUrl]}
			nextUrl = nextUrl + 1
		end
		united[#united + 1] = nonUrls[i]
	end
	for i = nextUrl, #urls do
		united[#united + 1] = {urls[i]}
	end

	return united

end

local STRING = getmetatable ''
function STRING:__mod(tbl)
	return self:gsub('{(.-)}', tbl)
end
