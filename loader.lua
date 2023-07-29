-- This thing doesn't work anyway, you can skid it i guess


local player = game.Players.LocalPlayer
local gui
local window
local showButton

-- Function to create the GUI
local function createGUI()
    -- Function to check if the GUI already exists
    local function checkExistingGUI()
        gui = game.CoreGui:FindFirstChild("Rev Hub Loader")
        if gui then
            -- The GUI already exists, show a notification
            local existingGuiNotification = Instance.new("Message")
            existingGuiNotification.Text = "GUI is already created. Please rejoin and try again if you don't see it."
            existingGuiNotification.Parent = game.Players.LocalPlayer.PlayerGui
            wait(3)
            existingGuiNotification:Destroy()
            return true
        end
        return false
    end
    
    -- Check if the GUI already exists
    if checkExistingGUI() then
        return
    end

    -- Create the main GUI frame
    gui = Instance.new("ScreenGui")
    gui.Name = "Rev Hub Loader"
    gui.Parent = game:GetService("CoreGui")

    -- Create the window frame
    window = Instance.new("Frame")
    window.Name = "Window"
    window.Size = UDim2.new(0, 200, 0, 150)
    window.Position = UDim2.new(1, -220, 1, -220)
    window.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    window.Active = true
    window.Draggable = true
    window.Parent = gui
    
    -- Create the title label
    local title = Instance.new("TextLabel")
    title.Name = "Title"
    title.Size = UDim2.new(1, 0, 0, 30)
    title.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
    title.Text = "Rev Hub Loader"
    title.Parent = window
    
    -- Create the label
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
    
    -- Create the minimize button
    local minimizeButton = Instance.new("TextButton")
    minimizeButton.Name = "MinimizeButton"
    minimizeButton.Size = UDim2.new(0, 40, 0, 20)
    minimizeButton.Position = UDim2.new(1, -40, 0, 0)
    minimizeButton.Text = "-"
    minimizeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    minimizeButton.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
    minimizeButton.Parent = window
    
    -- Create the show button
    showButton = Instance.new("TextButton")
    showButton.Name = "ShowButton"
    showButton.Size = UDim2.new(0, 40, 0, 20)
    showButton.Position = UDim2.new(1, -40, 0, 20)
    showButton.Text = "+"
    showButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    showButton.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
    showButton.Visible = false
    showButton.Parent = gui
    
    -- Function to handle the button click
    local function onLoadButtonClicked()
        -- Load the script using loadstring
        loadstring(game:HttpGet('https://raw.githubusercontent.com/revx0012/rev-hub-roblox/main/revhub.lua'))()
    end

    -- Function to handle the minimize button click
    local function onMinimizeButtonClicked()
        -- Hide the window and show the showButton
        window.Visible = false
        showButton.Visible = true
    end

    -- Function to handle the show button click
    local function onShowButtonClicked()
        -- Show the window and hide the showButton
        window.Visible = true
        showButton.Visible = false
    end
    
    -- Connect the button click events
    loadButton.MouseButton1Click:Connect(onLoadButtonClicked)
    minimizeButton.MouseButton1Click:Connect(onMinimizeButtonClicked)
    showButton.MouseButton1Click:Connect(onShowButtonClicked)
end

-- Create the GUI initially
createGUI()
