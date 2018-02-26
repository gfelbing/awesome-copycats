local awful = require("awful");

dofile(".config/awesome/rules/default.lua")

awful.rules.rules = {
    {
        rule = { class = "Firefox" },
        properties = {
            screen = 1,
            tag = "4"
        }
    },
    {
        rule = { instance = "slack" },
        properties = {
            screen = 1,
            tag = "1"
        }
    },
    {
        rule = { instance = "Telegram" },
        properties = {
            screen = 1,
            tag = "1"
        }
    }
}

for _, c in ipairs(client.get()) do
    awful.rules.apply(c)
end
