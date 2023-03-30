-- Script created by Defualt Noob


-- This script for showing glasses : https://cheater.fun/hacks_roblox/6013-impossible-glass-bridge-obby-script-showing-the-way.html
-- An other script for the HUD template
-- Enjoy !
 
local P = game.Players.LocalPlayer.Character.HumanoidRootPart
local S = Instance.new("ScreenGui")
local L = Instance.new("Frame")
local D = Instance.new("Frame")
local T = Instance.new("TextButton")
local C = Instance.new("TextButton")
local G = Instance.new("TextButton")
local V = Instance.new("TextLabel")
Z = 0
X = 0
 
function start()
	if Z == 0 then
		Z = 1
	elseif Z == 1 then
		Z = 0
	end
	while Z == 1 do
		local P = game.Players.LocalPlayer.Character.HumanoidRootPart
		P.CFrame = CFrame.new(1106, 61, 116)
		game.Players.LocalPlayer.Character.Humanoid.Jump = true
		wait(1)
	end
end
 
function glass()
	if X == 0 then
		X = 1
	elseif X == 1 then
		X = 0
	end
	if X == 1 then
		local c = workspace['Glass Bridge'].GlassPane:GetChildren()
		for i=1,#c do
		if c[i]['1'].CanCollide == true then
		c[i]['1'].Transparency = 0
		elseif c[i]['2'].CanCollide == true then
		c[i]['2'].Transparency = 0
		end
		end
	else
		local c = workspace['Glass Bridge'].GlassPane:GetChildren()
		for i=1,#c do
		if c[i]['1'].CanCollide == true then
		c[i]['1'].Transparency = 0.7
		elseif c[i]['2'].CanCollide == true then
		c[i]['2'].Transparency = 0.7
		end
		end
	end
end
 
S.Name = "S"
S.Parent = game:WaitForChild("CoreGui")
S.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
 
L.Name = "L"
L.Parent = S
L.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
L.BorderColor3 = Color3.fromRGB(110, 110, 110)
L.Position = UDim2.new(0.321100891, 0, 0.282937378, 0)
L.Size = UDim2.new(0, 350, 0, 200)
L.Active = true
L.Draggable = true
 
D.Name = "D"
D.Parent = L
D.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
D.BorderColor3 = Color3.fromRGB(110, 110, 110)
D.Position = UDim2.new(0.042857144, 0, 0.200000003, 0)
D.Size = UDim2.new(0, 320, 0, 145)
 
T.Name = "T"
T.Parent = D
T.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
T.BorderColor3 = Color3.fromRGB(84, 92, 38)
T.Position = UDim2.new(0.046875, 0, 0.551724136, 0)
T.Size = UDim2.new(0, 289, 0, 50)
T.Font = Enum.Font.Gotham
T.Text = "Start/Stop Auto Farm"
T.TextColor3 = Color3.fromRGB(255, 255, 255)
T.TextSize = 15.000
T.MouseButton1Click:connect(function()
pcall(start)
end)
 
G.Name = "G"
G.Parent = D
G.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
G.BorderColor3= Color3.fromRGB(84, 92, 38)
G.Position = UDim2.new(0.046875, 0, 0.103448279, 0)
G.Size = UDim2.new(0, 289, 0, 50)
G.Font = Enum.Font.Gotham
G.Text = "Show/Hide Correct Way"
G.TextColor3 = Color3.fromRGB(255, 255, 255)
G.TextSize = 15.000
G.MouseButton1Click:connect(function()
pcall(glass)
end)
 
C.Name = "C"
C.Parent = L
C.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
C.BackgroundTransparency = 1.000
C.BorderSizePixel = 0
C.Position = UDim2.new(0.885714352, 0, 0, 0)
C.Size = UDim2.new(0, 40, 0, 40)
C.Font = Enum.Font.GothamBold
C.Text = "X"
C.TextColor3 = Color3.fromRGB(255, 255, 255)
C.TextSize = 14.000
C.MouseButton1Click:connect(function()
S:Destroy()
end)
 
V.Name = "V"
V.Parent = L
V.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
V.BackgroundTransparency = 1.000
V.BorderSizePixel = 0
V.Position = UDim2.new(0.172857144, 0, 0, 0)
V.Size = UDim2.new(0, 140, 0, 40)
V.Font = Enum.Font.GothamBold
V.Text = "Atsuko_o's Glass Bridge Script V1"
V.TextColor3 = Color3.fromRGB(255, 255, 255)
V.TextSize = 14.000
