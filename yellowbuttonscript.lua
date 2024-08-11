local button = script.Parent
local clickDetector = button.ClickDetector
local YellowCorner = game.Workspace.yellow

local function onClick()
	--button animation
	button.CFrame = button.CFrame * CFrame.new(0, -0.2, 0)
	wait(0.5)
	button.CFrame = button.CFrame * CFrame.new(0, 0.2, 0)
	wait(2)
	YellowCorner.Transparency = 1
	YellowCorner.CanCollide = false
	print("Corner Gone")
	wait(2)
	YellowCorner.Transparency = 0
	YellowCorner.CanCollide = true
	print("Corner Returned")
	
end

clickDetector.MouseClick:Connect(onClick)
