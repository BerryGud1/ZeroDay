local ScreenGui = Instance.new("ScreenGui")
local TextLabel = Instance.new("TextLabel")
local Frame = Instance.new("Frame")
				
--Properties:
				
ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
				
TextLabel.Parent = ScreenGui
TextLabel.BackgroundColor3 = Color3.fromRGB(162, 162, 162)
TextLabel.BackgroundTransparency = 0.450
TextLabel.Position = UDim2.new(0.0189905763, 0, 0.562546372, 0)
TextLabel.Size = UDim2.new(0, 122, 0, 17)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "FPS: NaN"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 18.000
				
Frame.Parent = TextLabel
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.Size = UDim2.new(0, 3, 0, 17)
				
-- Scripts:
				
local function GFPHO_fake_script() -- TextLabel.LocalScript 
	local script = Instance.new('LocalScript', TextLabel)

	function zigzag(X) return math.acos(math.cos(X*math.pi))/math.pi end
	
	counter = 0
	
	while wait(0.1)do
		script.Parent.BorderColor3 = Color3.fromHSV(zigzag(counter),1,1)
		script.Parent.TextColor3 = Color3.fromHSV(zigzag(counter),1,1)
		counter = counter + 0.01
	end
end
coroutine.wrap(GFPHO_fake_script)()
local function RZHDNQK_fake_script() -- Frame.LocalScript 
	local script = Instance.new('LocalScript', Frame)

	function zigzag(X) return math.acos(math.cos(X*math.pi))/math.pi end
	
	counter = 0
	
	while wait(0.1)do
		script.Parent.BorderColor3 = Color3.fromHSV(zigzag(counter),1,1)
		script.Parent.BackgroundColor3 = Color3.fromHSV(zigzag(counter),1,1)
		counter = counter + 0.01
	end
end
coroutine.wrap(RZHDNQK_fake_script)()
local function RNZZZK_fake_script() -- TextLabel.LocalScript 
	local script = Instance.new('LocalScript', TextLabel)

	game:GetService"RunService".RenderStepped:Connect(function()
		TextLabel.Text = "FPS: " .. (math.floor(workspace:GetRealPhysicsFPS()))
	end)
end
coroutine.wrap(RNZZZK_fake_script)()
