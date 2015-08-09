--[[
local status, err = pcall(function() a = "a" + 1 end)
print (err)
--]]

local status,err = pcall(function () error("my error") end)
print(err)