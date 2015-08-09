require"base"
--print(prettytostring(tb)) 
names = {"Tom", 'Jim', 'Marry', "Luccy"}    --should add "" or ''
scores = {
  Tom = 15,           --should not add "" or ''
  Jim = 20,
  Marry = 5,
  Luccy = 40,
}
table.sort(names, function(n1, n2)
    return scores[n1] > scores[n2]
  end
)
for k,v in ipairs(names) do
  print(k,v)
end

--another example
print("===========")
function newCounter()
  local i = 0
  return function ()
    i = i + 1
    return i
  end
end

c = newCounter()
print(c())
print(c())