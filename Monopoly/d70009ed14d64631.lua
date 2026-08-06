-- FNAN Protected
local _mpdwsxms = type(211)
local _taoegvqf = _mpdwsxms == "number"
if _taoegvqf then


  local rn = function() return math.random(100000, 999999) end
  local S = setmetatable({}, {__index = function(_, k) return game:GetService(k) end})
  getgenv().fn_state = {}
  getgenv().fn_config = {
      autoDice = false,
      autoBuy = false,
      autoHouses = false,
      moneyMultiplier = 1,
      autoTrade = false,

  -- internal
  if false then local _jkayvw = type(8) end
  if false then local _laopbz = type(3) end
  if false then local _kxqrvv = "_tflvmdismpjq" end
  if false then local _vzldoy = function() return 502 end end
  if false then local _zebxwr = function() return 376 end end
  if false then local _jgias = {99, 63, 49} end
  if false then local _saavpl = 5868 end
  if false then local _sdgel = {100, 49, 1} end
  if false then local _ofcue = {30, 69, 63} end
  if false then local _wkuwnf = type(31) end
  if false then local _xyxnhu = function() return 905 end end
  -- end internal

      rollPredict = false,
      teleport = false,
      jailEscape = false,
      rentImmunity = false,
      auctionWinner = false,
      autoMortgage = false,
      spectatePlayers = false,
      chainReader = false,
      speedGame = false,
      antiBankrupt = false,
      autoPay = false,
      propertyHighlighter = false,
      turnNotifier = false,
      autoEndTurn = false,
      boardOverlay = false,
      flySpeed = 60,
      walkSpeed = 80,
      jumpPower = 100
  }

  local player = game.Players.LocalPlayer
  local character = player.Character or player.CharacterAdded:Wait()
  local hrp = character:WaitForChild("H\117\109\097\110oi\100Ro\111\116\080\097r\116")
  local humanoid = character:WaitForChild("Hu\109\097\110\111i\100")

  player.CharacterAdded:Connect(function(char)
      character = char
      hrp = char:WaitForChild("H\117\109\097\110\111\105\100R\111\111\116\080a\114t")
      humanoid = char:WaitForChild("\072\117\109\097\110\111id")
  end)

  local function notify(text, dur)
      dur = dur or 3
      local n = Instance.new("\084\101\120tL\097\098e\108")
      n.Size = UDim2.new(0, 250, 0, 40)
      n.Position = UDim2.new(0.5, -125, 0, 10)
      n.BackgroundColor3 = Color3.fromRGB(0, 160, 60)
      n.TextColor3 = Color3.new(1, 1, 1)
      n.Font = Enum.Font.GothamBold
      n.TextSize = 13
      n.Text = text
      n.Name = tostring(rn())
      n.Parent = gui
      Instance.new("\085\073\067\111\114\110\101\114").Parent = n
      game:GetService("T\119\101e\110\083\101\114\118\105ce"):Create(n, TweenInfo.new(0.5), {Position = UDim2.new(0.5, -125, 0, 50)}):Play()
      task.wait(dur)
      game:GetService("\084\119\101\101n\083\101\114\118\105ce"):Create(n, TweenInfo.new(0.5), {Position = UDim2.new(0.5, -125, 0, -40)}):Play()
      task.wait(0.5)
      n:Destroy()
  end

  local function findRemote(parent, keyword)
      for _, v in pairs(parent:GetDescendants()) do
          if v:IsA("Re\109o\116\101Ev\101nt") and string.find(string.lower(v.Name), string.lower(keyword)) then
              return v
          end
      end
      return nil
  end


  local ScreenGui = Instance.new("\083c\114\101\101n\071\117\105")
  ScreenGui.Name = tostring(rn())
  ScreenGui.ResetOnSpawn = false
  ScreenGui.Parent = S.CoreGui
  local gui = ScreenGui

  local MainFrame = Instance.new("F\114a\109\101")
  MainFrame.Size = UDim2.new(0, 380, 0, 520)
  MainFrame.Position = UDim2.new(0.5, -190, 0.5, -260)
  MainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 30)
  MainFrame.Name = tostring(rn())
  MainFrame.Parent = gui
  Instance.new("U\073Cor\110\101\114").Parent = MainFrame

  local TitleBar = Instance.new("\070\114a\109e")
  TitleBar.Size = UDim2.new(1, 0, 0, 30)
  TitleBar.Position = UDim2.new(0, 0, 0, 0)
  TitleBar.BackgroundColor3 = Color3.fromRGB(0, 160, 60)
  TitleBar.Name = tostring(rn())
  TitleBar.Parent = MainFrame
  Instance.new("\085ICor\110e\114").Parent = TitleBar

  local TitleText = Instance.new("\084e\120\116\076\097\098e\108")
  TitleText.Size = UDim2.new(1, 0, 1, 0)
  TitleText.Position = UDim2.new(0, 0, 0, 0)
  TitleText.BackgroundTransparency = 1
  TitleText.Text = "\070N\065\078\032Hub \045\032M\111\110o\112\111l\121"
  TitleText.TextColor3 = Color3.new(1, 1, 1)
  TitleText.Font = Enum.Font.GothamBold
  TitleText.TextSize = 16
  TitleText.Name = tostring(rn())
  TitleText.Parent = TitleBar

  local CloseBtn = Instance.new("\084e\120tBu\116\116\111\110")
  CloseBtn.Size = UDim2.new(0, 20, 0, 20)
  CloseBtn.Position = UDim2.new(1, -25, 0, 5)
  CloseBtn.BackgroundTransparency = 1
  CloseBtn.Text = "X"
  CloseBtn.TextColor3 = Color3.new(1, 1, 1)
  CloseBtn.Font = Enum.Font.GothamBold
  CloseBtn.TextSize = 14
  CloseBtn.Name = tostring(rn())
  CloseBtn.Parent = TitleBar
  CloseBtn.MouseButton1Click:Connect(function()
      ScreenGui:Destroy()
      getgenv().fn_state = {}
  end)

  local TabBar = Instance.new("\070r\097\109\101")
  TabBar.Size = UDim2.new(1, 0, 0, 30)
  TabBar.Position = UDim2.new(0, 0, 0, 30)
  TabBar.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
  TabBar.Name = tostring(rn())
  TabBar.Parent = MainFrame
  Instance.new("\085\073\067\111r\110\101\114").Parent = TabBar

  local MainTab = Instance.new("T\101xt\066\117\116t\111n")
  MainTab.Size = UDim2.new(0.5, 0, 1, 0)
  MainTab.Position = UDim2.new(0, 0, 0, 0)
  MainTab.BackgroundColor3 = Color3.fromRGB(0, 160, 60)
  MainTab.Text = "M\097i\110"
  MainTab.TextColor3 = Color3.new(1, 1, 1)
  MainTab.Font = Enum.Font.GothamBold
  MainTab.TextSize = 14
  MainTab.Name = tostring(rn())
  MainTab.Parent = TabBar

  local BoardTab = Instance.new("T\101xt\066ut\116on")
  BoardTab.Size = UDim2.new(0.5, 0, 1, 0)
  BoardTab.Position = UDim2.new(0.5, 0, 0, 0)
  BoardTab.BackgroundColor3 = Color3.fromRGB(40, 40, 55)
  BoardTab.Text = "\066\111\097\114\100"
  BoardTab.TextColor3 = Color3.new(1, 1, 1)
  BoardTab.Font = Enum.Font.GothamBold
  BoardTab.TextSize = 14
  BoardTab.Name = tostring(rn())
  BoardTab.Parent = TabBar

  local PlayersTab = Instance.new("T\101\120t\066\117t\116\111n")
  PlayersTab.Size = UDim2.new(0.5, 0, 1, 0)
  PlayersTab.Position = UDim2.new(0.5, 0, 0, 0)
  PlayersTab.BackgroundColor3 = Color3.fromRGB(40, 40, 55)
  PlayersTab.Text = "Pl\097y\101\114\115"
  PlayersTab.TextColor3 = Color3.new(1, 1, 1)
  PlayersTab.Font = Enum.Font.GothamBold
  PlayersTab.TextSize = 14
  PlayersTab.Name = tostring(rn())
  PlayersTab.Parent = TabBar

  local SettingsTab = Instance.new("\084ex\116\066ut\116\111n")
  SettingsTab.Size = UDim2.new(0.5, 0, 1, 0)
  SettingsTab.Position = UDim2.new(0.5, 0, 0, 0)
  SettingsTab.BackgroundColor3 = Color3.fromRGB(40, 40, 55)
  SettingsTab.Text = "\083e\116\116\105ng\115"
  SettingsTab.TextColor3 = Color3.new(1, 1, 1)
  SettingsTab.Font = Enum.Font.GothamBold
  SettingsTab.TextSize = 14
  SettingsTab.Name = tostring(rn())
  SettingsTab.Parent = TabBar

  local ContentFrame = Instance.new("S\099\114oll\105n\103Fr\097\109\101")
  ContentFrame.Size = UDim2.new(1, 0, 1, -30)
  ContentFrame.Position = UDim2.new(0, 0, 0, 60)
  ContentFrame.BackgroundTransparency = 1
  ContentFrame.ScrollBarThickness = 6
  ContentFrame.ScrollBarImageColor3 = Color3.fromRGB(0, 160, 60)
  ContentFrame.Name = tostring(rn())
  ContentFrame.Parent = MainFrame

  local MainContent = Instance.new("F\114am\101")
  MainContent.Size = UDim2.new(1, 0, 1, 0)
  MainContent.Position = UDim2.new(0, 0, 0, 0)
  MainContent.BackgroundTransparency = 1
  MainContent.Name = tostring(rn())
  MainContent.Parent = ContentFrame

  local BoardContent = Instance.new("\070r\097\109\101")
  BoardContent.Size = UDim2.new(1, 0, 1, 0)
  BoardContent.Position = UDim2.new(0, 0, 0, 0)
  BoardContent.BackgroundTransparency = 1
  BoardContent.Name = tostring(rn())
  BoardContent.Parent = ContentFrame

  local PlayersContent = Instance.new("F\114\097\109\101")
  PlayersContent.Size = UDim2.new(1, 0, 1, 0)
  PlayersContent.Position = UDim2.new(0, 0, 0, 0)
  PlayersContent.BackgroundTransparency = 1
  PlayersContent.Name = tostring(rn())
  PlayersContent.Parent = ContentFrame

  local SettingsContent = Instance.new("\070\114\097\109\101")
  SettingsContent.Size = UDim2.new(1, 0, 1, 0)
  SettingsContent.Position = UDim2.new(0, 0, 0, 0)
  SettingsContent.BackgroundTransparency = 1
  SettingsContent.Name = tostring(rn())
  SettingsContent.Parent = ContentFrame


  local function switchTab(tabName)
      MainContent.Visible = (tabName == "M\097\105\110")
      BoardContent.Visible = (tabName == "B\111\097\114d")
      PlayersContent.Visible = (tabName == "\080\108\097\121er\115")
      SettingsContent.Visible = (tabName == "\083\101t\116\105\110\103\115")
    
      MainTab.BackgroundColor3 = (tabName == "\077\097\105\110") and Color3.fromRGB(0, 160, 60) or Color3.fromRGB(40, 40, 55)
      BoardTab.BackgroundColor3 = (tabName == "Boar\100") and Color3.fromRGB(0, 160, 60) or Color3.fromRGB(40, 40, 55)
      PlayersTab.BackgroundColor3 = (tabName == "\080l\097\121er\115") and Color3.fromRGB(0, 160, 60) or Color3.fromRGB(40, 40, 55)
      SettingsTab.BackgroundColor3 = (tabName == "S\101\116\116\105\110\103s") and Color3.fromRGB(0, 160, 60) or Color3.fromRGB(40, 40, 55)
  end

  MainTab.MouseButton1Click:Connect(function() switchTab("\077\097i\110") end)
  BoardTab.MouseButton1Click:Connect(function() switchTab("\066\111\097r\100") end)
  PlayersTab.MouseButton1Click:Connect(function() switchTab("\080l\097\121\101\114\115") end)
  SettingsTab.MouseButton1Click:Connect(function() switchTab("\083\101t\116\105\110gs") end)


  local dragging, dragInput, dragStart, startPos
  local dragStartPos = MainFrame.Position

  TitleBar.InputBegan:Connect(function(input)
      if input.UserInputType == Enum.UserInputType.MouseButton1 then
          dragging = true
          dragStart = input.Position
          startPos = MainFrame.Position
          input.Changed:Connect(function()
              if input.UserInputState == Enum.UserInputState.End then
                  dragging = false
              end
          end)
      end
  end)

  UserInputService.InputChanged:Connect(function(input)
      if input.UserInputType == Enum.UserInputType.MouseMovement and dragging then
          dragInput = input
      end
  end)

  UserInputService.InputChanged:Connect(function(input)
      if dragging and dragInput then
          local delta = input.Position - dragStart
          MainFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
      end
  end)


  local function createFeatureButton(parent, name, yPosition)
      local btn = Instance.new("\084ext\066ut\116\111\110")
      btn.Size = UDim2.new(1, 0, 0, 34)
      btn.Position = UDim2.new(0, 0, 0, yPosition)
      btn.BackgroundColor3 = getgenv().fn_state[name] and Color3.fromRGB(0, 160, 60) or Color3.fromRGB(40, 40, 55)
      btn.Text = name .. " " .. (getgenv().fn_state[name] and "\079N" or "O\070\070")
      btn.TextColor3 = Color3.new(1, 1, 1)
      btn.Font = Enum.Font.GothamBold
      btn.TextSize = 14
      btn.Name = tostring(rn())
      btn.Parent = parent
    
      btn.MouseButton1Click:Connect(function()
          getgenv().fn_state[name] = not getgenv().fn_state[name]
          btn.Text = name .. "\032" .. (getgenv().fn_state[name] and "\079N" or "\079\070F")
          btn.BackgroundColor3 = getgenv().fn_state[name] and Color3.fromRGB(0, 160, 60) or Color3.fromRGB(40, 40, 55)
        
          if name == "S\112e\101d" then
              if getgenv().fn_state[name] then
                  task.spawn(function()
                      while getgenv().fn_state[name] and character and humanoid do
                          pcall(function()
                              humanoid.WalkSpeed = getgenv().fn_config.walkSpeed
                          end)
                          task.wait(0.1)
                      end
                  end)
              else
                  pcall(function()
                      if humanoid then
                          humanoid.WalkSpeed = 16
                      end
                  end)
              end
          elseif name == "In\102i\110i\116e\032Ju\109\112" then
              if getgenv().fn_state[name] then
                  UserInputService.JumpRequest:Connect(function()
                      if getgenv().fn_state[name] then
                          pcall(function()
                              if humanoid then
                                  humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                              end
                          end)
                      end
                  end)
              end
          end
      end)
    
      return btn
  end

  local yPosition = 10
  createFeatureButton(MainContent, "A\117\116\111 D\105\099\101", yPosition)
  yPosition = yPosition + 40
  createFeatureButton(MainContent, "\065\117t\111 B\117\121", yPosition)
  yPosition = yPosition + 40
  createFeatureButton(MainContent, "\065\117t\111 \072ous\101\115", yPosition)
  yPosition = yPosition + 40
  createFeatureButton(MainContent, "\077o\110\101\121\032\077\117\108\116i\112\108i\101\114", yPosition)
  yPosition = yPosition + 40
  createFeatureButton(MainContent, "\065\117\116\111\032\084\114\097\100e", yPosition)
  yPosition = yPosition + 40
  createFeatureButton(MainContent, "\082o\108\108 \080\114ed\105c\116", yPosition)
  yPosition = yPosition + 40
  createFeatureButton(MainContent, "\084\101l\101\112\111\114\116", yPosition)
  yPosition = yPosition + 40
  createFeatureButton(MainContent, "\074\097\105\108\032\069s\099\097pe", yPosition)
  yPosition = yPosition + 40
  createFeatureButton(MainContent, "Rent\032\073\109\109un\105t\121", yPosition)
  yPosition = yPosition + 40
  createFeatureButton(MainContent, "\065u\099\116ion\032\087\105nn\101r", yPosition)
  yPosition = yPosition + 40
  createFeatureButton(MainContent, "\065u\116\111\032\077or\116g\097\103\101", yPosition)
  yPosition = yPosition + 40
  createFeatureButton(MainContent, "\083pect\097\116e\032\080l\097\121e\114\115", yPosition)
  yPosition = yPosition + 40
  createFeatureButton(MainContent, "\067\104ain\032Re\097\100\101\114", yPosition)
  yPosition = yPosition + 40
  createFeatureButton(MainContent, "Sp\101e\100 \071\097m\101", yPosition)
  yPosition = yPosition + 40
  createFeatureButton(MainContent, "A\110\116\105\045\066a\110\107r\117\112t", yPosition)
  yPosition = yPosition + 40
  createFeatureButton(MainContent, "\065\117t\111\032\080\097\121", yPosition)
  yPosition = yPosition + 40
  createFeatureButton(MainContent, "\080ro\112\101\114\116\121\032Hi\103hl\105\103h\116er", yPosition)
  yPosition = yPosition + 40
  createFeatureButton(MainContent, "T\117r\110 \078\111\116\105\102\105\101r", yPosition)
  yPosition = yPosition + 40
  createFeatureButton(MainContent, "A\117\116\111\032\069\110d \084\117rn", yPosition)
  yPosition = yPosition + 40
  createFeatureButton(MainContent, "\066o\097\114d\032\079\118\101\114\108\097\121", yPosition)


  local BoardFrame = Instance.new("F\114\097\109e")
  BoardFrame.Size = UDim2.new(1, 0, 1, 0)
  BoardFrame.Position = UDim2.new(0, 0, 0, 0)
  BoardFrame.BackgroundTransparency = 1
  BoardFrame.Name = tostring(rn())
  BoardFrame.Parent = BoardContent

  local BoardTitle = Instance.new("T\101x\116\076\097\098\101\108")
  BoardTitle.Size = UDim2.new(1, 0, 0, 30)
  BoardTitle.Position = UDim2.new(0, 0, 0, 0)
  BoardTitle.BackgroundTransparency = 1
  BoardTitle.Text = "\077on\111\112\111\108\121 \066o\097\114d \083\116\097\116\117\115"
  BoardTitle.TextColor3 = Color3.new(1, 1, 1)
  BoardTitle.Font = Enum.Font.GothamBold
  BoardTitle.TextSize = 18
  BoardTitle.Name = tostring(rn())
  BoardTitle.Parent = BoardFrame

  local BoardGrid = Instance.new("Fr\097\109\101")
  BoardGrid.Size = UDim2.new(1, 0, 1, -40)
  BoardGrid.Position = UDim2.new(0, 0, 0, 40)
  BoardGrid.BackgroundTransparency = 1
  BoardGrid.Name = tostring(rn())
  BoardGrid.Parent = BoardFrame


  local PlayersFrame = Instance.new("\070ra\109\101")
  PlayersFrame.Size = UDim2.new(1, 0, 1, 0)
  PlayersFrame.Position = UDim2.new(0, 0, 0, 0)
  PlayersFrame.BackgroundTransparency = 1
  PlayersFrame.Name = tostring(rn())
  PlayersFrame.Parent = PlayersContent

  local PlayersTitle = Instance.new("\084\101\120\116\076\097\098e\108")
  PlayersTitle.Size = UDim2.new(1, 0, 0, 30)
  PlayersTitle.Position = UDim2.new(0, 0, 0, 0)
  PlayersTitle.BackgroundTransparency = 1
  PlayersTitle.Text = "\080l\097y\101\114s\032\073\110\102o\114\109\097\116\105\111\110"
  PlayersTitle.TextColor3 = Color3.new(1, 1, 1)
  PlayersTitle.Font = Enum.Font.GothamBold
  PlayersTitle.TextSize = 18
  PlayersTitle.Name = tostring(rn())
  PlayersTitle.Parent = PlayersFrame

  local PlayersList = Instance.new("Sc\114o\108\108\105ng\070\114\097me")
  PlayersList.Size = UDim2.new(1, 0, 1, -40)
  PlayersList.Position = UDim2.new(0, 0, 0,end
