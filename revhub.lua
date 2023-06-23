
game:GetService("StarterGui"):SetCore("SendNotification",{ 	

Title = "wait...",  	

Text = "loading...",

})

wait()


game:GetService("StarterGui"):SetCore("SendNotification",{ 	

Title = "Loaded Rev Hub!",  	

Text = "Have fun! Made by Ron144.",

})

local Library = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()

-- The hub configuration
local Window = Library.CreateLib("Rev Hub", "GrapeTheme")
-- Scripts Tab
local Tab = Window:NewTab("Scripts")
local Section = Tab:NewSection("Script")
Section:NewButton("Infinite yield", "infinite yield fe", function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
end)

Section:NewButton("Fling GUI", "fling gui",function()
    loadstring(game:HttpGet('https://pastebin.com/raw/r97d7dS0', true))()
end)

Section:NewButton("keyboard v1", "keyboard script on mobile",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))() 
end)

Section:NewButton("keyboard v2", "better version",function()
    loadstring(game:HttpGet('https://pastebin.com/raw/A2fuE00J'))()
end)

Section:NewButton("fly gui v3", "fly gui script",function()
    loadstring(game:HttpGet(('https://pastebin.com/raw/QGLvkvU7'),true))()
end)

Section:NewButton("vfly GUI", "vehicle fly gui",function()
    loadstring(game:HttpGet('https://pastebin.com/raw/4vu55wTN'))()
end)

Section:NewButton("chat bypasser v1", "chat bypass version 1",function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/vqmpjay/chatbypasser/main/chatbypasserv1'),true))()
end) 

Section:NewButton("Infinite zoom", "makes your camera zoom infinite",function()
    game.Players.LocalPlayer.CameraMaxZoomDistance = math.huge
end)

Section:NewButton("Animations for R15/R6", "c'mon man it works!", function()
loadstring(game:HttpGet('https://pastebin.com/raw/vbJsvU0L'))()
end)

Section:NewButton("Backdoor.exe", "aka server-side executor",function()
loadstring(game:HttpGet('https://pastebin.com/raw/TSxJprXE'))()
end)

-- Other Things Tab
local Tab2 = Window:NewTab("Other Things")
local SectionO = Tab2:NewSection("Others")

SectionO:NewSlider("Speed", "Boost Your Speed!", 300, 16, function(v)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
end)


-- Arceus X Tab
local Tab3 = Window:NewTab("Arceus X")
local ArceusX = Tab3:NewSection("Arceus X")

ArceusX:NewButton("Arceus X Aimbot", "aim bot from arceus x only",function()
 loadstring(game:HttpGet('https://raw.githubusercontent.com/AZYsGithub/chillz-workshop/main/Arceus%20Aimbot.lua'))()
end)

ArceusX:NewButton("Arceus X V3", "arceus x",function()
 loadstring(game:HttpGet('https://raw.githubusercontent.com/AZYsGithub/chillz-workshop/main/Arceus%20X%20V3'))()
end)

-- Prison Life
local Tab4 = Window:NewTab("Prison Life")
local prisonlife = Tab4:NewSection("Scripts")

prisonlife:NewButton("Prison Life Gui", "hehehe",function()
    loadstring(game:HttpGet('https://pastebin.com/raw/1RvgFtcx'))()
end)

prisonlife:NewButton("Prison Life Ruiner Gui", "hey, I think it's bad?",function()
    loadstring(game:HttpGet('https://pastebin.com/raw/ucQSN3XF'))()
end)

prisonlife:NewButton("Prison Life Tiger Admin", "is it powerful?",function()
    
loadstring(game:HttpGet('https://raw.githubusercontent.com/H17S32/Tiger_Admin/main/Script'))()
end)

prisonlife:NewButton("PrisonBreaker V1.5", "lol!",function()
    loadstring(game:HttpGet('https://pastebin.com/raw/FAXBKd93'))()
end)

prisonlife:NewButton("Aimbot", "yeah, it might work in some games not just prison life!",function()
local Players = game.Players
local LocalPlayer = Players.LocalPlayer
local GetPlayers = Players.GetPlayers
local Camera = workspace.CurrentCamera
local WTSP = Camera.WorldToScreenPoint
local FindFirstChild = game.FindFirstChild
local Vector2_new = Vector2.new
local Mouse = LocalPlayer.GetMouse(LocalPlayer)
function ClosestChar()
    local Max, Close = math.huge
    for I,V in pairs(GetPlayers(Players)) do
        if V ~= LocalPlayer and V.Team ~= LocalPlayer.Team and V.Character then
            local Head = FindFirstChild(V.Character, "Head")
            if Head then
                local Pos, OnScreen = WTSP(Camera, Head.Position)
                if OnScreen then
                    local Dist = (Vector2_new(Pos.X, Pos.Y) - Vector2_new(Mouse.X, Mouse.Y)).Magnitude
                    if Dist < Max then
                        Max = Dist
                        Close = V.Character
                    end
                end
            end
        end
    end
    return Close
end
 
local MT = getrawmetatable(game)
local __namecall = MT.__namecall
setreadonly(MT, false)
MT.__namecall = newcclosure(function(self, ...)
    local Method = getnamecallmethod()
    if Method == "FindPartOnRay" and not checkcaller() and tostring(getfenv(0).script) == "GunInterface" then
        local Character = ClosestChar()
        if Character then
            return Character.Head, Character.Head.Position
        end
    end
 
    return __namecall(self, ...)
end)
setreadonly(MT, true)
end)

-- SwordBurst 2
local Tab5 = Window:NewTab("SwordBurst 2")
local swordburst = Tab5:NewSection("Scripts")

swordburst:NewButton("Sword Burst Gui", "hehehe",function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/noobscripter38493/Swordburst-2/main/script.lua'))()
end)
