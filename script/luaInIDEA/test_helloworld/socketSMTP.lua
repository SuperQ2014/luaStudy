--
-- Created by IntelliJ IDEA.
-- User: Administrator
-- Date: 2015/6/28
-- Time: 14:27
-- To change this template use File | Settings | File Templates.
--
-- load the smtp support
local smtp = require("socket.smtp")

-- Connects to server "localhost" and sends a message to users
-- "fulano@example.com",  "beltrano@example.com",
-- and "sicrano@example.com".
-- Note that "fulano" is the primary recipient, "beltrano" receives a
-- carbon copy and neither of them knows that "sicrano" received a blind
-- carbon copy of the message.
--from = "<tao-chqang@163.com>"
from = "<tao@superqiang.net>"

rcpt = {
    "<tao-chqang@163.com>",
    "<w5nner@sina.com>"
   -- "<54675059@qq.com>"
}

mesgt = {
    headers = {
        to = " <tao-chqang@163.com>",
        cc = " <w5nner@sina.com>",
        subject = "My first message"
    },
    body = "I hope this works. If it does, I can send you another 1000 copies."
}

r, e = smtp.send{
    from = from,
    rcpt = rcpt,
    source = smtp.message(mesgt),
    server = "smtp.163.com",
    user = "tao-chqang@163.com",
    -- password = "30140906tao"
}
if not r then
    print(e)
else
    print("send OK!")
end


