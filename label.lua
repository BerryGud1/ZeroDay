-- Gui to Lua
-- Version: 3.2

-- Instances:

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
TextLabel.Size = UDim2.new(0, 527, 0, 5)
TextLabel.Font = Enum.Font.Unknown
TextLabel.Text = "ZeroDay PRIVATE         Build:1         Current Discord:https://discord.gg/4uy6jpHgaQ"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 4.000

-- Scripts:

local function VPARHF_fake_script() -- Frame.LocalScript 
	local script = Instance.new('LocalScript', Frame)

	function zigzag(X) return math.acos(math.cos(X*math.pi))/math.pi end
	
	counter = 0
	
	while wait(0.1)do
		script.Parent.BorderColor3 = Color3.fromHSV(zigzag(counter),1,1)
	
		counter = counter + 0.01
	end
end
coroutine.wrap(VPARHF_fake_script)()
local function SXWOHCB_fake_script() -- Frame_2.LocalScript 
	local script = Instance.new('LocalScript', Frame_2)

	function zigzag(X) return math.acos(math.cos(X*math.pi))/math.pi end
	
	counter = 0
	
	while wait(0.1)do
		script.Parent.BorderColor3 = Color3.fromHSV(zigzag(counter),1,1)
		script.Parent.BackgroundColor3 = Color3.fromHSV(zigzag(counter),1,1)
	
		counter = counter + 0.01
	end
end
coroutine.wrap(SXWOHCB_fake_script)()
local function WSGQ_fake_script() -- TextLabel.LocalScript 
	local script = Instance.new('LocalScript', TextLabel)

	function zigzag(X) return math.acos(math.cos(X*math.pi))/math.pi end
	
	counter = 0
	
	while wait(0.1)do
		script.Parent.BorderColor3 = Color3.fromHSV(zigzag(counter),1,1)
		script.Parent.TextColor3 = Color3.fromHSV(zigzag(counter),1,1)
		counter = counter + 0.01
	end
end
coroutine.wrap(WSGQ_fake_script)()
