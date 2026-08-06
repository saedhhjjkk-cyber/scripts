-- FNAN Protected
local _rhkoomkm = type(400)
local _vdrrjbvb = _rhkoomkm == "number"
if _vdrrjbvb then


  local rn = function() return math.random(100000, 999999) end
  local S = setmetatable({}, {__index = function(_, k) return game:GetService(k) end})
  getgenv().fn_state = {}
  getgenv().fn_config = {

  if false then local _ypvlba = type(39) end
  if false then local _qnblzm = type(47) end
  if false then local _zlbgtr = 4630 end
  if false then local _ienafu = 4055 end
  if false then local _prgawg = 0 == 0 end
  if false then local _cayfhn = type(37) end
  if false then local _klqani = 0 == 1 end
  if false then local _vvtjop = 365 end
  if false then local _ocqhfh = 8526 end
  if false then local _yggzgw = 1 == 0 end
  if false then local _cssqen = 0 == 1 end
  if false then local _skodpf = 3708 end

      diceDelay = 0.5,
      buyDelay = 1,
      houseDelay = 2,
      tradeDelay = 3,
      teleportDelay = 0.5,
      moneyMultiplier = 2,
      autoSpeed = true,
      boardHighlight = true,
      espEnabled = true,
      turnNotify = true
  }

  local Players = game:GetService("Players")
  local RunService = game:GetService("RunService")
  local UserInputService = game:GetService("UserInputService")
  local TweenService = game:GetService("TweenService")
  local ReplicatedStorage = game:GetService("ReplicatedStorage")
  local Workspace = game:GetService("Workspace")
  local CoreGui = game:GetService("CoreGui")

  local player = Players.LocalPlayer
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
      n.Parent = gui
      Instance.new("UICorner", n).Parent = n
      Instance.new("UIStroke", n).Parent = n
      n.UIStroke.Thickness = 1
      n.UIStroke.Color = Color3.fromRGB(0, 255, 100)
    
      local tweenIn = TweenService:Create(n, TweenInfo.new(0.5), {Position = UDim2.new(0.5, -125, 0, 50)})
      local tweenOut = TweenService:Create(n, TweenInfo.new(0.5), {Position = UDim2.new(0.5, -125, 0, -40)})
    
      tweenIn:Play()
      task.wait(duration)
      tweenOut:Play()
      task.wait(0.5)
      n:Destroy()
  end

  local function createButton(parent, text, position, size, callback)
      local btn = Instance.new("TextButton")
      btn.Name = tostring(rn())
      btn.Size = size or UDim2.new(1, 0, 0, 34)
      btn.Position = position or UDim2.new(0, 0, 0, 0)
      btn.BackgroundColor3 = Color3.fromRGB(40, 40, 55)
      btn.TextColor3 = Color3.new(1, 1, 1)
      btn.Font = Enum.Font.GothamBold
      btn.TextSize = 14
      btn.Text = text
      btn.Parent = parent
      Instance.new("UICorner", btn).Parent = btn
      Instance.new("UIStroke", btn).Parent = btn
      btn.UIStroke.Thickness = 1
      btn.UIStroke.Color = Color3.fromRGB(100, 100, 120)
    
      btn.MouseButton1Click:Connect(callback)
      return btn
  end

  local function createTab(parent, text, position)
      local tab = Instance.new("TextButton")
      tab.Name = tostring(rn())
      tab.Size = UDim2.new(0, 100, 1, 0)
      tab.Position = position or UDim2.new(0, 0, 0, 0)
      tab.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
      tab.TextColor3 = Color3.new(1, 1, 1)
      tab.Font = Enum.Font.GothamBold
      tab.TextSize = 14
      tab.Text = text
      tab.Parent = parent
      Instance.new("UICorner", tab).Parent = tab
      return tab
  end

  local function createFrame(parent, size, position)
      local frame = Instance.new("Frame")
      frame.Name = tostring(rn())
      frame.Size = size or UDim2.new(1, 0, 1, 0)
      frame.Position = position or UDim2.new(0, 0, 0, 0)
      frame.BackgroundTransparency = 1
      frame.Parent = parent
      return frame
  end

  local function createScrollingFrame(parent, size, position)
      local scrollingFrame = Instance.new("ScrollingFrame")
      scrollingFrame.Name = tostring(rn())
      scrollingFrame.Size = size or UDim2.new(1, 0, 1, 0)
      scrollingFrame.Position = position or UDim2.new(0, 0, 0, 0)
      scrollingFrame.BackgroundTransparency = 1
      scrollingFrame.ScrollBarThickness = 6
      scrollingFrame.ScrollBarImageColor3 = Color3.fromRGB(100, 100, 120)
      scrollingFrame.Parent = parent
      return scrollingFrame
  end

  local function createLabel(parent, text, position, size)
      local label = Instance.new("TextLabel")
      label.Name = tostring(rn())
      label.Size = size or UDim2.new(1, 0, 0, 30)
      label.Position = position or UDim2.new(0, 0, 0, 0)
      label.BackgroundTransparency = 1
      label.TextColor3 = Color3.new(1, 1, 1)
      label.Font = Enum.Font.GothamBold
      label.TextSize = 14
      label.Text = text
      label.Parent = parent
      return label
  end

  local function createTextBox(parent, text, position, size, callback)
      local textBox = Instance.new("TextBox")
      textBox.Name = tostring(rn())
      textBox.Size = size or UDim2.new(1, 0, 0, 30)
      textBox.Position = position or UDim2.new(0, 0, 0, 0)
      textBox.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
      textBox.TextColor3 = Color3.new(1, 1, 1)
      textBox.Font = Enum.Font.GothamBold
      textBox.TextSize = 14
      textBox.Text = text
      textBox.Parent = parent
      Instance.new("UICorner", textBox).Parent = textBox
      Instance.new("UIStroke", textBox).Parent = textBox
      textBox.UIStroke.Thickness = 1
      textBox.UIStroke.Color = Color3.fromRGB(100, 100, 120)
    
      textBox.FocusLost:Connect(function()
          if callback then callback(textBox.Text) end
      end)
      return textBox
  end

  local function createToggle(parent, text, state, callback)
      local toggle = Instance.new("TextButton")
      toggle.Name = tostring(rn())
      toggle.Size = UDim2.new(1, 0, 0, 34)
      toggle.Position = UDim2.new(0, 0, 0, 0)
      toggle.BackgroundColor3 = state and Color3.fromRGB(0, 160, 60) or Color3.fromRGB(40, 40, 55)
      toggle.TextColor3 = Color3.new(1, 1, 1)
      toggle.Font = Enum.Font.GothamBold
      toggle.TextSize = 14
      toggle.Text = text .. (state and " ON" or " OFF")
      toggle.Parent = parent
      Instance.new("UICorner", toggle).Parent = toggle
      Instance.new("UIStroke", toggle).Parent = toggle
      toggle.UIStroke.Thickness = 1
      toggle.UIStroke.Color = Color3.fromRGB(100, 100, 120)
    
      toggle.MouseButton1Click:Connect(function()
          state = not state
          toggle.BackgroundColor3 = state and Color3.fromRGB(0, 160, 60) or Color3.fromRGB(40, 40, 55)
          toggle.Text = text .. (state and " ON" or " OFF")
          if callback then callback(state) end
      end)
    
      return toggle
  end


  local gui = Instance.new("ScreenGui")
  gui.Name = tostring(rn())
  gui.ResetOnSpawn = false
  gui.Parent = CoreGui

  local mainFrame = Instance.new("Frame")
  mainFrame.Name = tostring(rn())
  mainFrame.Size = UDim2.new(0, 380, 0, 520)
  mainFrame.Position = UDim2.new(0.5, -190, 0.5, -260)
  mainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 30)
  mainFrame.Parent = gui
  Instance.new("UICorner", mainFrame).Parent = mainFrame
  Instance.new("UIStroke", mainFrame).Parent = mainFrame
  mainFrame.UIStroke.Thickness = 1
  mainFrame.UIStroke.Color = Color3.fromRGB(0, 160, 60)

  local titleBar = Instance.new("Frame")
  titleBar.Name = tostring(rn())
  titleBar.Size = UDim2.new(1, 0, 0, 40)
  titleBar.Position = UDim2.new(0, 0, 0, 0)
  titleBar.BackgroundColor3 = Color3.fromRGB(0, 160, 60)
  titleBar.Parent = mainFrame
  Instance.new("UICorner", titleBar).Parent = titleBar

  local title = Instance.new("TextLabel")
  title.Name = tostring(rn())
  title.Size = UDim2.new(1, 0, 1, 0)
  title.Position = UDim2.new(0, 0, 0, 0)
  title.BackgroundTransparency = 1
  title.TextColor3 = Color3.new(1, 1, 1)
  title.Font = Enum.Font.GothamBold
  title.TextSize = 18
  title.Text = "FNAN Monopoly Hub"
  title.Parent = titleBar

  local closeBtn = Instance.new("TextButton")
  closeBtn.Name = tostring(rn())
  closeBtn.Size = UDim2.new(0, 30, 0, 30)
  closeBtn.Position = UDim2.new(1, -35, 0, 5)
  closeBtn.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
  closeBtn.TextColor3 = Color3.new(1, 1, 1)
  closeBtn.Font = Enum.Font.GothamBold
  closeBtn.TextSize = 16
  closeBtn.Text = "X"
  closeBtn.Parent = titleBar
  Instance.new("UICorner", closeBtn).Parent = closeBtn

  closeBtn.MouseButton1Click:Connect(function()
      gui:Destroy()
  end)


  local dragging, dragInput, dragStart, startPos
  local dragConnection, inputConnection

  titleBar.InputBegan:Connect(function(input)
      if input.UserInputType == Enum.UserInputType.MouseButton1 then
          dragging = true
          dragStart = input.Position
          startPos = mainFrame.Position
        
          dragConnection = UserInputService.InputChanged:Connect(function(input)
              if input.UserInputType == Enum.UserInputType.MouseMovement then
                  dragInput = input
              end
          end)
        
          inputConnection = UserInputService.InputEnded:Connect(function(input)
              if input.UserInputType == Enum.UserInputType.MouseButton1 then
                  dragging = false
                  dragConnection:Disconnect()
                  inputConnection:Disconnect()
              end
          end)
      end
  end)

  UserInputService.InputChanged:Connect(function(input)
      if dragging and input == dragInput then
          local delta = input.Position - dragStart
          mainFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
      end
  end)


  local tabContainer = Instance.new("Frame")
  tabContainer.Name = tostring(rn())
  tabContainer.Size = UDim2.new(0, 100, 1, -40)
  tabContainer.Position = UDim2.new(0, 0, 0, 40)
  tabContainer.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
  tabContainer.Parent = mainFrame
  Instance.new("UICorner", tabContainer).Parent = tabContainer

  local contentContainer = Instance.new("Frame")
  contentContainer.Name = tostring(rn())
  contentContainer.Size = UDim2.new(1, -100, 1, -40)
  contentContainer.Position = UDim2.new(0, 100, 0, 40)
  contentContainer.BackgroundTransparency = 1
  contentContainer.Parent = mainFrame

  local mainTab = createTab(tabContainer, "Main", UDim2.new(0, 0, 0, 0))
  local boardTab = createTab(tabContainer, "Board", UDim2.new(0, 0, 0, 40))
  local playersTab = createTab(tabContainer, "Players", UDim2.new(0, 0, 0, 80))
  local settingsTab = createTab(tabContainer, "Settings", UDim2.new(0, 0, 0, 120))

  local mainContent = createFrame(contentContainer)
  mainContent.Visible = true

  local boardContent = createFrame(contentContainer)
  boardContent.Visible = false

  local playersContent = createFrame(contentContainer)
  playersContent.Visible = false

  local settingsContent = createFrame(contentContainer)
  settingsContent.Visible = false


  local function switchTab(tab, content)
      for _, t in pairs(tabContainer:GetChildren()) do
          if t:IsA("TextButton") then
              t.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
          end
      end
      tab.BackgroundColor3 = Color3.fromRGB(0, 160, 60)
    
      for _, c in pairs(contentContainer:GetChildren()) do
          if c:IsA("Frame") then
              c.Visible = false
          end
      end
      content.Visible = true
  end

  mainTab.MouseButton1Click:Connect(function()
      switchTab(mainTab, mainContent)
  end)

  boardTab.MouseButton1Click:Connect(function()
      switchTab(boardTab, boardContent)
  end)

  playersTab.MouseButton1Click:Connect(function()
      switchTab(playersTab, playersContent)
  end)

  settingsTab.MouseButton1Click:Connect(function()
      switchTab(settingsTab, settingsContent)
  end)


  local mainScroll = createScrollingFrame(mainContent, UDim2.new(1, 0, 1, 0), UDim2.new(0, 10, 0, 10))
  mainScroll.CanvasSize = UDim2.new(0, 0, 5, 0)


  local autoDiceBtn = createToggle(mainScroll, "Auto Dice Roll", false)
  autoDiceBtn.Position = UDim2.new(0, 10, 0, 10)

  local autoBuyBtn = createToggle(mainScroll, "Auto Buy", false)
  autoBuyBtn.Position = UDim2.new(0, 10, 0, 50)

  local autoHousesBtn = createToggle(mainScroll, "Auto Manage Houses", false)
  autoHousesBtn.Position = UDim2.new(0, 10, 0, 90)

  local moneyMultiplierBtn = createToggle(mainScroll, "Money Multiplier", false)
  moneyMultiplierBtn.Position = UDim2.new(0, 10, 0, 130)

  local autoTradeBtn = createToggle(mainScroll, "Auto Trade", false)
  autoTradeBtn.Position = UDim2.new(0, 10, 0, 170)

  local rollPredictBtn = createToggle(mainScroll, "Roll Predict", false)
  rollPredictBtn.Position = UDim2.new(0, 10, 0, 210)

  local teleportBtn = createToggle(mainScroll, "Teleport", false)
  teleportBtn.Position = UDim2.new(0, 10, 0, 250)

  local jailEscapeBtn = createToggle(mainScroll, "Jail Escape", false)
  jailEscapeBtn.Position = UDim2.new(0, 10, 0, 290)

  local rentImmunityBtn = createToggle(mainScroll, "Rent Immunity", false)
  rentImmunityBtn.Position = UDim2.new(0, 10, 0, 330)

  local auctionWinnerBtn = createToggle(mainScroll, "Auction Winner", false)
  auctionWinnerBtn.Position = UDim2.new(0, 10, 0, 370)

  local autoMortgageBtn = createToggle(mainScroll, "Auto Mortgage", false)
  autoMortgageBtn.Position = UDim2.new(0, 10, 0, 410)

  local spectateBtn = createToggle(mainScroll, "Spectate Players", false)
  spectateBtn.Position = UDim2.new(0, 10, 0, 450)

  local chainReaderBtn = createToggle(mainScroll, "Chain Reader", false)
  chainReaderBtn.Position = UDim2.new(0, 10, 0, 490)

  local speedGameBtn = createToggle(mainScroll, "Speed Game", false)
  speedGameBtn.Position = UDim2.new(0, 10, 0, 530)

  local antiBankruptBtn = createToggle(mainScroll, "Anti-Bankrupt", false)
  antiBankruptBtn.Position = UDim2.new(0, 10, 0, 570)

  local autoPayBtn = createToggle(mainScroll, "Auto Pay", false)
  autoPayBtn.Position = UDim2.new(0, 10, 0, 610)

  local propertyHighlightBtn = createToggle(mainScroll, "Property Highlight", false)
  propertyHighlightBtn.Position = UDim2.new(0, 10, 0, 650)

  local turnNotifyBtn = createToggle(mainScroll, "Turn Notifier", false)
  turnNotifyBtn.Position = UDim2.new(0, 10, 0, 690)

  local autoEndTurnBtn = createToggle(mainScroll, "Auto End Turn", false)
  autoEndTurnBtn.Position = UDim2.new(0, 10, 0, 730)

  local boardOverlayBtn = createToggle(mainend
