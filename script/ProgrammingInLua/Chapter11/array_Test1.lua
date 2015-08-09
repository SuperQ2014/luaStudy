a = {}

for i = 1, 100, 2 do
  a[i] = 100
end

print(#a)
print(a[53])
b = {}

for i = -10, -5 do
  b[i] = 1
end

--长度操作符#从1开始计数，得到20
print(#b)
print(b[-7])

--创建矩阵
local M = 100
local N = 50
mt = {}
for i = 1,N do
  mt[i] = {}
  for j = 1,M do
    mt[i][j] = 0
  end
end

--另一种方式
mt2 = {}
for i = 1,N do
  for j = 1,M do
    mt2[(i-1)*M + j] = 0
  end
end

function mult (a, rowindex, k)
  local row = a[rowindex]
  for i, v in pairs(row) do
    row[i] = v*k
  end
end

  

