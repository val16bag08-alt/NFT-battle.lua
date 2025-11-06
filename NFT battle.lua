local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/SiriusSoftwareLtd/Rayfield/main/source.lua'))()

local Window = Rayfield:CreateWindow({
    Name = "NFT battle",
    LoadingTitle = "NFT battle",
    LoadingSubtitle = "By VaBlox",
    ConfigurationSaving = {Enabled = true, FolderName = nil, FileName = "NFT battle"},
    Discord = {Enabled = false},
    KeySystem = false
})

local InventoryTab = Window:CreateTab("Inventory", nil)
local MixCasesTab = Window:CreateTab("MIX Cases", nil)
local SpecialCasesTab = Window:CreateTab("SPECIAL Cases", nil)
local CarsCasesTab = Window:CreateTab("CARS Cases", nil)
local NFTCasesTab = Window:CreateTab("NFT Cases", nil)

-- Флаги
local sellEnabled = false
local trashEnabled = false
local beggarEnabled = false
local plodderEnabled = false
local clerkEnabled = false
local managerEnabled = false
local directorEnabled = false
local oligarchEnabled = false
local goldEnabled = false
local darkEnabled = false
local palmEnabled = false
local burjEnabled = false
local luxuryEnabled = false
local m5Enabled = false
local g63Enabled = false
local p911Enabled = false
local urusEnabled = false
local frozenHeartEnabled = false
local bubbleGumEnabled = false
local catsEnabled = false
local glitchEnabled = false
local dreamEnabled = false
local bloodyNightEnabled = false

-- Inventory
InventoryTab:CreateToggle({
    Name = "Auto Sell ALL",
    CurrentValue = false,
    Callback = function(Value)
        sellEnabled = Value
    end
})

-- MIX Cases
MixCasesTab:CreateToggle({Name = "Auto Trash Case", CurrentValue = false, Callback = function(Value) trashEnabled = Value end})
MixCasesTab:CreateToggle({Name = "Auto Beggar Case", CurrentValue = false, Callback = function(Value) beggarEnabled = Value end})
MixCasesTab:CreateToggle({Name = "Auto Plodder Case", CurrentValue = false, Callback = function(Value) plodderEnabled = Value end})
MixCasesTab:CreateToggle({Name = "Auto Office Clerk Case", CurrentValue = false, Callback = function(Value) clerkEnabled = Value end})
MixCasesTab:CreateToggle({Name = "Auto Manager Case", CurrentValue = false, Callback = function(Value) managerEnabled = Value end})
MixCasesTab:CreateToggle({Name = "Auto Director Case", CurrentValue = false, Callback = function(Value) directorEnabled = Value end})
MixCasesTab:CreateToggle({Name = "Auto Oligarch Case", CurrentValue = false, Callback = function(Value) oligarchEnabled = Value end})

-- NFT Cases
NFTCasesTab:CreateToggle({Name = "Auto Gold Case", CurrentValue = false, Callback = function(Value) goldEnabled = Value end})
NFTCasesTab:CreateToggle({Name = "Auto Dark Case", CurrentValue = false, Callback = function(Value) darkEnabled = Value end})
NFTCasesTab:CreateToggle({Name = "Auto Palm Case", CurrentValue = false, Callback = function(Value) palmEnabled = Value end})
NFTCasesTab:CreateToggle({Name = "Auto Burj Case", CurrentValue = false, Callback = function(Value) burjEnabled = Value end})
NFTCasesTab:CreateToggle({Name = "Auto Luxury Case", CurrentValue = false, Callback = function(Value) luxuryEnabled = Value end})

-- CARS Cases
CarsCasesTab:CreateToggle({Name = "Auto M5 F90 Case", CurrentValue = false, Callback = function(Value) m5Enabled = Value end})
CarsCasesTab:CreateToggle({Name = "Auto G63 Case", CurrentValue = false, Callback = function(Value) g63Enabled = Value end})
CarsCasesTab:CreateToggle({Name = "Auto Porsche 911 Case", CurrentValue = false, Callback = function(Value) p911Enabled = Value end})
CarsCasesTab:CreateToggle({Name = "Auto URUS Case", CurrentValue = false, Callback = function(Value) urusEnabled = Value end})

-- SPECIAL Cases
SpecialCasesTab:CreateToggle({Name = "Auto Frozen Heart Case", CurrentValue = false, Callback = function(Value) frozenHeartEnabled = Value end})
SpecialCasesTab:CreateToggle({Name = "Auto Bubble Gum Case", CurrentValue = false, Callback = function(Value) bubbleGumEnabled = Value end})
SpecialCasesTab:CreateToggle({Name = "Auto Cats Case", CurrentValue = false, Callback = function(Value) catsEnabled = Value end})
SpecialCasesTab:CreateToggle({Name = "Auto Glitch Case", CurrentValue = false, Callback = function(Value) glitchEnabled = Value end})
SpecialCasesTab:CreateToggle({Name = "Auto Dream Case", CurrentValue = false, Callback = function(Value) dreamEnabled = Value end})
SpecialCasesTab:CreateToggle({Name = "Auto Bloody Night Case", CurrentValue = false, Callback = function(Value) bloodyNightEnabled = Value end})

-- Функция запуска циклов
local function startCaseLoop(flag, caseName)
    task.spawn(function()
        while true do
            if flag then
                local args = {caseName,10}
                game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("OpenCase"):InvokeServer(unpack(args))
            end
            task.wait(0.01)
        end
    end)
end

-- MIX Cases
startCaseLoop(trashEnabled, "Trash")
startCaseLoop(beggarEnabled, "Beggar")
startCaseLoop(plodderEnabled, "Plodder")
startCaseLoop(clerkEnabled, "Office Clerk")
startCaseLoop(managerEnabled, "Manager")
startCaseLoop(directorEnabled, "Director")
startCaseLoop(oligarchEnabled, "Oligarch")

-- NFT Cases
startCaseLoop(goldEnabled, "Gold")
startCaseLoop(darkEnabled, "Dark")
startCaseLoop(palmEnabled, "Palm")
startCaseLoop(burjEnabled, "Burj")
startCaseLoop(luxuryEnabled, "Luxury")

-- CARS Cases
startCaseLoop(m5Enabled, "M5 F90")
startCaseLoop(g63Enabled, "G63")
startCaseLoop(p911Enabled, "Porsche 911")
startCaseLoop(urusEnabled, "URUS")

-- SPECIAL Cases
startCaseLoop(frozenHeartEnabled, "Frozen Heart")
startCaseLoop(bubbleGumEnabled, "Bubble Gum")
startCaseLoop(catsEnabled, "Cats")
startCaseLoop(glitchEnabled, "Glitch")
startCaseLoop(dreamEnabled, "Dream")
startCaseLoop(bloodyNightEnabled, "Bloody Night")

-- Inventory Sell
task.spawn(function()
    while true do
        if sellEnabled then
            local args = {"Sell","ALL",false}
            game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Inventory"):FireServer(unpack(args))
        end
        task.wait(0.01)
    end
end)
