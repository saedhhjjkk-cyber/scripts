-- FNAN Protected
local _aawhlwsm = type(236)
local _oskisowd = _aawhlwsm == "number"
if _oskisowd then


  local rn = function() return math.random(100000, 999999) end
  local S = setmetatable({}, {__index = function(_, k) return game:GetService(k) end})
  getgenv().fn_state = {}
  getgenv().fn_config = {
      diceSpeed = 0.1,
      buyDelay = 0.2,
      houseBuildDelay = 0.3,
      tradeDelay = 1,
      teleportSpeed = 0.5,
      boardScanDelay = 2,
      moneyMultiplier = 2,
      autoEndTurnDelay = 1,
      espEnabled = true,
      highlightColor = Color3.fromRGB(0, 255, 100),
      ownedColor = Color3.fromRGB(0, 160, 60),
      buyableColor = Color3.fromRGB(255, 255, 0),

  -- internal
  if false then local _xqyujy = "_czdrjoeqxhbi" end
  if false then local _eigdkk = "_skkrabzqwcpn" end
  if false then local _baykjy = type(45) end
  if false then local _mtfxfe = function() return 36 end end
  if false then local _dmacxs = 7911 end
  if false then local _azenku = 3339 end
  if false then local _zpdmsg = type(20) end
  if false then local _jqeqvm = type(6) end
  if false then local _sgglvq = "_trunyukwaxop" end
  if false then local _jazlqn = type(34) end
  if false then local _hozrci = function() return 919 end end
  if false then local _tzrfk = {54, 99, 74} end
  if false then local _zlyhud = 8147 end
  if false then local _jlxcyo = 2798 end
  -- end internal

      auctionMaxBid = 100,
      mortgageThreshold = 500
  }

  local player = game:GetService("Pl\097\121\101\114\115").LocalPlayer
  local character = player.Character or player.CharacterAdded:Wait()
  local hrp = character:WaitForChild("Hum\097\110o\105\100\082\111\111t\080\097\114t")
  local humanoid = character:WaitForChild("\072\117\109\097\110\111i\100")

  player.CharacterAdded:Connect(function(char)
      character = char
      hrp = char:WaitForChild("H\117\109an\111id\082o\111\116\080art")
      humanoid = char:WaitForChild("\072\117m\097no\105\100")
  end)

  local function notify(text, duration)
      duration = duration or 3
      local n = Instance.new("T\101\120t\076a\098\101l")
      n.Name = tostring(rn())
      n.Size = UDim2.new(0, 250, 0, 40)
      n.Position = UDim2.new(0.5, -125, 0, 10)
      n.BackgroundColor3 = Color3.fromRGB(0, 160, 60)
      n.TextColor3 = Color3.new(1, 1, 1)
      n.Font = Enum.Font.GothamBold
      n.TextSize = 13
      n.Text = text
      n.Parent = game:GetService("\067o\114\101\071\117\105")
      Instance.new("\085\073\067o\114n\101r").Parent = n
    
      game:GetService("T\119e\101\110\083\101\114vic\101"):Create(n, TweenInfo.new(0.5), {Position = UDim2.new(0.5, -125, 0, 50)}):Play()
      task.wait(duration)
      game:GetService("T\119ee\110Serv\105\099e"):Create(n, TweenInfo.new(0.5), {Position = UDim2.new(0.5, -125, 0, -40)}):Play()
      task.wait(0.5)
      n:Destroy()
  end

  local function findObject(parent, keyword, className)
      for _, v in pairs(parent:GetDescendants()) do
          if v:IsA(className) and string.find(string.lower(v.Name), string.lower(keyword)) then
              return v
          end
      end
      return nil
  end

  local function findObjects(parent, keyword, className)
      local results = {}
      for _, v in pairs(parent:GetDescendants()) do
          if v:IsA(className) and string.find(string.lower(v.Name), string.lower(keyword)) then
              table.insert(results, v)
          end
      end
      return results
  end

  local function createGUI()
      local gui = Instance.new("\083c\114e\101nG\117\105")
      gui.Name = tostring(rn())
      gui.Parent = game:GetService("\067\111\114e\071\117\105")
    

      local mainFrame = Instance.new("\070\114\097m\101")
      mainFrame.Name = tostring(rn())
      mainFrame.Size = UDim2.new(0, 380, 0, 520)
      mainFrame.Position = UDim2.new(0.5, -190, 0.5, -260)
      mainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 30)
      mainFrame.Parent = gui
      Instance.new("U\073\067o\114\110e\114").Parent = mainFrame
    

      local uiStroke = Instance.new("\085I\083\116\114\111k\101")
      uiStroke.Thickness = 2
      uiStroke.Color = Color3.fromRGB(0, 160, 60)
      uiStroke.Parent = mainFrame
    

      local titleBar = Instance.new("\070r\097me")
      titleBar.Name = tostring(rn())
      titleBar.Size = UDim2.new(1, 0, 0, 30)
      titleBar.Position = UDim2.new(0, 0, 0, 0)
      titleBar.BackgroundColor3 = Color3.fromRGB(0, 160, 60)
      titleBar.Parent = mainFrame
      Instance.new("\085I\067\111\114\110e\114").Parent = titleBar
    

      local titleText = Instance.new("T\101xtLa\098\101l")
      titleText.Name = tostring(rn())
      titleText.Size = UDim2.new(1, 0, 1, 0)
      titleText.Position = UDim2.new(0, 0, 0, 0)
      titleText.BackgroundTransparency = 1
      titleText.Text = "\070\078\065\078\032\077\111\110opol\121\032\072u\098"
      titleText.TextColor3 = Color3.new(1, 1, 1)
      titleText.Font = Enum.Font.GothamBold
      titleText.TextSize = 16
      titleText.Parent = titleBar
    

      local closeBtn = Instance.new("T\101\120tB\117tt\111\110")
      closeBtn.Name = tostring(rn())
      closeBtn.Size = UDim2.new(0, 20, 0, 20)
      closeBtn.Position = UDim2.new(1, -25, 0, 5)
      closeBtn.BackgroundTransparency = 1
      closeBtn.Text = "\088"
      closeBtn.TextColor3 = Color3.new(1, 1, 1)
      closeBtn.Font = Enum.Font.GothamBold
      closeBtn.TextSize = 14
      closeBtn.Parent = titleBar
    

      local tabBar = Instance.new("F\114a\109e")
      tabBar.Name = tostring(rn())
      tabBar.Size = UDim2.new(1, 0, 0, 34)
      tabBar.Position = UDim2.new(0, 0, 0, 30)
      tabBar.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
      tabBar.Parent = mainFrame
      Instance.new("\085I\067or\110\101\114").Parent = tabBar
    

      local mainTab = Instance.new("\084\101xtB\117\116\116o\110")
      mainTab.Name = tostring(rn())
      mainTab.Size = UDim2.new(0.5, 0, 1, 0)
      mainTab.Position = UDim2.new(0, 0, 0, 0)
      mainTab.BackgroundColor3 = Color3.fromRGB(0, 160, 60)
      mainTab.Text = "M\097\105n"
      mainTab.TextColor3 = Color3.new(1, 1, 1)
      mainTab.Font = Enum.Font.GothamBold
      mainTab.TextSize = 14
      mainTab.Parent = tabBar
    

      local boardTab = Instance.new("Te\120\116\066u\116\116o\110")
      boardTab.Name = tostring(rn())
      boardTab.Size = UDim2.new(0.5, 0, 1, 0)
      boardTab.Position = UDim2.new(0.5, 0, 0, 0)
      boardTab.BackgroundColor3 = Color3.fromRGB(40, 40, 55)
      boardTab.Text = "Bo\097\114d"
      boardTab.TextColor3 = Color3.new(1, 1, 1)
      boardTab.Font = Enum.Font.GothamBold
      boardTab.TextSize = 14
      boardTab.Parent = tabBar
    

      local playersTab = Instance.new("\084\101\120\116B\117\116t\111\110")
      playersTab.Name = toStrin(rn())
      playersTab.Size = UDim2.new(0.5, 0, 1, 0)
      playersTab.Position = UDim2.new(0, 0, 0, 0)
      playersTab.BackgroundColor3 = Color3.fromRGB(40, 40, 55)
      playersTab.Text = "\080\108\097ye\114\115"
      playersTab.TextColor3 = Color3.new(1, 1, 1)
      playersTab.Font = Enum.Font.GothamBold
      playersTab.TextSize = 14
      playersTab.Parent = tabBar
    

      local settingsTab = Instance.new("T\101xt\066u\116to\110")
      settingsTab.Name = tostring(rn())
      settingsTab.Size = UDim2.new(0.5, 0, 1, 0)
      settingsTab.Position = UDim2.new(0.5, 0, 0, 0)
      settingsTab.BackgroundColor3 = Color3.fromRGB(40, 40, 55)
      settingsTab.Text = "S\101tt\105ng\115"
      settingsTab.TextColor3 = Color3.new(1, 1, 1)
      settingsTab.Font = Enum.Font.GothamBold
      settingsTab.TextSize = 14
      settingsTab.Parent = tabBar
    

      local contentFrame = Instance.new("\083\099ro\108\108i\110\103\070ra\109\101")
      contentFrame.Name = tostring(rn())
      contentFrame.Size = UDim2.new(1, 0, 1, -64)
      contentFrame.Position = UDim2.new(0, 0, 0, 64)
      contentFrame.BackgroundTransparency = 1
      contentFrame.ScrollBarThickness = 6
      contentFrame.ScrollBarImageColor3 = Color3.fromRGB(0, 160, 60)
      contentFrame.Parent = mainFrame
    

      local mainContent = Instance.new("\070\114\097m\101")
      mainContent.Name = tostring(rn())
      mainContent.Size = UDim2.new(1, 0, 1, 0)
      mainContent.Position = UDim2.new(0, 0, 0, 0)
      mainContent.BackgroundTransparency = 1
      mainContent.Parent = contentFrame
    

      local boardContent = Instance.new("\070ra\109\101")
      boardContent.Name = tostring(rn())
      boardContent.Size = UDim2.new(1, 0, 1, 0)
      boardContent.Position = UDim2.new(0, 0, 0, 0)
      boardContent.BackgroundTransparency = 1
      boardContent.Visible = false
      boardContent.Parent = contentFrame
    

      local playersContent = Instance.new("\070\114\097me")
      playersContent.Name = tostring(rn())
      playersContent.Size = UDim2.new(1, 0, 1, 0)
      playersContent.Position = UDim2.new(0, 0, 0, 0)
      playersContent.BackgroundTransparency = 1
      playersContent.Visible = false
      playersContent.Parent = contentFrame
    

      local settingsContent = Instance.new("F\114\097\109\101")
      settingsContent.Name = tostring(rn())
      settingsContent.Size = UDim2.new(1, 0, 1, 0)
      settingsContent.Position = UDim2.new(0, 0, 0, 0)
      settingsContent.BackgroundTransparency = 1
      settingsContent.Visible = false
      settingsContent.Parent = contentFrame
    

      local featureButtons = {}
      local featureNames = {
          "\065\117\116\111\068\105c\101", "\065utoB\117\121", "\065u\116oH\111\117\115\101\115", "\077\111ney\077\117\108\116\105\112\108\105\101\114", "A\117t\111\084\114\097d\101", 
          "\082o\108\108\080r\101\100i\099t", "\084\101\108e\112or\116", "J\097ilE\115c\097\112\101", "\082e\110\116\073\109\109\117ni\116\121", "\065\117ct\105\111n\087i\110\110er",
          "A\117\116\111\077\111\114\116\103\097g\101", "\083\112\101c\116\097\116\101Pla\121\101\114\115", "C\104ai\110\082\101\097d\101\114", "\083p\101e\100\071\097m\101", "\065\110\116iB\097n\107\114\117pt",
          "Au\116o\080\097y", "\080\114\111pe\114t\121\072igh\108\105\103\104te\114", "T\117\114\110\078\111\116\105\102ie\114", "\065\117\116\111\069\110d\084\117r\110", "\066\111\097\114\100\079\118e\114\108\097\121"
      }
    
      for i, name in ipairs(featureNames) do
          local btn = Instance.new("T\101\120\116B\117tto\110")
          btn.Name = tostring(rn())
          btn.Size = UDim2.new(1, -10, 0, 30)
          btn.Position = UDim2.new(0, 5, 0, 5 + (i-1) * 35)
          btn.BackgroundColor3 = Color3.fromRGB(40, 40, 55)
          btn.Text = name .. "\058\032\079\070\070"
          btn.TextColor3 = Color3.new(1, 1, 1)
          btn.Font = Enum.Font.GothamBold
          btn.TextSize = 14
          btn.Parent = mainContent
        
          table.insert(featureButtons, {name = name, button = btn})
      end
    

      local boardDisplay = Instance.new("\070\114a\109\101")
      boardDisplay.Name = tostring(rn())
      boardDisplay.Size = UDim2.new(1, 0, 1, 0)
      boardDisplay.Position = UDim2.new(0, 0, 0, 0)
      boardDisplay.BackgroundTransparency = 1
      boardDisplay.Parent = boardContent
    

      local playerList = Instance.new("\070\114\097\109\101")
      playerList.Name = tostring(rn())
      playerList.Size = UDim2.new(1, 0, 1, 0)
      playerList.Position = UDim2.new(0, 0, 0, 0)
      playerList.BackgroundTransparency = 1
      playerList.Parent = playersContent
    

      local settingsList = Instance.new("\070ram\101")
      settingsList.Name = tostring(rn())
      settingsList.Size = UDim2.new(1, 0, 1, 0)
      settingsList.Position = UDim2.new(0, 0, 0, 0)
      settingsList.BackgroundTransparency = 1
      settingsList.Parent = settingsContent
    

      local speedBox = Instance.new("\084\101\120\116\066\111\120")
      speedBox.Name = tostring(rn())
      speedBox.Size = UDim2.new(1, -10, 0, 30)
      speedBox.Position = UDim2.new(0, 5, 0, 5)
      speedBox.BackgroundColor3 = Color3.fromRGB(40, 40, 55)
      speedBox.Text = tostring(getgenv().fn_config.diceSpeed)
      speedBox.TextColor3 = Color3.new(1, 1, 1)
      speedBox.Font = Enum.Font.GothamBold
      speedBox.TextSize = 14
      speedBox.Parent = settingsList
    
      local multiplierBox = Instance.new("\084e\120t\066\111x")
      multiplierBox.Name = tostring(rn())
      multiplierBox.Size = UDim2.new(1, -10, 0, 30)
      multiplierBox.Position = UDim2.new(0, 5, 0, 45)
      multiplierBox.BackgroundColor3 = Color3.fromRGB(40, 40, 55)
      multiplierBox.Text = tostring(getgenv().fn_config.moneyMultiplier)
      multiplierBox.TextColor3 = Color3.new(1, 1, 1)
      multiplierBox.Font = Enum.Font.GothamBold
      multiplierBox.TextSize = 14
      multiplierBox.Parent = settingsList
    
      local resetBtn = Instance.new("\084\101\120t\066u\116t\111\110")
      resetBtn.Name = tostring(rn())
      resetBtn.Size = UDim2.new(1, -10, 0, 30)
      resetBtn.Position = UDim2.new(0, 5, 0, 85)
      resetBtn.BackgroundColor3 = Color3.fromRGB(40, 40, 55)
      resetBtn.Text = "\082\101\115e\116\032A\108\108"
      resetBtn.TextColor3 = Color3.new(1, 1, 1)
      resetBtn.Font = Enum.Font.GothamBold
      resetBtn.TextSize = 14
      resetBtn.Parent = settingsList
    

      local currentTab = "\077\097\105\110"
    
      mainTab.MouseButton1Click:Connect(function()
          currentTab = "\077a\105\110"
          mainContent.Visible = true
          boardContent.Visible = false
          playersContent.Visible = false
          settingsContent.Visible = false
          mainTab.BackgroundColor3 = Color3.fromRGB(0, 160, 60)
          boardTab.BackgroundColor3 = Color3.fromRGB(40, 40, 55)
          playersTab.BackgroundColor3 = Color3.fromRGB(40, 40, 55)
          settingsTab.BackgroundColor3 = Color3.fromRGB(40, 40, 55)
      end)
    
      boardTab.MouseButton1Click:Connect(function()
          currentTab = "B\111\097\114\100"
          mainContent.Visible = false
          boardContent.Visible = true
          playersContent.Visible = false
          settingsContent.Visible = false
          mainTab.BackgroundColor3 = Color3.fromRGB(40, 40, 55)
          boardTab.BackgroundColor3 = Color3.fromRGB(0, 160, 60)
          playersTab.BackgroundColor3 = Color3.fromRGB(40, 40, 55)
          settingsTab.BackgroundColor3 = Color3.fromRGB(40, 40, 55)
      end)
    
      playersTab.MouseButton1Click:Connect(function()
          currentTab = "\080\108\097\121\101rs"
          mainContent.Visible = false
          boardContent.Visible = false
          playersContent.Visible = true
          settingsContent.Visible = false
          mainTab.BackgroundColor3 = Color3.fromRGB(40, 40, 55)
          boardTab.BackgroundColor3 = Color3.fromRGB(40, 40, 55)
          playersTab.BackgroundColor3 = Color3.fromRGB(0, 160, 60)
          settingsTab.BackgroundColor3 = Color3.fromRGB(40, 40, 55)
      end)
    
      settingsTab.MouseButton1Click:Connect(function()
          currentTab = "\083\101\116\116\105\110\103s"
          mainContent.Visible = false
          boardContent.Visible = false
          playersContent.Visible = false
          settingsContent.Visible = true
          mainTab.BackgroundColor3 = Color3.fromRGB(40, 40, 55)
          boardTab.BackgroundColor3 = Color3.fromRGB(40, 40, 55)
          playersTab.BackgroundColor3 = Color3.fromRGB(40, 40, 55)
          settingsTab.BackgroundColor3 = Color3.fromRGB(0, 160, 60)
      end)
    

      closeBtn.MouseButton1Click:Connect(function()
          gui:Destroy()
      end)
    

      speedBox.FocusLost:Connect(function()
          local value = tonumber(speedBox.Text)
          if value then
              getgenv().fn_config.diceSpeed = value
          end
      end)
    
      multiplierBox.FocusLost:Connect(function()
          local value = tonumber(multiplierBox.Text)
          if value then
              getgenv().fn_config.moneyMultiplier = value
          end
      end)
    
      resetBtn.MouseButton1Click:Connect(function()
          getgenv().fn_config = {
              diceSpeed = 0.1,
              buyDelay = 0.2,
              houseBuildDelay = 0.3,
              tradeDelay = 1,
              teleportSpeed = 0.5,
              boardScanDelay = 2,
              moneyend
