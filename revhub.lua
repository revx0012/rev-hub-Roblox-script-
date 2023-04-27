local Library = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()

-- The hub configuration
local Window = Library.CreateLib("Rev Hub", "GrapeTheme")
-- Scripts Tab
local Tab = Window:NewTab("Scripts")
local Section = Tab:NewSection("Script")
Section:NewButton("Infinite yield", "infinite yield fe", function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
end)
Section:NewButton("chat bypass v2", "chat bypass version 2",function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/vqmpjay/scripts/main/vadriftsloader.lua'),true))()
end)    
Section:NewButton("better bypasser chat", "bypass chat",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/synnyyy/synergy/additional/betterbypasser",true))()
end)

Section:NewButton("Fling GUI", "fling gui",function()
    loadstring(game:HttpGet('https://pastebin.com/raw/r97d7dS0', true))()
end)

Section:NewButton("keyboard", "keyboard script on mobile",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))() 
end)

Section:NewButton("fly gui v3", "fly gui script",function()
    loadstring(game:HttpGet(('https://pastebin.com/raw/QGLvkvU7'),true))()
end)

Section:NewButton("vfly GUI", "vehicle fly gui",function()
    loadstring(game:HttpGet('https://pastebin.com/raw/4vu55wTN'))()
end)

Section:NewButton("Chat bypasser v1", "chat bypass version 1",function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/vqmpjay/chatbypasser/main/chatbypasserv1'),true))()
end) 

-- Other Things Tab
local Tab2 = Window:NewTab("Other Things")
local SectionSpeed = Tab2:NewSection("Speed")


SectionSpeed:NewSlider("Speed", "Boost Your Speed!", 300, 16, function(v)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
end)

-- Tab info

local SectionInfo = Tab2:NewSection("Info")
SectionInfo:NewButton("Info", "yeah, it will say who made the hub but in chat.", function()
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("This hub was made by ron144", "All")
end)

local AllSection = Tab:Tab2("All")
AllSection:NewSlider("Health", "Adjust your health", 100, 0, function(value)
    game:GetService("Players").LocalPlayer.Character.Humanoid.Health = value
end)