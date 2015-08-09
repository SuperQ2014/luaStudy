function derivative (f,delta)
  delta = delta or 1e-4
  return function (x)
    return (f(x + delta) - f(x))/delta
  end
end

c = derivative(math.sin)
print(math.cos(10),c(10))

names = {"Peter","Paul","Mary"}
grades = {Mary = 10,Paul = 7,Peter = 8}
table.sort(names, function (n1,n2) 
    return grades[n1] > grades[n2]
  end)

--other expression

function sortbygrade (names,grades)
  table.sort(names,function (n1,n2)
      return grades[n1] > grades[n2]
    end)
  end
  
  
  function newCounter ()
    local i = 0
    return function ()
      i = i + 1
      return i 
    end
  end
  
  c1 = newCounter()
  print(c1())
  print(c1())
  c2 = newCounter()
  print(c2())
  print(c1())
  print(c2())
  
  
  --non-global function
  
  Lib = {}
  Lib.foo = function (x,y) return x + y end
  Lib.goo = function (x,y) return x - y end
  
  --other expression
  
  Lib = {
    foo = function (x,y) return x + y end,
    goo = function (x,y) return x - y end
  }
  
  -- other expression
  
  Lib = {}
  function Lib.foo (x,y) return x + y end
  function Lib.goo (x,y) return x - y end
  
  --递归错误
--[[
local fact = function (n)
  if n == 0 then return 1
  else return n*fact(n-1)    --attempt to call global 'fact' (a nil value)
  end
end

a = fact(5)
print(a)

--]]
-- advised
local fact1
fact1 = function (n)
  if n == 0 then return 1
  else return n*fact1(n-1)
  end
end
b = fact1(7)
print(b)

--other expression
local function fact2 (n)
  if n == 0 then return 1
  else return n*fact2(n-1)
  end
end


