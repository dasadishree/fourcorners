local button = script.Parent
local clickDetector = button.ClickDetector
local GreenCorner = game.Workspace.green

local function onClick()
	--button animation
	button.CFrame = button.CFrame * CFrame.new(0, -0.2, 0)
	wait(0.5)
	button.CFrame = button.CFrame * CFrame.new(0, 0.2, 0)
	wait(2)
	GreenCorner.Transparency = 1
	GreenCorner.CanCollide = false
	print("Corner Gone")
	wait(2)
	GreenCorner.Transparency = 0
	GreenCorner.CanCollide = true
	print("Corner Returned")
end

clickDetector.MouseClick:Connect(onClick)
