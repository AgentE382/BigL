local BI52_mt = {
	__tostring = function (bi)
		local result = tostring(bi[1])
		-- TODO: Extend tostring past first primitive.
		if bi.negative then
			result = '-' .. result
		end
		return result
	end
}
local function new()
	return setmetatable({
		0,
		negative = false
	}, BI52_mt)
end
return setmetatable({
	new = new
}, {
	__call = new
})
