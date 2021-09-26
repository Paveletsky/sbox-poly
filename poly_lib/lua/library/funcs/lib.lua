function library.toKeys(tbl)

	local out = {}
	for i, v in ipairs(tbl) do
		out[v] = true
	end

	return out

end