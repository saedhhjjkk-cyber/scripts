
task.spawn(function()
  local _g = Instance.new("ScreenGui")
  _g.ResetOnSpawn = false
  _g.Parent = game:GetService("CoreGui")
  local _l = Instance.new("TextLabel")
  _l.Size = UDim2.new(0, 240, 0, 38)
  _l.Position = UDim2.new(0.5, -120, 0, 10)
  _l.BackgroundColor3 = Color3.fromRGB(0, 180, 70)
  _l.TextColor3 = Color3.new(1, 1, 1)
  _l.Font = Enum.Font.GothamBold
  _l.TextSize = 15
  _l.Text = "FNAN Script Loaded!"
  _l.Parent = _g
  local _c = Instance.new("UICorner")
  _c.CornerRadius = UDim.new(0, 10)
  _c.Parent = _l
  task.wait(3)
  _l:Destroy()
  if _g.Parent then _g:Destroy() end
end)

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local hrp = character:WaitForChild("HumanoidRootPart")
local humanoid = character:WaitForChild("Humanoid")
player.CharacterAdded:Connect(function(c)
  character = c
  hrp = c:WaitForChild("HumanoidRootPart")
  humanoid = c:WaitForChild("Humanoid")
end)

getgenv().fn = {}
getgenv().fn.cfg = {speed = 80, jumpPower = 100, flySpeed = 50}
getgenv().fn.toggles = {}


local screenGui = Instance.new("ScreenGui")
screenGui.ResetOnSpawn = false
screenGui.Name = "FNAN Hub"
screenGui.Parent = game:GetService("CoreGui")

local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 320, 0, 480)
mainFrame.Position = UDim2.new(0.5, -160, 0.5, -240)
mainFrame.BackgroundColor3 = Color3.fromRGB(18, 18, 28)
mainFrame.Parent = screenGui
Instance.new("UICorner", mainFrame).CornerRadius = UDim.new(0, 12)
Instance.new("UIStroke", mainFrame).Color = Color3.fromRGB(0, 170, 60)
Instance.new("UIStroke", mainFrame).Thickness = 1.5

local titleBar = Instance.new("Frame")
titleBar.Size = UDim2.new(1, 0, 0, 40)
titleBar.Position = UDim2.new(0, 0, 0, 0)
titleBar.BackgroundColor3 = Color3.fromRGB(0, 170, 60)
titleBar.Parent = mainFrame
Instance.new("UICorner", titleBar).CornerRadius = UDim.new(0, 12)

local titleText = Instance.new("TextLabel")
titleText.Size = UDim2.new(0.7, 0, 1, 0)
titleText.Position = UDim2.new(0, 10, 0, 0)
titleText.BackgroundTransparency = 1
titleText.Text = "FNAN Hub - Monopoly"
titleText.TextColor3 = Color3.new(1, 1, 1)
titleText.Font = Enum.Font.GothamBold
titleText.TextSize = 18
titleText.Parent = titleBar

local closeBtn = Instance.new("TextButton")
closeBtn.Size = UDim2.new(0, 30, 0, 30)
closeBtn.Position = UDim2.new(1, -40, 0, 5)
closeBtn.BackgroundTransparency = 1
closeBtn.Text = "X"
closeBtn.TextColor3 = Color3.new(1, 1, 1)
closeBtn.Font = Enum.Font.GothamBold
closeBtn.TextSize = 20
closeBtn.Parent = titleBar
closeBtn.MouseButton1Click:Connect(function() screenGui:Destroy() end)

local tabFrame = Instance.new("Frame")
tabFrame.Size = UDim2.new(1, 0, 0, 30)
tabFrame.Position = UDim2.new(0, 0, 0, 40)
tabFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 50)
tabFrame.Parent = mainFrame
Instance.new("UICorner", tabFrame).CornerRadius = UDim.new(0, 6)

local tabs = {"Main", "Board", "Players"}
local tabButtons = {}
local contentFrames = {}
local activeTab = "Main"

for i, tabName in ipairs(tabs) do
  local tabBtn = Instance.new("TextButton")
  tabBtn.Size = UDim2.new(1/3, 0, 1, 0)
  tabBtn.Position = UDim2.new((i-1)/3, 0, 0, 0)
  tabBtn.BackgroundColor3 = Color3.fromRGB(35, 35, 50)
  tabBtn.Text = tabName
  tabBtn.TextColor3 = Color3.new(1, 1, 1)
  tabBtn.Font = Enum.Font.GothamBold
  tabBtn.TextSize = 14
  tabBtn.Parent = tabFrame
  
  local contentFrame = Instance.new("ScrollingFrame")
  contentFrame.Size = UDim2.new(1, 0, 1, -40)
  contentFrame.Position = UDim2.new(0, 0, 0, 40)
  contentFrame.BackgroundTransparency = 1
  contentFrame.ScrollBarThickness = 6
  contentFrame.Visible = (tabName == activeTab)
  contentFrame.Parent = mainFrame
  
  table.insert(tabButtons, tabBtn)
  table.insert(contentFrames, contentFrame)
  
  tabBtn.MouseButton1Click:Connect(function()
    for j, btn in ipairs(tabButtons) do
      btn.BackgroundColor3 = Color3.fromRGB(35, 35, 50)
      contentFrames[j].Visible = false
    end
    tabBtn.BackgroundColor3 = Color3.fromRGB(0, 170, 60)
    contentFrames[i].Visible = true
    activeTab = tabName
  end)
end

tabButtons[1].BackgroundColor3 = Color3.fromRGB(0, 170, 60)


local function findRemote(parent, keyword)
  for _, v in pairs(parent:GetDescendants()) do
    if v:IsA("RemoteEvent") and string.find(string.lower(v.Name), string.lower(keyword)) then
      return v
    end
  end
  return nil
end

local function createButton(text, y, parent)
  local btn = Instance.new("TextButton")
  btn.Size = UDim2.new(1, -16, 0, 32)
  btn.Position = UDim2.new(0, 8, 0, y)
  btn.BackgroundColor3 = Color3.fromRGB(35, 35, 50)
  btn.TextColor3 = Color3.new(1, 1, 1)
  btn.Font = Enum.Font.GothamBold
  btn.TextSize = 13
  btn.Text = text .. " OFF"
  btn.Name = tostring(math.random(100000, 999999))
  btn.Parent = parent
  Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 6)
  return btn
end


local y = 10

local autoDiceBtn = createButton("Auto Dice Roll", y, contentFrames[1])
y = y + 40
getgenv().fn.toggles.AutoDice = false
autoDiceBtn.MouseButton1Click:Connect(function()
  getgenv().fn.toggles.AutoDice = not getgenv().fn.toggles.AutoDice
  if getgenv().fn.toggles.AutoDice then
    autoDiceBtn.Text = "Auto Dice Roll ON"
    autoDiceBtn.BackgroundColor3 = Color3.fromRGB(0, 170, 60)
    task.spawn(function()
      while getgenv().fn.toggles.AutoDice do
        local diceRemote = findRemote(game.ReplicatedStorage, "dice")
        if diceRemote then
          pcall(function() diceRemote:FireServer() end)
        end
        task.wait(1)
      end
    end)
  else
    autoDiceBtn.Text = "Auto Dice Roll OFF"
    autoDiceBtn.BackgroundColor3 = Color3.fromRGB(35, 35, 50)
  end
end)

local autoBuyBtn = createButton("Auto Buy Property", y, contentFrames[1])
y = y + 40
getgenv().fn.toggles.AutoBuy = false
autoBuyBtn.MouseButton1Click:Connect(function()
  getgenv().fn.toggles.AutoBuy = not getgenv().fn.toggles.AutoBuy
  if getgenv().fn.toggles.AutoBuy then
    autoBuyBtn.Text = "Auto Buy Property ON"
    autoBuyBtn.BackgroundColor3 = Color3.fromRGB(0, 170, 60)
    task.spawn(function()
      while getgenv().fn.toggles.AutoBuy do
        local buyRemote = findRemote(game.ReplicatedStorage, "buy")
        if buyRemote then
          pcall(function() buyRemote:FireServer() end)
        end
        task.wait(1)
      end
    end)
  else
    autoBuyBtn.Text = "Auto Buy Property OFF"
    autoBuyBtn.BackgroundColor3 = Color3.fromRGB(35, 35, 50)
  end
end)

local moneyHackBtn = createButton("Money Hack", y, contentFrames[1])
y = y + 40
getgenv().fn.toggles.MoneyHack = false
moneyHackBtn.MouseButton1Click:Connect(function()
  getgenv().fn.toggles.MoneyHack = not getgenv().fn.toggles.MoneyHack
  if getgenv().fn.toggles.MoneyHack then
    moneyHackBtn.Text = "Money Hack ON"
    moneyHackBtn.BackgroundColor3 = Color3.fromRGB(0, 170, 60)
    task.spawn(function()
      while getgenv().fn.toggles.MoneyHack do
        for _, v in pairs(player:GetDescendants()) do
          if v:IsA("IntValue") or v:IsA("NumberValue") and string.find(string.lower(v.Name), "money") then
            pcall(function() v.Value = 999999999 end)
          end
        end
        task.wait(0.5)
      end
    end)
  else
    moneyHackBtn.Text = "Money Hack OFF"
    moneyHackBtn.BackgroundColor3 = Color3.fromRGB(35, 35, 50)
  end
end)

local autoRentBtn = createButton("Auto Pay Rent", y, contentFrames[1])
y = y + 40
getgenv().fn.toggles.AutoRent = false
autoRentBtn.MouseButton1Click:Connect(function()
  getgenv().fn.toggles.AutoRent = not getgenv().fn.toggles.AutoRent
  if getgenv().fn.toggles.AutoRent then
    autoRentBtn.Text = "Auto Pay Rent ON"
    autoRentBtn.BackgroundColor3 = Color3.fromRGB(0, 170, 60)
    task.spawn(function()
      while getgenv().fn.toggles.AutoRent do
        local rentRemote = findRemote(game.ReplicatedStorage, "rent")
        if rentRemote then
          pcall(function() rentRemote:FireServer() end)
        end
        task.wait(1)
      end
    end)
  else
    autoRentBtn.Text = "Auto Pay Rent OFF"
    autoRentBtn.BackgroundColor3 = Color3.fromRGB(35, 35, 50)
  end
end)

local jailEscapeBtn = createButton("Jail Escape", y, contentFrames[1])
y = y + 40
getgenv().fn.toggles.JailEscape = false
jailEscapeBtn.MouseButton1Click:Connect(function()
  getgenv().fn.toggles.JailEscape = not getgenv().fn.toggles.JailEscape
  if getgenv().fn.toggles.JailEscape then
    jailEscapeBtn.Text = "Jail Escape ON"
    jailEscapeBtn.BackgroundColor3 = Color3.fromRGB(0, 170, 60)
    task.spawn(function()
      while getgenv().fn.toggles.JailEscape do
        local jailRemote = findRemote(game.ReplicatedStorage, "jail")
        if jailRemote then
          pcall(function() jailRemote:FireServer() end)
        end
        task.wait(1)
      end
    end)
  else
    jailEscapeBtn.Text = "Jail Escape OFF"
    jailEscapeBtn.BackgroundColor3 = Color3.fromRGB(35, 35, 50)
  end
end)


local boardY = 10

local tileInfo = Instance.new("TextLabel")
tileInfo.Size = UDim2.new(1, -16, 0, 100)
tileInfo.Position = UDim2.new(0, 8, 0, boardY)
tileInfo.BackgroundColor3 = Color3.fromRGB(35, 35, 50)
tileInfo.TextColor3 = Color3.new(1, 1, 1)
tileInfo.Font = Enum.Font.GothamBold
tileInfo.TextSize = 14
tileInfo.Text = "Tile Info"
tileInfo.TextWrapped = true
tileInfo.Parent = contentFrames[2]
Instance.new("UICorner", tileInfo).CornerRadius = UDim.new(0, 6)
boardY = boardY + 110

local teleportBtn = createButton("Teleport to Tile", boardY, contentFrames[2])
boardY = boardY + 40
getgenv().fn.toggles.Teleport = false
teleportBtn.MouseButton1Click:Connect(function()
  getgenv().fn.toggles.Teleport = not getgenv().fn.toggles.Teleport
  if getgenv().fn.toggles.Teleport then
    teleportBtn.Text = "Teleport to Tile ON"
    teleportBtn.BackgroundColor3 = Color3.fromRGB(0, 170, 60)
    task.spawn(function()
      while getgenv().fn.toggles.Teleport do
        for _, tile in pairs(workspace:GetDescendants()) do
          if tile:IsA("Model") and tile:FindFirstChild("Position") then
            local highlight = tile:FindFirstChild("Highlight")
            if not highlight then
              highlight = Instance.new("Highlight")
              highlight.Parent = tile
              highlight.Adornee = tile
              highlight.FillColor = Color3.fromRGB(0, 170, 60)
            end
          end
        end
        task.wait(1)
      end
    end)
  else
    teleportBtn.Text = "Teleport to Tile OFF"
    teleportBtn.BackgroundColor3 = Color3.fromRGB(35, 35, 50)
    for _, tile in pairs(workspace:GetDescendants()) do
      if tile:IsA("Model") and tile:FindFirstChild("Highlight") then
        tile.Highlight:Destroy()
      end
    end
  end
end)


local playersY = 10

local playerList = Instance.new("ScrollingFrame")
playerList.Size = UDim2.new(1, -16, 1, -20)
playerList.Position = UDim2.new(0, 8, 0, playersY)
playerList.BackgroundColor3 = Color3.fromRGB(35, 35, 50)
playerList.ScrollBarThickness = 6
playerList.Parent = contentFrames[3]
Instance.new("UICorner", playerList).CornerRadius = UDim.new(0, 6)

local updatePlayerList = function()
  for _, child in pairs(playerList:GetChildren()) do
    if child:IsA("Frame") then
      child:Destroy()
    end
  end
  
  for _, plr in pairs(Players:GetPlayers()) do
    if plr ~= player then
      local playerFrame = Instance.new("Frame")
      playerFrame.Size = UDim2.new(1, 0, 0, 40)
      playerFrame.Position = UDim2.new(0, 0, 0, #playerList:GetChildren() * 45)
      playerFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 35)
      playerFrame.Parent = playerList
      Instance.new("UICorner", playerFrame).CornerRadius = UDim.new(0, 6)
      
      local nameLabel = Instance.new("TextLabel")
      nameLabel.Size = UDim2.new(0.5, 0, 1, 0)
      nameLabel.Position = UDim2.new(0, 10, 0, 0)
      nameLabel.BackgroundTransparency = 1
      nameLabel.Text = plr.Name
      nameLabel.TextColor3 = Color3.new(1, 1, 1)
      nameLabel.Font = Enum.Font.GothamBold
      nameLabel.TextSize = 14
      nameLabel.Parent = playerFrame
      
      local moneyLabel = Instance.new("TextLabel")
      moneyLabel.Size = UDim2.new(0.5, 0, 1, 0)
      moneyLabel.Position = UDim2.new(0.5, 10, 0, 0)
      moneyLabel.BackgroundTransparency = 1
      moneyLabel.Text = "Money: 0"
      moneyLabel.TextColor3 = Color3.new(1, 1, 1)
      moneyLabel.Font = Enum.Font.GothamBold
      moneyLabel.TextSize = 14
      moneyLabel.Parent = playerFrame
      
      for _, v in pairs(plr:GetDescendants()) do
        if v:IsA("IntValue") or v:IsA("NumberValue") and string.find(string.lower(v.Name), "money") then
          moneyLabel.Text = "Money: " .. tostring(v.Value)
        end
      end
    end
  end
end

updatePlayerList()
Players.PlayerAdded:Connect(updatePlayerList)
Players.PlayerRemoving:Connect(updatePlayerList)

local autoEndTurnBtn = createButton("Auto End Turn", playersY, contentFrames[3])
playersY = playersY + 40
getgenv().fn.toggles.AutoEndTurn = false
autoEndTurnBtn.MouseButton1Click:Connect(function()
  getgenv().fn.toggles.AutoEndTurn = not getgenv().fn.toggles.AutoEndTurn
  if getgenv().fn.toggles.AutoEndTurn then
    autoEndTurnBtn.Text = "Auto End Turn ON"
    autoEndTurnBtn.BackgroundColor3 = Color3.fromRGB(0, 170, 60)
    task.spawn(function()
      while getgenv().fn.toggles.AutoEndTurn do
        local endRemote = findRemote(game.ReplicatedStorage, "endturn")
        if endRemote then
          pcall(function() endRemote:FireServer() end)
        end
        task.wait(2)
      end
    end)
  else
    autoEndTurnBtn.Text = "Auto End Turn OFF"
    autoEndTurnBtn.BackgroundColor3 = Color3.fromRGB(35, 35, 50)
  end
end)


UserInputService.InputChanged:Connect(function(input)
  if input.UserInputType == Enum.UserInputType.MouseMovement then
    local mouseRay = workspace.CurrentCamera:ScreenPointToRay(input.Position.X, input.Position.Y)
    local raycastParams = RaycastParams.new()
    raycastParams.FilterType = Enum.RaycastFilterType.Blacklist
    raycastParams.FilterDescendantsInstances = {player.Character}
    
    local raycastResult = workspace