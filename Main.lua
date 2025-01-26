--[[

ALCHEMY HUB NETA EDITION SCRIPT

This made by Alchemy Team ( io.Luable / Alchemy Hub )
Modification of the script, including attempting to bypass
or crack the script for any reason is not allowed.

Copyright © 2025 Alchemy Hub - Script. All Rights Reserved.

]]--
--84221975933832 logo ( NETA )
__f = {
    ['__game'] = function()
        local p = game.PlaceId
        if p == 2753915549 then return "v3/loaders/a1a6b1634179469cd1b8f22b2a32492d.lua" -- Blox Fruits
        elseif p == 4442272183 then return "v3/loaders/a1a6b1634179469cd1b8f22b2a32492d.lua" -- Blox Fruits
        elseif p == 7449423635 then return "v3/loaders/a1a6b1634179469cd1b8f22b2a32492d.lua" -- Blox Fruits
        elseif p == 537413528 then return "v3/loaders/002e681a98a87f16b980923617813aac.lua" -- Build A Boad
        --elseif p == 16389398622 then return "DustyTrip"
        --elseif p == 286090429 then return "Arsenal"
        elseif p == 16732694052 then return "v3/loaders/b483c866b947fd0b7a2558cf67ae1417.lua" -- Fisch
        elseif p == 10450270085 then return "v3/loaders/de74ae80eeef28b64ada856247d66a90.lua" -- Jujutsu Infinity
        elseif p == 16379688837 then return "v3/loaders/de74ae80eeef28b64ada856247d66a90.lua" -- Jujutsu Infinity
        elseif p == 16379684339 then return "v3/loaders/de74ae80eeef28b64ada856247d66a90.lua" -- Jujutsu Infinity
        elseif p == 18668065416 then return "v3/loaders/42375cfe2e65070104eaaa05a823d9b4.lua" -- Bluelock Rivals
        elseif p == 99999183305180 then return "v3/loaders/42375cfe2e65070104eaaa05a823d9b4.lua" -- Bluelock Rivals
        else return "BladeBall" end
    end;
    ['__script'] = function(m) return "https://raw.githubusercontent.com/ZoiIntra/__Script/main/__Alchemy/__"..m..".lua" end;
    ['__load'] = function(s) loadstring(game:HttpGet(s))() end;
    ['__ismobile'] = function()
        local uis = game:GetService("UserInputService")
        if uis.TouchEnabled and not uis.KeyboardEnabled and not uis.MouseEnabled then return true
        elseif not uis.TouchEnabled and uis.KeyboardEnabled and uis.MouseEnabled then return false end
    end;
    ['__executor'] = tostring(identifyexecutor())
}
local isExecutors = function(txt)
    local exec = string.lower(__f['__executor'])
    return exec == tostring(txt) or string.find(exec, tostring(txt))
end
local Service = game:GetService("TextChatService")
--[[local isNotSupport = function()
    local exec = string.lower(__f['__executor'])
    if exec == "luna" or string.find(exec, "luna") then
        return true
    elseif exec == "jjsploit" or string.find(exec, "jjsploit") then
        return true
    else
        return false
    end
end
if isNotSupport() then game.Players.LocalPlayer:Kick("⚠️ Detect "..__f['__executor']..", This executor not support please change to highest level executor. ⚠️") end;]]
if _G.run_time then game:GetService("Players").LocalPlayer:Kick("\n⚠️ Please executor script only 1 times ⚠️") end
if _G.StreamerMode then
    pcall(function()
        local a_protect = game:GetDescendants()
        local n_protect =  game:GetService("Players").LocalPlayer.DisplayName
        local f_protect =  game:GetService("Players").LocalPlayer.Name
        for i=1,#a_protect do
            if a_protect[i].ClassName == "TextLabel" then
                if a_protect[i].Text == n_protect then
                    a_protect[i].Text = "Alchemy Hub"
                    a_protect[i].Changed:Connect(function()
                        a_protect[i].Text = "Alchemy Hub"
                    end)
                elseif a_protect[i].Text == "@"..f_protect then
                    a_protect[i].Text = "@Protect By Alchemy"
                    a_protect[i].Changed:Connect(function()
                        a_protect[i].Text = "@Protect By Alchemy"
                    end)
                end
            end
        end
        game.DescendantAdded:Connect(function(descendant)
            if descendant.ClassName == "TextLabel" then
                if descendant.Text == n_protect then
                    descendant.Text = "Alchemy Hub"
                    descendant.Changed:Connect(function()
                        descendant.Text = "Alchemy Hub"
                    end)
                elseif descendant.Text == "@"..f_protect then
                    descendant.Text = "@Protect By Alchemy"
                    descendant.Changed:Connect(function()
                        descendant.Text = "@Protect By Alchemy"
                    end)
                end
            end

        end)
    end)
end;
spawn(function()
    pcall(function()
        game:GetService("Players").LocalPlayer.Idled:connect(function()
            game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
            wait(1)
            game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
        end)
    end)
end)
pcall(function()
    Service.TextChannels.RBXSystem:DisplaySystemMessage("<font color='#00ff80'>Alchemy Hub On Top #1</font>")
    Service.TextChannels.RBXSystem:DisplaySystemMessage("<font color='#9aaaff'>Join our discord at discord.gg/alchemyhub</font>")
end)
local UILibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/ZoiIntra/__Script/refs/heads/main/__UI1.lua"))()
local Notification = UILibrary:Notification();
Notification.new({
	Title = "Wanna Join Discord Server?",
	Description = "We have big community and news on this server\nWe also have key giveaway too, Happy New Year 2025!!",
	Dialog = true,
	Buttons = {
		{
			Title = "Sure!",
			Callback = function()
				print('discord.gg/alchemyhub')
                if setclipboard then
                    setclipboard("Dont for get to join > https://discord.gg/alchemyhub")
                end
			end,
		},
		{
			Title = "No Thanks",
			Callback = function()
				print('discord.gg/alchemyhub')
			end,
		}
	}
})
local loadWarn = function(__text,__exec)
    local warnING = Instance.new("ScreenGui")
    local MainFrame = Instance.new("Frame")
    local MainCorner = Instance.new("UICorner")
    local ImageLabel = Instance.new("ImageLabel")
    local Submit = Instance.new("TextButton")
    local SubmitCorner = Instance.new("UICorner")
    local Information = Instance.new("TextLabel")
    local Header = Instance.new("TextLabel")
    warnING.Name = "warnING"
    warnING.Parent = game:WaitForChild("CoreGui")
    warnING.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    MainFrame.Name = "MainFrame"
    MainFrame.Parent = warnING
    MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
    MainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    MainFrame.Position = UDim2.new(0.499723464, 0, 0.499925047, 0)
    MainFrame.Size = UDim2.new(0, 0, 0, 0)
    MainFrame.ZIndex = 0
    MainCorner.Name = "MainCorner"
    MainCorner.Parent = MainFrame
    ImageLabel.Parent = MainFrame
    ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
    ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ImageLabel.BackgroundTransparency = 1.000
    ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ImageLabel.BorderSizePixel = 0
    ImageLabel.Position = UDim2.new(0.498768479, 0, 0.493386239, 0)
    ImageLabel.Size = UDim2.new(0, 188, 0, 188)
    ImageLabel.Image = "rbxassetid://696390628"
    ImageLabel.ImageTransparency = 0.900
    Submit.Name = "Submit"
    Submit.Parent = MainFrame
    Submit.AnchorPoint = Vector2.new(0.5, 0.5)
    Submit.BackgroundColor3 = Color3.fromRGB(152, 152, 152)
    Submit.BackgroundTransparency = 0.800
    Submit.Position = UDim2.new(0.498482376, 0, 0.773373246, 0)
    Submit.Size = UDim2.new(0, 355, 0, 30)
    Submit.Font = Enum.Font.GothamBold
    Submit.Text = "I understand but I want to continue using "..__exec.."."
    Submit.TextColor3 = Color3.fromRGB(255, 255, 255)
    Submit.TextSize = 14.000
    SubmitCorner.CornerRadius = UDim.new(0, 5)
    SubmitCorner.Name = "SubmitCorner"
    SubmitCorner.Parent = Submit
    Information.Name = "Information"
    Information.Parent = MainFrame
    Information.BackgroundColor3 = Color3.fromRGB(255, 254, 216)
    Information.BackgroundTransparency = 1.000
    Information.ClipsDescendants = true
    Information.Position = UDim2.new(0.0834580585, 0, 0.340372086, 0)
    Information.Size = UDim2.new(0, 336, 0, 60)
    Information.Font = Enum.Font.GothamBold
    Information.Text = __text
    Information.TextColor3 = Color3.fromRGB(255, 254, 216)
    Information.TextSize = 15.000
    Information.TextWrapped = true
    Information.TextYAlignment = Enum.TextYAlignment.Top
    Header.Name = "Header"
    Header.Parent = MainFrame
    Header.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Header.BackgroundTransparency = 1.000
    Header.ClipsDescendants = true
    Header.Position = UDim2.new(0.0295566507, 0, 0.128732026, 0)
    Header.Size = UDim2.new(0, 381, 0, 39)
    Header.Font = Enum.Font.GothamBold
    Header.Text = "Executor Warning"
    Header.TextColor3 = Color3.fromRGB(255, 255, 255)
    Header.TextSize = 32.000
    Submit.MouseButton1Click:Connect(function()
        warnING.Enabled = false
    end)
    wait(); MainFrame:TweenSize(UDim2.new(0, 406, 0, 189), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, 0.3, true)
end
_G.run_time = true
pcall(function() loadstring(game:HttpGet("https://raw.githubusercontent.com/ZoiIntra/__Script/refs/heads/main/__Finded.lua"))() end)
pcall(function()
    Service.TextChannels.RBXSystem:DisplaySystemMessage("[ Alchemy Script ] <font color='#ffff00'>Connect to Luarmor</font>")
end)
--if isExecutors("delta") then loadWarn("Hello!, we detected that your executor is Delta, we recommend using ArceusX or Supported Executor, because Delta not Support Our Fully Scripts.","Delta") end;
--if isExecutors("solara") then loadWarn("Hello!, we detected that your executor is Solara, we recommend using Xeno ( On fisch ), Swift or Paid Executor, because Solara not Support Our Fully Scripts.","Solara") end;
if _G.Aimbot then __f['__load']("https://api.luarmor.net/files/v3/loaders/99d54b8a79622e362bca83739647c514.lua")
elseif _G.FruitFinder then loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/53bdb753f44b36ddb22efdd03c1bdd2f.lua"))()
elseif _G.AutoBounty then game.Players.LocalPlayer:Kick("Coming Soon!")
else getgenv().loader = __f['__game'](); __f['__load']("https://api.luarmor.net/files/v3/loaders/6df239f7eb1c8bb019d8c87e92784540.lua") end;
