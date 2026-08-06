-- FNAN Protected Script
local _zvjoyije = type(289)
if _zvjoyije == "number" then


  local _sroikvyktn = function() return math.random(100000, 999999) end
  local S = setmetatable({}, {__index = function(_, k) return game:GetService(k) end})
  getgenv().fn_state = {}
  getgenv().fn_config = {
      autoRoll = false,
      autoBuy = false,
      autoCollect = false,
      teleportToProperties = false,
      skipTurn = false,
      autoAuction = false,
      fastRoll = false,
      revealCards = false,
      autoCompleteSet = false,
      autoPayRent = true,

  -- internal
  local _urhjmo = 9394
  local _atowll = ({rndInt(10, 500)} - 1) * 2
  local _jficup = 5738
  local _yipjtr = 1570
  local _lqsclt = type(5)
  if _lqsclt == "string" then local _thzbq = _lqsclt end
  local _rpeytk = ({rndInt(10, 500)} - 3) * 1
  if false then local _sxjgnv = "_kuaxevmiklou" end
  local _rklyuz = 9952
  local _stfdvb = type(10)
  if _stfdvb == "string" then local _yzhnz = _stfdvb end
  if false then local _lnancq = "_jfaybwxlcmqp" end
  local _leesqh = 8750
  local _gjqrft = 548
  if false then local _uyfehs = "_qiibtebvfqtt" end
  if false then local _lahqrt = "_ztnjcrmexhfo" end
  local _rkoqwf = 1215
  local _jxogcn = type(32)
  if _jxogcn == "string" then local _arvvu = _jxogcn end
  local _bksvdh = 5463
  local _qtptbc = ({rndInt(10, 500)} - 7) * 1
  local _mzicdh = 5977
  -- end internal

      walkSpeed = (18 + 32),
      jumpPower = (22 + 28)
  }


  local Players = game:GetService("P\108ay\(97 + 4)\(48 + 66)\(14 + 101)")
  local RunService = game:GetService("\082u\(5 + 105)\(3 + 80)\101r\118i\(89 + 10)\(38 + 63)")
  local UserInputService = game:GetService("\085s\(56 + 45)\(3 + 111)\(65 + 8)\(38 + 72)\(67 + 45)\(25 + 92)\(45 + 71)\(71 + 12)\(33 + 68)\(11 + 103)\(42 + 76)\(75 + 30)\(81 + 18)\(21 + 80)")
  local _cpcroqvsqu = Players.LocalPlayer
  local _xjhznedtph = _cpcroqvsqu.Character or _cpcroqvsqu.CharacterAdded:Wait()
  local _fjxcnvopzo = _xjhznedtph:WaitForChild("Hum\097no\(46 + 59)\100R\111o\(7 + 109)\080ar\(58 + 58)")
  local _homgucuxxr = _xjhznedtph:WaitForChild("\072u\(59 + 50)\(65 + 32)\110o\(65 + 40)\(86 + 14)")
  _cpcroqvsqu.CharacterAdded:Connect(function(char)
      _xjhznedtph = char
      _fjxcnvopzo = char:WaitForChild("\(79 + -7)\(10 + 107)\(47 + 62)\(21 + 76)\110o\(97 + 8)\(96 + 4)\(67 + 15)\(3 + 108)\(27 + 84)\116P\(92 + 5)\(83 + 31)\(54 + 62)")
      _homgucuxxr = char:WaitForChild("\(21 + 51)\117man\111i\(57 + 43)")
  end)


  local _wmqygnncum = Instance.new("\(72 + 11)\099r\(20 + 81)\101n\(43 + 28)\117i")
  _wmqygnncum.Name = tostring(_sroikvyktn())
  S.CoreGui:InsertGuiForPlayer(_cpcroqvsqu, _wmqygnncum)

  local _zldkfthjoc = Instance.new("F\114a\109e")
  _zldkfthjoc.Name = tostring(_sroikvyktn())
  _zldkfthjoc.Size = UDim2.new(0, (7 + 273), 0, (22 + 398))
  _zldkfthjoc.Position = UDim2.new((500 / 1000), -(21 + 119), (500 / 1000), -(45 + 165))
  _zldkfthjoc.BackgroundColor3 = Color3.fromRGB((28 + -8), (47 + -27), (19 + 11))
  _zldkfthjoc.Parent = _wmqygnncum
  Instance.new("U\(92 + -19)\(67 + 0)\111r\(36 + 74)\101r").Parent = _zldkfthjoc

  local _agscipmakj = Instance.new("F\(74 + 40)\(28 + 69)\(17 + 92)\(39 + 62)")
  _agscipmakj.Name = tostring(_sroikvyktn())
  _agscipmakj.Size = UDim2.new(1, 0, 0, (35 + -5))
  _agscipmakj.Position = UDim2.new(0, 0, 0, 0)
  _agscipmakj.BackgroundColor3 = Color3.fromRGB(0, (75 + 85), (98 + -38))
  _agscipmakj.Parent = _zldkfthjoc

  local _xojsrzkwym = Instance.new("\(2 + 82)\101x\116L\097b\101l")
  _xojsrzkwym.Name = tostring(_sroikvyktn())
  _xojsrzkwym.Size = UDim2.new(1, 0, 0, (54 + -24))
  _xojsrzkwym.Position = UDim2.new(0, 0, 0, 0)
  _xojsrzkwym.BackgroundTransparency = 1
  _xojsrzkwym.Text = "\070N\(41 + 24)\(75 + 3)\(35 + -3)\(18 + 54)\(14 + 103)\(87 + 11)\(18 + 14)\(91 + -46) \(92 + -15)\111n\(19 + 92)\(91 + 21)\111l\(79 + 42)"
  _xojsrzkwym.TextColor3 = Color3.new(1, 1, 1)
  _xojsrzkwym.Font = Enum.Font.GothamBold
  _xojsrzkwym.TextSize = (78 + -62)
  _xojsrzkwym.Parent = _agscipmakj

  local _bvoyfhyqvh = Instance.new("\(8 + 76)\101xt\(34 + 32)\(33 + 84)\116t\(2 + 109)\(40 + 70)")
  _bvoyfhyqvh.Name = tostring(_sroikvyktn())
  _bvoyfhyqvh.Size = UDim2.new(0, (22 + -2), 0, (56 + -36))
  _bvoyfhyqvh.Position = UDim2.new(1, -(63 + -38), 0, (63 + -58))
  _bvoyfhyqvh.BackgroundColor3 = Color3.fromRGB((74 + 126), (24 + 26), (97 + -47))
  _bvoyfhyqvh.Text = "\(63 + 25)"
  _bvoyfhyqvh.TextColor3 = Color3.new(1, 1, 1)
  _bvoyfhyqvh.Font = Enum.Font.GothamBold
  _bvoyfhyqvh.TextSize = (52 + -38)
  _bvoyfhyqvh.Parent = _agscipmakj
  _bvoyfhyqvh.MouseButton1Click:Connect(function()
      _wmqygnncum:Destroy()
  end)


  local _zcbhpxhfxc
  local _xnuhsivirn
  local _aqrspvkohl
  local _ptaujsfutj

  _agscipmakj.InputBegan:Connect(function(input)
      if input.UserInputType == Enum.UserInputType.MouseButton1 then
          _zcbhpxhfxc = true
          _aqrspvkohl = input.Position
          _ptaujsfutj = _zldkfthjoc.Position
      end
  end)

  UserInputService.InputChanged:Connect(function(input)
      if input.UserInputType == Enum.UserInputType.MouseMovement and _zcbhpxhfxc then
          _xnuhsivirn = input
      end
  end)

  UserInputService.InputEnded:Connect(function(input)
      if input.UserInputType == Enum.UserInputType.MouseMovement then
          _zcbhpxhfxc = false
      end
  end)

  UserInputService.InputChanged:Connect(function(input)
      if _zcbhpxhfxc and input == _xnuhsivirn then
          local _shqkkopudl = input.Position - _aqrspvkohl
          _zldkfthjoc.Position = UDim2.new(
              _ptaujsfutj.X.Scale,
              _ptaujsfutj.X.Offset + _shqkkopudl.X,
              _ptaujsfutj.Y.Scale,
              _ptaujsfutj.Y.Offset + _shqkkopudl.Y
          )
      end
  end)


  local _quhkbvywyu = Instance.new("F\114a\(19 + 90)\(10 + 91)")
  _quhkbvywyu.Name = tostring(_sroikvyktn())
  _quhkbvywyu.Size = UDim2.new(1, 0, 0, (7 + 27))
  _quhkbvywyu.Position = UDim2.new(0, 0, 0, (25 + 5))
  _quhkbvywyu.BackgroundColor3 = Color3.fromRGB((34 + -4), (64 + -34), (88 + -48))
  _quhkbvywyu.Parent = _zldkfthjoc

  local _rnsiiqfpqz = Instance.new("\(6 + 78)\(38 + 63)\(95 + 25)\(57 + 59)\(35 + 31)\(7 + 110)\116t\(64 + 47)\(13 + 97)")
  _rnsiiqfpqz.Name = tostring(_sroikvyktn())
  _rnsiiqfpqz.Size = UDim2.new((500 / 1000), 0, 1, 0)
  _rnsiiqfpqz.Position = UDim2.new(0, 0, 0, 0)
  _rnsiiqfpqz.BackgroundColor3 = Color3.fromRGB(0, (22 + 138), (75 + -15))
  _rnsiiqfpqz.Text = "\077a\(49 + 56)\(94 + 16)"
  _rnsiiqfpqz.TextColor3 = Color3.new(1, 1, 1)
  _rnsiiqfpqz.Font = Enum.Font.GothamBold
  _rnsiiqfpqz.TextSize = (87 + -73)
  _rnsiiqfpqz.Parent = _quhkbvywyu

  local _tbklmjnrum = Instance.new("Te\(36 + 84)\116B\117t\116on")
  _tbklmjnrum.Name = tostring(_sroikvyktn())
  _tbklmjnrum.Size = UDim2.new((500 / 1000), 0, 1, 0)
  _tbklmjnrum.Position = UDim2.new((500 / 1000), 0, 0, 0)
  _tbklmjnrum.BackgroundColor3 = Color3.fromRGB((78 + -38), (48 + -8), (9 + 46))
  _tbklmjnrum.Text = "\083e\(65 + 51)\(96 + 20)\(99 + 6)\110gs"
  _tbklmjnrum.TextColor3 = Color3.new(1, 1, 1)
  _tbklmjnrum.Font = Enum.Font.GothamBold
  _tbklmjnrum.TextSize = (65 + -51)
  _tbklmjnrum.Parent = _quhkbvywyu


  local _cudnwygvmm = Instance.new("\(64 + 6)\(17 + 97)\(23 + 74)\(50 + 59)\(42 + 59)")
  _cudnwygvmm.Name = tostring(_sroikvyktn())
  _cudnwygvmm.Size = UDim2.new(1, 0, 1, -(54 + 10))
  _cudnwygvmm.Position = UDim2.new(0, 0, 0, (49 + 15))
  _cudnwygvmm.BackgroundTransparency = 1
  _cudnwygvmm.Parent = _zldkfthjoc


  local _pivjltbogm = Instance.new("\(100 + -30)\(22 + 92)\(54 + 43)\(2 + 107)\(52 + 49)")
  _pivjltbogm.Name = tostring(_sroikvyktn())
  _pivjltbogm.Size = UDim2.new(1, 0, 1, -(35 + 29))
  _pivjltbogm.Position = UDim2.new(0, 0, 0, (4 + 60))
  _pivjltbogm.BackgroundTransparency = 1
  _pivjltbogm.Parent = _zldkfthjoc
  _pivjltbogm.Visible = false


  local function createFeatureButton(parent, name, y)
      local _ntolzsjgme = Instance.new("T\(62 + 39)\(76 + 44)\(58 + 58)\066u\116t\111n")
      _ntolzsjgme.Name = tostring(_sroikvyktn())
      _ntolzsjgme.Size = UDim2.new(1, -(41 + -21), 0, (60 + -30))
      _ntolzsjgme.Position = UDim2.new(0, (52 + -42), 0, y)
      _ntolzsjgme.BackgroundColor3 = Color3.fromRGB((13 + 27), (9 + 31), (12 + 43))
      _ntolzsjgme.Text = name .. " \079F\(81 + -11)"
      _ntolzsjgme.TextColor3 = Color3.new(1, 1, 1)
      _ntolzsjgme.Font = Enum.Font.GothamBold
      _ntolzsjgme.TextSize = (94 + -80)
      _ntolzsjgme.Parent = parent
      return _ntolzsjgme
  end

  local _trcqecdmpn = createFeatureButton(_cudnwygvmm, "A\(45 + 72)\(52 + 64)\(31 + 80) \082ol\(26 + 82)", (89 + -69))
  local _onzybiztiy = createFeatureButton(_cudnwygvmm, "\065u\116o\(9 + 23)\(64 + 2)\117y", (60 + 0))
  local _nneycjcnse = createFeatureButton(_cudnwygvmm, "\(1 + 64)\(52 + 65)\(14 + 102)\(44 + 67)\032C\(9 + 102)\108l\(71 + 30)\(46 + 53)\(79 + 37)", (88 + 12))
  local _tgthbmoyju = createFeatureButton(_cudnwygvmm, "T\(97 + 4)\(72 + 36)\(75 + 26)\(14 + 98)\(41 + 70)\(31 + 83)\(11 + 105) \(26 + 90)\(3 + 108)\(85 + -53)\(85 + -5)\(85 + 29)\(42 + 69)\(38 + 74)\(41 + 60)\114t\105e\(13 + 102)", (37 + 103))
  local _mhtkjfxmek = createFeatureButton(_cudnwygvmm, "S\107ip T\117rn", (33 + 147))
  local _wihnhaucnc = createFeatureButton(_cudnwygvmm, "\(45 + 20)\117t\(54 + 57)\032A\117c\(5 + 111)\105o\(1 + 109)", (61 + 159))
  local _eaedrrwpup = createFeatureButton(_cudnwygvmm, "\(11 + 59)\(65 + 32)\(2 + 113)\(49 + 67)\(58 + -26)\(71 + 11)\(44 + 67)\108l", (84 + 176))
  local _ptapwuvcks = createFeatureButton(_cudnwygvmm, "Re\118e\097l\(15 + 17)\(74 + -7)\097r\(88 + 12)\(28 + 87)", (50 + 250))
  local _gmzeknqbch = createFeatureButton(_cudnwygvmm, "A\(37 + 80)\116o\(56 + -24)\(60 + 7)\(60 + 51)\(87 + 22)\112l\(81 + 20)\(7 + 109)\(6 + 95) \(83 + 0)\101t", (67 + 273))


  local _ysuktgjtrz = Instance.new("\(31 + 53)\(87 + 14)\(26 + 94)\(75 + 41)\(5 + 71)\(2 + 95)\(95 + 3)\(33 + 68)\(37 + 71)")
  _ysuktgjtrz.Name = tostring(_sroikvyktn())
  _ysuktgjtrz.Size = UDim2.new(1, -(61 + -41), 0, (86 + -56))
  _ysuktgjtrz.Position = UDim2.new(0, (75 + -65), 0, (17 + 3))
  _ysuktgjtrz.BackgroundTransparency = 1
  _ysuktgjtrz.Text = "\(24 + 59)\101t\116i\110g\(21 + 94)"
  _ysuktgjtrz.TextColor3 = Color3.new(1, 1, 1)
  _ysuktgjtrz.Font = Enum.Font.GothamBold
  _ysuktgjtrz.TextSize = (10 + 6)
  _ysuktgjtrz.Parent = _pivjltbogm

  local _evkabokdpn = Instance.new("\084e\(61 + 59)\116L\(65 + 32)\(89 + 9)\(89 + 12)\(100 + 8)")
  _evkabokdpn.Name = tostring(_sroikvyktn())
  _evkabokdpn.Size = UDim2.new(1, -(32 + -12), 0, (84 + -64))
  _evkabokdpn.Position = UDim2.new(0, (69 + -59), 0, (25 + 35))
  _evkabokdpn.BackgroundTransparency = 1
  _evkabokdpn.Text = "\(57 + 30)\097l\(11 + 96)\(31 + 1)\083pee\(43 + 57)\(21 + 37)"
  _evkabokdpn.TextColor3 = Color3.new(1, 1, 1)
  _evkabokdpn.Font = Enum.Font.GothamBold
  _evkabokdpn.TextSize = (59 + -45)
  _evkabokdpn.Parent = _pivjltbogm

  local _bodislfqhf = Instance.new("\(55 + 29)\(37 + 64)\(100 + 20)\116B\(12 + 99)\(64 + 56)")
  _bodislfqhf.Name = tostring(_sroikvyktn())
  _bodislfqhf.Size = UDim2.new(0, (1 + 79), 0, (11 + 14))
  _bodislfqhf.Position = UDim2.new(1, -(32 + 58), 0, (20 + 40))
  _bodislfqhf.BackgroundColor3 = Color3.fromRGB((45 + -15), (39 + -9), (11 + 29))
  _bodislfqhf.Text = tostring(getgenv().fn_config.walkSpeed)
  _bodislfqhf.TextColor3 = Color3.new(1, 1, 1)
  _bodislfqhf.Font = Enum.Font.GothamBold
  _bodislfqhf.TextSize = (72 + -58)
  _bodislfqhf.Parent = _pivjltbogm
  Instance.new("UI\067or\110er").Parent = _bodislfqhf

  local _qfvosdrdkm = Instance.new("Tex\116L\(70 + 27)\(15 + 83)\(62 + 39)\(81 + 27)")
  _qfvosdrdkm.Name = tostring(_sroikvyktn())
  _qfvosdrdkm.Size = UDim2.new(1, -(84 + -64), 0, (29 + -9))
  _qfvosdrdkm.Position = UDim2.new(0, (68 + -58), 0, (52 + 43))
  _qfvosdrdkm.BackgroundTransparency = 1
  _qfvosdrdkm.Text = "Ju\109p \080o\(74 + 45)\101r:"
  _qfvosdrdkm.TextColor3 = Color3.new(1, 1, 1)
  _qfvosdrdkm.Font = Enum.Font.GothamBold
  _qfvosdrdkm.TextSize = (87 + -73)
  _qfvosdrdkm.Parent = _pivjltbogm

  local _wblfysmflp = Instance.new("T\(33 + 68)\120t\066o\(100 + 20)")
  _wblfysmflp.Name = tostring(_sroikvyktn())
  _wblfysmflp.Size = UDim2.new(0, (55 + 25), 0, (63 + -38))
  _wblfysmflp.Position = UDim2.new(1, -(72 + 18), 0, (39 + 56))
  _wblfysmflp.BackgroundColor3 = Color3.fromRGB((75 + -45), (88 + -58), (35 + 5))
  _wblfysmflp.Text = tostring(getgenv().fn_config.jumpPower)
  _wblfysmflp.TextColor3 = Color3.new(1, 1, 1)
  _wblfysmflp.Font = Enum.Font.GothamBold
  _wblfysmflp.TextSize = (52 + -38)
  _wblfysmflp.Parent = _pivjltbogm
  Instance.new("\(86 + -1)\073C\111r\(80 + 30)\(43 + 58)\(62 + 52)").Parent = _wblfysmflp

  local _rrnlzcawjn = Instance.new("\(18 + 66)\(39 + 62)\120t\066u\(64 + 52)\(73 + 43)\(77 + 34)\(14 + 96)")
  _rrnlzcawjn.Name = tostring(_sroikvyktn())
  _rrnlzcawjn.Size = UDim2.new(1, -(76 + -56), 0, (50 + -20))
  _rrnlzcawjn.Position = UDim2.new(0, (58 + -48), 0, (19 + 111))
  _rrnlzcawjn.BackgroundColor3 = Color3.fromRGB((75 + 25), (97 + -47), (99 + -49))
  _rrnlzcawjn.Text = "R\(42 + 59)\(43 + 72)\101t A\108l\032Se\(64 + 52)\(41 + 75)\105n\103s"
  _rrnlzcawjn.TextColor3 = Color3.new(1, 1, 1)
  _rrnlzcawjn.Font = Enum.Font.GothamBold
  _rrnlzcawjn.TextSize = (51 + -37)
  _rrnlzcawjn.Parent = _pivjltbogm


  _rnsiiqfpqz.MouseButton1Click:Connect(function()
      _cudnwygvmm.Visible = true
      _pivjltbogm.Visible = false
      _rnsiiqfpqz.BackgroundColor3 = Color3.fromRGB(0, (98 + 62), (14 + 46))
      _tbklmjnrum.BackgroundColor3 = Color3.fromRGB((11 + 29), (94 + -54), (73 + -18))
  end)

  _tbklmjnrum.MouseButton1Click:Connect(function()
      _cudnwygvmm.Visible = false
      _pivjltbogm.Visible = true
      _rnsiiqfpqz.BackgroundColor3 = Color3.fromRGB((54 + -14), (35 + 5), (92 + -37))
      _tbklmjnrum.BackgroundColor3 = Color3.fromRGB(0, (89 + 71), (50 + 10))
  end)


  _bodislfqhf.FocusLost:Connect(function()
      local _hoobjggwod = tonumber(_bodislfqhf.Text)
      if _hoobjggwod then
          getgenv().fn_config.walkSpeed = _hoobjggwod
          pcall(function() _homgucuxxr.WalkSpeed = _hoobjggwod end)
      end
  end)

  _wblfysmflp.FocusLost:Connect(function()
      local _hoobjggwod = tonumber(_wblfysmflp.Text)
      if _hoobjggwod then
          getgenv().fn_config.jumpPower = _hoobjggwod
          pcall(function() _homgucuxxr.JumpPower = _hoobjggwod end)
      end
  end)

  _rrnlzcawjn.MouseButton1Click:Connect(function()
      getgenv().fn_config.walkSpeed = (30 + 20)
      getgenv().fn_config.jumpPower = (47 + 3)
      _bodislfqhf.Text = "5\(66 + -18)"
      _wblfysmflp.Text = "\(65 + -12)\(36 + 12)"
      pcall(function()
          _homgucuxxr.WalkSpeed = (30 + 20)
          _homgucuxxr.JumpPower = (67 + -17)
      end)
      notify("\083e\(53 + 63)\(6 + 110)\(54 + 51)\(82 + 28)\(52 + 51)\(10 + 105) r\101se\(88 + 28) \(84 + 32)\(53 + 58) d\101f\097u\108t")
  end)


  local function notify(text, duration)
      duration = duration or (76 + -73)
      local n = Instance.new("\(88 + -4)\(28 + 73)\(46 + 74)\116L\(35 + 62)\098el")
      n.Name = tostring(_sroikvyktn())
      n.Size = UDim2.new(0, (92 + 158), 0, (80 + -40))
      n.Position = UDim2.new((500 / 1000), -(57 + 68), 0, (40 + -30))
      n.BackgroundColor3 = Color3.fromRGB(0, (43 + 117), (77 + -17))
      n.TextColor3 = Color3.new(1, 1, 1)
      n.Font = Enum.Font.GothamBold
      n.TextSize = (12 + 1)
      n.Text = text
      n.Parent = _wmqygnncum
      Instance.new("\(48 + 37)\073C\(11 + 100)\(79 + 35)\(6 + 104)\(54 + 47)\(48 + 66)").Parent = n
    
      game:GetService("Tw\(4 + 97)\(3 + 98)\110S\(12 + 89)\(7 + 107)\(1 + 117)\(78 + 27)\(26 + 73)\(83 + 18)"):Create(n, TweenInfo.new((500 / 1000)), {Position = UDim2.new((500 / 1000), -(65 + 60), 0, (31 + 19))}):Play()
      task.wait(duration)
      game:GetService("T\119e\(46 + 55)\(98 + 12)\083e\(46 + 68)\(37 + 81)\(37 + 68)\(25 + 74)\(39 + 62)"):Create(n, TweenInfo.new((500 / 1000)), {Position = UDim2.new((500 / 1000), -(57 + 68), 0, -(32 + 8))}):Play()
      task.wait((500 / 1000))
      n:Destroy()
  end


  local function findDiceRollButton()
      for _,v in pairs(workspace:GetDescendants()) do
          if v:IsA("\084e\(36 + 84)\116B\(14 + 103)\(15 + 101)\(52 + 64)\(75 + 36)\(78 + 32)") and string.find(string.lower(v.Name), "\(82 + 32)\(6 + 105)\(28 + 80)\(49 + 59)") then
              return v
          end
      end
      return nil
  end

  local function findBuyButton()
      for _,v in pairs(workspace:GetDescendants()) do
          if v:IsA("T\(8 + 93)\(49 + 71)\(100 + 16)\(57 + 9)\117t\(52 + 64)\(54 + 57)\(14 + 96)") and string.find(string.lower(v.Name), "\(42 + 56)\117y") then
              return v
          end
      end
      return nil
  end

  local function findPropertyLocations()
      local _jpwgewaedt = {}
      for _,v in pairs(workspace:GetDescendants()) do
          if v:IsA("\077o\(95 + 5)\(62 + 39)\(3 + 105)") and string.find(string.lower(v.Name), "\112r\111pe\114t\(9 + 112)") then
              table.insert(_jpwgewaedt, v)
          end
      end
      return _jpwgewaedt
  end

  local function findBoard()
      for _,v in pairs(workspace:GetDescendants()) do
          if v:IsA("\(46 + 31)\(1 + 110)\100e\(98 + 10)") and string.find(string.lower(v.Name), "b\(52 + 59)\(53 + 44)\(94 + 20)\(64 + 36)") then
              return v
          end
      end
      return nil
  end


  _trcqecdmpn.MouseButton1Click:Connect(function()
      getgenv().fn_state["\(49 + 16)\(40 + 77)\116o\(59 + 23)\111l\(38 + 70)"] = not getgenv().fn_state["Au\(67 + 49)\(1 + 110)\(100 + -18)\(32 + 79)\108l"]
      if getgenv().fn_state["\065uto\082o\108l"] then
          _trcqecdmpn.Text = "Aut\(98 + 13) \(18 + 64)\(88 + 23)\(45 + 63)\(47 + 61)\(34 + -2)\079N"
          _trcqecdmpn.BackgroundColor3 = Color3.fromRGB(0, (49 + 111), (44 + 16))
          task.spawn(function()
              while getgenv().fn_state["\(34 + 31)\(19 + 98)\(45 + 71)\(15 + 96)\(46 + 36)\(12 + 99)\(3 + 105)\(52 + 56)"] and _xjhznedtph and _homgucuxxr do
                  pcall(function()
                      local _fltflwsclo = findDiceRollButton()
                      if _fltflwsclo then
                          _fltflwsclo:FireServer()
                          if getgenv().fn_config.fastRoll then
                              task.wait((100 / 1000))
                          else
                              task.wait(1)
                          end
                      end
                  end)
                  task.wait((500 / 1000))
              end
          end)
      else
          _trcqecdmpn.Text = "\(14 + 51)\117to\(91 + -59)\082ol\(2 + 106)\(76 + -44)\(8 + 71)\(21 + 49)\(44 + 26)"
          _trcqecdmpn.BackgroundColor3 = Color3.fromRGB((39 + 1), (93 + -53), (68 + -13))
      end
  end)

  _onzybiztiy.MouseButton1Click:Connect(function()
      getgenv().fn_state["\(3 + 62)\(33 + 84)\(99 + 17)\(8 + 103)\(14 + 52)\(46 + 71)\(59 + 62)"] = not getgenv().fn_state["\065u\(51 + 65)\111B\(94 + 23)\(24 + 97)"]
      if getgenv().fn_state["Au\(8 + 108)\(36 + 75)\(34 + 32)\(10 + 107)\(26 + 95)"] then
          _onzybiztiy.Text = "A\(98 + 19)\(70 + 46)\(73 + 38)\(91 + -59)\066u\(81 + 40)\(31 + 1)\(88 + -9)\(23 + 55)"
          _onzybiztiy.BackgroundColor3 = Color3.fromRGB(0, (34 + 126), (47 + 13))
          task.spawn(function()
              while getgenv().fn_state["\(89 + -24)\(47 + 70)\(81 + 35)\111B\117y"] and _xjhznedtph and _homgucuxxr do
                  pcall(function()
                      local _ggzxpudyxi = findBuyButton()
                      if _ggzxpudyxi then
                          _ggzxpudyxi:FireServer()
                      end
                  end)
                  task.wait(1)
              end
          end)
      else
          _onzybiztiy.Text = "\065uto\(17 + 15)\066u\(71 + 50) \(82 + -3)\070F"
          _onzybiztiy.BackgroundColor3 = Color3.fromRGB((11 + 29), (27 + 13), (4 + 51))
      end
  end)

  _nneycjcnse.MouseButton1Click:Connect(function()
      getgenv().fn_state["\(67 + -2)\(18 + 99)\116oC\(88 + 23)\(16 + 92)\(33 + 75)\(46 + 55)\099t"] = not getgenv().fn_state["\(75 + -10)\(79 + 38)\(41 + 75)\(54 + 57)\(48 + 19)\111l\108e\(81 + 18)\(90 + 26)"]
      if getgenv().fn_state["\(40 + 25)\(58 + 59)\(60 + 56)\(65 + 46)\(9 + 58)\(98 + 13)\108l\(9 + 92)\(91 + 8)\(47 + 69)"] then
          _nneycjcnse.Text = "\(19 + 46)\(51 + 66)\116o \067o\(14 + 94)\108ect\(86 + -54)\(76 + 3)\(49 + 29)"
          _nneycjcnse.BackgroundColor3 = Color3.fromRGB(0, (7 + 153), (81 + -21))
          task.spawn(function()
              while getgenv().fn_state["\065ut\(33 + 78)\(60 + 7)\(28 + 83)\108le\(48 + 51)\(13 + 103)"] and _xjhznedtph and _homgucuxxr do
                  pcall(function()

                      for _,v in pairs(workspace:GetDescendants()) do
                          if v:IsA("\(73 + 11)\(82 + 19)\120t\066u\116to\(95 + 15)") and string.find(string.lower(v.Name), "\(48 + 51)\111l\(64 + 44)\(53 + 48)\(86 + 13)\(74 + 42)") then
                              v:FireServer()
                          end
                      end
                  end)
                  task.wait((62 + -60))
              end
          end)
      else
          _nneycjcnse.Text = "\065ut\(21 + 90) \(72 + -5)\(44 + 67)\(17 + 91)\108e\(10 + 89)\(61 + 55)\032OF\(13 + 57)"
          _nneycjcnse.BackgroundColor3 = Color3.fromRGB((27 + 13), (50 + -10), (25 + 30))
      end
  end)

  _tgthbmoyju.MouseButton1Click:Connect
end
