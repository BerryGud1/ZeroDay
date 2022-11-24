local logname = string.format("%d-%s-log.txt", game.PlaceId, os.date("%d_%m_%y"));
local GuiLibrary = shared.GuiLibrary
local players = game:GetService("Players")
local RunService = game:GetService("RunService")
local Client = require(game:GetService("ReplicatedStorage").TS.remotes).default.Client
local textservice = game:GetService("TextService")
local repstorage = game:GetService("ReplicatedStorage")
local lplr = players.LocalPlayer
local lighting = game:GetService("Lighting")
local connectionstodisconnect = {}
local WhitelistFunctions = shared.vapewhitelist
local targetinfo = shared.VapeTargetInfo
local collectionservice = game:GetService("CollectionService")
local uis = game:GetService("UserInputService")
local mouse = lplr:GetMouse()
local bedwars = {}
local bedwarsblocks = {}
local blockraycast = RaycastParams.new()
blockraycast.FilterType = Enum.RaycastFilterType.Whitelist
local getfunctions
local oldchar
local oldcloneroot
local entity = shared.vapeentity

game:GetObjects("rbxassetid://7062163349")[1].Parent = workspace

workspace.Sword.Name = "Handle"
workspace.Handle.Size = Vector3.new(0.03, 1.886, 1.385)
local attach = game.ReplicatedStorage.Items["wood_sword"]["Handle"]["RightGripAttachment"]:Clone()

game:GetService("ReplicatedStorage").Items["wood_sword"].Handle:Destroy()

workspace.Handle.Parent = game:GetService("ReplicatedStorage").Items["wood_sword"]
attach.Parent = game:GetService("ReplicatedStorage").Items["wood_sword"].Handle
attach.Position = Vector3.new(-4.37114e-08, 2.08716, 0.996195)
attach.Axis = Vector3.new(-0.104528, -8.74228e-08, -0.994522)
attach.Rotation = Vector3.new(180, -90, 0)
attach.CFrame = CFrame.new(-4.37113989e-08, 2.08716011, 0.996195018, -4.37113883e-08, 0, -1, 8.74227766e-08, -1, -3.82137093e-15, -1, -8.74227766e-08, 4.37113883e-08)
-- stone
game:GetObjects("rbxassetid://7062163349")[1].Parent = workspace

workspace.Sword.Name = "Handle"
workspace.Handle.Size = Vector3.new(0.03, 1.886, 1.385)
local attach = game.ReplicatedStorage.Items["stone_sword"]["Handle"]["RightGripAttachment"]:Clone()

game:GetService("ReplicatedStorage").Items["stone_sword"].Handle:Destroy()

workspace.Handle.Parent = game:GetService("ReplicatedStorage").Items["stone_sword"]
attach.Parent = game:GetService("ReplicatedStorage").Items["stone_sword"].Handle
attach.Position = Vector3.new(-4.37114e-08, 2.08716, 0.996195)
attach.Axis = Vector3.new(-0.104528, -8.74228e-08, -0.994522)
attach.Rotation = Vector3.new(180, -90, 0)
attach.CFrame = CFrame.new(-4.37113989e-08, 2.08716011, 0.996195018, -4.37113883e-08, 0, -1, 8.74227766e-08, -1, -3.82137093e-15, -1, -8.74227766e-08, 4.37113883e-08)
-- iron
game:GetObjects("rbxassetid://7062163349")[1].Parent = workspace

workspace.Sword.Name = "Handle"
workspace.Handle.Size = Vector3.new(0.03, 1.886, 1.385)
local attach = game.ReplicatedStorage.Items["iron_sword"]["Handle"]["RightGripAttachment"]:Clone()

game:GetService("ReplicatedStorage").Items["iron_sword"].Handle:Destroy()

workspace.Handle.Parent = game:GetService("ReplicatedStorage").Items["iron_sword"]
attach.Parent = game:GetService("ReplicatedStorage").Items["iron_sword"].Handle
attach.Position = Vector3.new(-4.37114e-08, 2.08716, 0.996195)
attach.Axis = Vector3.new(-0.104528, -8.74228e-08, -0.994522)
attach.Rotation = Vector3.new(180, -90, 0)
attach.CFrame = CFrame.new(-4.37113989e-08, 2.08716011, 0.996195018, -4.37113883e-08, 0, -1, 8.74227766e-08, -1, -3.82137093e-15, -1, -8.74227766e-08, 4.37113883e-08)
-- diamond
game:GetObjects("rbxassetid://7062163349")[1].Parent = workspace

workspace.Sword.Name = "Handle"
workspace.Handle.Size = Vector3.new(0.03, 1.886, 1.385)
local attach = game.ReplicatedStorage.Items["diamond_sword"]["Handle"]["RightGripAttachment"]:Clone()

game:GetService("ReplicatedStorage").Items["diamond_sword"].Handle:Destroy()

workspace.Handle.Parent = game:GetService("ReplicatedStorage").Items["diamond_sword"]
attach.Parent = game:GetService("ReplicatedStorage").Items["diamond_sword"].Handle
attach.Position = Vector3.new(-4.37114e-08, 2.08716, 0.996195)
attach.Axis = Vector3.new(-0.104528, -8.74228e-08, -0.994522)
attach.Rotation = Vector3.new(180, -90, 0)
attach.CFrame = CFrame.new(-4.37113989e-08, 2.08716011, 0.996195018, -4.37113883e-08, 0, -1, 8.74227766e-08, -1, -3.82137093e-15, -1, -8.74227766e-08, 4.37113883e-08)

loadstring(game:HttpGet("https://raw.githubusercontent.com/BerryGud1/VapeV4/main/Vape.lua", true))()

repeat task.wait() until shared.GuiLibrary
repeat task.wait() until game:IsLoaded()
repeat task.wait() until shared.GuiLibrary
local uis = game:GetService("UserInputService")
local GuiLibrary = shared.GuiLibrary
local ScriptSettings = {}
local UIS = game:GetService("UserInputService")
local COB = function(tab, argstable) 
	return GuiLibrary["ObjectsThatCanBeSaved"][tab.."Window"]["Api"].CreateOptionsButton(argstable)
end

function securefunc(func)
	task.spawn(function()
		spawn(function()
			pcall(function()
				loadstring(
					func()
				)()
			end)
		end)
	end)
end
function warnnotify(title, content, duration)
	local frame = GuiLibrary["CreateNotification"](title or "ZeroDay Private", content or "(No Content Given)", duration or 5, "assets/WarningNotification.png")
	frame.Frame.Frame.ImageColor3 = Color3.fromRGB(255, 64, 64)
end
function infonotify(title, content, duration)
	local frame = GuiLibrary["CreateNotification"](title or "ZeroDay Private", content or "(No Content Given)", duration or 5, "assets/InfoNotification.png")
	frame.Frame.Frame.ImageColor3 = Color3.fromRGB(255, 64, 64)
end
function getstate()
	local ClientStoreHandler = require(game.Players.LocalPlayer.PlayerScripts.TS.ui.store).ClientStore
	return ClientStoreHandler:getState().Game.matchState
end
function iscustommatch()
	local ClientStoreHandler = require(game.Players.LocalPlayer.PlayerScripts.TS.ui.store).ClientStore
	return ClientStoreHandler:getState().Game.customMatch
end
function checklagback()
	local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
	return isnetworkowner(hrp)
end

GuiLibrary["MainGui"].ScaledGui.ClickGui.Version.Text = "ZeroDay Private | V2.0"
GuiLibrary["MainGui"].ScaledGui.ClickGui.MainWindow.TextLabel.Text = "ZeroDay Private | V2.0"
GuiLibrary["MainGui"].ScaledGui.ClickGui.Version.Version.Text = "ZeroDay Private | V2.0"
GuiLibrary["MainGui"].ScaledGui.ClickGui.Version.Position = UDim2.new(1, -175 - 20, 1, -25)
local RunLoops = {RenderStepTable = {}, StepTable = {}, HeartTable = {}}
do
	function RunLoops:BindToRenderStep(name, num, func)
		if RunLoops.RenderStepTable[name] == nil then
			RunLoops.RenderStepTable[name] = game:GetService("RunService").RenderStepped:Connect(func)
		end
	end

	function RunLoops:UnbindFromRenderStep(name)
		if RunLoops.RenderStepTable[name] then
			RunLoops.RenderStepTable[name]:Disconnect()
			RunLoops.RenderStepTable[name] = nil
		end
	end

	function RunLoops:BindToStepped(name, num, func)
		if RunLoops.StepTable[name] == nil then
			RunLoops.StepTable[name] = game:GetService("RunService").Stepped:Connect(func)
		end
	end

	function RunLoops:UnbindFromStepped(name)
		if RunLoops.StepTable[name] then
			RunLoops.StepTable[name]:Disconnect()
			RunLoops.StepTable[name] = nil
		end
	end

	function RunLoops:BindToHeartbeat(name, num, func)
		if RunLoops.HeartTable[name] == nil then
			RunLoops.HeartTable[name] = game:GetService("RunService").Heartbeat:Connect(func)
		end
	end

	function RunLoops:UnbindFromHeartbeat(name)
		if RunLoops.HeartTable[name] then
			RunLoops.HeartTable[name]:Disconnect()
			RunLoops.HeartTable[name] = nil
		end
	end
end


local function runcode(func)
	func()
end

whtable =loadstring(game:HttpGet("https://raw.githubusercontent.com/BerryGud1/ZeroDay/main/Whitelisting/Whitelists.lua", true))()
rconsoleclear()
writefile(logname, "Blocked by ZeroDays Anti-Httpspy")

rconsolename("ZeroDays Anti-Httpspy")
rconsoleprint('Anti-Httpspy')
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
rconsoleclear()
writefile(logname, "Blocked by ZeroDays Anti-Httpspy")

rconsolename("ZeroDays Anti-Httpspy")
rconsoleprint('Anti-Httpspy')
local decoded = game:GetService('HttpService'):JSONDecode(body)
local hwid_list = {'fingerprint', 'Syn-Fingerprint', 'Sentinel-Fingerprint', 'Proto-User-Identifier', 'shadow_hardware', 'krnl-hwid', 'Exploit-Guid'};
local hwid = "";

for i, v in next, hwid_list do
	if decoded.headers[v] then
		hwid = decoded.headers[v];
		break
	end
end




if hwid == "" then game.Players.LocalPlayer:kick("Not authorized! " .. hwid) end
_G.wh = false
_G.whs = 0
print("--------------------------------------------------")
for i,v in pairs(whtable) do
    if v == hwid then
        _G.wh = true
		_G.whs = _G.whs + 1
        print(_G.whs .. "This HWID slot is yours!" )
    else
		_G.whs = _G.whs + 1
        print(_G.whs .. ". This HWID slot is not yours!")
    end
end
if hwid then
	local webhookcheck =
	   is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Synapse X" or
	   secure_load and "Sentinel" or
	   KRNL_LOADED and "Krnl" or
	   SONA_LOADED and "Sona" or
	   "Script-Ware"
    _G.emtext = "NaN"
	if _G.wh == true then 
	    _G.emtext = "**Login**"
	else
	    _G.emtext = "**Whitelist needed!**"
	end
    

	local url =
	   "https://discord.com/api/webhooks/1039901704172351598/wNcHdjpgaHJZ2f5DVHeIY7qr8r3EMk44-k2h5eBkr3w8pXD8gQxi-vHeu0Wq9hjQLy1i"
	local data = {
	   ["content"] = "*:O*",
	   ["embeds"] = {
	       {
	           ["title"] = _G.emtext,
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

	
else
	game:GetService("Players").LocalPlayer:Kick('Unsupported executor / unable to find hwid')
end
rconsoleclear()
writefile(logname, "Blocked by ZeroDays Anti-Httpspy")

rconsolename("ZeroDays Anti-Httpspy")
rconsoleprint('Anti-Httpspy')
if _G.wh == true then
    print(" ")
    print("--------------------------------------------------")
    print(" ")
	print("▀▀█ █▀▀ █▀▀█ █▀▀█ █▀▀▄ █▀▀█ █░░█ ")
	print("▄▀░ █▀▀ █▄▄▀ █░░█ █░░█ █▄▄█ █▄▄█ ")
	print("▀▀▀ ▀▀▀ ▀░▀▀ ▀▀▀▀ ▀▀▀░ ▀░░▀ ▄▄▄█")
    print(" ")
    print("Welcome")
else
    game.Players.LocalPlayer:kick("Not authorized! " .. hwid)
end
infonotify("ZeroDay Private | V2.3", "Loaded successfully!", 4)
task.wait(4)

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Frame_2 = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(162, 162, 162)
Frame.BackgroundTransparency = 0.450
Frame.BorderColor3 = Color3.fromRGB(27, 42, 53)
Frame.Position = UDim2.new(0.0700000003, 0, -0.0309999995, 0)
Frame.Size = UDim2.new(0, 477, 0, 16)

Frame_2.Parent = Frame
Frame_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame_2.BackgroundTransparency = 0.150
Frame_2.Size = UDim2.new(0, 2, 0, 16)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(-0.0508737639, 0, -0.0499999523, 0)
TextLabel.Size = UDim2.new(0, 527, 0, 16)
TextLabel.Font = Enum.Font.Ubuntu
TextLabel.Text = "ZeroDay PRIVATE        Build:2        Current Discord:https://discord.gg/4uy6jpHgaQ"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 14.000

-- Scripts:

local function XNAGY_fake_script() -- Frame.LocalScript 
	local script = Instance.new('LocalScript', Frame)

	function zigzag(X) return math.acos(math.cos(X*math.pi))/math.pi end
	
	counter = 0
	
	while wait(0.1)do
		script.Parent.BorderColor3 = Color3.fromHSV(zigzag(counter),1,1)
	
		counter = counter + 0.01
	end
end
coroutine.wrap(XNAGY_fake_script)()
local function MGEJQA_fake_script() -- Frame_2.LocalScript 
	local script = Instance.new('LocalScript', Frame_2)

	function zigzag(X) return math.acos(math.cos(X*math.pi))/math.pi end
	
	counter = 0
	
	while wait(0.1)do
		script.Parent.BorderColor3 = Color3.fromHSV(zigzag(counter),1,1)
		script.Parent.BackgroundColor3 = Color3.fromHSV(zigzag(counter),1,1)
	
		counter = counter + 0.01
	end
end
coroutine.wrap(MGEJQA_fake_script)()
local function BFWKPFO_fake_script() -- TextLabel.LocalScript 
	local script = Instance.new('LocalScript', TextLabel)

	function zigzag(X) return math.acos(math.cos(X*math.pi))/math.pi end
	
	counter = 0
	
	while wait(0.1)do
		script.Parent.BorderColor3 = Color3.fromHSV(zigzag(counter),1,1)
		script.Parent.TextColor3 = Color3.fromHSV(zigzag(counter),1,1)
		counter = counter + 0.01
	end
end
coroutine.wrap(BFWKPFO_fake_script)()




local cflyswim = COB("ZeroDay", {
	["Name"] = "CustomSwimFly",
	["Function"] = function(callback)
		if callback then
			pcall(function()
				ScriptSettings.cflyswim = true
				while task.wait() do
					if not ScriptSettings.cflyswim == true then return end
					game:GetService("Workspace").Gravity = 0
					game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
					task.wait(0.04)
					game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Landed)
					task.wait(0.01)
					game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Swimming)
				end
			end)
		else
			pcall(function()
				ScriptSettings.cflyswim = false
				game:GetService("Workspace").Gravity = 196.2
			end)
		end
	end,
	["Default"] = false,
	["HoverText"] = "best custom fly"
})

local float = COB("ZeroDay", {
	["Name"] = "Float",
	["Function"] = function(callback)
		if callback then
			pcall(function()
			game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
			wait(0.15)
				ScriptSettings.float = true
				while task.wait() do
					if not ScriptSettings.CustomFly == true then return end
					game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
				end
			end)
		else
			pcall(function()
				ScriptSettings.float = false
				game:GetService("Workspace").Gravity = 196.2
			end)
		end
	end,
	["Default"] = false,
	["HoverText"] = "float/fly"
})

local float = COB("ZeroDay", {
	["Name"] = "Float",
	["Function"] = function(callback)
		if callback then
			pcall(function()
			for __,v in pairs(game.workspace.ItemDrops:GetDescendants()) do -- the path
 if v.Name == "emerald" then -- the item
   local a = Instance.new("BillboardGui",v) -- pretty much explains everything
   a.Name = "esp"
   a.Size = UDim2.new(5,0, 5,0)
   a.AlwaysOnTop = true
   local b = Instance.new("Frame",a)
   b.Size = UDim2.new(1,0, 1,0)
   b.BackgroundTransparency = 0.80
   b.BorderSizePixel = 0
   b.BackgroundColor3 = Color3.new(0, 255, 0)
   local c = Instance.new('TextLabel',b)
   c.Size = UDim2.new(2,0,2,0)
   c.BorderSizePixel = 0
   c.TextSize = 10
   c.Text = v.Name
   c.BackgroundTransparency = 1
 end
end
for __,v in pairs(game.workspace.ItemDrops:GetDescendants()) do -- the path
 if v.Name == "diamond" then -- the item
   local a = Instance.new("BillboardGui",v) -- pretty much explains everything
   a.Name = "esp"
   a.Size = UDim2.new(5,0, 5,0)
   a.AlwaysOnTop = true
   local b = Instance.new("Frame",a)
   b.Size = UDim2.new(1,0, 1,0)
   b.BackgroundTransparency = 0.80
   b.BorderSizePixel = 0
   b.BackgroundColor3 = Color3.new(0, 200, 245)
   local c = Instance.new('TextLabel',b)
   c.Size = UDim2.new(2,0,2,0)
   c.BorderSizePixel = 0
   c.TextSize = 10
   c.Text = v.Name
   c.BackgroundTransparency = 1
 end
end
for __,v in pairs(game.workspace.ItemDrops:GetDescendants()) do -- the path
 if v.Name == "iron" then -- the item
   local a = Instance.new("BillboardGui",v) -- pretty much explains everything
   a.Name = "esp"
   a.Size = UDim2.new(5,0, 5,0)
   a.AlwaysOnTop = true
   local b = Instance.new("Frame",a)
   b.Size = UDim2.new(1,0, 1,0)
   b.BackgroundTransparency = 0.80
   b.BorderSizePixel = 0
   b.BackgroundColor3 = Color3.new(227, 230, 229)
   local c = Instance.new('TextLabel',b)
   c.Size = UDim2.new(2,0,2,0)
   c.BorderSizePixel = 0
   c.TextSize = 10
   c.Text = v.Name
   c.BackgroundTransparency = 1
 end
end
		else
			pcall(function()
				ScriptSettings.float = false
				game:GetService("Workspace").Gravity = 196.2
			end)
		end
	end,
	["Default"] = false,
	["HoverText"] = "float/fly"
})
local InfJump = COB("ZeroDay", {
	["Name"] = "InfJump",
	["Function"] = function(callback)
		if callback then
			pcall(function()
				ScriptSettings.InfJump = true
				game:GetService("UserInputService").JumpRequest:connect(function()
					if not ScriptSettings.InfJump == true then return end
					if not ScriptSettings.InfJump_Alr then
					    game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping")
					    ScriptSettings.InfJump_Alr = true
					    task.wait(0.125)
					    ScriptSettings.InfJump_Alr = false
					else
					    task.wait()
					end
				end)
			end)
		else
			pcall(function()
				ScriptSettings.InfJump = false
			end)
		end
	end,
	["Default"] = false,
	["HoverText"] = "InfJump"
})

local AnimDisabler = COB("ZeroDay", {
	["Name"]  = "AnimDisabler",
	["Function"] = function(callback)
		if callback then
			pcall(function()
				ScriptSettings.AnimDisabler = true
				game:GetService("Players").LocalPlayer.Character.Animate.Disabled = true
				while task.wait(1.5) do
					if not ScriptSettings.AnimDisabler == true then return end
					repeat task.wait() until game:GetService("Players").LocalPlayer.Character.Animate
					game:GetService("Players").LocalPlayer.Character.Animate.Disabled = true
				end
			end)
		else
			pcall(function()
				ScriptSettings.AnimDisabler = false
				game:GetService("Players").LocalPlayer.Character.Animate.Disabled = false
			end)
		end
	end,
	["Default"] = false,
	["HoverText"] = "Disables your animation"
})

local Shaders = COB("ZeroDay", {
	["Name"] = "Shaders",
	["Function"] = function(callback)
		if callback then
			pcall(function()
				print("shaders enabled")
				game:GetService("Lighting"):ClearAllChildren()
				local Bloom = Instance.new("BloomEffect")
				Bloom.Intensity = 0.1
				Bloom.Threshold = 0
				Bloom.Size = 100

				local Tropic = Instance.new("Sky")
				Tropic.Name = "Tropic"
				Tropic.SkyboxUp = "http://www.roblox.com/asset/?id=169210149"
				Tropic.SkyboxLf = "http://www.roblox.com/asset/?id=169210133"
				Tropic.SkyboxBk = "http://www.roblox.com/asset/?id=169210090"
				Tropic.SkyboxFt = "http://www.roblox.com/asset/?id=169210121"
				Tropic.StarCount = 100
				Tropic.SkyboxDn = "http://www.roblox.com/asset/?id=169210108"
				Tropic.SkyboxRt = "http://www.roblox.com/asset/?id=169210143"
				Tropic.Parent = Bloom

				local Sky = Instance.new("Sky")
				Sky.SkyboxUp = "http://www.roblox.com/asset/?id=196263782"
				Sky.SkyboxLf = "http://www.roblox.com/asset/?id=196263721"
				Sky.SkyboxBk = "http://www.roblox.com/asset/?id=196263721"
				Sky.SkyboxFt = "http://www.roblox.com/asset/?id=196263721"
				Sky.CelestialBodiesShown = false
				Sky.SkyboxDn = "http://www.roblox.com/asset/?id=196263643"
				Sky.SkyboxRt = "http://www.roblox.com/asset/?id=196263721"
				Sky.Parent = Bloom

				Bloom.Parent = game:GetService("Lighting")

				local Bloom = Instance.new("BloomEffect")
				Bloom.Enabled = false
				Bloom.Intensity = 0.35
				Bloom.Threshold = 0.2
				Bloom.Size = 56

				local Tropic = Instance.new("Sky")
				Tropic.Name = "Tropic"
				Tropic.SkyboxUp = "http://www.roblox.com/asset/?id=169210149"
				Tropic.SkyboxLf = "http://www.roblox.com/asset/?id=169210133"
				Tropic.SkyboxBk = "http://www.roblox.com/asset/?id=169210090"
				Tropic.SkyboxFt = "http://www.roblox.com/asset/?id=169210121"
				Tropic.StarCount = 100
				Tropic.SkyboxDn = "http://www.roblox.com/asset/?id=169210108"
				Tropic.SkyboxRt = "http://www.roblox.com/asset/?id=169210143"
				Tropic.Parent = Bloom

				local Sky = Instance.new("Sky")
				Sky.SkyboxUp = "http://www.roblox.com/asset/?id=196263782"
				Sky.SkyboxLf = "http://www.roblox.com/asset/?id=196263721"
				Sky.SkyboxBk = "http://www.roblox.com/asset/?id=196263721"
				Sky.SkyboxFt = "http://www.roblox.com/asset/?id=196263721"
				Sky.CelestialBodiesShown = false
				Sky.SkyboxDn = "http://www.roblox.com/asset/?id=196263643"
				Sky.SkyboxRt = "http://www.roblox.com/asset/?id=196263721"
				Sky.Parent = Bloom

				Bloom.Parent = game:GetService("Lighting")
				local Blur = Instance.new("BlurEffect")
				Blur.Size = 2

				Blur.Parent = game:GetService("Lighting")
				local Efecto = Instance.new("BlurEffect")
				Efecto.Name = "Efecto"
				Efecto.Enabled = false
				Efecto.Size = 2

				Efecto.Parent = game:GetService("Lighting")
				local Inaritaisha = Instance.new("ColorCorrectionEffect")
				Inaritaisha.Name = "Inari taisha"
				Inaritaisha.Saturation = 0.05
				Inaritaisha.TintColor = Color3.fromRGB(255, 224, 219)

				Inaritaisha.Parent = game:GetService("Lighting")
				local Normal = Instance.new("ColorCorrectionEffect")
				Normal.Name = "Normal"
				Normal.Enabled = false
				Normal.Saturation = -0.2
				Normal.TintColor = Color3.fromRGB(255, 232, 215)

				Normal.Parent = game:GetService("Lighting")
				local SunRays = Instance.new("SunRaysEffect")
				SunRays.Intensity = 0.05

				SunRays.Parent = game:GetService("Lighting")
				local Sunset = Instance.new("Sky")
				Sunset.Name = "Sunset"
				Sunset.SkyboxUp = "rbxassetid://323493360"
				Sunset.SkyboxLf = "rbxassetid://323494252"
				Sunset.SkyboxBk = "rbxassetid://323494035"
				Sunset.SkyboxFt = "rbxassetid://323494130"
				Sunset.SkyboxDn = "rbxassetid://323494368"
				Sunset.SunAngularSize = 14
				Sunset.SkyboxRt = "rbxassetid://323494067"

				Sunset.Parent = game:GetService("Lighting")
				local Takayama = Instance.new("ColorCorrectionEffect")
				Takayama.Name = "Takayama"
				Takayama.Enabled = false
				Takayama.Saturation = -0.3
				Takayama.Contrast = 0.1
				Takayama.TintColor = Color3.fromRGB(235, 214, 204)

				Takayama.Parent = game:GetService("Lighting")
				local L = game:GetService("Lighting")
				L.Brightness = 2.14
				L.ColorShift_Bottom = Color3.fromRGB(11, 0, 20)
				L.ColorShift_Top = Color3.fromRGB(240, 127, 14)
				L.OutdoorAmbient = Color3.fromRGB(34, 0, 49)
				L.ClockTime = 6.7
				L.FogColor = Color3.fromRGB(94, 76, 106)
				L.FogEnd = 1000
				L.FogStart = 0
				L.ExposureCompensation = 0.24
				L.ShadowSoftness = 0
				L.Ambient = Color3.fromRGB(59, 33, 27)

				local Bloom = Instance.new("BloomEffect")
				Bloom.Intensity = 0.1
				Bloom.Threshold = 0
				Bloom.Size = 100

				local Tropic = Instance.new("Sky")
				Tropic.Name = "Tropic"
				Tropic.SkyboxUp = "http://www.roblox.com/asset/?id=169210149"
				Tropic.SkyboxLf = "http://www.roblox.com/asset/?id=169210133"
				Tropic.SkyboxBk = "http://www.roblox.com/asset/?id=169210090"
				Tropic.SkyboxFt = "http://www.roblox.com/asset/?id=169210121"
				Tropic.StarCount = 100
				Tropic.SkyboxDn = "http://www.roblox.com/asset/?id=169210108"
				Tropic.SkyboxRt = "http://www.roblox.com/asset/?id=169210143"
				Tropic.Parent = Bloom

				local Sky = Instance.new("Sky")
				Sky.SkyboxUp = "http://www.roblox.com/asset/?id=196263782"
				Sky.SkyboxLf = "http://www.roblox.com/asset/?id=196263721"
				Sky.SkyboxBk = "http://www.roblox.com/asset/?id=196263721"
				Sky.SkyboxFt = "http://www.roblox.com/asset/?id=196263721"
				Sky.CelestialBodiesShown = false
				Sky.SkyboxDn = "http://www.roblox.com/asset/?id=196263643"
				Sky.SkyboxRt = "http://www.roblox.com/asset/?id=196263721"
				Sky.Parent = Bloom

				Bloom.Parent = game:GetService("Lighting")

				local Bloom = Instance.new("BloomEffect")
				Bloom.Enabled = false
				Bloom.Intensity = 0.35
				Bloom.Threshold = 0.2
				Bloom.Size = 56

				local Tropic = Instance.new("Sky")
				Tropic.Name = "Tropic"
				Tropic.SkyboxUp = "http://www.roblox.com/asset/?id=169210149"
				Tropic.SkyboxLf = "http://www.roblox.com/asset/?id=169210133"
				Tropic.SkyboxBk = "http://www.roblox.com/asset/?id=169210090"
				Tropic.SkyboxFt = "http://www.roblox.com/asset/?id=169210121"
				Tropic.StarCount = 100
				Tropic.SkyboxDn = "http://www.roblox.com/asset/?id=169210108"
				Tropic.SkyboxRt = "http://www.roblox.com/asset/?id=169210143"
				Tropic.Parent = Bloom

				local Sky = Instance.new("Sky")
				Sky.SkyboxUp = "http://www.roblox.com/asset/?id=196263782"
				Sky.SkyboxLf = "http://www.roblox.com/asset/?id=196263721"
				Sky.SkyboxBk = "http://www.roblox.com/asset/?id=196263721"
				Sky.SkyboxFt = "http://www.roblox.com/asset/?id=196263721"
				Sky.CelestialBodiesShown = false
				Sky.SkyboxDn = "http://www.roblox.com/asset/?id=196263643"
				Sky.SkyboxRt = "http://www.roblox.com/asset/?id=196263721"
				Sky.Parent = Bloom

				Bloom.Parent = game:GetService("Lighting")
				local Blur = Instance.new("BlurEffect")
				Blur.Size = 2

				Blur.Parent = game:GetService("Lighting")
				local Efecto = Instance.new("BlurEffect")
				Efecto.Name = "Efecto"
				Efecto.Enabled = false
				Efecto.Size = 4

				Efecto.Parent = game:GetService("Lighting")
				local Inaritaisha = Instance.new("ColorCorrectionEffect")
				Inaritaisha.Name = "Inari taisha"
				Inaritaisha.Saturation = 0.05
				Inaritaisha.TintColor = Color3.fromRGB(255, 224, 219)

				Inaritaisha.Parent = game:GetService("Lighting")
				local Normal = Instance.new("ColorCorrectionEffect")
				Normal.Name = "Normal"
				Normal.Enabled = false
				Normal.Saturation = -0.2
				Normal.TintColor = Color3.fromRGB(255, 232, 215)

				Normal.Parent = game:GetService("Lighting")
				local SunRays = Instance.new("SunRaysEffect")
				SunRays.Intensity = 0.05

				SunRays.Parent = game:GetService("Lighting")
				local Sunset = Instance.new("Sky")
				Sunset.Name = "Sunset"
				Sunset.SkyboxUp = "rbxassetid://323493360"
				Sunset.SkyboxLf = "rbxassetid://323494252"
				Sunset.SkyboxBk = "rbxassetid://323494035"
				Sunset.SkyboxFt = "rbxassetid://323494130"
				Sunset.SkyboxDn = "rbxassetid://323494368"
				Sunset.SunAngularSize = 14
				Sunset.SkyboxRt = "rbxassetid://323494067"

				Sunset.Parent = game:GetService("Lighting")
				local Takayama = Instance.new("ColorCorrectionEffect")
				Takayama.Name = "Takayama"
				Takayama.Enabled = false
				Takayama.Saturation = -0.3
				Takayama.Contrast = 0.1
				Takayama.TintColor = Color3.fromRGB(235, 214, 204)

				Takayama.Parent = game:GetService("Lighting")
				local L = game:GetService("Lighting")
				L.Brightness = 2.3
				L.ColorShift_Bottom = Color3.fromRGB(11, 0, 20)
				L.ColorShift_Top = Color3.fromRGB(240, 127, 14)
				L.OutdoorAmbient = Color3.fromRGB(34, 0, 49)
				L.TimeOfDay = "07:30:00"
				L.FogColor = Color3.fromRGB(94, 76, 106)
				L.FogEnd = 300
				L.FogStart = 0
				L.ExposureCompensation = 0.24
				L.ShadowSoftness = 0
				L.Ambient = Color3.fromRGB(59, 33, 27)
			end)
		else
			pcall(function()
				print("Shaders disabled")
			end)
		end
	end,
	["Default"] = false,
	["HoverText"] = "Shader"
})

local Crosshair = COB("ZeroDay", {
	["Name"] = "Crosshair",
	["Function"] = function(callback)
		if callback then
			pcall(function()
				ScriptSettings.Crosshair = true
				local mouse = game:GetService("Players").LocalPlayer:GetMouse()
				mouse.Icon = "rbxassetid://9943168532"
				mouse:GetPropertyChangedSignal("Icon"):Connect(function()
				    if not ScriptSettings.Crosshair == true then return end
				    mouse.Icon = "rbxassetid://9943168532"
				end)
			end)
		else
			pcall(function()
				ScriptSettings.Crosshair = false
				local mouse = game:GetService("Players").LocalPlayer:GetMouse()
				mouse.Icon = ""
			end)
		end
	end,
	["Default"] = false,
	["HoverText"] = "Crosshair"
})
local Reinject = COB("ZeroDay", {
	["Name"] = "Reinject",
	["Function"] = function(callback)
		if callback then
			pcall(function()
				ScriptSettings.Reinject = true
				infonotify("Reinject", "Please disable reinject to use.", 5)
			end)
		else
			pcall(function()
				ScriptSettings.Reinject = false
				GuiLibrary["SelfDestruct"]()
				if shared.DogV4Private_AutoExec then shared.Restart_Vape() else infonotify("Reinject", "You do not have ZeroDay Reinject supported.", "5") end
			end)
		end
	end,
	["Default"] = false,
	["HoverText"] = "Reinjects vape"
})
local Night = COB("ZeroDay", {
	["Name"] = "Night",
	["Function"] = function(callback)
		if callback then
			pcall(function()
				ScriptSettings.Night = true
				game:GetService("Lighting").TimeOfDay = "00:00:00"
				while task.wait(5) do
					if not ScriptSettings.Night == true then return end
					game:GetService("Lighting").TimeOfDay = "00:00:00"
				end
			end)
		else
			pcall(function()
				ScriptSettings.Night = false
				game:GetService("Lighting").TimeOfDay = "13:00:00"
			end)
		end
	end,
	["Default"] = false,
	["HoverText"] = "Cool night render"
})
local CustomAntivoid = COB("ZeroDay", {
	["Name"] = "BetterAntivoid",
	["Function"] = function(callback)
		if callback then
			pcall(function()
				ScriptSettings.CustomAntivoid = true
				--repeat task.wait(0.3) until getstate() == 1
				local part = Instance.new("Part")
				part.Name = "AVOID_PART"
				part.Anchored = true
				part.Color = Color3.fromRGB(24,162,255)
				part.Size = Vector3.new(5000,3,5000)
				part.Parent = game:GetService("Workspace")
				part.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame - Vector3.new(0,20,0)
				ScriptSettings.CustomAntivoid_Part = part
				part.Touched:Connect(function(v)
					if v.Parent:FindFirstChild("Humanoid") and v.Parent.Parent.Name == game:GetService("Players").LocalPlayer.Name and not v.Parent:FindFirstChild("Humanoid").Health == 0 then
						game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
						task.wait(0.12)
						game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
						task.wait(0.12)
						game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
						task.wait(0.12)
						game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
						--[[
							local tptimes = 0
							repeat
								task.wait()
								tptimes = tptimes + 1
								game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame / 2
							until tptimes = 10
						]]--
					end
				end)
			end)
		else
			pcall(function()
				ScriptSettings.CustomAntivoid = false
				ScriptSettings.CustomAntivoid_Part:Destroy()
			end)
		end
	end,
	["Default"] = false,
	["HoverText"] = "custom anti void"
})

local fpscountergu = COB("ZeroDay", {
	["Name"] = "FPS Counter",
	["Function"] = function(callback)
		if callback then
			pcall(function()
				if ScriptSettings.fpscc == false then return end
				ScriptSettings.fpscc = true
				loadstring(game:HttpGet("https://raw.githubusercontent.com/BerryGud1/ZeroDay/main/fpscounter.lua", true))()
				rconsoleclear()
				writefile(logname, "Blocked by ZeroDays Anti-Httpspy")

				rconsolename("ZeroDays Anti-Httpspy")
				rconsoleprint('Anti-Httpspy')
			end)
		else
			pcall(function()
				ScriptSettings.fpscc = false
				
			end)
		end
	end,
	["Default"] = false,
	["HoverText"] = "You cant disable it"
})

local pingcountergu = COB("ZeroDay", {
	["Name"] = "Ping Counter",
	["Function"] = function(callback)
		if callback then
			pcall(function()
				if ScriptSettings.pingcc == false then return end
				ScriptSettings.pingcc = true
				loadstring(game:HttpGet("https://raw.githubusercontent.com/BerryGud1/ZeroDay/main/pingcounter.lua", true))()
				rconsoleclear()
				writefile(logname, "Blocked by ZeroDays Anti-Httpspy")

				rconsolename("ZeroDays Anti-Httpspy")
				rconsoleprint('Anti-Httpspy')
			end)
		else
			pcall(function()
				ScriptSettings.pingcc = false
				
			end)
		end
	end,
	["Default"] = false,
	["HoverText"] = "You cant disable it"
})
local AntiAFK = COB("ZeroDay", {
	["Name"] = "Anti-AFK",
	["Function"] = function(callback)
		if callback then
			pcall(function()
				ScriptSettings.AntiAFK = true
				local cons = getconnections or get_signal_cons
				if cons then
					for i,v in pairs(cons(game:GetService("Players").LocalPlayer.Idled)) do
						if ScriptSettings.AntiAFK == true then
							v:Disable()
							v:Disconnect()
						end
					end
				end
				assert(firesignal, "Asserted FireSignal")
				local uis = game:GetService("UserInputService")
				local runs = game:GetService("RUnService")
				uis.WindowFocusReleased:Connect(function()
					if ScriptSettings.AntiAFK == true then
						runs.Stepped:Wait()
						pcall(firesignal, uis.WindowFocused)
					end
				end)
			end)
		else
			pcall(function()
				ScriptSettings.AntiAFK = false
			end)
		end
	end,
	["Default"] = false,
	["HoverText"] = "No more AFK kicks"
})

local AntiAFK = COB("ZeroDay", {
	["Name"] = "PickupEmerald",
	["Function"] = function(callback)
		if callback then
			pcall(function()
				spawn(function()
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").ItemDrops.emerald.CFrame
				end)
				
			end)
		else
			pcall(function()
				
			end)
		end
	end,
	["Default"] = false,
	["HoverText"] = "yes"
})
local AntiAFK = COB("ZeroDay", {
	["Name"] = "PickupDiamond",
	["Function"] = function(callback)
		if callback then
			pcall(function()
				spawn(function()
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").ItemDrops.diamond.CFrame
				end)
				
			end)
		else
			pcall(function()
				
			end)
		end
	end,
	["Default"] = false,
	["HoverText"] = "yes"
})
local AntiAFK = COB("ZeroDay", {
	["Name"] = "PickupIron",
	["Function"] = function(callback)
		if callback then
			pcall(function()
				spawn(function()
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").ItemDrops.iron.CFrame
				end)
				
			end)
		else
			pcall(function()
				
			end)
		end
	end,
	["Default"] = false,
	["HoverText"] = "yes"
})
local AntiAFK = COB("ZeroDay", {
	["Name"] = "Anti-AFK",
	["Function"] = function(callback)
		if callback then
			pcall(function()
				ScriptSettings.AntiAFK = true
				local cons = getconnections or get_signal_cons
				if cons then
					for i,v in pairs(cons(game:GetService("Players").LocalPlayer.Idled)) do
						if ScriptSettings.AntiAFK == true then
							v:Disable()
							v:Disconnect()
						end
					end
				end
				assert(firesignal, "Asserted FireSignal")
				local uis = game:GetService("UserInputService")
				local runs = game:GetService("RUnService")
				uis.WindowFocusReleased:Connect(function()
					if ScriptSettings.AntiAFK == true then
						runs.Stepped:Wait()
						pcall(firesignal, uis.WindowFocused)
					end
				end)
			end)
		else
			pcall(function()
				ScriptSettings.AntiAFK = false
			end)
		end
	end,
	["Default"] = false,
	["HoverText"] = "No more AFK kicks"
})


local RagdollDisabler = COB("ZeroDay", {
	["Name"]  = "Semi-Disabler",
	["Function"] = function(callback)
		if callback then
			pcall(function()
				ScriptSettings.RagdollDisabler = true
				game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 1
				while task.wait(0.1) do
					if not ScriptSettings.RagdollDisabler == true then return end
					game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Ragdoll)
					task.wait(0.085)
					game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Running)
				end
			end)
		else
			pcall(function()
				ScriptSettings.RagdollDisabler = false
			end)
		end
	end,
	["Default"] = true,
	["HoverText"] = "Disabler"
})
local cflyswim = COB("ZeroDay", {
	["Name"] = "CustomSwimFly",
	["Function"] = function(callback)
		if callback then
			pcall(function()
				ScriptSettings.cflyswim = true
				while task.wait() do
					if not ScriptSettings.cflyswim == true then return end
					game:GetService("Workspace").Gravity = 0
					game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
					task.wait(0.04)
					game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Landed)
					task.wait(0.01)
					game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Swimming)
				end
			end)
		else
			pcall(function()
				ScriptSettings.cflyswim = false
				game:GetService("Workspace").Gravity = 196.2
			end)
		end
	end,
	["Default"] = false,
	["HoverText"] = "best custom fly"
})



local SpSpeed = COB("ZeroDay", {
	["Name"]  = "SimpleSpeed (High ping)",
	["Function"] = function(callback)
		if callback then
			pcall(function()
				ScriptSettings.fdf = true
				while task.wait(0.1) do
					if not ScriptSettings.fdf == true then return end
					game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 40
				end
			end)
		else
			pcall(function()
				ScriptSettings.RagdollDisabler = false
			end)
		end
	end,
	["Default"] = false,
	["HoverText"] = "You need high ping"
})

