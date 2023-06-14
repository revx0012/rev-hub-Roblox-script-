
local gui = Instance.new("ScreenGui")
gui.Name = "Rev Hub Loader"
gui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")


local window = Instance.new("Frame")
window.Name = "Window"
window.Size = UDim2.new(0, 200, 0, 150)
window.Position = UDim2.new(1, -220, 1, -220)
window.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
window.Active = true
window.Draggable = true
window.Parent = gui


local title = Instance.new("TextLabel")
title.Name = "Title"
title.Size = UDim2.new(1, 0, 0, 30)
title.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
title.Text = "Rev Hub Loader"
title.Parent = window


local label = Instance.new("TextLabel")
label.Name = "Label"
label.Size = UDim2.new(1, -20, 1, -80)
label.Position = UDim2.new(0, 10, 0, 40)
label.BackgroundTransparency = 1
label.Text = "Made by Ron144"
label.Parent = window

-- Create the load button
local loadButton = Instance.new("TextButton")
loadButton.Name = "LoadButton"
loadButton.Size = UDim2.new(0, 100, 0, 40)
loadButton.Position = UDim2.new(0.5, -50, 1, -50)
loadButton.Text = "Load"
loadButton.Parent = window

local minimizeButton = Instance.new("TextButton")
minimizeButton.Name = "MinimizeButton"
minimizeButton.Size = UDim2.new(0, 40, 0, 20)
minimizeButton.Position = UDim2.new(1, -40, 0, 0)
minimizeButton.Text = "-"
minimizeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
minimizeButton.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
minimizeButton.Parent = window


local showButton = Instance.new("TextButton")
showButton.Name = "ShowButton"
showButton.Size = UDim2.new(0, 40, 0, 20)
showButton.Position = UDim2.new(1, -40, 0, 20)
showButton.Text = "+"
showButton.TextColor3 = Color3.fromRGB(255, 255, 255)
showButton.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
showButton.Visible = false
showButton.Parent = gui


local function onLoadButtonClicked()
    
    loadstring(game:HttpGet('https://raw.githubusercontent.com/revx0012/rev-hub-roblox/main/revhub.lua'))()
end


local function onMinimizeButtonClicked()
    
    window.Visible = false
    showButton.Visible = true
end


local function onShowButtonClicked()
    
    window.Visible = true
    showButton.Visible = false
end

loadButton.MouseButton1Click:Connect(onLoadButtonClicked)
minimizeButton.MouseButton1Click:Connect(onMinimizeButtonClicked)
showButton.MouseButton1Click:Connect(onShowButtonClicked)
