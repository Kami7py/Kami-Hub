local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "kamihub | MM2 GODLY DUPE 🔪 ", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

getgenv().tpPlace = "string"
getgenv().autotp = true
getgenv().rb = true
getgenv().spin = true
getgenv().bspin = true

OrionLib:MakeNotification({
	Name = "kamihub | warning",
	Content = "❗❗ MUST BE OVER LEVEL 15 ❗❗",
	Image = "rbxassetid://4483345998",
	Time = 5
})

OrionLib:MakeNotification({
	Name = "kamihub | warning",
	Content = "❗❗ MUST BE A GODLY TO USE MOST OF THE SCRIPT ❗❗",
	Image = "rbxassetid://4483345998",
	Time = 5
})

OrionLib:MakeNotification({
	Name = "kamihub | warning",
	Content = "❗❗ THIS SCRIPT WILL NOT WORK IF YOU ARENT IN MM2 ❗❗",
	Image = "rbxassetid://4483345998",
	Time = 5
})

function Teleport(teleportPlace)
    local player = game.Players.LocalPlayer
    player.Character.HumanoidRootPart.CFrame = teleportPlace
end

function autotp()
     while getgenv().autotp == true do
	 Teleport(game:GetService("Workspace").Wins.SteampunkStage.CFrame)
	 wait(0.1)
	end
end

function rb()
	 while getgenv().rb == true do
      game:GetService("ReplicatedStorage").RebirthEvent:FireServer()
	wait(0.1)
   end
end

function spin()
	 while getgenv().spin == true do
     game:GetService("ReplicatedStorage").SpinRemote:InvokeServer()
      wait(0.1)
   end
end

function bspin()
	 while getgenv().bspin == true do
	 game:GetService("ReplicatedStorage").SpinnerUpdate:FireServer("BuySpin")
     wait(0.1)
   end
end

local TpTab = Window:MakeTab({
	Name = "Auto Farm",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local otherTab = Window:MakeTab({
	Name = "Other",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

TpTab:AddParagraph("Note","Seila Porra")

TpTab:AddButton({
	Name = "Bypass Anti-Cheat",
	Callback = function()
      		game.StarterGui:SetCore("SendNotification", {Title="kamihub"; Text="Bypass ANTI-CHEAT Activated!"; Duration=5;})
  	end    
})

TpTab:AddTextbox({
	Name = "Nome da Faca SLÁ",
	Default = "WRITE HERE",
	TextDisappear = true,
	Callback = function(Value)
		print(Value)
	end	  
})

TpTab:AddToggle({
	Name = "Dupe Godly",
	Default = false,
	Callback = function(Value)
		getgenv().autotp = Value
        autotp()
	end    
})

otherTab:AddToggle({
	Name = "Auto Cu",
	Default = false,
	Callback = function(Value)
		getgenv().spin = Value
        spin()
	end    
})

otherTab:AddToggle({
	Name = "Auto Bu",
	Default = false,
	Callback = function(Value)
		getgenv().bspin = Value
        bspin()
	end    
})

otherTab:AddToggle({
	Name = "Auto Sla",
	Default = false,
	Callback = function(Value)
		getgenv().rb = Value
        rb()
	end    
})

TpTab:AddDropdown({
	Name = "Select",
	Default = "1",
	Options = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "10",},
	Callback = function(Value)
	    getgenv().tpPlace = Value  
	end    
})
