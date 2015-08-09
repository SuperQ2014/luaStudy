table1 = {}
print(getmetatable(table1))

table2 = {}
setmetatable(table1, table2)        --set table1's metatable as table2
print(getmetatable(table1))
assert(getmetatable(table1) == table2)

print("==========")
print("Arithmetic Metamethods")
--arithmetic metamethods
Set = {}
Set.mt = {}
function Set.new(t)
  local set = {}
  setmetatable(set,Set.mt)
  for _,v in pairs(t) do
    set[v] = true
  end
  return set
end

function Set.union(a,b)
  local set = Set.new{}
  for v1 in pairs(a) do
    set[v1] = true
  end
  for v2 in pairs(b) do
    set[v2] = true
  end
  return set
end

function Set.intersection (a,b)
  local set = Set.new{}
  for v1 in pairs(a) do
    set[v1] = b[v1]
  end
  return set 
end

function Set.tostring (setTable)
  local s = "{"
  local sep = ""
  for v in pairs(setTable) do
    s = s .. sep .. v
    sep = ", "
  end
  return s .. "}"
end

function Set.print(setTable)
  print(Set.tostring(setTable))
end

s1 = Set.new{10,20,30,50}
s2 = Set.new{30,1}
print(getmetatable(s1))
print(getmetatable(s2))
Set.print(s1)       --unsorted
Set.print(s2)       --unsorted
Set.mt.__add = Set.union
s3 = s1 + s2
Set.print(s3)

Set.mt.__mul = Set.intersection
s4 = s1 * s2
Set.print(s4)

local b = Set.new{1,2,4,3}
--b = b + 7
print("===========")
Set.mt.__le = function (a,b)
  for k in pairs(a) do
    if not b[k] then
      return false
    end
  end
  return true
end

Set.mt.__lt = function (a,b)
  return a <= b and not b <= a
end

Set.mt.__eq = function (a,b)
  return a <= b and b <=a
end

c1 = Set.new{2,3,4,6,1}
c2 = Set.new{2,3,1}
print( c1 <= c2)
print( c1 >= c2)
print( c1 == c2)