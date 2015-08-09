io.input("D:/luaStudy/script/ProgrammingInLua/Chapter21/io_read.txt")

for count = 1, math.huge do
  --io.read默认的参数是io.read("*line")
  local line = io.read()
  if line == nil then break end
  io.write(string.format("%6d  ",count), line, "\n")
end
