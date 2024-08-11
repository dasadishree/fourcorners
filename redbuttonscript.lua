local button = script.Parent
local clickDetector = button.ClickDetector
local RedCorner = game.Workspace.red

local function onClick()
	--button animation
	button.CFrame = button.CFrame * CFrame.new(0, -0.2, 0)
	wait(0.5)
	button.CFrame = button.CFrame * CFrame.new(0, 0.2, 0)
	wait(2)
	RedCorner.Transparency = 1
	RedCorner.CanCollide = false
	print("Corner Gone")
	wait(2)
	RedCorner.Transparency = 0
	RedCorner.CanCollide = true
	print("Corner Returned")
end

clickDetector.MouseClick:Connect(onClick)
