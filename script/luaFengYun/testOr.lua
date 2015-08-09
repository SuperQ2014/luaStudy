function testOr1 (arg)
  arg = arg or true
  print(arg)
end

function testOr2 (arg)
  arg = arg ~= false
  print(arg)
end

test1 = false
testOr1(test)

test2 = 4
testOr2(test2)
