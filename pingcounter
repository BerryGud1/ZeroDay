local ScreenGui = Instance.new("ScreenGui")
local TextLabel = Instance.new("TextLabel")
local Frame = Instance.new("Frame")
--Properties:
ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
TextLabel.Parent = ScreenGui
TextLabel.BackgroundColor3 = Color3.fromRGB(162, 162, 162)
TextLabel.BackgroundTransparency = 0.450
TextLabel.Position = UDim2.new(0.0189905763, 0, 0.59217602, 0)
TextLabel.Size = UDim2.new(0, 122, 0, 17)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Ping: NaN"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 15.000
Frame.Parent = TextLabel
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.Size = UDim2.new(0, 3, 0, 17)
-- Scripts:
local function AGZYSE_fake_script() -- TextLabel.LocalScript 
	local script = Instance.new('LocalScript', TextLabel)

	function zigzag(X) return math.acos(math.cos(X*math.pi))/math.pi end
	counter = 0
	while wait(0.1)do
		script.Parent.BorderColor3 = Color3.fromHSV(zigzag(counter),1,1)
		script.Parent.TextColor3 = Color3.fromHSV(zigzag(counter),1,1)
		counter = counter + 0.01
	end
end
coroutine.wrap(AGZYSE_fake_script)()
local function TPQIQG_fake_script() -- Frame.LocalScript 
	local script = Instance.new('LocalScript', Frame)

	function zigzag(X) return math.acos(math.cos(X*math.pi))/math.pi end
	counter = 0
	while wait(0.1)do
		script.Parent.BorderColor3 = Color3.fromHSV(zigzag(counter),1,1)
		script.Parent.BackgroundColor3 = Color3.fromHSV(zigzag(counter),1,1)
		counter = counter + 0.01
	end
end
coroutine.wrap(TPQIQG_fake_script)()
local function LMEINZ_fake_script() -- TextLabel.LocalScript 
	local currentPing = tick() -- epoch time
	local script = Instance.new('LocalScript', TextLabel)
	local RunService = game:GetService("RunService")
	RunService.RenderStepped:Connect(function(ping) 
		TextLabel.Text = ("Ping: " ..game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(math.round(2/ping))) -- your ping
	end)
end
coroutine.wrap(LMEINZ_fake_script)()
