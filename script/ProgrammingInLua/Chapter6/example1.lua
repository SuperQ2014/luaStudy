a = {p = print}

a.p("Hello world")

print = math.sin
a.p(print(1))
sin = a.p
sin(10,20)

function foo(x) 
  return 2*x
end

foo2 = function(x) return 2*x end



network = {
  {name = "grauna",  IP = "210.26.30.34"},
  {name = "arraial", IP = "210.26.30.23"},
  {name = "lua",     IP = "210.26.23.12"},
  {name = "derain",  IP = "210.26.23.20"},
}

table.sort(network,function (a,b) return (a.name > b.name) end)

