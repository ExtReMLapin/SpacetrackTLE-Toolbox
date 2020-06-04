local file = io.open("3le.txt", "r")
local data = file:read("*all")
file:close()

local TLE_Size = 3 -- how many lines per TLE
local TLE_List = {}
local nLinePos = 0
local fileSize = #data
local TLEID = 1
while nLinePos ~= nil and nLinePos ~= fileSize do
	local foundLine = 0
	local innerTleLoopPosition = nLinePos + 1

	while (foundLine < TLE_Size) do
		innerTleLoopPosition = assert(data:find("\n", innerTleLoopPosition + 1, true), "Line number is too low, could not find \\n")
		foundLine = foundLine + 1
	end

	local tleString = data:sub(nLinePos + 1, innerTleLoopPosition - 1)
	TLE_List[TLEID] = tleString
	nLinePos = innerTleLoopPosition
	TLEID = TLEID + 1
end

return TLE_List
