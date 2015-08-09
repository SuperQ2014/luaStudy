--require "testMetatable"     --failed! Need to find the solution
local myPath = "D:\\studyLua\\luaStudy\\script\\luaer\\"
local pathTemp = package.path
package.path = string.format("%s;%s?.lua", pathTemp, myPath)
require "testMetatable"
local a = 3
local b = getmetatable(a)
print(b)      --nill

print("Start ......")

Window = {}
Window.mt = {}

function Window.new(var)
  setmetatable(var, Window.mt)
  return var
end

Window.prototype = {x = 3, y = 4, width = 5, height = 6}
Window.mt.__index = function(var, key)
  return Window.prototype[key]
end
--other writing
--Window.mt.__index = Window.prototype
local myWindow = Window.new{x = 7, y = 9}
print(myWindow.height)

print("=========")

tab = {x = 10, y = 15}
print(tab.x)
print(tab.height)     --nil

function setDefault (tableName, defaultValue)
  local mt = {__index = function () return defaultValue end}
  setmetatable(tableName, mt)
end
local tabOther = {x = 10, y = 15}
setDefault(tabOther, 0)
print(tabOther.x)
print(tabOther.height)    --defaultValue:0

--test other
print("========")
local testNil = {}
print(testNil)      --output the table's pointer address
local nilTable = {}
nilTable[testNil] = 3

--test the path which is changed
--print(package.path)
testMetatable.Set.print(nilTable)
