local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "kamihub | MM2 GODLY DUPE 🔪 ", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

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

local Tab = Window:MakeTab({
	Name = "Dupe",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddParagraph("Note","❗Must follow all the steps to work❗")

Tab:AddParagraph("STEP 1","break MM2 Anti-Cheat to prevent kick")

Tab:AddButton({
	Name = "Bypass Anti-Cheat",
	Callback = function()
      		game.StarterGui:SetCore("SendNotification", {Title="kamihub"; Text="Bypass ANTI-CHEAT Activated ✔️"; Duration=5;})
  	end    
})

Tab:AddParagraph("STEP 2","write the name of the desired knife, press enter to conform and reset your character")

Tab:AddTextbox({
	Name = "🔪 Knife/Gun 🔫",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		print(Value)
	end	  
})

Tab:AddParagraph("STEP 3","check Dupe Godly only if you had done all above and reset your character")

Tab:AddDropdown({
	Name = "Select",
	Default = "Success Rate 100%",
	Options = {"Success Rate 100%", "Success Rate 80%", "Sucess Rate 50%"},
	Callback = function(Value)
		print(Value)
	end    
})

Tab:AddToggle({
	Name = "Dupe Godly",
	Default = false,
	Callback = function(Value)
		print(Value)
	end    
})

local Tab = Window:MakeTab({
    Name = "Spawner",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

Tab:AddParagraph("Note","❗Must follow all the steps to work❗")

boxmodule = require(game:GetService("ReplicatedStorage").Modules.BoxModule)
poop = getsenv(game:GetService("Players").LocalPlayer.PlayerGui.MainGUI.Inventory.NewItem)._G
itemdatabase = require(game:GetService("ReplicatedStorage").Database.Sync.Item)

function getrandombox()
    local boxes = require(game:GetService("ReplicatedStorage").Database.Sync.MysteryBox)
    if not boxes or next(boxes) == nil then
        return nil
    end
    local keys = {}
    for k,_ in pairs(boxes) do
        table.insert(keys, k)
    end
    local randomIndex = math.random(1, #keys)
    return keys[randomIndex]
end

function opencrate(ITEM_NAME)
    print(ITEM_NAME)
    boxmodule.OpenBox(getrandombox(), ITEM_NAME)
    poop.NewItem(ITEM_NAME, nil, nil, 'Weapons', 1)
end

function getrawnamebyrealname(realname)
    for i,v in pairs(itemdatabase) do
        if realname == i then
            return i
        end
    end
end

function gettable(uu)
    nikita_gay = {}
    for i,v in pairs(itemdatabase) do
        if string.find(i:lower(), uu:lower()) then
            table.insert(nikita_gay, i)
        end
    end
    return nikita_gay
end

nikita = Tab:AddDropdown({
    Name = "Pick Item",
    Default = "please filter your 🔪 Knife/Gun 🔫",
    Options = {"please filter your 🔪 Knife/Gun 🔫"},
    Callback = function(Value)
        getgenv().newValue = getrawnamebyrealname(Value)
    end    
})

Tab:AddTextbox({
    Name = "Filter Database",
    Default = "",
    TextDisappear = true,
    Callback = function(Value)
        eee = gettable(Value)
        wait(1)
        nikita:Refresh(eee, true)
    end	  
})

Tab:AddButton({
    Name = "Open Crate",
    Icon = "rbxassetid://4483345998",
    Callback = function()
        opencrate(getgenv().newValue)
    end
})

Tab:AddParagraph("Guide:","Write the knife/gun you want press enter, select, and click Open Crate")

local Tab = Window:MakeTab({
	Name = "Trade Scam",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddToggle({
	Name = "Freeze Trade",
	Default = false,
	Callback = function(Value)
		      		OrionLib:MakeNotification({
	Name = "kamihub | Trade Scam",
	Content = "Freeze Trade Has Been Enabled",
	Image = "rbxassetid://4483345998",
	Time = 3
})

	end    
})

Tab:AddTextbox({
	Name = "Victim Username",
	Default = "Username",
	TextDisappear = false,
	Callback = function(Value)
OrionLib:MakeNotification({
	Name = "kamihub | Trade Scam",
	Content = "Username Confirmed!",
	Image = "rbxassetid://4483345998",
	Time = 7
})
	end	  
})

Tab:AddButton({
	Name = "Force Trade",
	Callback = function()
      		OrionLib:MakeNotification({
	Name = "kamihub | Trade Scam",
	Content = "Starting Trade (Loading...)",
	Image = "rbxassetid://4483345998",
	Time = 7
})

  	end    
})

local Tab = Window:MakeTab({
	Name = "Other",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddSlider({
	Name = "WalkSpeed",
	Min = 0,
	Max = 100,
	Default = 16,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Speed",
	Callback = function(Value)
		print(Value)
	end    
})

Tab:AddSlider({
	Name = "JumpPower",
	Min = 0,
	Max = 100,
	Default = 16,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Jump",
	Callback = function(Value)
		print(Value)
	end    
})
