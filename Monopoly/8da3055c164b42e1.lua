-- FNAN Error Handler
local _fn_ok, _fn_err = pcall(function()


local rn = function() return math.random(100000, 999999) end
local S = setmetatable({}, {__index = function(_, k) return game:GetService(k) end})
getgenv().fn_state = {}
getgenv().fn_config = {
    autoDice = false,
    autoBuy = false,
    autoHouses = false,
    moneyHack = false,
    autoTrade = false,
    rollPredict = false,
    teleportToTile = false,
    jailEscape = false,
    rentImmunity = false,
    auctionWinner = false,
    autoMortgage = false,
    playerSpectator = false,
    cardReader = false,
    speedGame = false,
    antiBankrupt = false,
    autoPayRent = false,
    propertyESP = false,
    turnAlert = false,
    autoEndTurn = false,
    boardMap = false,
    moneyAmount = 5000000,
    houseCount = 4
}

local player = game:GetService("Players").LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local hrp = character:WaitForChild("HumanoidRootPart")
local humanoid = character:WaitForChild("Humanoid")

player.CharacterAdded:Connect(function(char)
    character = char
    hrp = char:WaitForChild("HumanoidRootPart")
    humanoid = char:WaitForChild("Humanoid")
end)

local function findRemote(parent, keyword)
    for _,v in pairs(parent:GetDescendants()) do
        if v:IsA("RemoteEvent") and string.find(string.lower(v.Name), string.lower(keyword)) then
            return v
        end
    end
    return nil
end

local function notify(text, dur)
    dur = dur or 3
    local n = Instance.new("TextLabel")
    n.Name = tostring(rn())
    n.Size = UDim2.new(0, 250, 0, 40)
    n.Position = UDim2.new(0.5, -125, 0, 10)
    n.BackgroundColor3 = Color3.fromRGB(0, 160, 60)
    n.TextColor3 = Color3.new(1, 1, 1)
    n.Font = Enum.Font.GothamBold
    n.TextSize = 13
    n.Text = text
    n.Parent = game:GetService("CoreGui")
    Instance.new("UICorner").Parent = n
    game:GetService("TweenService"):Create(n, TweenInfo.new(0.5), {Position = UDim2.new(0.5, -125, 0, 50)}):Play()
    task.wait(dur)
    game:GetService("TweenService"):Create(n, TweenInfo.new(0.5), {Position = UDim2.new(0.5, -125, 0, -40)}):Play()
    task.wait(0.5)
    n:Destroy()
end

local function findValue(parent, keyword)
    for _,v in pairs(parent:GetDescendants()) do
        if v:IsA("IntValue") or v:IsA("NumberValue") or v:IsA("StringValue") or v:IsA("BoolValue") then
            if string.find(string.lower(v.Name), string.lower(keyword)) then
                return v
            end
        end
    end
    return nil
end

local function findFirstChildWithPart(parent, partName)
    for _,v in pairs(parent:GetDescendants()) do
        if v:IsA("Model") and v:FindFirstChild(partName) then
            return v
        end
    end
    return nil
end

local function findTileByName(tileName)
    for _,v in pairs(workspace:GetDescendants()) do
        if v:IsA("Model") and v:FindFirstChild("TileName") and v.TileName.Value == tileName then
            return v
        end
    end
    return nil
end

local function findBoardTiles()
    local tiles = {}
    for _,v in pairs(workspace:GetDescendants()) do
        if v:IsA("Model") and v:FindFirstChild("TileName") then
            table.insert(tiles, v)
        end
    end
    return tiles
end

local function findPlayerData()
    local data = {
        money = findValue(player, "money") or findValue(player, "credits") or findValue(player, "Money") or findValue(player, "Credits"),
        position = findValue(player, "position") or findValue(player, "Position"),
        properties = {},
        inJail = findValue(player, "inJail") or findValue(player, "InJail")
    }
    
    for _,v in pairs(player:GetDescendants()) do
        if v:IsA("StringValue") and string.find(string.lower(v.Name), "property") then
            table.insert(data.properties, v.Value)
        end
    end
    
    return data
end

local function findOtherPlayers()
    local players = {}
    for _,p in pairs(game:GetService("Players"):GetPlayers()) do
        if p ~= player then
            table.insert(players, {
                name = p.Name,
                data = findPlayerData(p)
            })
        end
    end
    return players
end

local function createESP(target)
    if target:FindFirstChild("FNAN_ESP") then
        target.FNAN_ESP:Destroy()
    end
    local highlight = Instance.new("Highlight")
    highlight.Name = "FNAN_ESP"
    highlight.FillTransparency = 0.5
    highlight.OutlineColor = Color3.fromRGB(0, 255, 100)
    highlight.FillColor = Color3.fromRGB(0, 255, 100)
    highlight.Parent = target
end

local function removeESP(target)
    if target:FindFirstChild("FNAN_ESP") then
        target.FNAN_ESP:Destroy()
    end
end

local function createBoardMap()
    local mapFrame = Instance.new("Frame")
    mapFrame.Name = tostring(rn())
    mapFrame.Size = UDim2.new(0, 380, 0, 380)
    mapFrame.Position = UDim2.new(0.5, -190, 0.5, -190)
    mapFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 30)
    mapFrame.Parent = game:GetService("CoreGui")
    Instance.new("UICorner").Parent = mapFrame
    
    local title = Instance.new("TextLabel")
    title.Name = tostring(rn())
    title.Size = UDim2.new(1, 0, 0, 30)
    title.Position = UDim2.new(0, 0, 0, 0)
    title.BackgroundColor3 = Color3.fromRGB(0, 160, 60)
    title.TextColor3 = Color3.new(1, 1, 1)
    title.Font = Enum.Font.GothamBold
    title.TextSize = 18
    title.Text = "Monopoly Board Map"
    title.Parent = mapFrame
    Instance.new("UICorner").Parent = title
    
    local closeBtn = Instance.new("TextButton")
    closeBtn.Name = tostring(rn())
    closeBtn.Size = UDim2.new(0, 30, 0, 30)
    closeBtn.Position = UDim2.new(1, -30, 0, 0)
    closeBtn.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
    closeBtn.TextColor3 = Color3.new(1, 1, 1)
    closeBtn.Font = Enum.Font.GothamBold
    closeBtn.TextSize = 20
    closeBtn.Text = "X"
    closeBtn.Parent = title
    closeBtn.MouseButton1Click:Connect(function()
        mapFrame:Destroy()
    end)
    
    local scrollFrame = Instance.new("ScrollingFrame")
    scrollFrame.Name = tostring(rn())
    scrollFrame.Size = UDim2.new(1, 0, 1, -30)
    scrollFrame.Position = UDim2.new(0, 0, 0, 30)
    scrollFrame.BackgroundTransparency = 1
    scrollFrame.ScrollBarThickness = 10
    scrollFrame.Parent = mapFrame
    
    local tiles = findBoardTiles()
    local tileButtons = {}
    
    for _,tile in pairs(tiles) do
        local tileName = tile.TileName.Value
        local owner = tile:FindFirstChild("Owner") and tile.Owner.Value or "None"
        local price = tile:FindFirstChild("Price") and tile.Price.Value or 0
        local houses = tile:FindFirstChild("Houses") and tile.Houses.Value or 0
        
        local tileBtn = Instance.new("TextButton")
        tileBtn.Name = tostring(rn())
        tileBtn.Size = UDim2.new(0, 350, 0, 30)
        tileBtn.Position = UDim2.new(0, 10, 0, #tileButtons * 35)
        tileBtn.BackgroundColor3 = Color3.fromRGB(40, 40, 55)
        tileBtn.TextColor3 = Color3.new(1, 1, 1)
        tileBtn.Font = Enum.Font.GothamBold
        tileBtn.TextSize = 14
        tileBtn.Text = tileName .. " - Owner: " .. owner .. " - Price: $" .. price .. " - Houses: " .. houses
        tileBtn.Parent = scrollFrame
        
        if owner == player.Name then
            tileBtn.BackgroundColor3 = Color3.fromRGB(0, 160, 60)
        end
        
        table.insert(tileButtons, tileBtn)
    end
    
    return mapFrame
end

local gui = Instance.new("ScreenGui")
gui.Name = tostring(rn())
gui.Parent = game:GetService("CoreGui")

local mainFrame = Instance.new("Frame")
mainFrame.Name = tostring(rn())
mainFrame.Size = UDim2.new(0, 380, 0, 520)
mainFrame.Position = UDim2.new(0.5, -190, 0.5, -260)
mainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 30)
mainFrame.Parent = gui
Instance.new("UICorner").Parent = mainFrame

local titleBar = Instance.new("Frame")
titleBar.Name = tostring(rn())
titleBar.Size = UDim2.new(1, 0, 0, 30)
titleBar.Position = UDim2.new(0, 0, 0, 0)
titleBar.BackgroundColor3 = Color3.fromRGB(0, 160, 60)
titleBar.Parent = mainFrame
Instance.new("UICorner").Parent = titleBar

local title = Instance.new("TextLabel")
title.Name = tostring(rn())
title.Size = UDim2.new(1, -30, 1, 0)
title.Position = UDim2.new(0, 10, 0, 0)
title.BackgroundColor3 = Color3.new(1, 1, 1)
title.TextColor3 = Color3.new(1, 1, 1)
title.Font = Enum.Font.GothamBold
title.TextSize = 18
title.Text = "FNAN Monopoly Hub"
title.Parent = titleBar

local closeBtn = Instance.new("TextButton")
closeBtn.Name = tostring(rn())
closeBtn.Size = UDim2.new(0, 30, 0, 30)
closeBtn.Position = UDim2.new(1, -30, 0, 0)
closeBtn.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
closeBtn.TextColor3 = Color3.new(1, 1, 1)
closeBtn.Font = Enum.Font.GothamBold
closeBtn.TextSize = 20
closeBtn.Text = "X"
closeBtn.Parent = titleBar
closeBtn.MouseButton1Click:Connect(function()
    gui:Destroy()
end)

local dragStart, dragInput, dragStartPos, startPos
local dragConnection
local inputConnection

titleBar.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragStart = input.Position
        startPos = mainFrame.Position
        dragConnection = UserInputService.InputChanged:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseMovement then
                dragInput = input
            end
        end)
        inputConnection = UserInputService.InputEnded:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 then
                dragConnection:Disconnect()
                inputConnection:Disconnect()
            end
        end)
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement and dragInput then
        local dragDelta = input.Position - dragStart
        mainFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + dragDelta.X, startPos.Y.Scale, startPos.Y.Offset + dragDelta.Y)
    end
end)

local tabFrame = Instance.new("Frame")
tabFrame.Name = tostring(rn())
tabFrame.Size = UDim2.new(1, 0, 0, 30)
tabFrame.Position = UDim2.new(0, 0, 0, 30)
tabFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
tabFrame.Parent = mainFrame
Instance.new("UICorner").Parent = tabFrame

local mainTab = Instance.new("TextButton")
mainTab.Name = tostring(rn())
mainTab.Size = UDim2.new(0.5, 0, 1, 0)
mainTab.Position = UDim2.new(0, 0, 0, 0)
mainTab.BackgroundColor3 = Color3.fromRGB(0, 160, 60)
mainTab.TextColor3 = Color3.new(1, 1, 1)
mainTab.Font = Enum.Font.GothamBold
mainTab.TextSize = 14
mainTab.Text = "Main"
mainTab.Parent = tabFrame

local settingsTab = Instance.new("TextButton")
settingsTab.Name = tostring(rn())
settingsTab.Size = UDim2.new(0.5, 0, 1, 0)
settingsTab.Position = UDim2.new(0.5, 0, 0, 0)
settingsTab.BackgroundColor3 = Color3.fromRGB(40, 40, 55)
settingsTab.TextColor3 = Color3.new(1, 1, 1)
settingsTab.Font = Enum.Font.GothamBold
settingsTab.TextSize = 14
settingsTab.Text = "Settings"
settingsTab.Parent = tabFrame

local mainContent = Instance.new("Frame")
mainContent.Name = tostring(rn())
mainContent.Size = UDim2.new(1, 0, 1, -60)
mainContent.Position = UDim2.new(0, 0, 0, 60)
mainContent.BackgroundTransparency = 1
mainContent.Parent = mainFrame

local settingsContent = Instance.new("Frame")
settingsContent.Name = tostring(rn())
settingsContent.Size = UDim2.new(1, 0, 1, -60)
settingsContent.Position = UDim2.new(0, 0, 0, 60)
settingsContent.BackgroundTransparency = 1
settingsContent.Parent = mainFrame

local function showMainTab()
    mainContent.Visible = true
    settingsContent.Visible = false
    mainTab.BackgroundColor3 = Color3.fromRGB(0, 160, 60)
    settingsTab.BackgroundColor3 = Color3.fromRGB(40, 40, 55)
end

local function showSettingsTab()
    mainContent.Visible = false
    settingsContent.Visible = true
    mainTab.BackgroundColor3 = Color3.fromRGB(40, 40, 55)
    settingsTab.BackgroundColor3 = Color3.fromRGB(0, 160, 60)
end

mainTab.MouseButton1Click:Connect(showMainTab)
settingsTab.MouseButton1Click:Connect(showSettingsTab)

showMainTab()



local autoDiceBtn = Instance.new("TextButton")
autoDiceBtn.Name = tostring(rn())
autoDiceBtn.Size = UDim2.new(1, 0, 0, 34)
autoDiceBtn.Position = UDim2.new(0, 0, 0, 10)
autoDiceBtn.BackgroundColor3 = Color3.fromRGB(40, 40, 55)
autoDiceBtn.TextColor3 = Color3.new(1, 1, 1)
autoDiceBtn.Font = Enum.Font.GothamBold
autoDiceBtn.TextSize = 14
autoDiceBtn.Text = "Auto Dice: OFF"
autoDiceBtn.Parent = mainContent
Instance.new("UICorner").Parent = autoDiceBtn

local autoBuyBtn = Instance.new("TextButton")
autoBuyBtn.Name = tostring(rn())
autoBuyBtn.Size = UDim2.new(1, 0, 0, 34)
autoBuyBtn.Position = UDim2.new(0, 0, 0, 50)
autoBuyBtn.BackgroundColor3 = Color3.fromRGB(40, 40, 55)
autoBuyBtn.TextColor3 = Color3.new(1, 1, 1)
autoBuyBtn.Font = Enum.Font.GothamBold
autoBuyBtn.TextSize = 14
autoBuyBtn.Text = "Auto Buy: OFF"
autoBuyBtn.Parent = mainContent
Instance.new("UICorner").Parent = autoBuyBtn

local autoHousesBtn = Instance.new("TextButton")
autoHousesBtn.Name = tostring(rn())
autoHousesBtn.Size = UDim2.new(1, 0, 0, 34)
autoHousesBtn.Position = UDim2.new(0, 0, 0, 90)
autoHousesBtn.BackgroundColor3 = Color3.fromRGB(40, 40, 55)
autoHousesBtn.TextColor3 = Color3.new(1, 1, 1)
autoHousesBtn.Font = Enum.Font.GothamBold
autoHousesBtn.TextSize = 14
autoHousesBtn.Text = "Auto Houses: OFF"
autoHousesBtn.Parent = mainContent
Instance.new("UICorner").Parent = autoHousesBtn

local moneyHackBtn = Instance.new("TextButton")
moneyHackBtn.Name = tostring(rn())
moneyHackBtn.Size = UDim2.new(1, 0, 0, 34)
moneyHackBtn.Position = UDim2.new(0, 0, 0, 130)
moneyHackBtn.BackgroundColor3 = Color3.fromRGB(40, 40, 55)
moneyHackBtn.TextColor3 = Color3.new(1, 1, 1)
moneyHackBtn.Font = Enum.Font.GothamBold
moneyHackBtn.TextSize = 14
moneyHackBtn.Text = "Money Hack: OFF"
moneyHackBtn.Parent = mainContent
Instance.new("UICorner").Parent = moneyHackBtn

local autoTradeBtn = Instance.new("TextButton")
autoTradeBtn.Name = tostring(rn
end)
if not _fn_ok then
  local _fn_eg = Instance.new("ScreenGui")
  _fn_eg.Name = tostring(math.random(100000,999999))
  _fn_eg.ResetOnSpawn = false
  _fn_eg.Parent = game:GetService("CoreGui")
  local _fn_ef = Instance.new("Frame")
  _fn_ef.Size = UDim2.new(0, 350, 0, 120)
  _fn_ef.Position = UDim2.new(0.5, -175, 0.5, -60)
  _fn_ef.BackgroundColor3 = Color3.fromRGB(30, 0, 0)
  _fn_ef.BorderSizePixel = 0
  _fn_ef.Parent = _fn_eg
   Instance.new("UICorner").Parent = _fn_ef
  local _fn_es = Instance.new("UIStroke")
  _fn_es.Color = Color3.fromRGB(255, 50, 50)
  _fn_es.Thickness = 2
  _fn_es.Parent = _fn_ef
  local _fn_et = Instance.new("TextLabel")
  _fn_et.Size = UDim2.new(1, -20, 0, 40)
  _fn_et.Position = UDim2.new(0, 10, 0, 10)
  _fn_et.BackgroundTransparency = 1
  _fn_et.TextColor3 = Color3.fromRGB(255, 80, 80)
  _fn_et.Font = Enum.Font.GothamBold
  _fn_et.TextSize = 14
  _fn_et.Text = "FNAN Script Error"
  _fn_et.TextXAlignment = Enum.TextXAlignment.Left
  _fn_et.Parent = _fn_ef
  local _fn_em = Instance.new("TextLabel")
  _fn_em.Size = UDim2.new(1, -20, 1, -60)
  _fn_em.Position = UDim2.new(0, 10, 0, 50)
  _fn_em.BackgroundTransparency = 1
  _fn_em.TextColor3 = Color3.fromRGB(200, 200, 200)
  _fn_em.Font = Enum.Font.Gotham
  _fn_em.TextSize = 12
  _fn_em.TextWrapped = true
  _fn_em.Text = tostring(_fn_err)
  _fn_em.TextXAlignment = Enum.TextXAlignment.Left
  _fn_em.Parent = _fn_ef
  local _fn_eb = Instance.new("TextButton")
  _fn_eb.Size = UDim2.new(0, 80, 0, 28)
  _fn_eb.Position = UDim2.new(0.5, -40, 1, -35)
  _fn_eb.BackgroundColor3 = Color3.fromRGB(200, 40, 40)
  _fn_eb.TextColor3 = Color3.new(1, 1, 1)
  _fn_eb.Font = Enum.Font.GothamBold
  _fn_eb.TextSize = 12
  _fn_eb.Text = "Close"
  Instance.new("UICorner").Parent = _fn_eb
  _fn_eb.Parent = _fn_ef
  _fn_eb.MouseButton1Click:Connect(function() _fn_eg:Destroy() end)
  task.wait(8)
  pcall(function() _fn_eg:Destroy() end)
end
