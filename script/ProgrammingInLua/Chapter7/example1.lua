a = {"one","two","three"}

for i,v in ipairs(a) do
  print(i,v)
end

for k,v in next, a do
  print(k,v)
end
