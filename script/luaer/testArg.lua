printString = ""
function testPrintArg(...)
  for i, v in ipairs(arg) do
    print(i, ": ", v)
  end
  print("finish the for block")
end

function testPrintArg2(...)
  print(arg[1])
  print(arg[2])
  print(arg[3])
  print(arg[n])
  --io.write(arg[n])
end

local a = 1
local b = 2
local c = 3
testPrintArg(a, b, c)
testPrintArg2(a, b, c)