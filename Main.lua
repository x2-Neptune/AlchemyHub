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
        local g = game.GameId
        if g == 994732206 then return "v3/loaders/311ad7329b80c2117f4bdbf46582dcc6.lua" -- Blox Fruits
        elseif g == 5750914919 then return "v3/loaders/40142043704f8ec418b59eddd1cb1949.lua" -- Fisch
        elseif g == 6325068386 then return "v3/loaders/4171685ce597cf71185c038656d405ca.lua" -- Bluelock Rivals
        elseif g == 6931042565 then return "v3/loaders/abbbbec4c052ea223f09c7e819748161.lua" -- Volleyball Legends
        elseif g == 6906326545 then return "v3/loaders/34a7bfd841e02f5b30b75712e5da67ae.lua" -- Basketball Showdown
        else
            game:GetService("Players").LocalPlayer:Kick("\n⚠️ This game is discontinued or not support ⚠️")
            return "."
        end
    end;
    ['__premium'] = function()
        local g = game.GameId
        if g == 994732206 then return "v3/loaders/a1a6b1634179469cd1b8f22b2a32492d.lua" -- Blox Fruits
        elseif g == 5750914919 then return "v3/loaders/b483c866b947fd0b7a2558cf67ae1417.lua" -- Fisch
        elseif g == 6325068386 then return "v3/loaders/42375cfe2e65070104eaaa05a823d9b4.lua" -- Bluelock Rivals
        elseif g == 6931042565 then return "v3/loaders/2a04962aae55b8e5d6626f949470c40a.lua" -- Volleyball Legends
        elseif g == 6906326545 then return "v3/loaders/f7d7cd2ec55759828c1e25f6feebe028.lua" -- Basketball Showdown
        else
            game:GetService("Players").LocalPlayer:Kick("\n⚠️ This game is discontinued or not support ⚠️")
            return "."
        end
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
--local Service = game:GetService("TextChatService")
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
_G.AutoRelaunch = auto_rejoin
_G.StreamerMode = streamer_mode

_G.Aimbot = aimbot or _G.Aimbot
_G.FruitFinder = fruits_finder or _G.FruitFinder
_G.Premium = premium

_G.Config = setting or _G.Config

if _G.run_time then game:GetService("Players").LocalPlayer:Kick("\n⚠️ Please executor script only 1 times ⚠️") end
task.spawn(function()
    while true do task.wait()
        if _G.AutoRelaunch then
            pcall(function()
                getgenv().re = game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(Child)
                    if Child.Name == 'ErrorPrompt' and Child:FindFirstChild('MessageArea') and Child.MessageArea:FindFirstChild("ErrorFrame") then
                        game:GetService("TeleportService"):Teleport(game.PlaceId) 
                    end
                end)
            end)
        end
    end
end)
if _G.StreamerMode then
    pcall(function()
        local allSpace = game:GetDescendants()
        for i=1,#allSpace do
            if allSpace[i].ClassName == "TextLabel" then
                if string.find(allSpace[i].Text, game.Players.LocalPlayer.Name) then
                    allSpace[i].Text = string.gsub(allSpace[i].Text, game.Players.LocalPlayer.Name, "[Protect By Alchemy Hub]")
                    allSpace[i].Changed:Connect(function()
                        allSpace[i].Text = string.gsub(allSpace[i].Text, game.Players.LocalPlayer.Name, "[Protect By Alchemy Hub]")
                    end)
                end
                if string.find(allSpace[i].Text, game.Players.LocalPlayer.DisplayName) then
                    allSpace[i].Text = string.gsub(allSpace[i].Text, game.Players.LocalPlayer.DisplayName, "[Protect By Alchemy Hub]")
                    allSpace[i].Changed:Connect(function()
                        allSpace[i].Text = string.gsub(allSpace[i].Text, game.Players.LocalPlayer.DisplayName, "[Protect By Alchemy Hub]")
                    end)
                end
            end
        end
        game.DescendantAdded:Connect(function(descendant)
            if descendant.ClassName == "TextLabel" then
                if string.find(descendant.Text, game.Players.LocalPlayer.Name) then
                    descendant.Text = string.gsub(descendant.Text, game.Players.LocalPlayer.Name, "[Protect By Alchemy Hub]")
                    descendant.Changed:Connect(function()
                        descendant.Text = string.gsub(descendant.Text, game.Players.LocalPlayer.Name, "[Protect By Alchemy Hub]")
                    end)
                end
            end
        end)
        game.DescendantAdded:Connect(function(descendant)
            if descendant.ClassName == "TextLabel" then
                if string.find(descendant.Text, game.Players.LocalPlayer.DisplayName) then
                    descendant.Text = string.gsub(descendant.Text, game.Players.LocalPlayer.DisplayName, "[Protect By Alchemy Hub]")
                    descendant.Changed:Connect(function()
                        descendant.Text = string.gsub(descendant.Text, game.Players.LocalPlayer.DisplayName, "[Protect By Alchemy Hub]")
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
--[[
pcall(function()
    Service.TextChannels.RBXSystem:DisplaySystemMessage("<font color='#00ff80'>Alchemy Hub On Top #1</font>")
    Service.TextChannels.RBXSystem:DisplaySystemMessage("<font color='#9aaaff'>Join our discord at discord.gg/alchemyhub</font>")
end)]]
local UILibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/ZoiIntra/__Script/refs/heads/main/__UI1.lua"))()
if game.GameId == 5750914919 then -- for fisch
    UILibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/ZoiIntra/__Script/refs/heads/main/__UI2.lua"))()
end
local Notification = UILibrary:Notification();
Notification.new({
	Title = "Wanna Join Discord Server?",
	Description = "We have big community and news on this server\nWe also have key giveaway too, Happy Valentine's Day!!",
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
_G.run_time = true
local tar;
pcall(function() loadstring(game:HttpGet("https://raw.githubusercontent.com/ZoiIntra/__Script/refs/heads/main/__Finded.lua"))() end)
if _G.Aimbot then __f['__load']("https://api.luarmor.net/files/v3/loaders/066a14ff57c58562c0b4cacdddb0ae5a.lua")
elseif _G.FruitFinder then __f['__load']("https://api.luarmor.net/files/v3/loaders/56e77f1d98c461e2b8f24647b42095b4.lua")
elseif _G.Premium then tar = __f['__premium'](); __f['__load']("https://api.luarmor.net/files/"..tar) 
else getgenv().loader = __f['__game'](); __f['__load']("https://raw.githubusercontent.com/x2-Neptune/AlchemyHub/main/Luarmor/Key") end;
