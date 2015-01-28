--io.write("sin(3) = ", math.sin(3), "\n")
--io.write(string.format("sin(3) = %.4f\n", math.sin(3)))

--print("Hello","Lua");print("Hi")

--io.write("Hello","Lua\n");io.write("Hi","\n")

--io.input("test.txt")
--io.write(io.read("*line"))
--t = io.read("*all")
-- t = string.gsub(t, "([\128-\255=])", function (c)
	-- return string.format("=%02X",string.byte(c))
	-- end)
-- io.write(t)

-- local count = 1
-- while true do
	-- local line = io.read()
	-- if line == nil then break end
	-- io.write(string.format("%6d ", count), line, "\n")
	-- count = count + 1
-- end

-- local lines = {}
-- for line in io.lines() do
	-- table.insert(lines, line)
-- end
-- table.sort(lines)
-- for n, v in ipairs(lines) do
	-- io.write(v,"\n")
-- end

--[[while true do
	local n1, n2, n3 = io.read("*number", "*number", "*number")
	if not n1 then
		break 
	end
	print(math.max(n1, n2, n3))
end
]]

local pat = "(%S+)%s+(%S+)%s+(%S+)%s+"
for n1,n2,n3 in string.gmatch(io.read("*all"),pat) do
	print(math.max(n1, n2, n3))
end