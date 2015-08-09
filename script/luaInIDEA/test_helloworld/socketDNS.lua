--
-- Created by IntelliJ IDEA.
-- User: Administrator
-- Date: 2015/6/27
-- Time: 10:56
-- To change this template use File | Settings | File Templates.
--
local socket = require("socket")
print(socket._VERSION)

print(socket.dns.gethostname())

print(socket.dns.toip("www.baidu.com"))
--print(socket.dns.tohostname('220.181.111.188')) --error:nil Valid name, no data record of requested type

-- get the html message about the index page www.baidu.com  --method 1
---[[
local http = require("socket.http")
local response = http.request("http://www.baidu.com/")
print(response)
--]]
-- get the html message about the index page www.baidu.com  --method 2
--[[
local host = "www.baidu.com"
local file = "/"
local sock = assert(socket.connect(host, 80))
sock:send("GET " .. file .. " HTTP/1.0\r\n\r\n")
repeat
    local chunk, status, partial = sock:receive(1024)
    print(chunk or partial)
until status == "closed"
sock:close()
--]]