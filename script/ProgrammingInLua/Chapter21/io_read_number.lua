io.input("./Chapter21/io_read_number.txt")

while true do
  local n1, n2, n3 = io.read("*number", "*number", "*number")
  if not n1 then
    break
  end
  print(n1,n2,n3)
  print(math.max(n1,n2,n3))
end
