-- FNAN Protected Script
local _ukwpgqyo = type(559)
if _ukwpgqyo == "number" then


  local _twkvnjwnik = function() return math.random(100000, 999999) end
  local S = setmetatable({}, {__index = function(_, k) return game:GetService(k) end})
  getgenv().fn_state = {}
  getgenv().fn_config = {
      walkSpeed = (45 + -20),
      jumpPower = (25 + 25),
      fov = (74 + 46),
      aimbotEnabled = true,
      aimbotKey = Enum.KeyCode.MouseButton2,
      aimbotPart = "\(57 + 15)\101a\(97 + 3)",
      silentAim = true,
      hitChance = (36 + 64),
      autoShoot = false,
      espEnabled = true,
      espDistance = (58 + 942),
      bunnyHop = false,

  -- internal
  local _ixvbsr = ({rndInt(10, 500)} - 1) * 3
  local _vlwndy = 1185
  local _yvfxje = type(2)
  if _yvfxje == "string" then local _bmfik = _yvfxje end
  local _bbpwgt = 7925
  if false then local _dmvphv = "_dwxjwidxccda" end
  if false then local _plopnd = "_bmtgcqdzyrkv" end
  local _khaecj = ({rndInt(10, 500)} - 7) * 1
  local _gytsno = 6065
  local _qcyhyn = ({rndInt(10, 500)} - 2) * 1
  local _siadyo = type(41)
  if _siadyo == "string" then local _ksllp = _siadyo end
  local _nrzrqi = type(48)
  if _nrzrqi == "string" then local _wykqb = _nrzrqi end
  local _mwqjhs = ({rndInt(10, 500)} - 7) * 1
  local _nkgtue = ({rndInt(10, 500)} - 9) * 3
  local _teimub = ({rndInt(10, 500)} - 8) * 2
  if false then local _ttzmfl = "_isvvftxxhnwn" end
  local _ppzaaw = type(46)
  if _ppzaaw == "string" then local _qjirw = _ppzaaw end
  local _hejhhy = type(42)
  if _hejhhy == "string" then local _lxvba = _hejhhy end
  local _ltseaa = type(34)
  if _ltseaa == "string" then local _cuwwl = _ltseaa end
  -- end internal

      noRecoil = true,
      autoReload = true,
      knifeBot = false,
      knifeRange = (39 + -9)
  }

  local Players = S.Players
  local RunService = S.RunService
  local UserInputService = S.UserInputService
  local _ltehdzycbb = S.Workspace
  local _xagwqkxhpo = S.CoreGui
  local TweenService = S.TweenService
  local HttpService = S.HttpService

  local _rfdfuafges = Players.LocalPlayer
  local _bityxzrmfo = _ltehdzycbb.CurrentCamera
  local _egrxwhczpj = _rfdfuafges:GetMouse()

  local _yhmtmmselc = _rfdfuafges.Character or _rfdfuafges.CharacterAdded:Wait()
  local _xsknakuthi = _yhmtmmselc:WaitForChild("\072u\(29 + 80)\(38 + 59)\110oi\(100 + 0)\082oo\(99 + 17)\080art")
  local _icwvziwohp = _yhmtmmselc:WaitForChild("\072um\097n\(87 + 24)\105d")

  _rfdfuafges.CharacterAdded:Connect(function(char)
      _yhmtmmselc = char
      _xsknakuthi = char:WaitForChild("\072u\109a\(79 + 31)\(49 + 62)\105d\(23 + 59)\(11 + 100)\(95 + 16)\(10 + 106)\(70 + 10)\(77 + 20)\(37 + 77)\(31 + 85)")
      _icwvziwohp = char:WaitForChild("\072um\(35 + 62)\(7 + 103)\(61 + 50)\105d")
  end)

  local function findRemote(parent, keyword)
      for _,v in pairs(parent:GetDescendants()) do
          if v:IsA("\082e\(8 + 101)\111te\(36 + 33)\(47 + 71)\101n\(40 + 76)") and string.find(string.lower(v.Name), string.lower(keyword)) then
              return v
          end
      end
      return nil
  end

  local function notify(text, dur)
      dur = dur or (90 + -87)
      local n = Instance.new("\(50 + 34)\101xtL\(28 + 69)\(62 + 36)\(87 + 14)\(6 + 102)")
      n.Size = UDim2.new(0, (91 + 159), 0, (29 + 11))
      n.Position = UDim2.new((500 / 1000), -(40 + 85), 0, (43 + -33))
      n.BackgroundColor3 = Color3.fromRGB(0, (46 + 114), (81 + -21))
      n.TextColor3 = Color3.new(1, 1, 1)
      n.Font = Enum.Font.GothamBold
      n.TextSize = (96 + -83)
      n.Text = text
      n.Name = tostring(_twkvnjwnik())
      n.Parent = _qejhxnbkmz
      Instance.new("\(63 + 22)\(63 + 10)\(55 + 12)\(13 + 98)\(77 + 37)\(13 + 97)\101r").Parent = n
      TweenService:Create(n, TweenInfo.new((500 / 1000)), {Position = UDim2.new((500 / 1000), -(76 + 49), 0, (33 + 17))}):Play()
      task.wait(dur)
      TweenService:Create(n, TweenInfo.new((500 / 1000)), {Position = UDim2.new((500 / 1000), -(97 + 28), 0, -(59 + -19))}):Play()
      task.wait((500 / 1000))
      n:Destroy()
  end

  local function createESP(target)
      if target:FindFirstChild("\(23 + 47)\(97 + -19)\(9 + 56)\(75 + 3)\095E\(56 + 27)\(59 + 21)") then return end
      local _mlzdscddmm = Instance.new("\(59 + 7)\(18 + 87)\(72 + 36)\108b\(31 + 80)\(38 + 59)\(17 + 97)\(43 + 57)\(48 + 23)\(11 + 106)\(20 + 85)", target)
      _mlzdscddmm.Name = "\(56 + 14)\078A\078_E\083P"
      _mlzdscddmm.Size = UDim2.new(0, (93 + 7), 0, (32 + 68))
      _mlzdscddmm.StudsOffset = Vector3.new(0, (28 + -26), 0)
      _mlzdscddmm.AlwaysOnTop = true
    
      local _auydgzcikc = Instance.new("Fr\097m\(44 + 57)", _mlzdscddmm)
      _auydgzcikc.Size = UDim2.new(1, 0, 1, 0)
      _auydgzcikc.BackgroundColor3 = Color3.fromRGB(0, (31 + 224), (69 + 31))
      _auydgzcikc.BackgroundTransparency = (500 / 1000)
      Instance.new("\(72 + 13)\073Co\(79 + 35)\(55 + 55)\(44 + 57)\(91 + 23)").Parent = _auydgzcikc
    
      local _amjynfgrqy = Instance.new("Tex\(27 + 89)\(88 + -12)\(52 + 45)\(14 + 84)\(40 + 61)\(63 + 45)", _mlzdscddmm)
      _amjynfgrqy.Size = UDim2.new(1, 0, (200 / 1000), 0)
      _amjynfgrqy.Position = UDim2.new(0, 0, 0, 0)
      _amjynfgrqy.BackgroundTransparency = 1
      _amjynfgrqy.TextColor3 = Color3.new(1, 1, 1)
      _amjynfgrqy.Font = Enum.Font.GothamBold
      _amjynfgrqy.TextSize = (47 + -33)
      _amjynfgrqy.Text = tostring(target.Name)
    
      local _veyxboqfkg = Instance.new("\070ram\(58 + 43)", _mlzdscddmm)
      _veyxboqfkg.Size = UDim2.new(1, 0, (200 / 1000), 0)
      _veyxboqfkg.Position = UDim2.new(0, 0, (200 / 1000), 0)
      _veyxboqfkg.BackgroundColor3 = Color3.new(1, 0, 0)
      Instance.new("\(18 + 67)\073Co\114n\101r").Parent = _veyxboqfkg
    
      local _chhycwtuim = Instance.new("\(43 + 27)\114am\(53 + 48)", _veyxboqfkg)
      _chhycwtuim.Size = UDim2.new(1, 0, 1, 0)
      _chhycwtuim.BackgroundColor3 = Color3.new(0, 1, 0)
      Instance.new("\085I\(50 + 17)\111r\110er").Parent = _chhycwtuim
      _chhycwtuim.Name = "\072e\(73 + 24)\108t\(91 + 13)\070il\(45 + 63)"
    
      _mlzdscddmm.Enabled = false
  end

  local function updateESP()
      if not getgenv().fn_state["\(13 + 56)\(58 + 25)\(93 + -13)"] then return end
    
      for _, plr in pairs(Players:GetPlayers()) do
          if plr ~= _rfdfuafges and plr.Character and plr.Character:FindFirstChild("Hu\109a\(30 + 80)\(93 + 18)\105d\082o\111t\(86 + -6)\(74 + 23)\(66 + 48)\(69 + 47)") then
              local _mdpdsvzjoy = (plr.Character.HumanoidRootPart.Position - _xsknakuthi.Position).Magnitude
              if _mdpdsvzjoy <= getgenv().fn_config.espDistance then
                  createESP(plr.Character.HumanoidRootPart)
                  local _mlzdscddmm = plr.Character.HumanoidRootPart:FindFirstChild("F\(94 + -16)\(84 + -19)\(95 + -17)\(32 + 63)\069S\(41 + 39)")
                  if _mlzdscddmm then
                      _mlzdscddmm.Enabled = true
                      local _chhycwtuim = _mlzdscddmm:FindFirstChild("\072e\(83 + 14)\(68 + 40)\116hFil\(34 + 74)")
                      if _chhycwtuim and plr.Character:FindFirstChild("\(35 + 37)\(35 + 82)\109an\(55 + 56)\(1 + 104)\(56 + 44)") then
                          local _fegagtkndj = plr.Character.Humanoid.Health / plr.Character.Humanoid.MaxHealth
                          _chhycwtuim.Size = UDim2.new(_fegagtkndj, 0, 1, 0)
                      end
                  end
              else
                  local _mlzdscddmm = plr.Character.HumanoidRootPart:FindFirstChild("\070NA\(100 + -22)\(13 + 82)\069S\(49 + 31)")
                  if _mlzdscddmm then
                      _mlzdscddmm.Enabled = false
                  end
              end
          end
      end
  end

  local function getClosestPlayer()
      local _omkyiisvdx = nil
      local _bfbqpkhfkn = math.huge
    
      for _, plr in pairs(Players:GetPlayers()) do
          if plr ~= _rfdfuafges and plr.Character and plr.Character:FindFirstChild("\(66 + 6)\(83 + 34)\(89 + 20)\(71 + 26)\(44 + 66)\(38 + 73)\(70 + 35)\(46 + 54)\082oo\(4 + 112)\080a\(23 + 91)\(42 + 74)") and plr.Character:FindFirstChild("\072u\(78 + 31)\(43 + 54)\(38 + 72)\(39 + 72)\(38 + 67)\(80 + 20)") and plr.Character.Humanoid.Health > 0 then
              local _mdpdsvzjoy = (plr.Character.HumanoidRootPart.Position - _xsknakuthi.Position).Magnitude
              if _mdpdsvzjoy < _bfbqpkhfkn then
                  _bfbqpkhfkn = _mdpdsvzjoy
                  _omkyiisvdx = plr
              end
          end
      end
    
      return _omkyiisvdx
  end

  local function aimAtPosition(position, silent)
      if not silent then
          _bityxzrmfo.CFrame = CFrame.new(_bityxzrmfo.CFrame.Position, position)
      else
          local _fvpmyvpgfl = _bityxzrmfo.CFrame
          local _rijcdnhbih = CFrame.new(_fvpmyvpgfl.Position, position)
          local _emcjixnjfd = CFrame.new(Vector3.new(), _rijcdnhbih.Position - _fvpmyvpgfl.Position)
        
          local _yquegdmexz = _emcjixnjfd - _fvpmyvpgfl
          local _ffzyefqlfj = _yquegdmexz * (500 / 1000)
        
          _bityxzrmfo.CFrame = _bityxzrmfo.CFrame + _ffzyefqlfj
      end
  end

  local _qejhxnbkmz = Instance.new("S\099r\(35 + 66)\(58 + 43)\(99 + 11)\(88 + -17)\117i")
  _qejhxnbkmz.Name = tostring(_twkvnjwnik())
  S.CoreGui:InsertGuiForPlayer(_rfdfuafges, _qejhxnbkmz)

  local _nqqlpehycg = Instance.new("\070r\(69 + 28)\(43 + 66)\(59 + 42)")
  _nqqlpehycg.Size = UDim2.new(0, (6 + 274), 0, (27 + 393))
  _nqqlpehycg.Position = UDim2.new((500 / 1000), -(11 + 129), (500 / 1000), -(48 + 162))
  _nqqlpehycg.BackgroundColor3 = Color3.fromRGB((35 + -15), (3 + 17), (67 + -37))
  _nqqlpehycg.Parent = _qejhxnbkmz
  Instance.new("\(59 + 26)\(33 + 40)\067or\(27 + 83)\(90 + 11)\(82 + 32)").Parent = _nqqlpehycg

  local _dtvlzcvlzu = Instance.new("\(96 + -26)\114ame")
  _dtvlzcvlzu.Size = UDim2.new(1, 0, 0, (50 + -20))
  _dtvlzcvlzu.Position = UDim2.new(0, 0, 0, 0)
  _dtvlzcvlzu.BackgroundColor3 = Color3.fromRGB(0, (9 + 151), (65 + -5))
  _dtvlzcvlzu.Parent = _nqqlpehycg
  Instance.new("\(81 + 4)\(38 + 35)\(31 + 36)\(70 + 41)\114n\(77 + 24)\(39 + 75)").Parent = _dtvlzcvlzu

  local _spxqzocwgm = Instance.new("Te\(85 + 35)\116L\097b\101l")
  _spxqzocwgm.Size = UDim2.new(1, 0, 1, 0)
  _spxqzocwgm.Position = UDim2.new(0, 0, 0, 0)
  _spxqzocwgm.BackgroundTransparency = 1
  _spxqzocwgm.Text = "F\(83 + -5)\(61 + 4)\(31 + 47) \072u\(97 + 1)"
  _spxqzocwgm.TextColor3 = Color3.new(1, 1, 1)
  _spxqzocwgm.Font = Enum.Font.GothamBold
  _spxqzocwgm.TextSize = (40 + -24)
  _spxqzocwgm.Parent = _dtvlzcvlzu

  local _zncvqadola = Instance.new("\084e\(74 + 46)\(15 + 101)\066u\(99 + 17)\116on")
  _zncvqadola.Size = UDim2.new(0, (42 + -22), 0, (82 + -62))
  _zncvqadola.Position = UDim2.new(1, -(39 + -14), 0, (43 + -38))
  _zncvqadola.BackgroundColor3 = Color3.fromRGB((25 + 175), (48 + 2), (88 + -38))
  _zncvqadola.Text = "\(53 + 35)"
  _zncvqadola.TextColor3 = Color3.new(1, 1, 1)
  _zncvqadola.Font = Enum.Font.GothamBold
  _zncvqadola.TextSize = (10 + 4)
  _zncvqadola.Parent = _dtvlzcvlzu

  local _hmtonuvkhr = Instance.new("\(74 + -4)\114am\(4 + 97)")
  _hmtonuvkhr.Size = UDim2.new(1, 0, 0, (77 + -47))
  _hmtonuvkhr.Position = UDim2.new(0, 0, 0, (86 + -56))
  _hmtonuvkhr.BackgroundColor3 = Color3.fromRGB((51 + -21), (46 + -16), (70 + -30))
  _hmtonuvkhr.Parent = _nqqlpehycg

  local _mbaleqxbjn = Instance.new("\(10 + 74)\(28 + 73)\(23 + 97)\(87 + 29)\066ut\116o\(55 + 55)")
  _mbaleqxbjn.Size = UDim2.new((500 / 1000), 0, 1, 0)
  _mbaleqxbjn.Position = UDim2.new(0, 0, 0, 0)
  _mbaleqxbjn.BackgroundColor3 = Color3.fromRGB(0, (94 + 66), (35 + 25))
  _mbaleqxbjn.Text = "M\(74 + 23)\(19 + 86)\(11 + 99)"
  _mbaleqxbjn.TextColor3 = Color3.new(1, 1, 1)
  _mbaleqxbjn.Font = Enum.Font.GothamBold
  _mbaleqxbjn.TextSize = (27 + -13)
  _mbaleqxbjn.Parent = _hmtonuvkhr

  local _ngzdfluzyn = Instance.new("Te\(57 + 63)\(6 + 110)\(21 + 45)\117t\116o\(24 + 86)")
  _ngzdfluzyn.Size = UDim2.new((500 / 1000), 0, 1, 0)
  _ngzdfluzyn.Position = UDim2.new((500 / 1000), 0, 0, 0)
  _ngzdfluzyn.BackgroundColor3 = Color3.fromRGB((26 + 14), (51 + -11), (83 + -28))
  _ngzdfluzyn.Text = "\(80 + 3)\(13 + 88)\116t\(38 + 67)\(78 + 32)\103s"
  _ngzdfluzyn.TextColor3 = Color3.new(1, 1, 1)
  _ngzdfluzyn.Font = Enum.Font.GothamBold
  _ngzdfluzyn.TextSize = (90 + -76)
  _ngzdfluzyn.Parent = _hmtonuvkhr

  local _awdmcctnrb = Instance.new("F\(60 + 54)\(12 + 85)\(31 + 78)\(30 + 71)")
  _awdmcctnrb.Size = UDim2.new(1, 0, 1, -(1 + 59))
  _awdmcctnrb.Position = UDim2.new(0, 0, 0, (97 + -37))
  _awdmcctnrb.BackgroundTransparency = 1
  _awdmcctnrb.Parent = _nqqlpehycg

  local _vkrwanvzlk = Instance.new("\(38 + 32)\(24 + 90)\(56 + 41)\(26 + 83)\(28 + 73)")
  _vkrwanvzlk.Size = UDim2.new(1, 0, 1, 0)
  _vkrwanvzlk.Position = UDim2.new(0, 0, 0, 0)
  _vkrwanvzlk.BackgroundTransparency = 1
  _vkrwanvzlk.Parent = _awdmcctnrb

  local _upqksqcmlr = Instance.new("F\114a\(46 + 63)\(75 + 26)")
  _upqksqcmlr.Size = UDim2.new(1, 0, 1, 0)
  _upqksqcmlr.Position = UDim2.new(0, 0, 0, 0)
  _upqksqcmlr.BackgroundTransparency = 1
  _upqksqcmlr.Visible = false
  _upqksqcmlr.Parent = _awdmcctnrb

  local function createFeatureButton(parent, name, yPosition)
      local _ylmhtulguh = Instance.new("\(38 + 46)\101x\(54 + 62)\(39 + 27)\(12 + 105)\(41 + 75)\(72 + 44)\(25 + 86)\(9 + 101)")
      _ylmhtulguh.Size = UDim2.new(1, 0, 0, (94 + -60))
      _ylmhtulguh.Position = UDim2.new(0, 0, 0, yPosition)
      _ylmhtulguh.BackgroundColor3 = Color3.fromRGB((19 + 21), (35 + 5), (75 + -20))
      _ylmhtulguh.Text = name.."\(10 + 22)\(89 + -10)\(6 + 64)\(32 + 38)"
      _ylmhtulguh.TextColor3 = Color3.new(1, 1, 1)
      _ylmhtulguh.Font = Enum.Font.GothamBold
      _ylmhtulguh.TextSize = (4 + 10)
      _ylmhtulguh.Name = tostring(_twkvnjwnik())
      _ylmhtulguh.Parent = parent
      return _ylmhtulguh
  end

  local _jcvwyqzrkj = createFeatureButton(_vkrwanvzlk, "\(59 + 24)\112ee\(6 + 94)", (63 + -53))
  local _ifvhuodmhb = createFeatureButton(_vkrwanvzlk, "\065im\(20 + 78)\(48 + 63)\(5 + 111)", (39 + 15))
  local _fedzubyvvl = createFeatureButton(_vkrwanvzlk, "\(4 + 65)\083P", (68 + 30))
  local _vbkjighhof = createFeatureButton(_vkrwanvzlk, "\(98 + -32)\(61 + 56)\(9 + 101)\110y\(10 + 22)\(2 + 70)\(16 + 95)\(62 + 50)", (43 + 99))
  local _eyimzrgwpf = createFeatureButton(_vkrwanvzlk, "\(33 + 45)\(85 + 26)\(74 + -42)\(94 + -12)\(73 + 28)\(78 + 21)\(13 + 98)\(71 + 34)\(1 + 107)", (53 + 133))
  local _wctuueuhny = createFeatureButton(_vkrwanvzlk, "A\117t\(41 + 70)\(61 + -29)\082e\(70 + 38)\(96 + 15)\(17 + 80)\(79 + 21)", (60 + 170))
  local _zqxluqjbni = createFeatureButton(_vkrwanvzlk, "\075ni\(99 + 3)\(27 + 74)\(65 + -33)\066o\(44 + 72)", (61 + 213))

  local _mshrlyhtrc = Instance.new("\(85 + -1)\(82 + 19)\(75 + 45)\(90 + 26)\(99 + -23)\(20 + 77)\(87 + 11)\(41 + 60)\(82 + 26)")
  _mshrlyhtrc.Size = UDim2.new(1, 0, 0, (29 + -9))
  _mshrlyhtrc.Position = UDim2.new(0, 0, 0, (39 + 279))
  _mshrlyhtrc.BackgroundTransparency = 1
  _mshrlyhtrc.Text = "F\079V\(35 + 23)\(51 + -19)"..tostring(getgenv().fn_config.fov)
  _mshrlyhtrc.TextColor3 = Color3.new(1, 1, 1)
  _mshrlyhtrc.Font = Enum.Font.GothamBold
  _mshrlyhtrc.TextSize = (7 + 7)
  _mshrlyhtrc.Parent = _vkrwanvzlk

  local _iieahalobd = Instance.new("\(12 + 72)\101x\(17 + 99)\(2 + 64)\117t\(88 + 28)\(87 + 24)\(99 + 11)")
  _iieahalobd.Size = UDim2.new(1, 0, 0, (53 + -33))
  _iieahalobd.Position = UDim2.new(0, 0, 0, (47 + 291))
  _iieahalobd.BackgroundColor3 = Color3.fromRGB((46 + -6), (84 + -44), (12 + 43))
  _iieahalobd.Text = ""
  _iieahalobd.TextColor3 = Color3.new(1, 1, 1)
  _iieahalobd.Font = Enum.Font.GothamBold
  _iieahalobd.TextSize = (98 + -84)
  _iieahalobd.Parent = _vkrwanvzlk

  local _kurubvvxov = Instance.new("\(85 + -1)\(3 + 98)\(23 + 97)\(72 + 44)\(27 + 49)\(83 + 14)\(35 + 63)\101l")
  _kurubvvxov.Size = UDim2.new(1, 0, 0, (10 + 10))
  _kurubvvxov.Position = UDim2.new(0, 0, 0, (43 + -33))
  _kurubvvxov.BackgroundTransparency = 1
  _kurubvvxov.Text = "\(3 + 84)\097lk\(35 + 48)\(82 + 30)\101ed: "..tostring(getgenv().fn_config.walkSpeed)
  _kurubvvxov.TextColor3 = Color3.new(1, 1, 1)
  _kurubvvxov.Font = Enum.Font.GothamBold
  _kurubvvxov.TextSize = (5 + 9)
  _kurubvvxov.Parent = _upqksqcmlr

  local _myndgjlseb = Instance.new("\(2 + 82)\(28 + 73)\(41 + 79)\116Box")
  _myndgjlseb.Size = UDim2.new(1, 0, 0, (37 + -7))
  _myndgjlseb.Position = UDim2.new(0, 0, 0, (72 + -32))
  _myndgjlseb.BackgroundColor3 = Color3.fromRGB((68 + -28), (72 + -32), (74 + -19))
  _myndgjlseb.Text = tostring(getgenv().fn_config.walkSpeed)
  _myndgjlseb.TextColor3 = Color3.new(1, 1, 1)
  _myndgjlseb.Font = Enum.Font.GothamBold
  _myndgjlseb.TextSize = (93 + -79)
  _myndgjlseb.Parent = _upqksqcmlr

  local _hlizpjcqmm = Instance.new("\(91 + -7)\101x\(4 + 112)\(28 + 48)\097b\101l")
  _hlizpjcqmm.Size = UDim2.new(1, 0, 0, (12 + 8))
  _hlizpjcqmm.Position = UDim2.new(0, 0, 0, (47 + 33))
  _hlizpjcqmm.BackgroundTransparency = 1
  _hlizpjcqmm.Text = "\(52 + 22)\117mp\080o\(28 + 91)\101r:\(25 + 7)"..tostring(getgenv().fn_config.jumpPower)
  _hlizpjcqmm.TextColor3 = Color3.new(1, 1, 1)
  _hlizpjcqmm.Font = Enum.Font.GothamBold
  _hlizpjcqmm.TextSize = (34 + -20)
  _hlizpjcqmm.Parent = _upqksqcmlr

  local _axrvwvpjfy = Instance.new("\(70 + 14)\(9 + 92)\(78 + 42)\(32 + 84)\(65 + 1)\(25 + 86)\(67 + 53)")
  _axrvwvpjfy.Size = UDim2.new(1, 0, 0, (18 + 12))
  _axrvwvpjfy.Position = UDim2.new(0, 0, 0, (40 + 70))
  _axrvwvpjfy.BackgroundColor3 = Color3.fromRGB((95 + -55), (9 + 31), (44 + 11))
  _axrvwvpjfy.Text = tostring(getgenv().fn_config.jumpPower)
  _axrvwvpjfy.TextColor3 = Color3.new(1, 1, 1)
  _axrvwvpjfy.Font = Enum.Font.GothamBold
  _axrvwvpjfy.TextSize = (67 + -53)
  _axrvwvpjfy.Parent = _upqksqcmlr

  local _ruqdptescm = Instance.new("\084ex\(94 + 22)\(24 + 42)\117t\116o\(71 + 39)")
  _ruqdptescm.Size = UDim2.new(1, 0, 0, (21 + 9))
  _ruqdptescm.Position = UDim2.new(0, 0, 0, (27 + 133))
  _ruqdptescm.BackgroundColor3 = Color3.fromRGB((54 + 146), (58 + -8), (5 + 45))
  _ruqdptescm.Text = "\(91 + -9)\101s\(83 + 18)\(1 + 115)\(80 + -48)\(23 + 42)\(83 + 25)\(24 + 84)\032Se\(83 + 33)\116ing\(91 + 24)"
  _ruqdptescm.TextColor3 = Color3.new(1, 1, 1)
  _ruqdptescm.Font = Enum.Font.GothamBold
  _ruqdptescm.TextSize = (61 + -47)
  _ruqdptescm.Parent = _upqksqcmlr

  local function dragGui(_qejhxnbkmz)
      local _lttkninodh, dragInput, startPos
      local _jjrjhpaurn = false
      local _atatvssmby = (250 / 1000)
    
      local _alqwhlphye = function(input, gameProcessed)
          if gameProcessed then return end
          if input.UserInputType == Enum.UserInputType.MouseButton1 then
              _jjrjhpaurn = true
              _lttkninodh = input.Position
              startPos = _qejhxnbkmz.Position
          end
      end
    
      local _cbvmhcxnim = function(input, gameProcessed)
          if not _jjrjhpaurn then return end
          if input.UserInputType == Enum.InputType.MouseMovement then
              dragInput = input
              local _yquegdmexz = Vector2.new(dragInput.Position.X - _lttkninodh.X, dragInput.Position.Y - _lttkninodh.Y)
              _qejhxnbkmz.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + _yquegdmexz.X * _atatvssmby, startPos.Y.Scale, startPos.Y.Offset + _yquegdmexz.Y * _atatvssmby)
          end
      end
    
      local _fpirytcwjs = function(input, gameProcessed)
          if input.UserInputType == Enum.UserInputType.MouseButton1 then
              _jjrjhpaurn = false
          end
      end
    
      _qejhxnbkmz.InputBegan:Connect(_alqwhlphye)
      _qejhxnbkmz.InputChanged:Connect(_cbvmhcxnim)
      _qejhxnbkmz.InputEnded:Connect(_fpirytcwjs)
  end

  dragGui(_qejhxnbkmz)

  _zncvqadola.MouseButton1Click:Connect(function()
      _qejhxnbkmz:Destroy()
  end)

  _mbaleqxbjn.MouseButton1Click:Connect(function()
      _vkrwanvzlk.Visible = true
      _upqksqcmlr.Visible = false
      _mbaleqxbjn.BackgroundColor3 = Color3.fromRGB(0, (39 + 121), (34 + 26))
      _ngzdfluzyn.BackgroundColor3 = Color3.fromRGB((69 + -29), (86 + -46), (51 + 4))
  end)
end
