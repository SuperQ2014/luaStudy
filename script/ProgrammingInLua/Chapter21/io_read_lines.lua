io.input("./Chapter21/io_read.txt")
io.output("./Chapter21/io_read_lines_output.txt")


local lines = {}

--读取table 'lines'中所有行
for line in io.lines() do 
  lines[#lines + 1] = line 
end
--print(lines[1])
--排序
table.sort(lines)
--输出所有行
for _,l in ipairs(lines) do
  io.write(l, "\n")
end
--输出到文件时，io.output需要在io.write之前使用
