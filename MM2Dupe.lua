local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "kamihub | MM2 GODLY DUPE 🔪 ", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})



local Tab = Window:MakeTab({
    Name = "Changer",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

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
    Default = "please filter UR pets",
    Options = {"please filter UR pets"},
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
