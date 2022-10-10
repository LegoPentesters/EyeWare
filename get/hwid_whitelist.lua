local http_request = (syn and syn.request or request)

local body = http_request({Url = 'https://httpbin.org/get'; Method = "GET"}).Body;
local decoded = game:GetService("HttpService"):JSONDecode(body)
local hwid = decoded.headers['Syn-Fingerprint']

print(hwid)
setclipboard(tostring(hwid))
game.Players.LocalPlayer:Kick("Whitelist HWID has been copied to your keyboard.\nPlease send the HWID to focat to get access to EyeWare.\nhttps://eyeware.systems/discord")
