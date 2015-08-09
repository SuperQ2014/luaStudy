--
-- Created by IntelliJ IDEA.
-- User: Administrator
-- Date: 2015/6/27
-- Time: 9:56
-- To change this template use File | Settings | File Templates.
--
socket = require("socket")

print(socket._VERSION)

host = "www.w3.org"
file = "/TR/REC-html32.html"

--print(socket.connect(host,80))
--os.exit()
c = assert(socket.connect(host, 80))

c:send("GET " .. file .. " HTTP/1.0\r\n\r\n")

c:close()

function download (host, file)
    local c = assert(socket.connect(host, 80))
    local count = 0    -- counts number of bytes read
    c:send("GET " .. file .. " HTTP/1.0\r\n\r\n")
    while true do
        local s, status = receive(c)
        count = count + string.len(s)
        if status == "closed" then break end
    end
    c:close()
    print(file, count)
end

function receive (connection)
    return connection:receive(2^10)
end

