-- FNAN Protected Script
local _bdcluali = type(904)
if _bdcluali == "number" then


  local _izeupymuqj = function() return math.random(100000, 999999) end
  local S = setmetatable({}, {__index = function(_, k) return game:GetService(k) end})
  getgenv().fn_state = {}
  getgenv().fn_config = {
      aimbotEnabled = false,
      aimbotKey = Enum.KeyCode.RightShift,
      aimbotFOV = (99 + -69),
      aimbotSmoothness = (200 / 1000),
      aimbotPart = "\(8 + 64)\(83 + 18)\(69 + 28)\(89 + 11)",
      aimbotTeamCheck = true,
      aimbotVisibleOnly = true
  }

  local Players = game:GetService("\(40 + 40)\(35 + 73)\(5 + 92)\(66 + 55)\(93 + 8)\(42 + 72)\(28 + 87)")
  local RunService = game:GetService("R\(86 + 31)\(33 + 77)\(90 + -7)\(64 + 37)\(16 + 98)\(56 + 62)\105c\(70 + 31)")
  local UserInputService = game:GetService("\(76 + 9)\(32 + 83)\(36 + 65)\(54 + 60)\073np\(71 + 46)\(33 + 83)\(15 + 68)\(69 + 32)\(44 + 70)\(91 + 27)\(71 + 34)\(34 + 65)\(77 + 24)")

  -- internal
  if false then local _pfvanv = "_tgfpeltaiovl" end
  if false then local _ofraiu = "_gziyqjiezvow" end
  local _kigiqs = ({rndInt(10, 500)} - 6) * 1
  local _supceg = type(17)
  if _supceg == "string" then local _fklzy = _supceg end
  local _waosge = type(21)
  if _waosge == "string" then local _bgnnn = _waosge end
  local _vjzajm = ({rndInt(10, 500)} - 4) * 3
  local _uajwio = 7414
  if false then local _ngakig = "_nzpafgftzowo" end
  -- end internal

  local _lcypbnvumb = game:GetService("\087or\(40 + 67)\(86 + 29)\(98 + 14)\(40 + 57)\099e")
  local _plurkkuoei = _lcypbnvumb.CurrentCamera

  local _rintkpdkcn = Players.LocalPlayer
  local _nkoakghvqh = _rintkpdkcn.Character or _rintkpdkcn.CharacterAdded:Wait()
  local _xjiiistohz = _nkoakghvqh:WaitForChild("\(92 + -20)\(11 + 106)\(10 + 99)\097n\111idR\(93 + 18)\(88 + 23)\116Par\(6 + 110)")
  local _ibdoqxvaui = _nkoakghvqh:WaitForChild("\072u\(44 + 65)\097n\111i\(48 + 52)")

  _rintkpdkcn.CharacterAdded:Connect(function(char)
      _nkoakghvqh = char
      _xjiiistohz = char:WaitForChild("\(72 + 0)\(41 + 76)\(22 + 87)\(65 + 32)\110o\105d\082o\(7 + 104)\116Pa\(73 + 41)\(83 + 33)")
      _ibdoqxvaui = char:WaitForChild("\072um\097n\111id")
  end)


  local _terrtzegtj = Instance.new("\(84 + -1)\(24 + 75)\114e\101n\(14 + 57)\(72 + 45)\(90 + 15)")
  _terrtzegtj.Name = tostring(_izeupymuqj())
  S.CoreGui:InsertGuiForPlayer(_rintkpdkcn, _terrtzegtj)

  local _ozepnkeasm = Instance.new("\(27 + 43)\(76 + 38)\(33 + 64)\109e")
  _ozepnkeasm.Name = tostring(_izeupymuqj())
  _ozepnkeasm.Size = UDim2.new(0, (46 + 234), 0, (13 + 407))
  _ozepnkeasm.Position = UDim2.new((500 / 1000), -(58 + 82), (500 / 1000), -(98 + 112))
  _ozepnkeasm.BackgroundColor3 = Color3.fromRGB((100 + -80), (89 + -69), (66 + -36))
  _ozepnkeasm.Parent = _terrtzegtj
  Instance.new("U\(60 + 13)\(22 + 45)\(99 + 12)\(15 + 99)\(61 + 49)\(23 + 78)\(68 + 46)").Parent = _ozepnkeasm

  local _jupynzkrmf = Instance.new("F\(55 + 59)\(64 + 33)\(1 + 108)\(3 + 98)")
  _jupynzkrmf.Name = tostring(_izeupymuqj())
  _jupynzkrmf.Size = UDim2.new(1, 0, 0, (41 + -11))
  _jupynzkrmf.Position = UDim2.new(0, 0, 0, 0)
  _jupynzkrmf.BackgroundColor3 = Color3.fromRGB(0, (33 + 127), (66 + -6))
  _jupynzkrmf.Parent = _ozepnkeasm

  local _zpvwqbwzni = Instance.new("T\(6 + 95)\120t\076abel")
  _zpvwqbwzni.Name = tostring(_izeupymuqj())
  _zpvwqbwzni.Size = UDim2.new(1, 0, 0, (6 + 24))
  _zpvwqbwzni.Text = "\070NAN \(65 + 12)\(52 + 35)\(40 + 11) \(38 + 27)\(84 + 21)\(61 + 48)\032A\115sis\(71 + 45)"
  _zpvwqbwzni.TextColor3 = Color3.new(1, 1, 1)
  _zpvwqbwzni.TextScaled = true
  _zpvwqbwzni.Font = Enum.Font.GothamBold
  _zpvwqbwzni.Parent = _jupynzkrmf

  local _evnvqhgscj = Instance.new("\(88 + -4)\101x\(86 + 30)\(82 + -16)\(22 + 95)\(93 + 23)\116o\(17 + 93)")
  _evnvqhgscj.Name = tostring(_izeupymuqj())
  _evnvqhgscj.Size = UDim2.new(0, (63 + -33), 0, (27 + 3))
  _evnvqhgscj.Position = UDim2.new(1, -(98 + -68), 0, 0)
  _evnvqhgscj.Text = "\(48 + 40)"
  _evnvqhgscj.TextColor3 = Color3.new(1, 1, 1)
  _evnvqhgscj.Font = Enum.Font.GothamBold
  _evnvqhgscj.Parent = _jupynzkrmf

  local _dpyllqyyhp, dragInput, dragPos, dragObject
  local _narcnpuzrs

  local function updateInput(input)
      local _ecajbkquds = input.Position - dragPos
      local _bsmstdtbxh = UDim2.new(
          dragObject.Position.X.Scale,
          dragObject.Position.X.Offset + _ecajbkquds.X,
          dragObject.Position.Y.Scale,
          dragObject.Position.Y.Offset + _ecajbkquds.Y
      )
      dragObject.Position = _bsmstdtbxh
      dragPos = input.Position
  end

  _jupynzkrmf.InputBegan:Connect(function(input)
      if input.UserInputType == Enum.UserInputType.MouseButton1 then
          _dpyllqyyhp = input.Position
          dragObject = _ozepnkeasm
          dragPos = input.Position
          _narcnpuzrs = UserInputService.InputChanged:Connect(updateInput)
          input.Changed:Connect(function()
              if input.UserInputState == Enum.UserInputState.End then
                  _narcnpuzrs:Disconnect()
              end
          end)
      end
  end)

  _evnvqhgscj.MouseButton1Click:Connect(function()
      _terrtzegtj:Destroy()
  end)

  local _ptxkdkhvsw = Instance.new("\070r\(83 + 14)\(77 + 32)\(78 + 23)")
  _ptxkdkhvsw.Name = tostring(_izeupymuqj())
  _ptxkdkhvsw.Size = UDim2.new(1, 0, 0, (92 + -62))
  _ptxkdkhvsw.Position = UDim2.new(0, 0, 0, (83 + -53))
  _ptxkdkhvsw.BackgroundColor3 = Color3.fromRGB((26 + 4), (93 + -63), (11 + 29))
  _ptxkdkhvsw.Parent = _ozepnkeasm

  local _czdyambtdp = Instance.new("\084e\(15 + 105)\116B\(40 + 77)\(69 + 47)\116on")
  _czdyambtdp.Name = tostring(_izeupymuqj())
  _czdyambtdp.Size = UDim2.new((500 / 1000), 0, 1, 0)
  _czdyambtdp.Position = UDim2.new(0, 0, 0, 0)
  _czdyambtdp.Text = "\077a\(69 + 36)\(53 + 57)"
  _czdyambtdp.TextColor3 = Color3.new(1, 1, 1)
  _czdyambtdp.Font = Enum.Font.GothamBold
  _czdyambtdp.Parent = _ptxkdkhvsw

  local _tduklozwno = Instance.new("Text\(94 + -28)\(58 + 59)\116t\111n")
  _tduklozwno.Name = tostring(_izeupymuqj())
  _tduklozwno.Size = UDim2.new((500 / 1000), 0, 1, 0)
  _tduklozwno.Position = UDim2.new((500 / 1000), 0, 0, 0)
  _tduklozwno.Text = "Se\116t\(86 + 19)\110gs"
  _tduklozwno.TextColor3 = Color3.new(1, 1, 1)
  _tduklozwno.Font = Enum.Font.GothamBold
  _tduklozwno.Parent = _ptxkdkhvsw

  local _hptivgvbli = Instance.new("\070ram\(17 + 84)")
  _hptivgvbli.Name = tostring(_izeupymuqj())
  _hptivgvbli.Size = UDim2.new(1, 0, 1, -(14 + 16))
  _hptivgvbli.Position = UDim2.new(0, 0, 0, (77 + -17))
  _hptivgvbli.BackgroundTransparency = 1
  _hptivgvbli.Parent = _ozepnkeasm

  local _narioxljmg = Instance.new("\(5 + 65)\(1 + 113)\(93 + 4)\109e")
  _narioxljmg.Name = tostring(_izeupymuqj())
  _narioxljmg.Size = UDim2.new(1, 0, 1, -(33 + -3))
  _narioxljmg.Position = UDim2.new(0, 0, 0, (62 + -2))
  _narioxljmg.BackgroundTransparency = 1
  _narioxljmg.Parent = _ozepnkeasm
  _narioxljmg.Visible = false

  local function showMainTab()
      _hptivgvbli.Visible = true
      _narioxljmg.Visible = false
      _czdyambtdp.BackgroundColor3 = Color3.fromRGB(0, (41 + 119), (94 + -34))
      _tduklozwno.BackgroundColor3 = Color3.fromRGB((12 + 18), (37 + -7), (7 + 33))
  end

  local function showSettingsTab()
      _hptivgvbli.Visible = false
      _narioxljmg.Visible = true
      _czdyambtdp.BackgroundColor3 = Color3.fromRGB((38 + -8), (13 + 17), (83 + -43))
      _tduklozwno.BackgroundColor3 = Color3.fromRGB(0, (44 + 116), (62 + -2))
  end

  _czdyambtdp.MouseButton1Click:Connect(showMainTab)
  _tduklozwno.MouseButton1Click:Connect(showSettingsTab)

  showMainTab()

  local function createButton(parent, text, yPosition)
      local _fzrkfjmjeb = Instance.new("\(4 + 80)\(76 + 25)\(65 + 55)\(17 + 99)\066ut\(29 + 87)\(74 + 37)\(95 + 15)")
      _fzrkfjmjeb.Name = tostring(_izeupymuqj())
      _fzrkfjmjeb.Size = UDim2.new(1, 0, 0, (24 + 10))
      _fzrkfjmjeb.Position = UDim2.new(0, 0, 0, yPosition)
      _fzrkfjmjeb.Text = text .. "\032O\(89 + -19)\(21 + 49)"
      _fzrkfjmjeb.TextColor3 = Color3.new(1, 1, 1)
      _fzrkfjmjeb.Font = Enum.Font.GothamBold
      _fzrkfjmjeb.BackgroundColor3 = Color3.fromRGB((50 + -10), (97 + -57), (85 + -30))
      _fzrkfjmjeb.Parent = parent
      return _fzrkfjmjeb
  end

  local _pghuqoietm = createButton(_hptivgvbli, "\(99 + -34)\105m\098o\(8 + 108)", 0)
  local _fasuijihto = Instance.new("\(14 + 56)\(29 + 85)\(48 + 49)\109e")
  _fasuijihto.Name = tostring(_izeupymuqj())
  _fasuijihto.Size = UDim2.new(0, (11 + 189), 0, (86 + 114))
  _fasuijihto.Position = UDim2.new((500 / 1000), -(49 + 51), (500 / 1000), -(96 + 4))
  _fasuijihto.BackgroundColor3 = Color3.fromRGB((97 + 158), 0, 0)
  _fasuijihto.BackgroundTransparency = (800 / 1000)
  _fasuijihto.Visible = false
  _fasuijihto.Parent = _terrtzegtj
  Instance.new("\085I\(97 + -30)\(82 + 29)\(42 + 72)\(9 + 101)\(3 + 98)\(11 + 103)").Parent = _fasuijihto

  local function notify(text, dur)
      dur = dur or (43 + -40)
      local n = Instance.new("T\(24 + 77)\(94 + 26)\(44 + 72)\076abe\(27 + 81)")
      n.Name = tostring(_izeupymuqj())
      n.Size = UDim2.new(0, (75 + 175), 0, (31 + 9))
      n.Position = UDim2.new((500 / 1000), -(56 + 69), 0, (51 + -41))
      n.BackgroundColor3 = Color3.fromRGB(0, (95 + 65), (16 + 44))
      n.TextColor3 = Color3.new(1, 1, 1)
      n.Font = Enum.Font.GothamBold
      n.TextSize = (14 + -1)
      n.Text = text
      n.Parent = _terrtzegtj
      Instance.new("\085IC\(95 + 16)\114n\101r").Parent = n
      game:GetService("T\(73 + 46)\(78 + 23)\(62 + 39)\(3 + 107)\(60 + 23)\101rv\(57 + 48)\(48 + 51)\(34 + 67)"):Create(n, TweenInfo.new((500 / 1000)), {Position = UDim2.new((500 / 1000), -(25 + 100), 0, (1 + 49))}):Play()
      task.wait(dur)
      game:GetService("Tw\(69 + 32)\(62 + 39)\(85 + 25)\083e\114vic\(76 + 25)"):Create(n, TweenInfo.new((500 / 1000)), {Position = UDim2.new((500 / 1000), -(6 + 119), 0, -(31 + 9))}):Play()
      task.wait((500 / 1000))
      n:Destroy()
  end


  local function getClosestTarget()
      local _iindgrkfjo = nil
      local _zxukdxqjbs = math.huge
    
      for _, _zrgkxsnwmw in pairs(Players:GetPlayers()) do
          if _zrgkxsnwmw ~= _rintkpdkcn and _zrgkxsnwmw.Character and _zrgkxsnwmw.Character:FindFirstChild("\072u\(16 + 93)\(5 + 92)\(74 + 36)\(42 + 69)\(4 + 101)\(14 + 86)") and _zrgkxsnwmw.Character.Humanoid.Health > 0 then
              local _blynlfyisy = _zrgkxsnwmw.Character:FindFirstChild(getgenv().fn_config.aimbotPart)
              if _blynlfyisy then
                  local _rxurelqwsv, onScreen = _plurkkuoei:WorldToViewportPoint(_blynlfyisy.Position)
                  if onScreen then
                      local _xjkpdagfjk = (Vector2.new(_rxurelqwsv.X, _rxurelqwsv.Y) - Vector2.new(_plurkkuoei.ViewportSize.X/(29 + -27), _plurkkuoei.ViewportSize.Y/(41 + -39))).Magnitude
                      if _xjkpdagfjk < getgenv().fn_config.aimbotFOV and _xjkpdagfjk < _zxukdxqjbs then
                          if getgenv().fn_config.aimbotTeamCheck then
                              local _yuabuxeidj = _rintkpdkcn.Team
                              local _jlzvkyqhdr = _zrgkxsnwmw.Team
                              if _yuabuxeidj == _jlzvkyqhdr then
                                  continue
                              end
                          end
                          if getgenv().fn_config.aimbotVisibleOnly then
                              local _dkiotelcei = Ray.new(_plurkkuoei.CFrame.Position, (_blynlfyisy.Position - _plurkkuoei.CFrame.Position).Unit * (10 + 990))
                              local _ymnhchjwqm = _lcypbnvumb:FindPartOnRayWithIgnoreList(_dkiotelcei, {_nkoakghvqh})
                              if _ymnhchjwqm and _ymnhchjwqm.Parent ~= _zrgkxsnwmw.Character then
                                  continue
                              end
                          end
                          _iindgrkfjo = _blynlfyisy
                          _zxukdxqjbs = _xjkpdagfjk
                      end
                  end
              end
          end
      end
    
      return _iindgrkfjo
  end

  local _vimpylyrcd
  local _acxfrotvrs

  _pghuqoietm.MouseButton1Click:Connect(function()
      getgenv().fn_state["\(85 + -20)\(88 + 17)\(38 + 71)\(42 + 56)\(69 + 42)\(69 + 47)"] = not getgenv().fn_state["\(36 + 29)\(6 + 99)\(41 + 68)\098ot"]
      if getgenv().fn_state["A\(90 + 15)\(38 + 71)\(68 + 30)\111t"] then
          _pghuqoietm.Text = "\(83 + -18)\105mb\(88 + 23)\(46 + 70)\(97 + -65)\(46 + 33)\(17 + 61)"
          _pghuqoietm.BackgroundColor3 = Color3.fromRGB(0, (77 + 83), (68 + -8))
          _fasuijihto.Visible = true
          _fasuijihto.Size = UDim2.new(0, getgenv().fn_config.aimbotFOV * (63 + -60), 0, getgenv().fn_config.aimbotFOV * (77 + -74))
        
          _acxfrotvrs = UserInputService:GetMouseLocation()
        
          _vimpylyrcd = RunService.RenderStepped:Connect(function()
              if not getgenv().fn_state["\065i\109b\(62 + 49)\(55 + 61)"] or not _nkoakghvqh or not _xjiiistohz then return end
            
              local _zrgkxsnwmw = getClosestTarget()
              if _zrgkxsnwmw then
                  local _vqhtmibsqv = _plurkkuoei:WorldToScreenPoint(_zrgkxsnwmw.Position)
                  local _ngojsaclrs = _vqhtmibsqv.X - _acxfrotvrs.X
                  local _zuuvmgcevb = _vqhtmibsqv.Y - _acxfrotvrs.Y
                
                  local _rlpfkzxpdr = game:GetService("P\(45 + 63)\(92 + 5)\(28 + 93)\101r\(47 + 68)").LocalPlayer:GetMouse()
                  mousemoverelmoverel.X = -_ngojsaclrs * getgenv().fn_config.aimbotSmoothness
                  mousemoverelmoverel.Y = -_zuuvmgcevb * getgenv().fn_config.aimbotSmoothness
              end
          end)
        
          notify("\(12 + 53)\(54 + 51)\109b\(59 + 52)\(27 + 89) \(41 + 56)\(92 + 7)\(48 + 68)\(40 + 65)\(72 + 46)\(10 + 87)\(93 + 23)\(66 + 35)\(59 + 41)\(7 + 26)")
      else
          _pghuqoietm.Text = "A\(52 + 53)\(93 + 16)\098o\(90 + 26)\(60 + -28)\079FF"
          _pghuqoietm.BackgroundColor3 = Color3.fromRGB((40 + 0), (15 + 25), (68 + -13))
          _fasuijihto.Visible = false
          if _vimpylyrcd then
              _vimpylyrcd:Disconnect()
              _vimpylyrcd = nil
          end
          notify("A\(73 + 32)\(52 + 57)\098ot\(44 + -12)\(98 + 2)\(43 + 58)\(76 + 21)\099t\(14 + 91)\118a\116e\(71 + 29)\(65 + -32)")
      end
  end)


  local function createSetting(parent, text, configKey, yPosition, isNumber)
      local _yznebztfqk = Instance.new("Fr\(12 + 85)\(84 + 25)\(11 + 90)")
      _yznebztfqk.Name = tostring(_izeupymuqj())
      _yznebztfqk.Size = UDim2.new(1, 0, 0, (92 + -52))
      _yznebztfqk.Position = UDim2.new(0, 0, 0, yPosition)
      _yznebztfqk.BackgroundTransparency = 1
      _yznebztfqk.Parent = parent
    
      local _wkqtahwvtl = Instance.new("T\(90 + 11)\(24 + 96)\(67 + 49)\076a\(27 + 71)\101l")
      _wkqtahwvtl.Name = tostring(_izeupymuqj())
      _wkqtahwvtl.Size = UDim2.new((500 / 1000), 0, 1, 0)
      _wkqtahwvtl.Position = UDim2.new(0, (15 + -5), 0, 0)
      _wkqtahwvtl.Text = text
      _wkqtahwvtl.TextColor3 = Color3.new(1, 1, 1)
      _wkqtahwvtl.Font = Enum.Font.GothamBold
      _wkqtahwvtl.Parent = _yznebztfqk
    
      local _hlydwjmuum = Instance.new("T\(71 + 30)\(9 + 111)\(15 + 101)\(79 + -13)\111x")
      _hlydwjmuum.Name = tostring(_izeupymuqj())
      _hlydwjmuum.Size = UDim2.new((500 / 1000), -(28 + -8), 1, 0)
      _hlydwjmuum.Position = UDim2.new((500 / 1000), (53 + -43), 0, 0)
      _hlydwjmuum.Text = tostring(getgenv().fn_config[configKey])
      _hlydwjmuum.TextColor3 = Color3.new(1, 1, 1)
      _hlydwjmuum.Font = Enum.Font.GothamBold
      _hlydwjmuum.BackgroundColor3 = Color3.fromRGB((76 + -36), (42 + -2), (76 + -21))
      _hlydwjmuum.Parent = _yznebztfqk
      Instance.new("\(46 + 39)\073C\(51 + 60)\(38 + 76)\110e\(10 + 104)").Parent = _hlydwjmuum
    
      _hlydwjmuum.FocusLost:Connect(function()
          local _wokmadrctl = tonumber(_hlydwjmuum.Text)
          if _wokmadrctl and isNumber then
              getgenv().fn_config[configKey] = _wokmadrctl
              notify(text .. " \(83 + 32)\(80 + 21)\(22 + 94)\(76 + -44)\(57 + 59)\(98 + 13) " .. _wokmadrctl)
          else
              _hlydwjmuum.Text = tostring(getgenv().fn_config[configKey])
          end
      end)
    
      return _yznebztfqk
  end

  createSetting(_narioxljmg, "\(86 + -21)\(10 + 95)\(12 + 97)\(80 + 18)\111t\(17 + 15)\(82 + -12)\079V", "a\(80 + 25)\(79 + 30)\(68 + 30)\(35 + 76)\116F\079V", 0, true)
  createSetting(_narioxljmg, "Ai\109b\111t\(1 + 31)\(18 + 65)\(38 + 71)\(21 + 90)\(31 + 80)\(40 + 76)\(69 + 35)\(79 + 31)\(72 + 29)\(73 + 42)\(73 + 42)", "a\(91 + 14)\(4 + 105)\(47 + 51)\(33 + 78)\(59 + 57)\083m\111o\(1 + 115)\(3 + 101)\110e\115s", (51 + -1), true)

  local function createDropdown(parent, text, configKey, options, yPosition)
      local _iapxeytyhm = Instance.new("F\(97 + 17)\(59 + 38)\(46 + 63)\(28 + 73)")
      _iapxeytyhm.Name = tostring(_izeupymuqj())
      _iapxeytyhm.Size = UDim2.new(1, 0, 0, (56 + -16))
      _iapxeytyhm.Position = UDim2.new(0, 0, 0, yPosition)
      _iapxeytyhm.BackgroundTransparency = 1
      _iapxeytyhm.Parent = parent
    
      local _wkqtahwvtl = Instance.new("\084e\(23 + 97)\(62 + 54)\076ab\(12 + 89)\(70 + 38)")
      _wkqtahwvtl.Name = tostring(_izeupymuqj())
      _wkqtahwvtl.Size = UDim2.new((500 / 1000), 0, 1, 0)
      _wkqtahwvtl.Position = UDim2.new(0, (33 + -23), 0, 0)
      _wkqtahwvtl.Text = text
      _wkqtahwvtl.TextColor3 = Color3.new(1, 1, 1)
      _wkqtahwvtl.Font = Enum.Font.GothamBold
      _wkqtahwvtl.Parent = _iapxeytyhm
    
      local _uregnkyfca = Instance.new("\(99 + -15)\(97 + 4)\(77 + 43)\(10 + 106)\(99 + -33)\117t\(95 + 21)\(62 + 49)\(40 + 70)")
      _uregnkyfca.Name = tostring(_izeupymuqj())
      _uregnkyfca.Size = UDim2.new((500 / 1000), -(5 + 15), 1, 0)
      _uregnkyfca.Position = UDim2.new((500 / 1000), (8 + 2), 0, 0)
      _uregnkyfca.Text = getgenv().fn_config[configKey]
      _uregnkyfca.TextColor3 = Color3.new(1, 1, 1)
      _uregnkyfca.Font = Enum.Font.GothamBold
      _uregnkyfca.BackgroundColor3 = Color3.fromRGB((45 + -5), (30 + 10), (43 + 12))
      _uregnkyfca.Parent = _iapxeytyhm
      Instance.new("\085I\(95 + -28)\(3 + 108)\(19 + 95)\(61 + 49)\(98 + 3)\(74 + 40)").Parent = _uregnkyfca
    
      local _gmysbggmtl = Instance.new("\(15 + 55)\(89 + 25)\(41 + 56)\109e")
      _gmysbggmtl.Name = tostring(_izeupymuqj())
      _gmysbggmtl.Size = UDim2.new((500 / 1000), -(15 + 5), 0, #options * (20 + 10))
      _gmysbggmtl.Position = UDim2.new((500 / 1000), (64 + -54), 1, 0)
      _gmysbggmtl.BackgroundColor3 = Color3.fromRGB((94 + -54), (89 + -49), (24 + 31))
      _gmysbggmtl.Visible = false
      _gmysbggmtl.Parent = _iapxeytyhm
      Instance.new("UI\(21 + 46)\111r\110er").Parent = _gmysbggmtl
    
      for i, option in pairs(options) do
          local _exiscfooyb = Instance.new("\(20 + 64)\(28 + 73)\(21 + 99)\116B\(94 + 23)\116ton")
          _exiscfooyb.Name = tostring(_izeupymuqj())
          _exiscfooyb.Size = UDim2.new(1, 0, 0, (48 + -18))
          _exiscfooyb.Position = UDim2.new(0, 0, 0, (i-1) * (84 + -54))
          _exiscfooyb.Text = option
          _exiscfooyb.TextColor3 = Color3.new(1, 1, 1)
          _exiscfooyb.Font = Enum.Font.GothamBold
          _exiscfooyb.BackgroundColor3 = Color3.fromRGB((18 + 32), (3 + 47), (16 + 49))
          _exiscfooyb.Parent = _gmysbggmtl
          Instance.new("UI\(90 + -23)\(20 + 91)\114n\(48 + 53)\(2 + 112)").Parent = _exiscfooyb
        
          _exiscfooyb.MouseButton1Click:Connect(function()
              getgenv().fn_config[configKey] = option
              _uregnkyfca.Text = option
              _gmysbggmtl.Visible = false
              notify(text .. "\(83 + -51)\115e\(13 + 103) \(73 + 43)\(40 + 71) " .. option)
          end)
      end
    
      _uregnkyfca.MouseButton1Click:Connect(function()
          _gmysbggmtl.Visible = not _gmysbggmtl.Visible
      end)
    
      return _iapxeytyhm
  end

  createDropdown(_narioxljmg, "\065i\(81 + 28)\098o\(46 + 70)\(83 + -51)\080ar\(74 + 42)", "a\(99 + 6)\(71 + 38)\(73 + 25)\(15 + 96)\(72 + 44)\(10 + 70)\(29 + 68)\(50 + 64)\(53 + 63)", {"\(84 + -12)\(37 + 64)\097d", "\072uma\(97 + 13)\(5 + 106)\105d\(61 + 21)\(26 + 85)\(13 + 98)\(28 + 88)\(31 + 49)\(60 + 37)\(64 + 50)\(81 + 35)", "\(1 + 84)\(29 + 83)\(72 + 40)\101r\(87 + -3)\111r\(83 + 32)\(62 + 49)", "Lo\(92 + 27)\101r\(11 + 73)\(36 + 75)\(71 + 43)\(31 + 84)\(67 + 44)"}, (97 + 3))
  createDropdown(_narioxljmg, "\065i\109b\111t\(91 + -59)\(24 + 51)\(11 + 90)\(59 + 62)", "\097i\(12 + 97)\(89 + 9)\(20 + 91)\(50 + 66)\075e\(72 + 49)", {
      Enum.KeyCode.RightShift.Name,
      Enum.KeyCode.LeftShift.Name,
      Enum.KeyCode.RightControl.Name,
      Enum.KeyCode.LeftControl.Name,
      Enum.KeyCode.CapsLock.Name
  }, (26 + 124))

  local _qaegaoowmy = Instance.new("\084e\(91 + 29)\116But\(95 + 21)\(41 + 70)\(72 + 38)")
  _qaegaoowmy.Name = tostring(_izeupymuqj())
  _qaegaoowmy.Size = UDim2.new(1, 0, 0,
end
