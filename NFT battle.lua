local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/SiriusSoftwareLtd/Rayfield/main/source.lua'))()

local Window = Rayfield:CreateWindow({
    Name = "NFT battle",
    LoadingTitle = "NFT battle",
    LoadingSubtitle = "By VaBlox",
    ConfigurationSaving = {Enabled = true, FolderName = nil, FileName = "NFT battle"},
    Discord = {Enabled = false},
    KeySystem = false
})

-- Вкладки
local InventoryTab = Window:CreateTab("Inventory", nil)
local FreeCasesTab = Window:CreateTab("FREE Cases", nil) -- NEW
local MixCasesTab = Window:CreateTab("MIX Cases", nil)
local SpecialCasesTab = Window:CreateTab("SPECIAL Cases", nil)
local CarsCasesTab = Window:CreateTab("CARS Cases", nil)
local NFTCasesTab = Window:CreateTab("NFT Cases", nil)
local CurrencyCasesTab = Window:CreateTab("CURRENCY Cases", nil) -- NEW

-- Флаги
local sellEnabled = false

-- FREE Cases
local trashEnabled = false
local dailyEnabled = false

-- MIX Cases
local beggarEnabled = false
local plodderEnabled = false
local clerkEnabled = false
local managerEnabled = false
local directorEnabled = false
local oligarchEnabled = false

-- NFT Cases
local goldEnabled = false
local darkEnabled = false
local palmEnabled = false
local burjEnabled = false
local luxuryEnabled = false
local monarchEnabled = false

-- CARS Cases
local m5Enabled = false
local g63Enabled = false
local p911Enabled = false
local urusEnabled = false

-- SPECIAL Cases
local frozenHeartEnabled = false
local bubbleGumEnabled = false
local catsEnabled = false
local glitchEnabled = false
local dreamEnabled = false
local bloodyNightEnabled = false

-- CURRENCY Cases
local durovEnabled = false
local magnateEnabled = false

-- Inventory Toggle
InventoryTab:CreateToggle({
    Name = "Auto Sell ALL",
    CurrentValue = false,
    Callback = function(Value)
        sellEnabled = Value
    end
})

-- FREE Cases Toggles
FreeCasesTab:CreateToggle({Name = "Auto Trash Case", CurrentValue = false, Callback = function(Value) trashEnabled = Value end})
FreeCasesTab:CreateToggle({Name = "Auto Daily Case", CurrentValue = false, Callback = function(Value) dailyEnabled = Value end})

-- MIX Cases Toggles (Trash Removed)
MixCasesTab:CreateToggle({Name = "Auto Beggar Case", CurrentValue = false, Callback = function(Value) beggarEnabled = Value end})
MixCasesTab:CreateToggle({Name = "Auto Plodder Case", CurrentValue = false, Callback = function(Value) plodderEnabled = Value end})
MixCasesTab:CreateToggle({Name = "Auto Office Clerk Case", CurrentValue = false, Callback = function(Value) clerkEnabled = Value end})
MixCasesTab:CreateToggle({Name = "Auto Manager Case", CurrentValue = false, Callback = function(Value) managerEnabled = Value end})
MixCasesTab:CreateToggle({Name = "Auto Director Case", CurrentValue = false, Callback = function(Value) directorEnabled = Value end})
MixCasesTab:CreateToggle({Name = "Auto Oligarch Case", CurrentValue = false, Callback = function(Value) oligarchEnabled = Value end})

-- NFT Cases Toggles
NFTCasesTab:CreateToggle({Name = "Auto Gold Case", CurrentValue = false, Callback = function(Value) goldEnabled = Value end})
NFTCasesTab:CreateToggle({Name = "Auto Dark Case", CurrentValue = false, Callback = function(Value) darkEnabled = Value end})
NFTCasesTab:CreateToggle({Name = "Auto Palm Case", CurrentValue = false, Callback = function(Value) palmEnabled = Value end})
NFTCasesTab:CreateToggle({Name = "Auto Burj Case", CurrentValue = false, Callback = function(Value) burjEnabled = Value end})
NFTCasesTab:CreateToggle({Name = "Auto Luxury Case", CurrentValue = false, Callback = function(Value) luxuryEnabled = Value end})
NFTCasesTab:CreateToggle({Name = "Auto Monarch Case", CurrentValue = false, Callback = function(Value) monarchEnabled = Value end})

-- CURRENCY Cases Toggles (NEW)
CurrencyCasesTab:CreateToggle({Name = "Auto Durov Case", CurrentValue = false, Callback = function(Value) durovEnabled = Value end})
CurrencyCasesTab:CreateToggle({Name = "Auto Magnate Case", CurrentValue = false, Callback = function(Value) magnateEnabled = Value end})

-- CARS Cases Toggles
CarsCasesTab:CreateToggle({Name = "Auto M5 F90 Case", CurrentValue = false, Callback = function(Value) m5Enabled = Value end})
CarsCasesTab:CreateToggle({Name = "Auto G63 Case", CurrentValue = false, Callback = function(Value) g63Enabled = Value end})
CarsCasesTab:CreateToggle({Name = "Auto Porsche 911 Case", CurrentValue = false, Callback = function(Value) p911Enabled = Value end})
CarsCasesTab:CreateToggle({Name = "Auto URUS Case", CurrentValue = false, Callback = function(Value) urusEnabled = Value end})

-- SPECIAL Cases Toggles
SpecialCasesTab:CreateToggle({Name = "Auto Frozen Heart Case", CurrentValue = false, Callback = function(Value) frozenHeartEnabled = Value end})
SpecialCasesTab:CreateToggle({Name = "Auto Bubble Gum Case", CurrentValue = false, Callback = function(Value) bubbleGumEnabled = Value end})
SpecialCasesTab:CreateToggle({Name = "Auto Cats Case", CurrentValue = false, Callback = function(Value) catsEnabled = Value end})
SpecialCasesTab:CreateToggle({Name = "Auto Glitch Case", CurrentValue = false, Callback = function(Value) glitchEnabled = Value end})
SpecialCasesTab:CreateToggle({Name = "Auto Dream Case", CurrentValue = false, Callback = function(Value) dreamEnabled = Value end})
SpecialCasesTab:CreateToggle({Name = "Auto Bloody Night Case", CurrentValue = false, Callback = function(Value) bloodyNightEnabled = Value end})

-- === СПАВН ЦИКЛОВ ===

-- FREE Cases
task.spawn(function()
    while true do
        if trashEnabled then
            game.ReplicatedStorage.Events.OpenCase:InvokeServer("Trash", 10)
        end
        task.wait(0.01)
    end
end)

task.spawn(function()
    while true do
        if dailyEnabled then
            game.ReplicatedStorage.Events.OpenCase:InvokeServer("Daily", 10)
        end
        task.wait(0.01)
    end
end)

-- MIX Cases
task.spawn(function()
    while true do
        if beggarEnabled then game.ReplicatedStorage.Events.OpenCase:InvokeServer("Beggar", 10) end
        task.wait(0.01)
    end
end)

task.spawn(function()
    while true do
        if plodderEnabled then game.ReplicatedStorage.Events.OpenCase:InvokeServer("Plodder", 10) end
        task.wait(0.01)
    end
end)

task.spawn(function()
    while true do
        if clerkEnabled then game.ReplicatedStorage.Events.OpenCase:InvokeServer("Office Clerk", 10) end
        task.wait(0.01)
    end
end)

task.spawn(function()
    while true do
        if managerEnabled then game.ReplicatedStorage.Events.OpenCase:InvokeServer("Manager", 10) end
        task.wait(0.01)
    end
end)

task.spawn(function()
    while true do
        if directorEnabled then game.ReplicatedStorage.Events.OpenCase:InvokeServer("Director", 10) end
        task.wait(0.01)
    end
end)

task.spawn(function()
    while true do
        if oligarchEnabled then game.ReplicatedStorage.Events.OpenCase:InvokeServer("Oligarch", 10) end
        task.wait(0.01)
    end
end)

-- NFT Cases
task.spawn(function()
    while true do
        if goldEnabled then game.ReplicatedStorage.Events.OpenCase:InvokeServer("Gold", 10) end
        task.wait(0.01)
    end
end)

task.spawn(function()
    while true do
        if darkEnabled then game.ReplicatedStorage.Events.OpenCase:InvokeServer("Dark", 10) end
        task.wait(0.01)
    end
end)

task.spawn(function()
    while true do
        if palmEnabled then game.ReplicatedStorage.Events.OpenCase:InvokeServer("Palm", 10) end
        task.wait(0.01)
    end
end)

task.spawn(function()
    while true do
        if burjEnabled then game.ReplicatedStorage.Events.OpenCase:InvokeServer("Burj", 10) end
        task.wait(0.01)
    end
end)

task.spawn(function()
    while true do
        if luxuryEnabled then game.ReplicatedStorage.Events.OpenCase:InvokeServer("Luxury", 10) end
        task.wait(0.01)
    end
end)

task.spawn(function()
    while true do
        if monarchEnabled then game.ReplicatedStorage.Events.OpenCase:InvokeServer("Monarch", 10) end
        task.wait(0.01)
    end
end)

-- CURRENCY Cases
task.spawn(function()
    while true do
        if durovEnabled then
            game.ReplicatedStorage.Events.OpenCase:InvokeServer("Durov", 10)
        end
        task.wait(0.01)
    end
end)

task.spawn(function()
    while true do
        if magnateEnabled then
            game.ReplicatedStorage.Events.OpenCase:InvokeServer("Magnate", 10)
        end
        task.wait(0.01)
    end
end)

-- CARS Cases
task.spawn(function()
    while true do
        if m5Enabled then game.ReplicatedStorage.Events.OpenCase:InvokeServer("M5 F90", 10) end
        task.wait(0.01)
    end
end)

task.spawn(function()
    while true do
        if g63Enabled then game.ReplicatedStorage.Events.OpenCase:InvokeServer("G63", 10) end
        task.wait(0.01)
    end
end)

task.spawn(function()
    while true do
        if p911Enabled then game.ReplicatedStorage.Events.OpenCase:InvokeServer("Porsche 911", 10) end
        task.wait(0.01)
    end
end)

task.spawn(function()
    while true do
        if urusEnabled then game.ReplicatedStorage.Events.OpenCase:InvokeServer("URUS", 10) end
        task.wait(0.01)
    end
end)

-- SPECIAL Cases
task.spawn(function()
    while true do
        if frozenHeartEnabled then game.ReplicatedStorage.Events.OpenCase:InvokeServer("Frozen Heart", 10) end
        task.wait(0.01)
    end
end)

task.spawn(function()
    while true do
        if bubbleGumEnabled then game.ReplicatedStorage.Events.OpenCase:InvokeServer("Bubble Gum", 10) end
        task.wait(0.01)
    end
end)

task.spawn(function()
    while true do
        if catsEnabled then game.ReplicatedStorage.Events.OpenCase:InvokeServer("Cats", 10) end
        task.wait(0.01)
    end
end)

task.spawn(function()
    while true do
        if glitchEnabled then game.ReplicatedStorage.Events.OpenCase:InvokeServer("Glitch", 10) end
        task.wait(0.01)
    end
end)

task.spawn(function()
    while true do
        if dreamEnabled then game.ReplicatedStorage.Events.OpenCase:InvokeServer("Dream", 10) end
        task.wait(0.01)
    end
end)

task.spawn(function()
    while true do
        if bloodyNightEnabled then game.ReplicatedStorage.Events.OpenCase:InvokeServer("Bloody Night", 10) end
        task.wait(0.01)
    end
end)

-- Inventory Sell Loop
task.spawn(function()
    while true do
        if sellEnabled then
            game.ReplicatedStorage.Events.Inventory:FireServer("Sell", "ALL", false)
        end
        task.wait(0.01)
    end
end)
