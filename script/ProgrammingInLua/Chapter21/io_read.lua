print("Right!")
--需要使用绝对路径，当使用相对路径时不能识别文件！！！
--以上说明有误，本project的根目录为ProgrammingInLua，因此可以采用./Chapter21/io_read.txt,如下
io.input("./Chapter21/io_read.txt")
--io.input("D:/luaStudy/script/ProgrammingInLua/Chapter21/io_read.txt")
print("Right!")
t = io.read("*all")
t = string.gsub(t,"([\128-\255=])", function(c) 
    return string.format("=%02x",string.byte(c))
  end)
io.write(t)