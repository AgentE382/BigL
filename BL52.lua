local BL52_mt = {
	__tostring = function (n)
		local result = tostring(n[1])
		-- TODO: Extend tostring past first primitive.
		if n.negative then
			result = '-' .. result
		end
		return result
	end
}
local function new()
	return setmetatable({
		0,
		negative = false
	}, BL52_mt)
end
return setmetatable({
	new = new
}, {
	__call = new
})
