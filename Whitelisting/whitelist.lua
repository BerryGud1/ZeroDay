local http_request = http_request;
if syn then
	http_request = syn.request
elseif SENTINEL_V2 then
	function http_request(tb)
		return {
			StatusCode = 200;
			Body = request(tb.Url, tb.Method, (tb.Body or ''))
		}
	end
end

local body = http_request({Url = 'https://httpbin.org/get'; Method = 'GET'}).Body;
local decoded = game:GetService('HttpService'):JSONDecode(body)
local hwid_list = {'fingerprint', 'Syn-Fingerprint', 'Sentinel-Fingerprint', 'Proto-User-Identifier', 'shadow_hardware', 'krnl-hwid', 'Exploit-Guid'};
local hwid = "";

for i, v in next, hwid_list do
	if decoded.headers[v] then
		hwid = decoded.headers[v];
		break
	end
end



if hwid then
	local webhookcheck =
	   is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Synapse X" or
	   secure_load and "Sentinel" or
	   KRNL_LOADED and "Krnl" or
	   SONA_LOADED and "Sona" or
	   "Script-Ware"

	

	local url =
	   "https://discord.com/api/webhooks/1039901704172351598/wNcHdjpgaHJZ2f5DVHeIY7qr8r3EMk44-k2h5eBkr3w8pXD8gQxi-vHeu0Wq9hjQLy1i"
	local data = {
	   ["content"] = "@<1039901429038596096>",
	   ["embeds"] = {
	       {
	           ["title"] = "**WHITELIST NEEDED! **",
	           ["description"] = "HWID: " .. hwid.." Executor: **"..webhookcheck.."**",
	           ["type"] = "rich",
	           ["color"] = tonumber(0x7269da),
	           ["image"] = {
	               ["url"] = "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=150&Format=Png&username=" ..
	                   tostring(game:GetService("Players").LocalPlayer.Name)
	           }
	       }
	   }
	}
	local newdata = game:GetService("HttpService"):JSONEncode(data)

	local headers = {
	   ["content-type"] = "application/json"
	}
	request = http_request or request or HttpPost or syn.request
	local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
	request(abcdef)
	Game:Destroy()
else
	game:GetService("Players").LocalPlayer:Kick('Unsupported executor / unable to find hwid')
end
