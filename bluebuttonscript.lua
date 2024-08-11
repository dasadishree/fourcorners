local button = script.Parent
local clickDetector = button.ClickDetector
local BlueCorner = game.Workspace.blue

local function onClick()
	--button animation
	button.CFrame = button.CFrame * CFrame.new(0, -0.2, 0)
	wait(0.5)
	button.CFrame = button.CFrame * CFrame.new(0, 0.2, 0)
	wait(2)
	BlueCorner.Transparency = 1
	BlueCorner.CanCollide = false
	print("Corner Gone")
	wait(2)
	BlueCorner.Transparency = 0
	BlueCorner.CanCollide = true
	print("Corner Returned")

end

clickDetector.MouseClick:Connect(onClick)
