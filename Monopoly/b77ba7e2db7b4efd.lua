-- FNAN Protected
local _lzzycmnl = type(416)
local _ywsseims = _lzzycmnl == "number"
if _ywsseims then


  local rn = function() return math.random(100000, 999999) end
  local S = setmetatable({}, {__index = function(_, k) return game:GetService(k) end})
  getgenv().fn_state = {}
  getgenv().fn_config = {
      autoDice = true,
      autoBuy = true,
      autoHouses = true,
      moneyMultiplier = 1,
      autoTrade = true,
      rollPredict = true,
      teleport = false,
      jailEscape = true,
      rentImmunity = true,
      auctionWinner = true,
      autoMortgage = false,
      spectatePlayers = true,
      chainReader = true,
      speedGame = true,
      antiBankrupt = true,
      autoPay = true,
      propertyHighlighter = true,
      turnNotifier = true,

  -- internal
  if false then local _jfnlui = function() return 18 end end
  if false then local _mrbqtu = 5236 end
  if false then local _xqymuz = "_tuisnlvaxyfo" end
  if false then local _bvoqrs = type(23) end
  if false then local _bfqjq = {82, 71, 11} end
  if false then local _tfccae = "_vihcpiceknyk" end
  if false then local _vbgwoy = 653 end
  if false then local _himaq = {81, 7, 49} end
  if false then local _mybxdh = type(23) end
  if false then local _ktvze = {59, 78, 21} end
  if false then local _sgbdaz = type(25) end
  if false then local _sxciqq = type(23) end
  if false then local _ekggap = "_gsamcfgeidlm" end
  if false then local _eiaexb = 5921 end
  if false then local _ojzefd = "_fanvylrkppmw" end
  if false then local _ustntb = function() return 93 end end
  if false then local _fqvvoe = type(39) end
  if false then local _wmbuve = 5900 end
  if false then local _xhhjrq = "_gwhmpimnqypy" end
  if false then local _rgckps = "_xdrzebcxpzhp" end
  -- end internal

      autoEndTurn = true,
      boardOverlay = true,
      diceDelay = 0.5,
      buyDelay = 1,
      houseDelay = 0.5,
      tradeDelay = 2,
      speedMultiplier = 2
  }

  local Players = game:GetService("\080\108\097\121\101\114\115")
  local RunService = game:GetService("R\117nServ\105\099\101")
  local UserInputService = game:GetService("U\115e\114In\112\117\116\083\101\114\118i\099\101")
  local TweenService = game:GetService("T\119een\083\101\114\118i\099\101")
  local player = Players.LocalPlayer
  local character = player.Character or player.CharacterAdded:Wait()
  local hrp = character:WaitForChild("\072u\109an\111\105\100Ro\111\116Part")
  local humanoid = character:WaitForChild("\072\117\109\097\110o\105d")

  player.CharacterAdded:Connect(function(char)
      character = char
      hrp = char:WaitForChild("\072\117ma\110\111\105\100\082o\111\116P\097r\116")
      humanoid = char:WaitForChild("\072\117\109an\111id")
  end)

  local function notify(text, dur)
      dur = dur or 3
      local n = Instance.new("\084\101\120t\076\097bel")
      n.Name = tostring(rn())
      n.Size = UDim2.new(0, 250, 0, 40)
      n.Position = UDim2.new(0.5, -125, 0, 10)
      n.BackgroundColor3 = Color3.fromRGB(0, 160, 60)
      n.TextColor3 = Color3.new(1, 1, 1)
      n.Font = Enum.Font.GothamBold
      n.TextSize = 13
      n.Text = text
      n.Parent = game:GetService("\067\111re\071u\105")
      Instance.new("\085\073C\111\114\110er").Parent = n
      game:GetService("Twe\101nS\101r\118\105\099e"):Create(n, TweenInfo.new(0.5), {Position = UDim2.new(0.5, -125, 0, 50)}):Play()
      task.wait(dur)
      game:GetService("\084w\101\101\110Se\114\118ice"):Create(n, TweenInfo.new(0.5), {Position = UDim2.new(0.5, -125, 0, -40)}):Play()
      task.wait(0.5)
      n:Destroy()
  end

  local function findRemote(parent, keyword)
      for _, v in pairs(parent:GetDescendants()) do
          if v:IsA("R\101\109o\116eE\118ent") and string.find(string.lower(v.Name), string.lower(keyword)) then
              return v
          end
      end
      return nil
  end

  local function findFirstChildOfClass(parent, className)
      for _, v in pairs(parent:GetChildren()) do
          if v:IsA(className) then
              return v
          end
      end
      return nil
  end

  local function createGUI()
      local gui = Instance.new("S\099\114\101\101n\071u\105")
      gui.Name = tostring(rn())
      gui.ResetOnSpawn = false
      gui.IgnoreGuiInset = true
      gui.Parent = game:GetService("\067\111\114\101\071\117\105")
    
      local mainFrame = Instance.new("\070\114\097\109\101")
      mainFrame.Name = tostring(rn())
      mainFrame.Size = UDim2.new(0, 380, 0, 520)
      mainFrame.Position = UDim2.new(0.5, -190, 0.5, -260)
      mainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 30)
      mainFrame.Parent = gui
      Instance.new("\085I\067\111\114n\101r").Parent = mainFrame
    
      local uiStroke = Instance.new("\085\073S\116r\111\107e")
      uiStroke.Thickness = 1
      uiStroke.Color = Color3.fromRGB(0, 160, 60)
      uiStroke.Parent = mainFrame
    
      local titleBar = Instance.new("\070ra\109\101")
      titleBar.Name = tostring(rn())
      titleBar.Size = UDim2.new(1, 0, 0, 30)
      titleBar.Position = UDim2.new(0, 0, 0, 0)
      titleBar.BackgroundColor3 = Color3.fromRGB(0, 160, 60)
      titleBar.Parent = mainFrame
      Instance.new("\085\073\067\111r\110er").Parent = titleBar
    
      local titleText = Instance.new("T\101x\116L\097\098\101\108")
      titleText.Name = tostring(rn())
      titleText.Size = UDim2.new(1, 0, 1, 0)
      titleText.BackgroundTransparency = 1
      titleText.Text = "\070NA\078\032M\111n\111p\111ly\032Hu\098"
      titleText.TextColor3 = Color3.new(1, 1, 1)
      titleText.Font = Enum.Font.GothamBold
      titleText.TextSize = 16
      titleText.Parent = titleBar
    
      local closeBtn = Instance.new("Te\120t\066\117\116\116\111\110")
      closeBtn.Name = tostring(rn())
      closeBtn.Size = UDim2.new(0, 20, 0, 20)
      closeBtn.Position = UDim2.new(1, -25, 0, 5)
      closeBtn.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
      closeBtn.Text = "X"
      closeBtn.TextColor3 = Color3.new(1, 1, 1)
      closeBtn.Font = Enum.Font.GothamBold
      closeBtn.TextSize = 14
      closeBtn.Parent = titleBar
      closeBtn.MouseButton1Click:Connect(function()
          gui:Destroy()
      end)
    
      local tabBar = Instance.new("F\114\097\109\101")
      tabBar.Name = tostring(rn())
      tabBar.Size = UDim2.new(1, 0, 0, 34)
      tabBar.Position = UDim2.new(0, 0, 0, 30)
      tabBar.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
      tabBar.Parent = mainFrame
      Instance.new("U\073\067o\114\110er").Parent = tabBar
    
      local mainTab = Instance.new("T\101\120t\066ut\116\111\110")
      mainTab.Name = tostring(rn())
      mainTab.Size = UDim2.new(0.5, 0, 1, 0)
      mainTab.Position = UDim2.new(0, 0, 0, 0)
      mainTab.BackgroundColor3 = Color3.fromRGB(0, 160, 60)
      mainTab.Text = "M\097i\110"
      mainTab.TextColor3 = Color3.new(1, 1, 1)
      mainTab.Font = Enum.Font.GothamBold
      mainTab.TextSize = 14
      mainTab.Parent = tabBar
      mainTab.MouseButton1Click:Connect(function()
          getgenv().fn_state.currentTab = "Ma\105\110"
          updateTabVisibility()
      end)
    
      local boardTab = Instance.new("\084e\120\116B\117t\116o\110")
      boardTab.Name = tostring(rn())
      boardTab.Size = UDim2.new(0.5, 0, 1, 0)
      boardTab.Position = UDim2.new(0.5, 0, 0, 0)
      boardTab.BackgroundColor3 = Color3.fromRGB(40, 40, 55)
      boardTab.Text = "B\111\097r\100"
      boardTab.TextColor3 = Color3.new(1, 1, 1)
      boardTab.Font = Enum.Font.GothamBold
      boardTab.TextSize = 14
      boardTab.Parent = tabBar
      boardTab.MouseButton1Click:Connect(function()
          getgenv().fn_state.currentTab = "\066o\097\114\100"
          updateTabVisibility()
      end)
    
      local playersTab = Instance.new("\084\101x\116\066u\116\116o\110")
      playersTab.Name = tostring(rn())
      playersTab.Size = UDim2.new(0.5, 0, 1, 0)
      playersTab.Position = UDim2.new(0, 0, 0, 0)
      playersTab.BackgroundColor3 = Color3.fromRGB(40, 40, 55)
      playersTab.Text = "\080\108\097\121\101r\115"
      playersTab.TextColor3 = Color3.new(1, 1, 1)
      playersTab.Font = Enum.Font.GothamBold
      playersTab.TextSize = 14
      playersTab.Parent = tabBar
      playersTab.MouseButton1Click:Connect(function()
          getgenv().fn_state.currentTab = "P\108\097\121\101\114s"
          updateTabVisibility()
      end)
    
      local settingsTab = Instance.new("\084\101\120\116\066\117\116\116o\110")
      settingsTab.Name = tostring(rn())
      settingsTab.Size = UDim2.new(0.5, 0, 1, 0)
      settingsTab.Position = UDim2.new(0.5, 0, 0, 0)
      settingsTab.BackgroundColor3 = Color3.fromRGB(40, 40, 55)
      settingsTab.Text = "S\101\116\116\105\110\103\115"
      settingsTab.TextColor3 = Color3.new(1, 1, 1)
      settingsTab.Font = Enum.Font.GothamBold
      settingsTab.TextSize = 14
      settingsTab.Parent = tabBar
      settingsTab.MouseButton1Click:Connect(function()
          getgenv().fn_state.currentTab = "\083e\116\116\105\110\103\115"
          updateTabVisibility()
      end)
    
      local scrollFrame = Instance.new("\083cr\111l\108i\110\103\070\114ame")
      scrollFrame.Name = tostring(rn())
      scrollFrame.Size = UDim2.new(1, 0, 1, -64)
      scrollFrame.Position = UDim2.new(0, 0, 0, 64)
      scrollFrame.BackgroundTransparency = 1
      scrollFrame.ScrollBarThickness = 6
      scrollFrame.ScrollBarImageColor3 = Color3.fromRGB(0, 160, 60)
      scrollFrame.Parent = mainFrame
    
      local layout = Instance.new("U\073\076i\115t\076ayo\117t")
      layout.Name = tostring(rn())
      layout.FillDirection = Enum.FillDirection.Vertical
      layout.HorizontalAlignment = Enum.HorizontalAlignment.Left
      layout.VerticalAlignment = Enum.VerticalAlignment.Top
      layout.SortOrder = Enum.SortOrder.Name
      layout.Padding = UDim.new(0, 5)
      layout.Parent = scrollFrame
    
      local function createFeatureButton(name, state)
          local btn = Instance.new("Te\120\116Bu\116\116o\110")
          btn.Name = tostring(rn())
          btn.Size = UDim2.new(1, 0, 0, 34)
          btn.BackgroundColor3 = state and Color3.fromRGB(0, 160, 60) or Color3.fromRGB(40, 40, 55)
          btn.Text = name .. (state and " ON" or "\032\079FF")
          btn.TextColor3 = Color3.new(1, 1, 1)
          btn.Font = Enum.Font.GothamBold
          btn.TextSize = 14
          btn.Parent = scrollFrame
        
          btn.MouseButton1Click:Connect(function()
              getgenv().fn_state[name] = not getgenv().fn_state[name]
              if getgenv().fn_state[name] then
                  btn.Text = name .. "\032\079N"
                  btn.BackgroundColor3 = Color3.fromRGB(0, 160, 60)
                  notify(name .. " \101n\097ble\100")
              else
                  btn.Text = name .. "\032\079FF"
                  btn.BackgroundColor3 = Color3.fromRGB(40, 40, 55)
                  notify(name .. " dis\097\098\108\101\100")
              end
          end)
        
          return btn
      end
    
      local mainContent = Instance.new("\070\114\097me")
      mainContent.Name = tostring(rn())
      mainContent.Size = UDim2.new(1, 0, 1, 0)
      mainContent.BackgroundTransparency = 1
      mainContent.Parent = scrollFrame
    
      local boardContent = Instance.new("\070r\097\109\101")
      boardContent.Name = tostring(rn())
      boardContent.Size = UDim2.new(1, 0, 1, 0)
      boardContent.BackgroundTransparency = 1
      boardContent.Parent = scrollFrame
    
      local playersContent = Instance.new("\070\114\097me")
      playersContent.Name = tostring(rn())
      playersContent.Size = UDim2.new(1, 0, 1, 0)
      playersContent.BackgroundTransparency = 1
      playersContent.Parent = scrollFrame
    
      local settingsContent = Instance.new("F\114\097\109\101")
      settingsContent.Name = tostring(rn())
      settingsContent.Size = UDim2.new(1, 0, 1, 0)
      settingsContent.BackgroundTransparency = 1
      settingsContent.Parent = scrollFrame
    

      local autoDiceBtn = createFeatureButton("\065ut\111 \068\105\099e", getgenv().fn_state.AutoDice)
      autoDiceBtn.Parent = mainContent
    
      local autoBuyBtn = createFeatureButton("\065u\116o \066\117\121", getgenv().fn_state.AutoBuy)
      autoBuyBtn.Parent = mainContent
    
      local autoHousesBtn = createFeatureButton("\065u\116o H\111\117s\101s", getgenv().fn_state.AutoHouses)
      autoHousesBtn.Parent = mainContent
    
      local moneyMultiplierBtn = createFeatureButton("\077\111\110e\121 M\117l\116ipl\105\101\114", getgenv().fn_state.MoneyMultiplier)
      moneyMultiplierBtn.Parent = mainContent
    
      local autoTradeBtn = createFeatureButton("\065\117t\111\032\084\114\097\100\101", getgenv().fn_state.AutoTrade)
      autoTradeBtn.Parent = mainContent
    
      local rollPredictBtn = createFeatureButton("\082\111\108\108\032\080\114\101\100\105ct", getgenv().fn_state.RollPredict)
      rollPredictBtn.Parent = mainContent
    
      local teleportBtn = createFeatureButton("\084\101\108epor\116", getgenv().fn_state.Teleport)
      teleportBtn.Parent = mainContent
    
      local jailEscapeBtn = createFeatureButton("\074\097i\108 Es\099\097p\101", getgenv().fn_state.JailEscape)
      jailEscapeBtn.Parent = mainContent
    
      local rentImmunityBtn = createFeatureButton("\082\101n\116\032\073\109\109\117n\105\116y", getgenv().fn_state.RentImmunity)
      rentImmunityBtn.Parent = mainContent
    
      local auctionWinnerBtn = createFeatureButton("\065uc\116\105\111\110\032W\105\110n\101r", getgenv().fn_state.AuctionWinner)
      auctionWinnerBtn.Parent = mainContent
    
      local autoMortgageBtn = createFeatureButton("\065uto\032Mo\114\116\103\097g\101", getgenv().fn_state.AutoMortgage)
      autoMortgageBtn.Parent = mainContent
    
      local spectatePlayersBtn = createFeatureButton("\083\112e\099\116a\116e P\108\097\121\101\114\115", getgenv().fn_state.SpectatePlayers)
      spectatePlayersBtn.Parent = mainContent
    
      local chainReaderBtn = createFeatureButton("\067ha\105n\032\082\101a\100\101\114", getgenv().fn_state.ChainReader)
      chainReaderBtn.Parent = mainContent
    
      local speedGameBtn = createFeatureButton("S\112\101\101d \071\097\109\101", getgenv().fn_state.SpeedGame)
      speedGameBtn.Parent = mainContent
    
      local antiBankruptBtn = createFeatureButton("\065\110t\105\032\066\097\110\107\114upt", getgenv().fn_state.AntiBankrupt)
      antiBankruptBtn.Parent = mainContent
    
      local autoPayBtn = createFeatureButton("\065\117t\111\032Pa\121", getgenv().fn_state.AutoPay)
      autoPayBtn.Parent = mainContent
    
      local propertyHighlighterBtn = createFeatureButton("\080r\111p\101\114ty\032\072ig\104\108i\103h\116er", getgenv().fn_state.PropertyHighlighter)
      propertyHighlighterBtn.Parent = mainContent
    
      local turnNotifierBtn = createFeatureButton("\084\117r\110 \078\111\116\105\102\105er", getgenv().fn_state.TurnNotifier)
      turnNotifierBtn.Parent = mainContent
    
      local autoEndTurnBtn = createFeatureButton("\065\117t\111 \069nd\032T\117\114n", getgenv().fn_state.AutoEndTurn)
      autoEndTurnBtn.Parent = mainContent
    
      local boardOverlayBtn = createFeatureButton("B\111\097\114d \079\118\101\114l\097\121", getgenv().fn_state.BoardOverlay)
      boardOverlayBtn.Parent = mainContent
    

      local boardFrame = Instance.new("F\114\097m\101")
      boardFrame.Name = tostring(rn())
      boardFrame.Size = UDim2.new(1, 0, 1, 0)
      boardFrame.BackgroundTransparency = 1
      boardFrame.Parent = boardContent
    
      local boardCanvas = Instance.new("Fr\097\109e")
      boardCanvas.Name = tostring(rn())
      boardCanvas.Size = UDim2.new(1, 0, 1, 0)
      boardCanvas.BackgroundTransparency = 1
      boardCanvas.Parent = boardFrame
    

      local playersFrame = Instance.new("Fr\097me")
      playersFrame.Name = tostring(rn())
      playersFrame.Size = UDim2.new(1, 0, 1, 0)
      playersFrame.BackgroundTransparency = 1
      playersFrame.Parent = playersContent
    

      local settingsFrame = Instance.new("\070\114a\109e")
      settingsFrame.Name = tostring(rn())
      settingsFrame.Size = UDim2.new(1, 0, 1, 0)
      settingsFrame.BackgroundTransparency = 1
      settingsFrame.Parent = settingsContent
    
      local diceDelayLabel = Instance.new("\084e\120\116\076a\098\101\108")
      diceDelayLabel.Name = tostring(rn())
      diceDelayLabel.Size = UDim2.new(1, 0, 0, 30)
      diceDelayLabel.BackgroundTransparency = 1
      diceDelayLabel.Text = "\068\105\099e\032\068\101lay\058"
      diceDelayLabel.TextColor3 = Color3.new(1, 1, 1)
      diceDelayLabel.Font = Enum.Font.GothamBold
      diceDelayLabel.TextSize = 14
      diceDelayLabel.Parent = settingsFrame
    
      local diceDelayBox = Instance.new("T\101xtB\111\120")
      diceDelayBox.Name = tostring(rn())
      diceDelayBox.Size = UDim2.new(0.3, 0, 0, 30)
      diceDelayBox.Position = UDim2.new(0.7, 0, 0, 0)
      diceDelayBox.BackgroundColor3 = Color3.fromRGB(40, 40, 55)
      diceDelayBox.Text = tostring(getgenv().fn_config.diceDelay)
      diceDelayBox.TextColor3 = Color3.new(1, 1, 1)
      diceDelayBox.Font = Enum.Font.GothamBold
      diceDelayBox.TextSize = 14
      diceDelayBox.Parent = settingsFrame
      diceDelayBox:GetPropertyChangedSignal("T\101\120t"):Connect(function()
          local value = tonumber(diceDelayBox.Text)
          if value then
              getgenv().fn_config.diceDelay = value
          end
      end)
    
      local buyDelayLabel = Instance.new("\084\101\120\116\076\097be\108")
      buyDelayLabel.Name = tostring(rn())
      buyDelayLabel.Size = UDim2.new(1, 0, 0, 30)
      buyDelayLabel.BackgroundTransparency = 1
      buyDelayLabel.Text = "\066\117\121 \068\101l\097\121:"
      buyDelayLabel.TextColor3 = Color3end
