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
	Time = 8
})

OrionLib:MakeNotification({
	Name = "kamihub | warning",
	Content = "❗❗ MUST BE A GODLY TO USE MOST OF THE SCRIPT ❗❗",
	Image = "rbxassetid://4483345998",
	Time = 8
})

OrionLib:MakeNotification({
	Name = "kamihub | warning",
	Content = "❗❗ THIS SCRIPT WILL NOT WORK IF YOU ARENT IN MM2 ❗❗",
	Image = "rbxassetid://4483345998",
	Time = 8
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
	Name = "Dupe",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local otherTab = Window:MakeTab({
	Name = "Other",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

TpTab:AddParagraph("Note","❗Must follow all the steps to work❗")

TpTab:AddParagraph("STEP 1","break MM2 Anti-Cheat to prevent kick")

TpTab:AddButton({
	Name = "Bypass Anti-Cheat",
	Callback = function()
      		game.StarterGui:SetCore("SendNotification", {Title="kamihub"; Text="Bypass ANTI-CHEAT Activated ✔️"; Duration=5;})
  	end    
})

TpTab:AddParagraph("STEP 2","write the name of the desired knife, press enter to conform and reset the character")

TpTab:AddTextbox({
	Name = "🔪 Knife/Gun 🔫",
	Default = "WRITE HERE",
	TextDisappear = true,
	Callback = function(Value)
		print(Value)
	end	  
})

TpTab:AddParagraph("STEP 3","check Dupe Godly only if you had done all above ")

TpTab:AddToggle({
	Name = "Dupe Godly",
	Default = false,
	Callback = function(Value)
		getgenv().autotp = Value
        autotp()
	end    
})

otherTab:AddSlider({
	Name = "WalkSpeed",
	Min = 0,
	Max = 100,
	Default = 16,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Speed",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (Value)
   end
})

otherTab:AddSlider({
	Name = "JumpPower",
	Min = 0,
	Max = 100,
	Default = 16,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Jump",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = (Value)
   end
})

TpTab:AddDropdown({
	Name = "Select",
	Default = "Success Rate 100%",
	Options = {"Success Rate 100%", "Success Rate 80%"},
	Callback = function(Value)
	    getgenv().tpPlace = Value  
	end    
})
