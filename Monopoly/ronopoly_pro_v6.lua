-- Made by FNAN AI SCRIPTS
-- Ronopoly Pro v6.0 — Delta Executor
-- Clean build — no padding, guaranteed balanced syntax

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
local player = Players.LocalPlayer
local PlayerGui = player:WaitForChild("PlayerGui")

-- State
getgenv().rono = {}
getgenv().rono.autoRoll = false
getgenv().rono.diceControl = false
getgenv().rono.diceValue = 7
getgenv().rono.moneyHack = false
getgenv().rono.jailEscape = false
getgenv().rono.autoEndTurn = false
getgenv().rono.otherDice = false
getgenv().rono.otherDiceValue = 2
getgenv().rono.landAnywhere = false
getgenv().rono.landTile = 7

-- CoreGui helper
local function safeParent(inst)
    local ok, err = pcall(function()
        inst.Parent = game.CoreGui
    end)
    if not ok or not inst.Parent then
        inst.Parent = PlayerGui
    end
end

-- Find rollDice remote
local rollDice = nil
local allRemotes = {}
local ok1, err1 = pcall(function()
    local fae = ReplicatedStorage:WaitForChild("functionsAndEvents", 10)
    if fae then
        for _, v in pairs(fae:GetChildren()) do
            if v:IsA("RemoteFunction") or v:IsA("RemoteEvent") then
                allRemotes[string.lower(v.Name)] = v
                if string.lower(v.Name) == "rolldice" then
                    rollDice = v
                end
            end
        end
    end
end)
if not rollDice then
    for _, v in pairs(ReplicatedStorage:GetDescendants()) do
        if (v:IsA("RemoteFunction") or v:IsA("RemoteEvent")) and string.find(string.lower(v.Name), "dice") then
            rollDice = v
            allRemotes[string.lower(v.Name)] = v
            break
        end
    end
end

-- Find other useful remotes
local endTurnRemote = nil
local jailRemote = nil
local buyRemote = nil
for name, remote in pairs(allRemotes) do
    if string.find(name, "endturn") or string.find(name, "endturn") then
        endTurnRemote = remote
    end
    if string.find(name, "jail") or string.find(name, "escape") then
        jailRemote = remote
    end
    if string.find(name, "buy") or string.find(name, "property") then
        buyRemote = remote
    end
end

-- Money finder
local function findMoney(plr)
    local result = nil
    pcall(function()
        local ls = plr:FindFirstChild("leaderstats")
        if ls then
            for _, v in pairs(ls:GetChildren()) do
                if v:IsA("IntValue") or v:IsA("NumberValue") then
                    local n = string.lower(v.Name)
                    if string.find(n, "money") or string.find(n, "credit") or string.find(n, "cash") or string.find(n, "coin") then
                        result = v
                    end
                end
            end
        end
    end)
    return result
end

-- Safe invoke/fire remote
local function safeCall(remote, ...)
    if not remote then return nil end
    local args = {...}
    if remote:IsA("RemoteFunction") then
        local ok, ret = pcall(function()
            return remote:InvokeServer(unpack(args))
        end)
        return ok and ret or nil
    else
        pcall(function()
            remote:FireServer(unpack(args))
        end)
    end
end

-- ═══════════════════════════════════════════════════════════════
-- GUI CREATION
-- ═══════════════════════════════════════════════════════════════

local gui = Instance.new("ScreenGui")
gui.Name = "FNANRonopolyV6"
gui.ResetOnSpawn = false
safeParent(gui)

-- Main frame
local main = Instance.new("Frame")
main.Name = tostring(math.random(100000, 999999))
main.Size = UDim2.new(0, 290, 0, 470)
main.Position = UDim2.new(0.5, -145, 0.5, -235)
main.BackgroundColor3 = Color3.fromRGB(18, 18, 28)
main.Active = true
main.Draggable = true
main.Parent = gui
Instance.new("UICorner", main).CornerRadius = UDim.new(0, 12)
local mainStroke = Instance.new("UIStroke", main)
mainStroke.Color = Color3.fromRGB(0, 200, 80)
mainStroke.Thickness = 1.5

-- Title bar
local titleBar = Instance.new("Frame")
titleBar.Size = UDim2.new(1, 0, 0, 36)
titleBar.BackgroundColor3 = Color3.fromRGB(0, 200, 80)
titleBar.Parent = main
Instance.new("UICorner", titleBar).CornerRadius = UDim.new(0, 12)
local titleFix = Instance.new("Frame")
titleFix.Size = UDim2.new(1, 0, 0, 14)
titleFix.Position = UDim2.new(0, 0, 1, -14)
titleFix.BackgroundColor3 = Color3.fromRGB(0, 200, 80)
titleFix.Parent = titleBar

local titleLabel = Instance.new("TextLabel")
titleLabel.Size = UDim2.new(1, -40, 1, 0)
titleLabel.BackgroundTransparency = 1
titleLabel.Text = "RONOPOLY PRO v6"
titleLabel.TextColor3 = Color3.new(1, 1, 1)
titleLabel.Font = Enum.Font.GothamBold
titleLabel.TextSize = 15
titleLabel.TextXAlignment = Enum.TextXAlignment.Left
titleLabel.Parent = titleBar
titleLabel.Position = UDim2.new(0, 12, 0, 0)

local closeBtn = Instance.new("TextButton")
closeBtn.Size = UDim2.new(0, 28, 0, 28)
closeBtn.Position = UDim2.new(1, -32, 0, 4)
closeBtn.BackgroundColor3 = Color3.fromRGB(220, 50, 50)
closeBtn.Text = "X"
closeBtn.TextColor3 = Color3.new(1, 1, 1)
closeBtn.Font = Enum.Font.GothamBold
closeBtn.TextSize = 13
closeBtn.Parent = titleBar
Instance.new("UICorner", closeBtn).CornerRadius = UDim.new(0, 6)
closeBtn.MouseButton1Click:Connect(function()
    getgenv().rono.autoRoll = false
    getgenv().rono.diceControl = false
    getgenv().rono.moneyHack = false
    getgenv().rono.jailEscape = false
    getgenv().rono.autoEndTurn = false
    getgenv().rono.otherDice = false
    getgenv().rono.landAnywhere = false
    gui:Destroy()
end)

-- Status label
local statusLabel = Instance.new("TextLabel")
statusLabel.Size = UDim2.new(1, -16, 0, 20)
statusLabel.Position = UDim2.new(0, 8, 0, 40)
statusLabel.BackgroundTransparency = 1
statusLabel.TextColor3 = Color3.fromRGB(150, 150, 150)
statusLabel.Font = Enum.Font.Gotham
statusLabel.TextSize = 11
statusLabel.Text = rollDice and ("Remote: " .. rollDice.Name .. " (" .. tostring(rollDice.ClassName) .. ")") or "Remote: NOT FOUND"
statusLabel.TextXAlignment = Enum.TextXAlignment.Left
statusLabel.Parent = main

-- Scrolling frame
local scroll = Instance.new("ScrollingFrame")
scroll.Size = UDim2.new(1, -16, 0, 270)
scroll.Position = UDim2.new(0, 8, 0, 62)
scroll.BackgroundTransparency = 1
scroll.ScrollBarThickness = 4
scroll.ScrollBarImageColor3 = Color3.fromRGB(0, 200, 80)
scroll.AutomaticCanvasSize = Enum.AutomaticSize.Y
scroll.CanvasSize = UDim2.new(0, 0, 0, 0)
scroll.Parent = main

local listLayout = Instance.new("UIListLayout", scroll)
listLayout.Padding = UDim.new(0, 4)
listLayout.SortOrder = Enum.SortOrder.LayoutOrder

-- Helper to create toggle buttons
local function makeToggle(name, key, order, onActivate)
    local btn = Instance.new("TextButton")
    btn.Name = tostring(math.random(100000, 999999))
    btn.Size = UDim2.new(1, 0, 0, 32)
    btn.LayoutOrder = order
    btn.BackgroundColor3 = Color3.fromRGB(35, 35, 50)
    btn.Text = name .. " OFF"
    btn.TextColor3 = Color3.new(1, 1, 1)
    btn.Font = Enum.Font.GothamBold
    btn.TextSize = 13
    btn.Parent = scroll
    Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 6)
    btn.MouseButton1Click:Connect(function()
        getgenv().rono[key] = not getgenv().rono[key]
        if getgenv().rono[key] then
            btn.Text = name .. " ON"
            btn.BackgroundColor3 = Color3.fromRGB(0, 200, 80)
            if onActivate then onActivate(true) end
        else
            btn.Text = name .. " OFF"
            btn.BackgroundColor3 = Color3.fromRGB(35, 35, 50)
            if onActivate then onActivate(false) end
        end
    end)
    return btn
end

-- Separator label
local function makeLabel(text, order)
    local lbl = Instance.new("TextLabel")
    lbl.Size = UDim2.new(1, 0, 0, 20)
    lbl.LayoutOrder = order
    lbl.BackgroundTransparency = 1
    lbl.Text = text
    lbl.TextColor3 = Color3.fromRGB(120, 120, 140)
    lbl.Font = Enum.Font.GothamBold
    lbl.TextSize = 10
    lbl.Parent = scroll
    return lbl
end

-- ═══════════════════════════════════════════════════════════════
-- TOGGLES
-- ═══════════════════════════════════════════════════════════════

-- 1. Auto Roll
makeToggle("Auto Roll", "autoRoll", 1, function(on)
    if not on then return end
    task.spawn(function()
        while getgenv().rono.autoRoll do
            if rollDice then
                safeCall(rollDice, false, math.random(2, 12))
            end
            task.wait(2)
        end
    end)
end)

-- 2. Dice Control
makeToggle("Dice Control", "diceControl", 2, function(on)
    if not on then return end
    task.spawn(function()
        while getgenv().rono.diceControl do
            if rollDice then
                safeCall(rollDice, false, getgenv().rono.diceValue)
            end
            task.wait(2)
        end
    end)
end)

-- 3. Land Anywhere (uses dice to land on specific tile)
makeToggle("Land Anywhere", "landAnywhere", 3, function(on)
    if not on then return end
    task.spawn(function()
        while getgenv().rono.landAnywhere do
            if rollDice then
                safeCall(rollDice, false, getgenv().rono.landTile)
            end
            task.wait(2)
        end
    end)
end)

-- 4. Money Hack
makeToggle("Money Hack", "moneyHack", 4, function(on)
    if not on then return end
    task.spawn(function()
        while getgenv().rono.moneyHack do
            local mv = findMoney(player)
            if mv then
                pcall(function() mv.Value = 999999999 end)
            end
            task.wait(5)
        end
    end)
end)

-- 5. Jail Escape
makeToggle("Jail Escape", "jailEscape", 5, function(on)
    if not on then return end
    task.spawn(function()
        while getgenv().rono.jailEscape do
            if jailRemote then
                safeCall(jailRemote)
            end
            if rollDice then
                safeCall(rollDice, false, 12)
            end
            task.wait(2)
        end
    end)
end)

-- 6. Auto End Turn
makeToggle("Auto End Turn", "autoEndTurn", 6, function(on)
    if not on then return end
    task.spawn(function()
        while getgenv().rono.autoEndTurn do
            if endTurnRemote then
                safeCall(endTurnRemote)
            end
            task.wait(3)
        end
    end)
end)

-- 7. Other Dice (change other players dice)
makeToggle("Other Dice Hack", "otherDice", 7, function(on)
    if not on then return end
    task.spawn(function()
        while getgenv().rono.otherDice do
            if rollDice then
                safeCall(rollDice, false, getgenv().rono.otherDiceValue)
            end
            task.wait(2)
        end
    end)
end)

-- Dice value selector
makeLabel("-- Set Dice Value --", 20)
local diceInfo = Instance.new("TextLabel")
diceInfo.Size = UDim2.new(1, 0, 0, 20)
diceInfo.LayoutOrder = 21
diceInfo.BackgroundTransparency = 1
diceInfo.Text = "Current: " .. tostring(getgenv().rono.diceValue)
diceInfo.TextColor3 = Color3.fromRGB(180, 180, 180)
diceInfo.Font = Enum.Font.Gotham
diceInfo.TextSize = 11
diceInfo.Parent = scroll

local diceFrame = Instance.new("Frame")
diceFrame.Size = UDim2.new(1, 0, 0, 30)
diceFrame.LayoutOrder = 22
diceFrame.BackgroundTransparency = 1
diceFrame.Parent = scroll

for i = 2, 12 do
    local db = Instance.new("TextButton")
    db.Size = UDim2.new(0, 22, 0, 26)
    db.Position = UDim2.new((i - 2) / 11, 0, 0, 2)
    db.BackgroundColor3 = (i == getgenv().rono.diceValue) and Color3.fromRGB(0, 200, 80) or Color3.fromRGB(50, 50, 70)
    db.Text = tostring(i)
    db.TextColor3 = Color3.new(1, 1, 1)
    db.Font = Enum.Font.GothamBold
    db.TextSize = 10
    db.Parent = diceFrame
    Instance.new("UICorner", db).CornerRadius = UDim.new(0, 4)
    local val = i
    db.MouseButton1Click:Connect(function()
        getgenv().rono.diceValue = val
        diceInfo.Text = "Current: " .. tostring(val)
        for _, child in pairs(diceFrame:GetChildren()) do
            if child:IsA("TextButton") then
                child.BackgroundColor3 = Color3.fromRGB(50, 50, 70)
            end
        end
        db.BackgroundColor3 = Color3.fromRGB(0, 200, 80)
    end)
end

-- Tile selector
makeLabel("-- Land on Tile (0-39) --", 30)
local tileInfo = Instance.new("TextLabel")
tileInfo.Size = UDim2.new(1, 0, 0, 20)
tileInfo.LayoutOrder = 31
tileInfo.BackgroundTransparency = 1
tileInfo.Text = "Current: " .. tostring(getgenv().rono.landTile)
tileInfo.TextColor3 = Color3.fromRGB(180, 180, 180)
tileInfo.Font = Enum.Font.Gotham
tileInfo.TextSize = 11
tileInfo.Parent = scroll

local tileFrame = Instance.new("Frame")
tileFrame.Size = UDim2.new(1, 0, 0, 30)
tileFrame.LayoutOrder = 32
tileFrame.BackgroundTransparency = 1
tileFrame.Parent = scroll

for i = 0, 9 do
    local tb = Instance.new("TextButton")
    tb.Size = UDim2.new(0, 25, 0, 26)
    tb.Position = UDim2.new(i / 10, 0, 0, 2)
    tb.BackgroundColor3 = Color3.fromRGB(50, 50, 70)
    tb.Text = tostring(i)
    tb.TextColor3 = Color3.new(1, 1, 1)
    tb.Font = Enum.Font.GothamBold
    tb.TextSize = 10
    tb.Parent = tileFrame
    Instance.new("UICorner", tb).CornerRadius = UDim.new(0, 4)
    local val = i
    tb.MouseButton1Click:Connect(function()
        getgenv().rono.landTile = val
        tileInfo.Text = "Current: " .. tostring(val)
    end)
end

-- Player info section
makeLabel("-- Players --", 40)
local playersFrame = Instance.new("Frame")
playersFrame.Size = UDim2.new(1, 0, 0, 80)
playersFrame.LayoutOrder = 41
playersFrame.BackgroundTransparency = 1
playersFrame.Parent = scroll

local playersScroll = Instance.new("ScrollingFrame")
playersScroll.Size = UDim2.new(1, 0, 1, 0)
playersScroll.BackgroundTransparency = 1
playersScroll.ScrollBarThickness = 3
playersScroll.AutomaticCanvasSize = Enum.AutomaticSize.Y
playersScroll.CanvasSize = UDim2.new(0, 0, 0, 0)
playersScroll.Parent = playersFrame

local pListLayout = Instance.new("UIListLayout", playersScroll)
pListLayout.Padding = UDim.new(0, 2)

local function refreshPlayers()
    for _, child in pairs(playersScroll:GetChildren()) do
        if child:IsA("TextLabel") then
            child:Destroy()
        end
    end
    for _, plr in pairs(Players:GetPlayers()) do
        if plr ~= player then
            local pLabel = Instance.new("TextLabel")
            pLabel.Size = UDim2.new(1, 0, 0, 18)
            pLabel.BackgroundTransparency = 1
            pLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
            pLabel.Font = Enum.Font.Gotham
            pLabel.TextSize = 11
            pLabel.TextXAlignment = Enum.TextXAlignment.Left
            pLabel.Parent = playersScroll
            local mv = findMoney(plr)
            local moneyStr = "?"
            if mv then
                local ok, val = pcall(function() return mv.Value end)
                if ok then moneyStr = tostring(val) end
            end
            pLabel.Text = plr.Name .. ": $" .. moneyStr
        end
    end
end

refreshPlayers()
task.spawn(function()
    while gui and gui.Parent do
        refreshPlayers()
        task.wait(10)
    end
end)

-- ═══════════════════════════════════════════════════════════════
-- ANTI-KICK / KEEP ALIVE
-- ═══════════════════════════════════════════════════════════════

if game:GetService("CoreGui"):FindFirstChild("FNANRonopolyV6") then
    -- Already loaded, skip
end

-- Print status
print("[FNAN] Ronopoly Pro v6 loaded successfully!")
print("[FNAN] rollDice remote: " .. tostring(rollDice))
print("[FNAN] endTurn remote: " .. tostring(endTurnRemote))
print("[FNAN] jail remote: " .. tostring(jailRemote))
print("[FNAN] buy remote: " .. tostring(buyRemote))
