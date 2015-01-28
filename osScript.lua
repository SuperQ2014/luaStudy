#!D:\workspace\lua\luaStudy\5.1\lua.exe
startTime = os.clock()
print(os.date())





endTime   = os.clock()
totalTime = endTime - startTime
io.write("The code's executive time is %d ms", totalTime)