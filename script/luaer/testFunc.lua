local fact
fact = function (n) 
  if n == 0 then
    return 1
  else
    return fact(n-1)*n
  end
end

print(fact(10))

print("======")
local func1, func2
function func1(m)
  print(m)
  local var1 = 4
  func2(var1)
end

function func2(n)
  print(n)
  local var2 = 5
  func1(var2)
end

local init = 3
func1(init)     --stack overflowz