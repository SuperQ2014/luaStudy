local f = assert(io.open("./Chapter21/wc1.txt","r"))

local BUFSIZE = 2^13  ---8K

local cc, lc, wc = 0, 0, 0  --字符、行、单词计数初始化

while true do
  local lines, rest = f:read(BUFSIZE,"*line")
  if not lines then
    break
  end
  if rest then
    lines = lines .. rest .. "\n"
  end
  cc = cc + #lines
  --统计块中的单词数
  local _,t = string.gsub(lines, "%S+", "")
  wc = wc + t
  --统计块中的换行字符数量
  _,t = string.gsub(lines, "\n", "\n")
  lc = lc + t
end
print("行数：", lc, "单词数：", wc, "字符数：", cc)

--记得关闭句柄
assert(f:close())

