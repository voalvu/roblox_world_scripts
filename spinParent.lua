-- LocalScript to Spin parent model

local function spoinIt()
	while true do
		script.Parent.Rotation += Vector3(0,0.1,0)
		wait(0.1)
	end
end

game.Players.PlayerAdded:Connect(function(player)
	spoinIt()
end)
