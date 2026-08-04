-- FNAN Protected Script
local _fqhblpyp = type(993)
if _fqhblpyp == "number" then


  local Players = game:GetService("\(60 + 20)\(17 + 91)\(97 + 0)\121e\114s")
  local RunService = game:GetService("\(52 + 30)\(45 + 72)\(10 + 100)\(78 + 5)\101r\118i\(4 + 95)\(25 + 76)")
  local UserInputService = game:GetService("U\(76 + 39)\(43 + 58)\(91 + 23)\(93 + -20)\(70 + 40)\(14 + 98)\(73 + 44)\(40 + 76)\(75 + 8)\(15 + 86)\(42 + 72)\(38 + 80)\(39 + 66)\(94 + 5)\(61 + 40)")
  local _khzzlvqyql = game:GetService("Work\(90 + 25)\(28 + 84)\(82 + 15)\099e")
  local _gqwjaeqzps = _khzzlvqyql.CurrentCamera
  local _phezmdcfuk = game:GetService("\(45 + 22)\111re\(90 + -19)\(22 + 95)\(65 + 40)")

  local _bmflzydikc = Players.LocalPlayer
  local _lzdernjprv = _bmflzydikc.Character or _bmflzydikc.CharacterAdded:Wait()
  local _iwaplzczuf = _lzdernjprv:WaitForChild("\(72 + 0)\(22 + 95)\109an\(63 + 48)\105d\(36 + 46)\111o\(88 + 28)\080a\(55 + 59)\(50 + 66)")
  local _kqbfmkbbgq = _lzdernjprv:WaitForChild("\(92 + -20)\(94 + 23)\(88 + 21)\097no\(78 + 27)\(16 + 84)")

  _bmflzydikc.CharacterAdded:Connect(function(char)
      _lzdernjprv = char
      _iwaplzczuf = char:WaitForChild("\(74 + -2)\(5 + 112)\(72 + 37)\(62 + 35)\(76 + 34)\111id\(59 + 23)\111o\(85 + 31)\080ar\(88 + 28)")
      _kqbfmkbbgq = char:WaitForChild("\072u\(64 + 45)\097n\(96 + 15)\(54 + 51)\(56 + 44)")
  end)

  local _sqliaxiuzs = function() return math.random(100000, 999999) end
  local S = setmetatable({}, {__index = function(_, k) return game:GetService(k) end})

  getgenv().fn_state = {}
  getgenv().fn_config = {
      aimbotEnabled = false,
      aimbotKey = Enum.KeyCode.MouseButton2,
      fov = (64 + -14),
      smoothness = (100 / 1000),

  -- internal
  if false then local _yveimm = "_gguharxtksga" end
  if false then local _yvgnqi = "_hujamxitmzkj" end
  local _zenhbw = 2476
  local _xdxzqa = ({rndInt(10, 500)} - 1) * 2
  local _gcztku = ({rndInt(10, 500)} - 5) * 1
  local _zqdxpx = 2086
  local _ldyyuh = ({rndInt(10, 500)} - 8) * 1
  if false then local _kxxbcz = "_bytlgytnucly" end
  if false then local _iefarv = "_lhophnzoeeuq" end
  -- end internal

      _qqiyetzism = "\(6 + 66)\(96 + 5)\(44 + 53)\(62 + 38)",
      autoShoot = false,
      teamCheck = true,
      visibleCheck = true,
      predictionFactor = (200 / 1000)
  }

  local function findNearestTarget()
      local _zktdsvetss = nil
      local _rmibkyxhpy = math.huge
      local _akcjajooxj = _gqwjaeqzps.CFrame.Position
    
      for _, targetPlayer in pairs(Players:GetPlayers()) do
          if targetPlayer == _bmflzydikc then continue end
        
          if getgenv().fn_config.teamCheck then
              local _bzcdhjmhfd = _bmflzydikc.Team
              local _rmvnttngns = targetPlayer.Team
              if _bzcdhjmhfd and _rmvnttngns and _bzcdhjmhfd == _rmvnttngns then continue end
          end
        
          local _jjfwchgvpu = targetPlayer.Character
          if not _jjfwchgvpu then continue end
        
          local _zmmxgodgrc = _jjfwchgvpu:FindFirstChild("\(99 + -27)\(80 + 37)\109a\(65 + 45)\(96 + 15)\(73 + 32)\(25 + 75)")
          if not _zmmxgodgrc or _zmmxgodgrc.Health <= 0 then continue end
        
          local _qqiyetzism = _jjfwchgvpu:FindFirstChild(getgenv().fn_config.targetPart)
          if not _qqiyetzism then continue end
        
          if getgenv().fn_config.visibleCheck then
              local _lslzbgzgia = RaycastParams.new()
              _lslzbgzgia.FilterDescendantsInstances = {_lzdernjprv, _jjfwchgvpu}
              _lslzbgzgia.FilterType = Enum.RaycastFilterType.Exclude
              _lslzbgzgia.IgnoreWater = true
            
              local _rlqxkfoizv = _khzzlvqyql:Raycast(_akcjajooxj, (_qqiyetzism.Position - _akcjajooxj).Unit * (56 + 944), _lslzbgzgia)
              if not _rlqxkfoizv or _rlqxkfoizv.Instance.Parent ~= _jjfwchgvpu then continue end
          end
        
          local _ipdjgtklxm = (_qqiyetzism.Position - _akcjajooxj).Magnitude
          if _ipdjgtklxm < _rmibkyxhpy and _ipdjgtklxm < getgenv().fn_config.fov then
              _rmibkyxhpy = _ipdjgtklxm
              _zktdsvetss = _qqiyetzism
          end
      end
    
      return _zktdsvetss
  end

  local function aimAtPosition(targetPosition)
      if not getgenv().fn_state.aimbotEnabled then return end
    
      local _dcojhrtaxb = _gqwjaeqzps.CFrame
      local _grimqredxq = (targetPosition - _dcojhrtaxb.Position).Unit
    
      local _nugfbiikxb = _dcojhrtaxb.LookVector
      local _xxxveovodh = math.acos(_nugfbiikxb:Dot(_grimqredxq))
    
      if _xxxveovodh > (10 / 1000) then
          local _zoauqleuid = _nugfbiikxb:Cross(_grimqredxq).Unit
          local _smbwojftvd = math.min(_xxxveovodh, getgenv().fn_config.smoothness)
        
          local _wibjltgleh = CFrame.new(_dcojhrtaxb.Position, _dcojhrtaxb.Position + 
              _nugfbiikxb:Rotate(_zoauqleuid, _smbwojftvd))
        
          _gqwjaeqzps.CFrame = _wibjltgleh
      end
  end

  local function predictTargetMovement(_qqiyetzism)
      if not _qqiyetzism then return _qqiyetzism.Position end
    
      local _pvhqypjftl = _qqiyetzism.Velocity
      local _afncbcxufa = getgenv().fn_config.predictionFactor
      local _tsefwmmhxw = _qqiyetzism.Position + _pvhqypjftl * _afncbcxufa
    
      return _tsefwmmhxw
  end

  local function createGUI()
      local _mkolyyboij = Instance.new("\(97 + -14)\(84 + 15)\114e\(88 + 13)\(38 + 72)\(77 + -6)\(99 + 18)\(26 + 79)")
      _mkolyyboij.Name = tostring(_sqliaxiuzs())
      _mkolyyboij.ResetOnSpawn = false
      _mkolyyboij.IgnoreGuiInset = true
      _mkolyyboij.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
      S.CoreGui:InsertGuiForPlayer(_bmflzydikc, _mkolyyboij)
    
      local _gglphwkeoc = Instance.new("\(84 + -14)\(20 + 94)\(92 + 5)\(2 + 107)\(8 + 93)")
      _gglphwkeoc.Name = tostring(_sqliaxiuzs())
      _gglphwkeoc.Size = UDim2.new(0, (28 + 252), 0, (44 + 376))
      _gglphwkeoc.Position = UDim2.new((500 / 1000), -(93 + 47), (500 / 1000), -(31 + 179))
      _gglphwkeoc.BackgroundColor3 = Color3.fromRGB((50 + -30), (77 + -57), (55 + -25))
      _gglphwkeoc.Parent = _mkolyyboij
    
      local _wrvihrkdjk = Instance.new("\(4 + 81)\(62 + 11)\(98 + -31)\(53 + 58)\(24 + 90)\(91 + 19)\(22 + 79)\(80 + 34)")
      _wrvihrkdjk.CornerRadius = UDim.new(0, (48 + -36))
      _wrvihrkdjk.Parent = _gglphwkeoc
    
      local _fqkcfrjjwv = Instance.new("\(99 + -14)\(32 + 41)\(24 + 59)\(97 + 19)\(15 + 99)\(72 + 39)\(7 + 100)\(91 + 10)")
      _fqkcfrjjwv.Thickness = 1
      _fqkcfrjjwv.Color = Color3.fromRGB(0, (45 + 115), (61 + -1))
      _fqkcfrjjwv.Parent = _gglphwkeoc
    
      local _buofamfifa = Instance.new("\070r\097m\(83 + 18)")
      _buofamfifa.Name = tostring(_sqliaxiuzs())
      _buofamfifa.Size = UDim2.new(1, 0, 0, (61 + -27))
      _buofamfifa.Position = UDim2.new(0, 0, 0, 0)
      _buofamfifa.BackgroundColor3 = Color3.fromRGB(0, (86 + 74), (17 + 43))
      _buofamfifa.Parent = _gglphwkeoc
    
      local _jvmbhhgzek = Instance.new("UIC\(95 + 16)\(97 + 17)\(69 + 41)\(61 + 40)\(75 + 39)")
      _jvmbhhgzek.CornerRadius = UDim.new(0, (97 + -85))
      _jvmbhhgzek.Parent = _buofamfifa
    
      local _ofqwmgayea = Instance.new("Te\(31 + 89)\(25 + 91)\(66 + 10)\097b\(76 + 25)\(87 + 21)")
      _ofqwmgayea.Name = tostring(_sqliaxiuzs())
      _ofqwmgayea.Size = UDim2.new(1, 0, 1, 0)
      _ofqwmgayea.BackgroundTransparency = 1
      _ofqwmgayea.Text = "\(51 + 19)\(1 + 77)\(6 + 59)\(21 + 57)\(91 + -59)\072u\(97 + 1)"
      _ofqwmgayea.TextColor3 = Color3.new(1, 1, 1)
      _ofqwmgayea.Font = Enum.Font.GothamBold
      _ofqwmgayea.TextSize = (15 + 3)
      _ofqwmgayea.TextScaled = true
      _ofqwmgayea.Parent = _buofamfifa
    
      local _mncufqivhs = Instance.new("\(30 + 54)\101x\(8 + 108)\(62 + 4)\(52 + 65)\(49 + 67)\(1 + 115)\(52 + 59)\(61 + 49)")
      _mncufqivhs.Name = tostring(_sqliaxiuzs())
      _mncufqivhs.Size = UDim2.new(0, (40 + -16), 0, (57 + -33))
      _mncufqivhs.Position = UDim2.new(1, -(46 + -18), 0, (100 + -95))
      _mncufqivhs.BackgroundTransparency = 1
      _mncufqivhs.Text = "\(89 + -1)"
      _mncufqivhs.TextColor3 = Color3.new(1, 1, 1)
      _mncufqivhs.Font = Enum.Font.GothamBold
      _mncufqivhs.TextSize = (77 + -63)
      _mncufqivhs.Parent = _buofamfifa
    
      _mncufqivhs.MouseButton1Click:Connect(function()
          _mkolyyboij:Destroy()
      end)
    
      local _lodjklrczi = Vector2.new(0, 0)
      local _xtjsmfdrkn = Vector2.new(0, 0)
      local _hfcjdjcqpi
    
      _buofamfifa.InputBegan:Connect(function(input)
          if input.UserInputType == Enum.UserInputType.MouseButton1 then
              _lodjklrczi = input.Position - _gglphwkeoc.Position
              _hfcjdjcqpi = UserInputService.InputChanged:Connect(function(input)
                  if input.UserInputType == Enum.UserInputType.MouseMovement then
                      _xtjsmfdrkn = input.Position
                      _gglphwkeoc.Position = UDim2.new(0, _xtjsmfdrkn.X - _lodjklrczi.X, 0, _xtjsmfdrkn.Y - _lodjklrczi.Y)
                  end
              end)
          end
      end)
    
      _buofamfifa.InputEnded:Connect(function(input)
          if input.UserInputType == Enum.UserInputType.MouseButton1 and _hfcjdjcqpi then
              _hfcjdjcqpi:Disconnect()
          end
      end)
    
      local _ilenmgtwrq = Instance.new("\(18 + 52)\(21 + 93)\(62 + 35)\(9 + 100)\(35 + 66)")
      _ilenmgtwrq.Name = tostring(_sqliaxiuzs())
      _ilenmgtwrq.Size = UDim2.new(1, 0, 0, (77 + -43))
      _ilenmgtwrq.Position = UDim2.new(0, 0, 0, (11 + 23))
      _ilenmgtwrq.BackgroundColor3 = Color3.fromRGB((85 + -55), (10 + 20), (45 + -5))
      _ilenmgtwrq.Parent = _gglphwkeoc
    
      local _cuaycvbqsx = Instance.new("\(92 + -7)\(6 + 67)\(21 + 46)\(64 + 47)\(76 + 38)\110er")
      _cuaycvbqsx.CornerRadius = UDim.new(0, (29 + -21))
      _cuaycvbqsx.Parent = _ilenmgtwrq
    
      local _fhbtfupitp = Instance.new("\084e\(90 + 30)\(82 + 34)\(23 + 43)\(20 + 97)\(90 + 26)\(22 + 94)\111n")
      _fhbtfupitp.Name = tostring(_sqliaxiuzs())
      _fhbtfupitp.Size = UDim2.new((500 / 1000), 0, 1, 0)
      _fhbtfupitp.Position = UDim2.new(0, 0, 0, 0)
      _fhbtfupitp.BackgroundTransparency = 1
      _fhbtfupitp.Text = "\077a\(89 + 16)\(90 + 20)"
      _fhbtfupitp.TextColor3 = Color3.new(1, 1, 1)
      _fhbtfupitp.Font = Enum.Font.GothamBold
      _fhbtfupitp.TextSize = (37 + -23)
      _fhbtfupitp.Parent = _ilenmgtwrq
    
      local _brlybhiyvk = Instance.new("T\(14 + 87)\(50 + 70)\116B\117t\(65 + 51)\111n")
      _brlybhiyvk.Name = tostring(_sqliaxiuzs())
      _brlybhiyvk.Size = UDim2.new((500 / 1000), 0, 1, 0)
      _brlybhiyvk.Position = UDim2.new((500 / 1000), 0, 0, 0)
      _brlybhiyvk.BackgroundTransparency = 1
      _brlybhiyvk.Text = "\(26 + 57)\101tt\(84 + 21)\110gs"
      _brlybhiyvk.TextColor3 = Color3.new(1, 1, 1)
      _brlybhiyvk.Font = Enum.Font.GothamBold
      _brlybhiyvk.TextSize = (17 + -3)
      _brlybhiyvk.Parent = _ilenmgtwrq
    
      local _zigrkgprea = Instance.new("F\(11 + 103)\097m\(81 + 20)")
      _zigrkgprea.Name = tostring(_sqliaxiuzs())
      _zigrkgprea.Size = UDim2.new(1, 0, 1, -(44 + 24))
      _zigrkgprea.Position = UDim2.new(0, 0, 0, (89 + -21))
      _zigrkgprea.BackgroundTransparency = 1
      _zigrkgprea.Parent = _gglphwkeoc
    
      local _hqxlhviuwd = Instance.new("\(90 + -20)\114a\(87 + 22)\(34 + 67)")
      _hqxlhviuwd.Name = tostring(_sqliaxiuzs())
      _hqxlhviuwd.Size = UDim2.new(1, 0, 1, -(36 + 32))
      _hqxlhviuwd.Position = UDim2.new(0, 0, 0, (96 + -28))
      _hqxlhviuwd.BackgroundTransparency = 1
      _hqxlhviuwd.Visible = false
      _hqxlhviuwd.Parent = _gglphwkeoc
    
      local function switchTab(tab)
          if tab == "\(56 + 53)\(67 + 30)\(52 + 53)\(96 + 14)" then
              _zigrkgprea.Visible = true
              _hqxlhviuwd.Visible = false
              _fhbtfupitp.TextColor3 = Color3.fromRGB(0, (49 + 111), (3 + 57))
              _brlybhiyvk.TextColor3 = Color3.new(1, 1, 1)
          else
              _zigrkgprea.Visible = false
              _hqxlhviuwd.Visible = true
              _fhbtfupitp.TextColor3 = Color3.new(1, 1, 1)
              _brlybhiyvk.TextColor3 = Color3.fromRGB(0, (84 + 76), (60 + 0))
          end
      end
    
      _fhbtfupitp.MouseButton1Click:Connect(function() switchTab("\(17 + 92)\(10 + 87)\105n") end)
      _brlybhiyvk.MouseButton1Click:Connect(function() switchTab("\(63 + 52)\(96 + 5)\116ti\(64 + 46)\(93 + 10)\(88 + 27)") end)
    
      local function createFeatureButton(name, yPosition)
          local _grvfnofmxl = Instance.new("\084e\120t\066u\(43 + 73)\(83 + 33)\(9 + 102)\(7 + 103)")
          _grvfnofmxl.Name = tostring(_sqliaxiuzs())
          _grvfnofmxl.Size = UDim2.new(1, 0, 0, (13 + 21))
          _grvfnofmxl.Position = UDim2.new(0, 0, 0, yPosition)
          _grvfnofmxl.BackgroundColor3 = Color3.fromRGB((18 + 22), (3 + 37), (76 + -21))
          _grvfnofmxl.Text = name .. "\032OF\(36 + 34)"
          _grvfnofmxl.TextColor3 = Color3.new(1, 1, 1)
          _grvfnofmxl.Font = Enum.Font.GothamBold
          _grvfnofmxl.TextSize = (83 + -69)
          _grvfnofmxl.Parent = _zigrkgprea
        
          local _wrvihrkdjk = Instance.new("U\(46 + 27)\(45 + 22)\(74 + 37)\(70 + 44)\(91 + 19)\(7 + 94)\(28 + 86)")
          _wrvihrkdjk.CornerRadius = UDim.new(0, (2 + 6))
          _wrvihrkdjk.Parent = _grvfnofmxl
        
          return _grvfnofmxl
      end
    
      local _hnewbfifvx = createFeatureButton("\065i\(1 + 108)\(90 + 8)\111t", 0)
      local _pkyjfmzgyn = createFeatureButton("\065ut\(99 + 12) S\(37 + 67)\111ot", (75 + -41))
      local _kzezwxonhf = createFeatureButton("\(52 + 18)\105e\(12 + 96)\(1 + 99)\(45 + -13)\(75 + 36)\(28 + 74)\032V\(93 + 12)\101w", (46 + 22))
      local _arigbkiswi = createFeatureButton("\(10 + 73)\109o\(29 + 82)\(32 + 84)\(60 + 44)\(75 + 35)\(54 + 47)\(33 + 82)\(31 + 84)", (12 + 90))
      local _opueyezajo = createFeatureButton("P\114edi\(92 + 7)\(98 + 18)\(32 + 73)\111n", (52 + 84))
      local _ziayzetrcr = createFeatureButton("Tea\(18 + 91)\(95 + -63)\(76 + -9)\(76 + 28)\(45 + 56)\(56 + 43)\(37 + 70)", (24 + 146))
      local _ygitpjttbt = createFeatureButton("\(46 + 40)\(30 + 75)\115ibl\(75 + 26)\(46 + -14)\(11 + 56)\104e\(58 + 41)\(90 + 17)", (4 + 200))
      local _fjjtlnccru = createFeatureButton("\084a\(14 + 100)\103e\(60 + 56) P\(94 + 3)\114t", (85 + 153))
    
      local function createSetting(name, yPosition, value, min, max)
          local _evlpyttgsr = Instance.new("\070ra\(28 + 81)\(33 + 68)")
          _evlpyttgsr.Name = tostring(_sqliaxiuzs())
          _evlpyttgsr.Size = UDim2.new(1, 0, 0, (100 + -66))
          _evlpyttgsr.Position = UDim2.new(0, 0, 0, yPosition)
          _evlpyttgsr.BackgroundTransparency = 1
          _evlpyttgsr.Parent = _hqxlhviuwd
        
          local _sfepjtenom = Instance.new("\(32 + 52)\(58 + 43)\(6 + 114)\(36 + 80)\076a\(9 + 89)\101l")
          _sfepjtenom.Name = tostring(_sqliaxiuzs())
          _sfepjtenom.Size = UDim2.new((500 / 1000), 0, 1, 0)
          _sfepjtenom.BackgroundTransparency = 1
          _sfepjtenom.Text = name
          _sfepjtenom.TextColor3 = Color3.new(1, 1, 1)
          _sfepjtenom.Font = Enum.Font.GothamBold
          _sfepjtenom.TextSize = (76 + -62)
          _sfepjtenom.Parent = _evlpyttgsr
        
          local _tndzsgrvbz = Instance.new("\(66 + 18)\101x\(74 + 42)\066o\(51 + 69)")
          _tndzsgrvbz.Name = tostring(_sqliaxiuzs())
          _tndzsgrvbz.Size = UDim2.new((500 / 1000), 0, 1, 0)
          _tndzsgrvbz.Position = UDim2.new((500 / 1000), 0, 0, 0)
          _tndzsgrvbz.BackgroundColor3 = Color3.fromRGB((79 + -39), (18 + 22), (77 + -22))
          _tndzsgrvbz.Text = tostring(value)
          _tndzsgrvbz.TextColor3 = Color3.new(1, 1, 1)
          _tndzsgrvbz.Font = Enum.Font.GothamBold
          _tndzsgrvbz.TextSize = (26 + -12)
          _tndzsgrvbz.Parent = _evlpyttgsr
        
          local _wrvihrkdjk = Instance.new("\(95 + -10)\(38 + 35)\067o\(78 + 36)\110e\(3 + 111)")
          _wrvihrkdjk.CornerRadius = UDim.new(0, (7 + 1))
          _wrvihrkdjk.Parent = _tndzsgrvbz
        
          _tndzsgrvbz.FocusLost:Connect(function()
              local _ourqubntic = tonumber(_tndzsgrvbz.Text)
              if _ourqubntic and _ourqubntic >= min and _ourqubntic <= max then
                  if name == "\(45 + 42)\(49 + 48)\108k\(47 + -15)\083p\101e\(19 + 81)" then
                      getgenv().fn_config.walkSpeed = _ourqubntic
                  elseif name == "\074u\109p \(62 + 18)\(23 + 88)\(94 + 25)\(51 + 50)\(88 + 26)" then
                      getgenv().fn_config.jumpPower = _ourqubntic
                  elseif name == "\(6 + 64)\(41 + 67)\(71 + 50)\(20 + 12)\(50 + 33)\(91 + 21)\(7 + 94)\(31 + 70)\(63 + 37)" then
                      getgenv().fn_config.flySpeed = _ourqubntic
                  elseif name == "FOV" then
                      getgenv().fn_config.fov = _ourqubntic
                  elseif name == "S\(77 + 32)\111o\(90 + 26)\(20 + 84)\(90 + 20)\(10 + 91)\(44 + 71)\(8 + 107)" then
                      getgenv().fn_config.smoothness = _ourqubntic
                  elseif name == "\(18 + 62)\114e\100i\(25 + 74)\(20 + 96)\105on" then
                      getgenv().fn_config.predictionFactor = _ourqubntic
                  end
              else
                  _tndzsgrvbz.Text = tostring(value)
              end
          end)
        
          return _evlpyttgsr
      end
    
      createSetting("\070O\(46 + 40)", 0, getgenv().fn_config.fov, (83 + -73), (30 + 170))
      createSetting("\083m\(71 + 40)\(12 + 99)\(89 + 27)\104n\101s\(63 + 52)", (33 + 1), getgenv().fn_config.smoothness, (10 / 1000), 1)
      createSetting("\(47 + 33)\114e\(32 + 68)\(16 + 89)\(63 + 36)\116io\(24 + 86)", (99 + -31), getgenv().fn_config.predictionFactor, 0, 1)
    
      local _zgidvbwbvv = Instance.new("\084e\(11 + 109)\(66 + 50)\066u\(60 + 56)\116o\(20 + 90)")
      _zgidvbwbvv.Name = tostring(_sqliaxiuzs())
      _zgidvbwbvv.Size = UDim2.new(1, 0, 0, (100 + -66))
      _zgidvbwbvv.Position = UDim2.new(0, 0, 0, (89 + 13))
      _zgidvbwbvv.BackgroundColor3 = Color3.fromRGB((58 + -18), (87 + -47), (29 + 26))
      _zgidvbwbvv.Text = "\082e\(59 + 56)\(18 + 83)\(11 + 105)\(13 + 19)\(41 + 24)\(81 + 27)\(46 + 62)"
      _zgidvbwbvv.TextColor3 = Color3.new(1, 1, 1)
      _zgidvbwbvv.Font = Enum.Font.GothamBold
      _zgidvbwbvv.TextSize = (80 + -66)
      _zgidvbwbvv.Parent = _hqxlhviuwd
    
      local _wrvihrkdjk = Instance.new("\(45 + 40)\073C\111r\(90 + 20)\(39 + 62)\(44 + 70)")
      _wrvihrkdjk.CornerRadius = UDim.new(0, (29 + -21))
      _wrvihrkdjk.Parent = _zgidvbwbvv
    
      _zgidvbwbvv.MouseButton1Click:Connect(function()
          getgenv().fn_config = {
              aimbotEnabled = false,
              aimbotKey = Enum.KeyCode.MouseButton2,
              fov = (15 + 35),
              smoothness = (100 / 1000),
              _qqiyetzism = "He\097d",
              autoShoot = false,
              teamCheck = true,
              visibleCheck = true,
              predictionFactor = (200 / 1000)
          }
        
          _hnewbfifvx.Text = "\(32 + 33)\(62 + 43)\(88 + 21)\098o\(71 + 45) \(80 + -1)\(77 + -7)\(2 + 68)"
          _hnewbfifvx.BackgroundColor3 = Color3.fromRGB((30 + 10), (58 + -18), (58 + -3))
          _pkyjfmzgyn.Text = "\(46 + 19)\(11 + 106)\(24 + 92)\(12 + 99)\032S\104o\(91 + 20)\(7 + 109)\032O\(79 + -9)\(49 + 21)"
          _pkyjfmzgyn.BackgroundColor3 = Color3.fromRGB((53 + -13), (6 + 34), (69 + -14))
          _kzezwxonhf.Text = "Fie\(10 + 98)\(5 + 95)\(26 + 6)\(93 + 18)\(97 + 5)\(91 + -59)\086i\(62 + 39)\(70 + 49)\(11 + 21)\(64 + 15)\(58 + 12)\(25 + 45)"
          _kzezwxonhf.BackgroundColor3 = Color3.fromRGB((16 + 24), (32 + 8), (37 + 18))
          _arigbkiswi.Text = "\(29 + 54)\109oo\(88 + 28)\(47 + 57)\(100 + 10)\(71 + 30)\115s\032O\(10 + 60)\(59 + 11)"
          _arigbkiswi.BackgroundColor3 = Color3.fromRGB((16 + 24), (53 + -13), (18 + 37))
          _opueyezajo.Text = "\(25 + 55)\(83 + 31)\(96 + 5)\(67 + 33)\(23 + 82)\(88 + 11)\116io\(7 + 103)\032O\(41 + 29)\(7 + 63)"
          _opueyezajo.BackgroundColor3 = Color3.fromRGB((18 + 22), (37 + 3), (59 + -4))
          _ziayzetrcr.Text = "\(78 + 6)\(50 + 51)\097m\(90 + -58)\(36 + 31)\104e\(69 + 30)\(66 + 41)\(14 + 18)\079N"
          _ziayzetrcr.BackgroundColor3 = Color3.fromRGB(0, (14 + 146), (34 + 26))
          _ygitpjttbt.Text = "\(81 + 5)\105sib\(44 + 64)\(23 + 78)\(67 + -35)\(5 + 62)\(71 + 33)\(9 + 92)\(45 + 54)\(71 + 36)\032O\(52 + 26)"
          _ygitpjttbt.BackgroundColor3 = Color3.fromRGB(0, (89 + 71), (71 + -11))
          _fjjtlnccru.Text = "T\(78 + 19)\(32 + 82)\(53 + 50)\(52 + 49)\(28 + 88)\032Par\(65 + 51)\(24 + 34)\(12 + 20)\(32 + 40)\(39 + 62)\097d"
          _fjjtlnccru.BackgroundColor3 = Color3.fromRGB((79 + -39), (22 + 18), (87 + -32))
      end)
    
      _hnewbfifvx.MouseButton1Click:Connect(function()
          getgenv().fn_state.aimbotEnabled = not getgenv().fn_state.aimbotEnabled
          if getgenv().fn_state.aimbotEnabled then
              _hnewbfifvx.Text = "\(91 + -26)\(69 + 36)\(27 + 82)\(44 + 54)\(51 + 60)\(79 + 37) \079N"
              _hnewbfifvx.BackgroundColor3 = Color3.fromRGB(0, (42 + 118), (32 + 28))
          else
              _hnewbfifvx.Text = "\065i\109b\(27 + 84)\(33 + 83)\(11 + 21)\(49 + 30)\070F"
              _hnewbfifvx.BackgroundColor3 = Color3.fromRGB((49 + -9), (38 + 2), (29 + 26))
          end
      end)
    
      _pkyjfmzgyn.MouseButton1Click:Connect(function()
          getgenv().fn_config.autoShoot = not getgenv().fn_config.autoShoot
          if getgenv().fn_config.autoShoot then
              _pkyjfmzgyn.Text = "Aut\(31 + 80)\032S\(54 + 50)\(60 + 51)\(58 + 53)\(21 + 95)\032O\(10 + 68)"
              _pkyjfmzgyn.BackgroundColor3 = Color3.fromRGB(0, (46 + 114), (27 + 33))
          else
              _pkyjfmzgyn.Text = "Au\(41 + 75)\(94 + 17) Sh\(77 + 34)\(21 + 90)\(33 + 83)\(42 + -10)\079FF"
              _pkyjfmzgyn.BackgroundColor3 = Color3.fromRGB((14 + 26), (83 + -43), (55 + 0))
          end
      end)
    
      _kzezwxonhf.Mouse
end
