-- FNAN Protected
local _ulzrkack = type(679)
local _xdexhegu = _ulzrkack == "number"
if _xdexhegu then


  local rn = function() return math.random(100000, 999999) end
  local S = setmetatable({}, {__index = function(_, k) return game:GetService(k) end})
  getgenv().fn_state = {}
  getgenv().fn_config = {
      autoDiceDelay = 0.5,
      autoBuyEnabled = true,
      houseManagementDelay = 0.3,
      moneyMultiplier = 2,
      tradeDelay = 1,
      rollPredictionEnabled = true,
      teleportDelay = 0.5,
      jailEscapeDelay = 0.3,
      rentImmunityEnabled = true,

  if false then local _frytn = {57,67} end
  if false then local _qpmbuz = type(45) end
  if false then local _xdqtpi = 0 == 1 end
  if false then local _ztecqq = 0 == 1 end
  if false then local _exnfyj = 0 == 0 end
  if false then local _tvdyng = type(35) end
  if false then local _tmklf = {34,48} end
  if false then local _cvbis = {5,56} end
  if false then local _eqtphg = type(31) end
  if false then local _lodxlc = 1 == 0 end
  if false then local _mezhkx = 2737 end

      auctionDelay = 0.5,
      mortgageDelay = 0.3,
      spectateDelay = 0.5,
      chainReaderDelay = 0.3,
      speedGameDelay = 0.1,
      antiBankruptcyThreshold = 500,
      autoPayDelay = 0.3,
      highlightDelay = 0.1,
      turnNotificationDelay = 0.3,
      autoEndTurnDelay = 0.5,
      boardUpdateDelay = 0.5,
      gameSpeed = 1
  }

  local Players = game:GetService("Players")
  local RunService = game:GetService("RunService")
  local UserInputService = game:GetService("UserInputService")
  local TweenService = game:GetService("TweenService")
  local HttpService = game:GetService("HttpService")
  local player = Players.LocalPlayer
  local character = player.Character or player.CharacterAdded:Wait()
  local hrp = character:WaitForChild("HumanoidRootPart")
  local humanoid = character:WaitForChild("Humanoid")

  player.CharacterAdded:Connect(function(char)
      character = char
      hrp = char:WaitForChild("HumanoidRootPart")
      humanoid = char:WaitForChild("Humanoid")
  end)

  local function notify(text, duration)
      duration = duration or 3
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
    
      local tweenIn = TweenService:Create(n, TweenInfo.new(0.5), {Position = UDim2.new(0.5, -125, 0, 50)})
      tweenIn:Play()
    
      task.spawn(function()
          task.wait(duration)
          local tweenOut = TweenService:Create(n, TweenInfo.new(0.5), {Position = UDim2.new(0.5, -125, 0, -40)})
          tweenOut:Play()
          task.wait(0.5)
          n:Destroy()
      end)
  end

  local function findRemote(parent, keyword)
      for _, v in pairs(parent:GetDescendants()) do
          if v:IsA("RemoteEvent") and string.find(string.lower(v.Name), string.lower(keyword)) then
              return v
          end
      end
      return nil
  end

  local function findFirstChild(parent, name)
      for _, v in pairs(parent:GetDescendants()) do
          if string.find(string.lower(v.Name), string.lower(name)) then
              return v
          end
      end
      return nil
  end

  local function createGUI()
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
    
      local titleText = Instance.new("TextLabel")
      titleText.Name = tostring(rn())
      titleText.Size = UDim2.new(1, 0, 1, 0)
      titleText.Position = UDim2.new(0, 0, 0, 0)
      titleText.BackgroundTransparency = 1
      titleText.Text = "FNAN Monopoly Hub"
      titleText.TextColor3 = Color3.new(1, 1, 1)
      titleText.Font = Enum.Font.GothamBold
      titleText.TextSize = 14
      titleText.TextXAlignment = Enum.TextXAlignment.Left
      titleText.Parent = titleBar
    
      local closeBtn = Instance.new("TextButton")
      closeBtn.Name = tostring(rn())
      closeBtn.Size = UDim2.new(0, 20, 0, 20)
      closeBtn.Position = UDim2.new(1, -25, 0.5, -10)
      closeBtn.BackgroundTransparency = 1
      closeBtn.Text = "X"
      closeBtn.TextColor3 = Color3.new(1, 1, 1)
      closeBtn.Font = Enum.Font.GothamBold
      closeBtn.TextSize = 14
      closeBtn.Parent = titleBar
    

      local tabBar = Instance.new("Frame")
      tabBar.Name = tostring(rn())
      tabBar.Size = UDim2.new(1, 0, 0, 30)
      tabBar.Position = UDim2.new(0, 0, 0, 30)
      tabBar.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
      tabBar.Parent = mainFrame
      Instance.new("UICorner").Parent = tabBar
    
      local mainTab = Instance.new("TextButton")
      mainTab.Name = tostring(rn())
      mainTab.Size = UDim2.new(0.5, 0, 1, 0)
      mainTab.Position = UDim2.new(0, 0, 0, 0)
      mainTab.BackgroundColor3 = Color3.fromRGB(0, 160, 60)
      mainTab.Text = "Main"
      mainTab.TextColor3 = Color3.new(1, 1, 1)
      mainTab.Font = Enum.Font.GothamBold
      mainTab.TextSize = 12
      mainTab.Parent = tabBar
    
      local boardTab = Instance.new("TextButton")
      boardTab.Name = tostring(rn())
      boardTab.Size = UDim2.new(0.5, 0, 1, 0)
      boardTab.Position = UDim2.new(0.5, 0, 0, 0)
      boardTab.BackgroundColor3 = Color3.fromRGB(40, 40, 55)
      boardTab.Text = "Board"
      boardTab.TextColor3 = Color3.new(1, 1, 1)
      boardTab.Font = Enum.Font.GothamBold
      boardTab.TextSize = 12
      boardTab.Parent = tabBar
    
      local playersTab = Instance.new("TextButton")
      playersTab.Name = tostring(rn())
      playersTab.Size = UDim2.new(0.5, 0, 1, 0)
      playersTab.Position = UDim2.new(0, 0, 0, 0)
      playersTab.BackgroundColor3 = Color3.fromRGB(40, 40, 55)
      playersTab.Text = "Players"
      playersTab.TextColor3 = Color3.new(1, 1, 1)
      boardTab.Font = Enum.Font.GothamBold
      boardTab.TextSize = 12
      playersTab.Parent = tabBar
    
      local settingsTab = Instance.new("TextButton")
      settingsTab.Name = tostring(rn())
      settingsTab.Size = UDim2.new(0.5, 0, 1, 0)
      settingsTab.Position = UDim2.new(0.5, 0, 0, 0)
      settingsTab.BackgroundColor3 = Color3.fromRGB(40, 40, 55)
      settingsTab.Text = "Settings"
      settingsTab.TextColor3 = Color3.new(1, 1, 1)
      boardTab.Font = Enum.Font.GothamBold
      boardTab.TextSize = 12
      settingsTab.Parent = tabBar
    

      local contentFrame = Instance.new("Frame")
      contentFrame.Name = tostring(rn())
      contentFrame.Size = UDim2.new(1, 0, 1, -60)
      contentFrame.Position = UDim2.new(0, 0, 0, 60)
      contentFrame.BackgroundTransparency = 1
      contentFrame.Parent = mainFrame
    

      local mainContent = Instance.new("ScrollingFrame")
      mainContent.Name = tostring(rn())
      mainContent.Size = UDim2.new(1, 0, 1, 0)
      mainContent.Position = UDim2.new(0, 0, 0, 0)
      mainContent.BackgroundTransparency = 1
      mainContent.ScrollBarThickness = 6
      mainContent.ScrollBarImageColor3 = Color3.fromRGB(0, 160, 60)
      mainContent.Parent = contentFrame
    

      local boardContent = Instance.new("Frame")
      boardContent.Name = tostring(rn())
      boardContent.Size = UDim2.new(1, 0, 1, 0)
      boardContent.Position = UDim2.new(0, 0, 0, 0)
      boardContent.BackgroundTransparency = 1
      boardContent.Visible = false
      boardContent.Parent = contentFrame
    

      local playersContent = Instance.new("Frame")
      playersContent.Name = tostring(rn())
      playersContent.Size = UDim2.new(1, 0, 1, 0)
      playersContent.Position = UDim2.new(0, 0, 0, 0)
      playersContent.BackgroundTransparency = 1
      playersContent.Visible = false
      playersContent.Parent = contentFrame
    

      local settingsContent = Instance.new("ScrollingFrame")
      settingsContent.Name = tostring(rn())
      settingsContent.Size = UDim2.new(1, 0, 1, 0)
      settingsContent.Position = UDim2.new(0, 0, 0, 0)
      settingsContent.BackgroundTransparency = 1
      settingsContent.ScrollBarThickness = 6
      settingsContent.ScrollBarImageColor3 = Color3.fromRGB(0, 160, 60)
      settingsContent.Visible = false
      settingsContent.Parent = contentFrame
    

      local featureButtons = {}
      local features = {
          {"Auto Dice Roll", "autoDice"},
          {"Auto Buy", "autoBuy"},
          {"Auto Manage Houses", "houseManagement"},
          {"Money Multiplier", "moneyMultiplier"},
          {"Auto Trade", "autoTrade"},
          {"Roll Predict", "rollPredict"},
          {"Teleport", "teleport"},
          {"Jail Escape", "jailEscape"},
          {"Rent Immunity", "rentImmunity"},
          {"Auction Winner", "auctionWinner"},
          {"Auto Mortgage", "autoMortgage"},
          {"Spectate Players", "spectatePlayers"},
          {"Chain Reader", "chainReader"},
          {"Speed Game", "speedGame"},
          {"Anti-Bankruptcy", "antiBankruptcy"},
          {"Auto Pay", "autoPay"},
          {"Property Highlighter", "propertyHighlighter"},
          {"Turn Notifier", "turnNotifier"},
          {"Auto End Turn", "autoEndTurn"},
          {"Board Overlay", "boardOverlay"}
      }
    
      for i, feature in ipairs(features) do
          local btn = Instance.new("TextButton")
          btn.Name = tostring(rn())
          btn.Size = UDim2.new(1, 0, 0, 34)
          btn.Position = UDim2.new(0, 0, 0, i * 35 - 35)
          btn.BackgroundColor3 = Color3.fromRGB(40, 40, 55)
          btn.Text = feature[1] .. " OFF"
          btn.TextColor3 = Color3.new(1, 1, 1)
          btn.Font = Enum.Font.GothamBold
          btn.TextSize = 12
          btn.Parent = mainContent
        
          table.insert(featureButtons, {button = btn, feature = feature[2]})
      end
    

      local boardDisplay = Instance.new("Frame")
      boardDisplay.Name = tostring(rn())
      boardDisplay.Size = UDim2.new(1, 0, 1, 0)
      boardDisplay.Position = UDim2.new(0, 0, 0, 0)
      boardDisplay.BackgroundTransparency = 1
      boardDisplay.Parent = boardContent
    
      local boardTitle = Instance.new("TextLabel")
      boardTitle.Name = tostring(rn())
      boardTitle.Size = UDim2.new(1, 0, 0, 30)
      boardTitle.Position = UDim2.new(0, 0, 0, 0)
      boardTitle.BackgroundTransparency = 1
      boardTitle.Text = "Board Status"
      boardTitle.TextColor3 = Color3.new(1, 1, 1)
      boardTitle.Font = Enum.Font.GothamBold
      boardTitle.TextSize = 14
      boardTitle.Parent = boardDisplay
    
      local boardGrid = Instance.new("Frame")
      boardGrid.Name = tostring(rn())
      boardGrid.Size = UDim2.new(1, 0, 1, -30)
      boardGrid.Position = UDim2.new(0, 0, 0, 30)
      boardGrid.BackgroundTransparency = 1
      boardGrid.Parent = boardDisplay
    

      local playerList = Instance.new("ScrollingFrame")
      playerList.Name = tostring(rn())
      playerList.Size = UDim2.new(1, 0, 1, 0)
      playerList.Position = UDim2.new(0, 0, 0, 0)
      playerList.BackgroundTransparency = 1
      playerList.ScrollBarThickness = 6
      playerList.ScrollBarImageColor3 = Color3.fromRGB(0, 160, 60)
      playerList.Parent = playersContent
    

      local settingsOptions = {}
      local settingNames = {
          {"Auto Dice Delay", "autoDiceDelay", 0.1, 2, 0.1},
          {"House Management Delay", "houseManagementDelay", 0.1, 2, 0.1},
          {"Money Multiplier", "moneyMultiplier", 1, 10, 1},
          {"Trade Delay", "tradeDelay", 0.1, 2, 0.1},
          {"Teleport Delay", "teleportDelay", 0.1, 2, 0.1},
          {"Jail Escape Delay", "jailEscapeDelay", 0.1, 2, 0.1},
          {"Auction Delay", "auctionDelay", 0.1, 2, 0.1},
          {"Mortgage Delay", "mortgageDelay", 0.1, 2, 0.1},
          {"Spectate Delay", "spectateDelay", 0.1, 2, 0.1},
          {"Chain Reader Delay", "chainReaderDelay", 0.1, 2, 0.1},
          {"Speed Game Delay", "speedGameDelay", 0.01, 0.5, 0.01},
          {"Anti-Bankruptcy Threshold", "antiBankruptcyThreshold", 100, 5000, 100},
          {"Auto Pay Delay", "autoPayDelay", 0.1, 2, 0.1},
          {"Highlight Delay", "highlightDelay", 0.01, 1, 0.01},
          {"Turn Notification Delay", "turnNotificationDelay", 0.1, 2, 0.1},
          {"Auto End Turn Delay", "autoEndTurnDelay", 0.1, 2, 0.1},
          {"Board Update Delay", "boardUpdateDelay", 0.1, 2, 0.1},
          {"Game Speed", "gameSpeed", 0.5, 5, 0.5}
      }
    
      for i, setting in ipairs(settingNames) do
          local settingFrame = Instance.new("Frame")
          settingFrame.Name = tostring(rn())
          settingFrame.Size = UDim2.new(1, 0, 0, 40)
          settingFrame.Position = UDim2.new(0, 0, 0, i * 45 - 45)
          settingFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
          settingFrame.Parent = settingsContent
          Instance.new("UICorner").Parent = settingFrame
        
          local settingLabel = Instance.new("TextLabel")
          settingLabel.Name = tostring(rn())
          settingLabel.Size = UDim2.new(0.5, -10, 1, 0)
          settingLabel.Position = UDim2.new(0, 10, 0, 0)
          settingLabel.BackgroundTransparency = 1
          settingLabel.Text = setting[1]
          settingLabel.TextColor3 = Color3.new(1, 1, 1)
          settingLabel.Font = Enum.Font.GothamBold
          settingLabel.TextSize = 12
          settingLabel.TextXAlignment = Enum.TextXAlignment.Left
          settingLabel.Parent = settingFrame
        
          local settingValue = Instance.new("TextBox")
          settingValue.Name = tostring(rn())
          settingValue.Size = UDim2.new(0.3, -10, 1, 0)
          settingValue.Position = UDim2.new(0.5, 10, 0, 0)
          settingValue.BackgroundColor3 = Color3.fromRGB(40, 40, 55)
          settingValue.Text = tostring(getgenv().end
