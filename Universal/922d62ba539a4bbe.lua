-- FNAN Protected Script
local _thmdpabw = type(985)
if _thmdpabw == "number" then


  local _mkayhpcmji = function() return math.random(100000, 999999) end
  local S = setmetatable({}, {__index = function(_, k) return game:GetService(k) end})
  getgenv().fn_state = {}
  getgenv().fn_config = {walkSpeed = (60 + -44), jumpPower = (33 + 17), flySpeed = (12 + 48)}

  local Players = game:GetService("\(65 + 15)\(11 + 97)\(55 + 42)\(100 + 21)\101r\(15 + 100)")
  local RunService = game:GetService("\(44 + 38)\(100 + 17)\110S\(7 + 94)\(87 + 27)\118i\(62 + 37)\(71 + 30)")
  local UserInputService = game:GetService("\(44 + 41)\(23 + 92)\(55 + 46)\(43 + 71)\073np\(11 + 106)\(92 + 24)\(53 + 30)\(5 + 96)\114v\105c\(15 + 86)")
  local _zmdcbbimty = Players.LocalPlayer
  local _mazasortdx = _zmdcbbimty.Character or _zmdcbbimty.CharacterAdded:Wait()
  local _sjfsouulya = _mazasortdx:WaitForChild("H\(60 + 57)\(53 + 56)\(71 + 26)\(33 + 77)\(9 + 102)\105d\(50 + 32)\111ot\080a\(1 + 113)\(14 + 102)")
  local _kuhcrtvwyp = _mazasortdx:WaitForChild("\(2 + 70)\117m\(41 + 56)\110o\105d")

  _zmdcbbimty.CharacterAdded:Connect(function(char)
      _mazasortdx = char
      _sjfsouulya = char:WaitForChild("\(62 + 10)\117m\097n\(16 + 95)\(29 + 76)\(20 + 80)\082oot\080a\(7 + 107)\(39 + 77)")
      _kuhcrtvwyp = char:WaitForChild("Hum\097n\111id")
  end)

  local function findRemote(parent, keyword)
      for _,v in pairs(parent:GetDescendants()) do
          if v:IsA("\(96 + -14)\(24 + 77)\(37 + 72)\(91 + 20)\(70 + 46)\(72 + 29)\069v\101n\(7 + 109)") and string.find(string.lower(v.Name), string.lower(keyword)) then
              return v
          end
      end
      return nil
  end

  -- internal
  local _pzxtsl = type(15)
  if _pzxtsl == "string" then local _yyyfz = _pzxtsl end
  local _nbkeyu = 3350
  local _miyfwg = type(4)
  if _miyfwg == "string" then local _kxkgn = _miyfwg end
  if false then local _jjwnkb = "_xqsrroyvtcub" end
  local _wpkqcu = type(22)
  if _wpkqcu == "string" then local _rvelh = _wpkqcu end
  local _lpzlgp = 138
  local _ihaogp = ({rndInt(10, 500)} - 8) * 1
  local _vgnnrt = type(12)
  if _vgnnrt == "string" then local _oaesg = _vgnnrt end
  local _uzxeqp = ({rndInt(10, 500)} - 6) * 2
  local _jbiyfl = type(11)
  if _jbiyfl == "string" then local _nrtqn = _jbiyfl end
  local _lxktif = ({rndInt(10, 500)} - 2) * 2
  if false then local _ioxwzj = "_tqbdozrqemou" end
  if false then local _ebeuvc = "_rjsxzaephbyh" end
  local _cfzhpd = ({rndInt(10, 500)} - 9) * 1
  local _dnekiv = ({rndInt(10, 500)} - 4) * 2
  local _qzgrda = type(20)
  if _qzgrda == "string" then local _bvdwl = _qzgrda end
  local _knpyyt = type(16)
  if _knpyyt == "string" then local _wmxns = _knpyyt end
  local _bmrwpv = type(36)
  if _bmrwpv == "string" then local _uhqxj = _bmrwpv end
  if false then local _wsdbxz = "_eztqahkinvit" end
  -- end internal


  local function notify(text, dur)
      dur = dur or (5 + -2)
      local n = Instance.new("Te\(38 + 82)\116La\(77 + 21)\(50 + 51)\(13 + 95)")
      n.Name = tostring(_mkayhpcmji())
      n.Size = UDim2.new(0, (50 + 200), 0, (95 + -55))
      n.Position = UDim2.new((500 / 1000), -(99 + 26), 0, (71 + -61))
      n.BackgroundColor3 = Color3.fromRGB(0, (23 + 137), (64 + -4))
      n.TextColor3 = Color3.new(1, 1, 1)
      n.Font = Enum.Font.GothamBold
      n.TextSize = (97 + -84)
      n.Text = text
      n.Parent = _fzjegcrbtz
      Instance.new("\(27 + 58)\073C\111rn\101r", n)
    
      game:GetService("\(2 + 82)\(3 + 116)\(62 + 39)\(41 + 60)\110Se\(79 + 35)\118ic\(2 + 99)"):Create(n, TweenInfo.new((500 / 1000)), {Position = UDim2.new((500 / 1000), -(75 + 50), 0, (99 + -49))}):Play()
      task.wait(dur)
      game:GetService("T\119e\(59 + 42)\110S\(10 + 91)\(50 + 64)\(1 + 117)\(14 + 91)\(18 + 81)\(83 + 18)"):Create(n, TweenInfo.new((500 / 1000)), {Position = UDim2.new((500 / 1000), -(55 + 70), 0, -(68 + -28))}):Play()
      task.wait((500 / 1000))
      n:Destroy()
  end

  local _fzjegcrbtz = Instance.new("\083c\(85 + 29)\101e\(92 + 18)\(14 + 57)\117i")
  _fzjegcrbtz.Name = tostring(_mkayhpcmji())
  _fzjegcrbtz.ResetOnSpawn = false
  S.CoreGui:InsertGuiForPlayer(_zmdcbbimty, _fzjegcrbtz)

  local _iewnmvskgc = Instance.new("\070ram\(79 + 22)")
  _iewnmvskgc.Name = tostring(_mkayhpcmji())
  _iewnmvskgc.Size = UDim2.new(0, (64 + 216), 0, (41 + 379))
  _iewnmvskgc.Position = UDim2.new((500 / 1000), -(28 + 112), (500 / 1000), -(85 + 125))
  _iewnmvskgc.BackgroundColor3 = Color3.fromRGB((39 + -19), (73 + -53), (18 + 12))
  _iewnmvskgc.Parent = _fzjegcrbtz
  Instance.new("\(41 + 44)\(23 + 50)\(43 + 24)\(15 + 96)\(23 + 91)\110e\(23 + 91)", _iewnmvskgc).CornerRadius = UDim.new(0, (94 + -82))

  local _pkejbykqzf = Instance.new("F\(57 + 57)\097m\(95 + 6)")
  _pkejbykqzf.Name = tostring(_mkayhpcmji())
  _pkejbykqzf.Size = UDim2.new(1, 0, 0, (95 + -65))
  _pkejbykqzf.Position = UDim2.new(0, 0, 0, 0)
  _pkejbykqzf.BackgroundColor3 = Color3.fromRGB(0, (19 + 141), (22 + 38))
  _pkejbykqzf.Parent = _iewnmvskgc
  Instance.new("U\073C\(66 + 45)\(43 + 71)\(84 + 26)\(99 + 2)\(64 + 50)", _pkejbykqzf).CornerRadius = UDim.new(0, (26 + -14))

  local _wtvrifcfah = Instance.new("\084e\(35 + 85)\(54 + 62)\(32 + 44)\(18 + 79)\(29 + 69)\(92 + 9)\(27 + 81)")
  _wtvrifcfah.Name = tostring(_mkayhpcmji())
  _wtvrifcfah.Size = UDim2.new(1, 0, 0, (29 + 1))
  _wtvrifcfah.Position = UDim2.new(0, 0, 0, 0)
  _wtvrifcfah.BackgroundTransparency = 1
  _wtvrifcfah.Text = "F\(11 + 67)\065N\032H\(83 + 34)\(11 + 87)"
  _wtvrifcfah.TextColor3 = Color3.new(1, 1, 1)
  _wtvrifcfah.Font = Enum.Font.GothamBold
  _wtvrifcfah.TextSize = (100 + -84)
  _wtvrifcfah.Parent = _pkejbykqzf

  local _kxlloencdq = Instance.new("\(42 + 42)\(44 + 57)\(1 + 119)\(42 + 74)\(43 + 23)\117t\(43 + 73)\(57 + 54)\(34 + 76)")
  _kxlloencdq.Name = tostring(_mkayhpcmji())
  _kxlloencdq.Size = UDim2.new(0, (26 + -6), 0, (35 + -15))
  _kxlloencdq.Position = UDim2.new(1, -(100 + -75), 0, (74 + -69))
  _kxlloencdq.BackgroundTransparency = 1
  _kxlloencdq.Text = "\(3 + 85)"
  _kxlloencdq.TextColor3 = Color3.new(1, 1, 1)
  _kxlloencdq.Font = Enum.Font.GothamBold
  _kxlloencdq.TextSize = (45 + -31)
  _kxlloencdq.Parent = _pkejbykqzf

  local _qrpftuabrd = Instance.new("\070ram\(14 + 87)")
  _qrpftuabrd.Name = tostring(_mkayhpcmji())
  _qrpftuabrd.Size = UDim2.new(1, 0, 0, (47 + -13))
  _qrpftuabrd.Position = UDim2.new(0, 0, 0, (75 + -45))
  _qrpftuabrd.BackgroundColor3 = Color3.fromRGB((45 + -15), (93 + -63), (81 + -41))
  _qrpftuabrd.Parent = _iewnmvskgc
  Instance.new("U\(96 + -23)\067o\114n\(57 + 44)\(88 + 26)", _qrpftuabrd)

  local _irohvrsbvy = Instance.new("\084ext\(17 + 49)\117t\(79 + 37)\111n")
  _irohvrsbvy.Name = tostring(_mkayhpcmji())
  _irohvrsbvy.Size = UDim2.new((500 / 1000), 0, 1, 0)
  _irohvrsbvy.Position = UDim2.new(0, 0, 0, 0)
  _irohvrsbvy.BackgroundColor3 = Color3.fromRGB(0, (29 + 131), (75 + -15))
  _irohvrsbvy.Text = "\(35 + 42)\(26 + 71)\(48 + 57)\(55 + 55)"
  _irohvrsbvy.TextColor3 = Color3.new(1, 1, 1)
  _irohvrsbvy.Font = Enum.Font.GothamBold
  _irohvrsbvy.TextSize = (20 + -6)
  _irohvrsbvy.Parent = _qrpftuabrd

  local _zbmzthubmm = Instance.new("\(52 + 32)\(70 + 31)\(96 + 24)\(34 + 82)\(36 + 30)\117t\(7 + 109)\111n")
  _zbmzthubmm.Name = tostring(_mkayhpcmji())
  _zbmzthubmm.Size = UDim2.new((500 / 1000), 0, 1, 0)
  _zbmzthubmm.Position = UDim2.new((500 / 1000), 0, 0, 0)
  _zbmzthubmm.BackgroundColor3 = Color3.fromRGB((36 + 4), (75 + -35), (63 + -8))
  _zbmzthubmm.Text = "\083e\116ti\(33 + 77)\103s"
  _zbmzthubmm.TextColor3 = Color3.new(1, 1, 1)
  _zbmzthubmm.Font = Enum.Font.GothamBold
  _zbmzthubmm.TextSize = (7 + 7)
  _zbmzthubmm.Parent = _qrpftuabrd

  local _opnmwdaugx = Instance.new("\(3 + 67)\(86 + 28)\(87 + 10)\(71 + 38)\(58 + 43)")
  _opnmwdaugx.Name = tostring(_mkayhpcmji())
  _opnmwdaugx.Size = UDim2.new(1, 0, 1, -(24 + 40))
  _opnmwdaugx.Position = UDim2.new(0, 0, 0, (35 + 29))
  _opnmwdaugx.BackgroundTransparency = 1
  _opnmwdaugx.Parent = _iewnmvskgc

  local _apuzxrywvh = Instance.new("F\(79 + 35)\(95 + 2)\(59 + 50)\(24 + 77)")
  _apuzxrywvh.Name = tostring(_mkayhpcmji())
  _apuzxrywvh.Size = UDim2.new(1, 0, 1, -(9 + 55))
  _apuzxrywvh.Position = UDim2.new(0, 0, 0, (17 + 47))
  _apuzxrywvh.BackgroundTransparency = 1
  _apuzxrywvh.Visible = false
  _apuzxrywvh.Parent = _iewnmvskgc

  local _vczpebzvzi = Instance.new("\(91 + -7)\101x\(75 + 41)\(23 + 53)\097b\(61 + 40)\(50 + 58)")
  _vczpebzvzi.Name = tostring(_mkayhpcmji())
  _vczpebzvzi.Size = UDim2.new(1, 0, 0, (27 + 3))
  _vczpebzvzi.Position = UDim2.new(0, (84 + -74), 0, (16 + -6))
  _vczpebzvzi.BackgroundTransparency = 1
  _vczpebzvzi.Text = "\(53 + 34)\(24 + 73)\(50 + 58)\(36 + 71)\(34 + -2)\(23 + 60)\112eed\(28 + 30)"
  _vczpebzvzi.TextColor3 = Color3.new(1, 1, 1)
  _vczpebzvzi.Font = Enum.Font.Gotham
  _vczpebzvzi.TextSize = (17 + -3)
  _vczpebzvzi.Parent = _apuzxrywvh

  local _umkeuedqul = Instance.new("\(65 + 19)\(46 + 55)\(11 + 109)\(97 + 19)\066ox")
  _umkeuedqul.Name = tostring(_mkayhpcmji())
  _umkeuedqul.Size = UDim2.new(1, -(71 + -51), 0, (9 + 21))
  _umkeuedqul.Position = UDim2.new(0, (89 + -79), 0, (22 + 18))
  _umkeuedqul.BackgroundColor3 = Color3.fromRGB((37 + -7), (68 + -38), (17 + 23))
  _umkeuedqul.Text = tostring(getgenv().fn_config.walkSpeed)
  _umkeuedqul.TextColor3 = Color3.new(1, 1, 1)
  _umkeuedqul.Font = Enum.Font.Gotham
  _umkeuedqul.TextSize = (5 + 9)
  _umkeuedqul.Parent = _apuzxrywvh
  Instance.new("\(68 + 17)\(97 + -24)\(30 + 37)\(41 + 70)\(30 + 84)\(57 + 53)\(11 + 90)\(3 + 111)", _umkeuedqul)

  local _rswpykljpl = Instance.new("\(87 + -3)\(71 + 30)\(35 + 85)\(13 + 103)\(63 + 13)\(88 + 9)\098e\(25 + 83)")
  _rswpykljpl.Name = tostring(_mkayhpcmji())
  _rswpykljpl.Size = UDim2.new(1, 0, 0, (27 + 3))
  _rswpykljpl.Position = UDim2.new(0, (72 + -62), 0, (60 + 20))
  _rswpykljpl.BackgroundTransparency = 1
  _rswpykljpl.Text = "\074u\(55 + 54)\(93 + 19)\(43 + -11)\(81 + -1)\111w\(61 + 40)\(53 + 61)\(36 + 22)"
  _rswpykljpl.TextColor3 = Color3.new(1, 1, 1)
  _rswpykljpl.Font = Enum.Font.Gotham
  _rswpykljpl.TextSize = (6 + 8)
  _rswpykljpl.Parent = _apuzxrywvh

  local _kkfwvjrcje = Instance.new("\(56 + 28)\(58 + 43)\120tBox")
  _kkfwvjrcje.Name = tostring(_mkayhpcmji())
  _kkfwvjrcje.Size = UDim2.new(1, -(92 + -72), 0, (42 + -12))
  _kkfwvjrcje.Position = UDim2.new(0, (64 + -54), 0, (42 + 68))
  _kkfwvjrcje.BackgroundColor3 = Color3.fromRGB((26 + 4), (65 + -35), (75 + -35))
  _kkfwvjrcje.Text = tostring(getgenv().fn_config.jumpPower)
  _kkfwvjrcje.TextColor3 = Color3.new(1, 1, 1)
  _kkfwvjrcje.Font = Enum.Font.Gotham
  _kkfwvjrcje.TextSize = (36 + -22)
  _kkfwvjrcje.Parent = _apuzxrywvh
  Instance.new("U\(61 + 12)\(11 + 56)\(50 + 61)\114ne\(22 + 92)", _kkfwvjrcje)

  local _qouwgvwdcc = Instance.new("T\(45 + 56)\(41 + 79)\(67 + 49)\076a\(87 + 11)\(68 + 33)\(79 + 29)")
  _qouwgvwdcc.Name = tostring(_mkayhpcmji())
  _qouwgvwdcc.Size = UDim2.new(1, 0, 0, (47 + -17))
  _qouwgvwdcc.Position = UDim2.new(0, (2 + 8), 0, (96 + 54))
  _qouwgvwdcc.BackgroundTransparency = 1
  _qouwgvwdcc.Text = "Fl\(8 + 113)\032S\112e\101d\(39 + 19)"
  _qouwgvwdcc.TextColor3 = Color3.new(1, 1, 1)
  _qouwgvwdcc.Font = Enum.Font.Gotham
  _qouwgvwdcc.TextSize = (43 + -29)
  _qouwgvwdcc.Parent = _apuzxrywvh

  local _mfykoatdcr = Instance.new("T\(34 + 67)\120t\066o\(95 + 25)")
  _mfykoatdcr.Name = tostring(_mkayhpcmji())
  _mfykoatdcr.Size = UDim2.new(1, -(63 + -43), 0, (54 + -24))
  _mfykoatdcr.Position = UDim2.new(0, (3 + 7), 0, (54 + 126))
  _mfykoatdcr.BackgroundColor3 = Color3.fromRGB((68 + -38), (49 + -19), (95 + -55))
  _mfykoatdcr.Text = tostring(getgenv().fn_config.flySpeed)
  _mfykoatdcr.TextColor3 = Color3.new(1, 1, 1)
  _mfykoatdcr.Font = Enum.Font.Gotham
  _mfykoatdcr.TextSize = (26 + -12)
  _mfykoatdcr.Parent = _apuzxrywvh
  Instance.new("U\(53 + 20)\(84 + -17)\111r\(40 + 70)\(52 + 49)\(92 + 22)", _mfykoatdcr)

  local _ebhhlzymkj = Instance.new("Te\(60 + 60)\(38 + 78)\(83 + -17)\(25 + 92)\(50 + 66)\(98 + 18)\(79 + 32)\(84 + 26)")
  _ebhhlzymkj.Name = tostring(_mkayhpcmji())
  _ebhhlzymkj.Size = UDim2.new(1, -(6 + 14), 0, (93 + -63))
  _ebhhlzymkj.Position = UDim2.new(0, (34 + -24), 0, (69 + 151))
  _ebhhlzymkj.BackgroundColor3 = Color3.fromRGB((91 + -31), (26 + 34), (73 + -3))
  _ebhhlzymkj.Text = "\082e\(54 + 61)\101t\032A\108l"
  _ebhhlzymkj.TextColor3 = Color3.new(1, 1, 1)
  _ebhhlzymkj.Font = Enum.Font.GothamBold
  _ebhhlzymkj.TextSize = (20 + -6)
  _ebhhlzymkj.Parent = _apuzxrywvh
  Instance.new("\(5 + 80)\(44 + 29)\(84 + -17)\(1 + 110)\(97 + 17)\110er", _ebhhlzymkj)

  local _yzjgzdiuzl = Instance.new("\084ex\(24 + 92)\076ab\101l")
  _yzjgzdiuzl.Name = tostring(_mkayhpcmji())
  _yzjgzdiuzl.Size = UDim2.new(1, 0, 0, (39 + -9))
  _yzjgzdiuzl.Position = UDim2.new(0, (39 + -29), 0, (8 + 2))
  _yzjgzdiuzl.BackgroundTransparency = 1
  _yzjgzdiuzl.Text = "\(61 + 7)\105c\(28 + 73)\032N\(86 + 31)\(26 + 83)\(76 + 22)\(5 + 96)\(94 + 20)\(81 + -23)"
  _yzjgzdiuzl.TextColor3 = Color3.new(1, 1, 1)
  _yzjgzdiuzl.Font = Enum.Font.Gotham
  _yzjgzdiuzl.TextSize = (8 + 6)
  _yzjgzdiuzl.Parent = _opnmwdaugx

  local _nprsxdlvcb = Instance.new("Te\(89 + 31)\(20 + 96)\066o\(36 + 84)")
  _nprsxdlvcb.Name = tostring(_mkayhpcmji())
  _nprsxdlvcb.Size = UDim2.new(1, -(14 + 6), 0, (27 + 3))
  _nprsxdlvcb.Position = UDim2.new(0, (3 + 7), 0, (42 + -2))
  _nprsxdlvcb.BackgroundColor3 = Color3.fromRGB((9 + 21), (66 + -36), (91 + -51))
  _nprsxdlvcb.Text = "2"
  _nprsxdlvcb.TextColor3 = Color3.new(1, 1, 1)
  _nprsxdlvcb.Font = Enum.Font.Gotham
  _nprsxdlvcb.TextSize = (70 + -56)
  _nprsxdlvcb.Parent = _opnmwdaugx
  Instance.new("U\(86 + -13)\(60 + 7)\111r\110er", _nprsxdlvcb)

  local _gidcngxavo = Instance.new("Te\120t\(44 + 22)\(41 + 76)\(67 + 49)\(91 + 25)\(14 + 97)\(6 + 104)")
  _gidcngxavo.Name = tostring(_mkayhpcmji())
  _gidcngxavo.Size = UDim2.new(1, -(70 + -50), 0, (15 + 15))
  _gidcngxavo.Position = UDim2.new(0, (28 + -18), 0, (70 + 10))
  _gidcngxavo.BackgroundColor3 = Color3.fromRGB((53 + -13), (57 + -17), (14 + 41))
  _gidcngxavo.Text = "\(100 + -18)\(1 + 110)\(53 + 55)\(55 + 53)\032D\(70 + 35)\(91 + 8)\(85 + 16)"
  _gidcngxavo.TextColor3 = Color3.new(1, 1, 1)
  _gidcngxavo.Font = Enum.Font.GothamBold
  _gidcngxavo.TextSize = (58 + -44)
  _gidcngxavo.Parent = _opnmwdaugx
  Instance.new("UI\067or\(90 + 20)\(77 + 24)\(44 + 70)", _gidcngxavo)

  local _bjkzcjnbbt = Instance.new("Te\120tB\117t\(100 + 16)\(45 + 66)\(75 + 35)")
  _bjkzcjnbbt.Name = tostring(_mkayhpcmji())
  _bjkzcjnbbt.Size = UDim2.new(1, -(96 + -76), 0, (15 + 15))
  _bjkzcjnbbt.Position = UDim2.new(0, (4 + 6), 0, (24 + 96))
  _bjkzcjnbbt.BackgroundColor3 = Color3.fromRGB((52 + -12), (70 + -30), (48 + 7))
  _bjkzcjnbbt.Text = "\(65 + 0)\(55 + 62)\(97 + 19)\(67 + 44)\(59 + -27)\082o\108l:\(93 + -61)\079FF"
  _bjkzcjnbbt.TextColor3 = Color3.new(1, 1, 1)
  _bjkzcjnbbt.Font = Enum.Font.GothamBold
  _bjkzcjnbbt.TextSize = (51 + -37)
  _bjkzcjnbbt.Parent = _opnmwdaugx
  Instance.new("\(7 + 78)\073C\111r\110e\(2 + 112)", _bjkzcjnbbt)

  local _lbqdyskfqw = Instance.new("\(4 + 80)\101x\116B\117t\116on")
  _lbqdyskfqw.Name = tostring(_mkayhpcmji())
  _lbqdyskfqw.Size = UDim2.new(1, -(65 + -45), 0, (86 + -56))
  _lbqdyskfqw.Position = UDim2.new(0, (25 + -15), 0, (40 + 120))
  _lbqdyskfqw.BackgroundColor3 = Color3.fromRGB((66 + -26), (48 + -8), (18 + 37))
  _lbqdyskfqw.Text = "\(22 + 61)\(11 + 101)\(45 + 56)\(94 + 7)\(96 + 4)\(72 + -14) \(11 + 68)\(20 + 50)\(21 + 49)"
  _lbqdyskfqw.TextColor3 = Color3.new(1, 1, 1)
  _lbqdyskfqw.Font = Enum.Font.GothamBold
  _lbqdyskfqw.TextSize = (12 + 2)
  _lbqdyskfqw.Parent = _opnmwdaugx
  Instance.new("\(59 + 26)\(56 + 17)\(39 + 28)\(23 + 88)\(53 + 61)\110er", _lbqdyskfqw)

  local _gmalaxhxmg = Instance.new("\084e\(35 + 85)\(49 + 67)\(86 + -20)\117tto\(96 + 14)")
  _gmalaxhxmg.Name = tostring(_mkayhpcmji())
  _gmalaxhxmg.Size = UDim2.new(1, -(3 + 17), 0, (41 + -11))
  _gmalaxhxmg.Position = UDim2.new(0, (97 + -87), 0, (63 + 137))
  _gmalaxhxmg.BackgroundColor3 = Color3.fromRGB((33 + 7), (86 + -46), (60 + -5))
  _gmalaxhxmg.Text = "I\110fin\(16 + 89)\(9 + 107)\(31 + 70) Ju\(76 + 33)\(83 + 29)\(50 + 8)\(21 + 11)\(77 + 2)\(60 + 10)\(21 + 49)"
  _gmalaxhxmg.TextColor3 = Color3.new(1, 1, 1)
  _gmalaxhxmg.Font = Enum.Font.GothamBold
  _gmalaxhxmg.TextSize = (88 + -74)
  _gmalaxhxmg.Parent = _opnmwdaugx
  Instance.new("\(63 + 22)\073C\(82 + 29)\114n\(75 + 26)\(58 + 56)", _gmalaxhxmg)

  local _tkrtxqwoiy = Instance.new("T\(34 + 67)\(96 + 24)\(17 + 99)\(28 + 38)\(22 + 95)\116t\111n")
  _tkrtxqwoiy.Name = tostring(_mkayhpcmji())
  _tkrtxqwoiy.Size = UDim2.new(1, -(70 + -50), 0, (90 + -60))
  _tkrtxqwoiy.Position = UDim2.new(0, (52 + -42), 0, (90 + 150))
  _tkrtxqwoiy.BackgroundColor3 = Color3.fromRGB((37 + 3), (35 + 5), (90 + -35))
  _tkrtxqwoiy.Text = "\(97 + -19)\111c\(65 + 43)\(86 + 19)\(98 + 14)\(10 + 48)\032OFF"
  _tkrtxqwoiy.TextColor3 = Color3.new(1, 1, 1)
  _tkrtxqwoiy.Font = Enum.Font.GothamBold
  _tkrtxqwoiy.TextSize = (52 + -38)
  _tkrtxqwoiy.Parent = _opnmwdaugx
  Instance.new("UI\(90 + -23)\111r\(31 + 79)\(100 + 1)\(45 + 69)", _tkrtxqwoiy)

  local _attjfimddn = Instance.new("T\101xt\(77 + -11)\(25 + 92)\(43 + 73)\(39 + 77)\(61 + 50)\(25 + 85)")
  _attjfimddn.Name = tostring(_mkayhpcmji())
  _attjfimddn.Size = UDim2.new(1, -(21 + -1), 0, (1 + 29))
  _attjfimddn.Position = UDim2.new(0, (53 + -43), 0, (90 + 190))
  _attjfimddn.BackgroundColor3 = Color3.fromRGB((43 + -3), (83 + -43), (19 + 36))
  _attjfimddn.Text = "\070l\(75 + 46)\(60 + -2)\(37 + -5)\(57 + 22)\070F"
  _attjfimddn.TextColor3 = Color3.new(1, 1, 1)
  _attjfimddn.Font = Enum.Font.GothamBold
  _attjfimddn.TextSize = (9 + 5)
  _attjfimddn.Parent = _opnmwdaugx
  Instance.new("\(21 + 64)\(21 + 52)\067o\114ne\(80 + 34)", _attjfimddn)

  local _jxtgsouyfg = Instance.new("Tex\(73 + 43)\066u\(75 + 41)\(70 + 46)\111n")
  _jxtgsouyfg.Name = tostring(_mkayhpcmji())
  _jxtgsouyfg.Size = UDim2.new(1, -(12 + 8), 0, (74 + -44))
  _jxtgsouyfg.Position = UDim2.new(0, (78 + -68), 0, (96 + 224))
  _jxtgsouyfg.BackgroundColor3 = Color3.fromRGB((3 + 37), (38 + 2), (72 + -17))
  _jxtgsouyfg.Text = "Go\(39 + 61)\(29 + 80)\111d\(14 + 87):\(52 + -20)\(38 + 41)\(28 + 42)\(75 + -5)"
  _jxtgsouyfg.TextColor3 = Color3.new(1, 1, 1)
  _jxtgsouyfg.Font = Enum.Font.GothamBold
  _jxtgsouyfg.TextSize = (83 + -69)
  _jxtgsouyfg.Parent = _opnmwdaugx
  Instance.new("\(15 + 70)\(8 + 65)\(83 + -16)\(25 + 86)\(71 + 43)\110e\(35 + 79)", _jxtgsouyfg)

  local _maqehledsa = Instance.new("T\101x\(1 + 115)\(49 + 17)\(67 + 50)\116t\111n")
  _maqehledsa.Name = tostring(_mkayhpcmji())
  _maqehledsa.Size = UDim2.new(1, -(4 + 16), 0, (84 + -54))
  _maqehledsa.Position = UDim2.new(0, (9 + 1), 0, (57 + 303))
  _maqehledsa.BackgroundColor3 = Color3.fromRGB((65 + -25), (7 + 33), (39 + 16))
  _maqehledsa.Text = "\(36 + 33)\(82 + 1)\(26 + 54)\(53 + 5)\(25 + 7)\(89 + -10)\(39 + 31)\(77 + -7)"
  _maqehledsa.TextColor3 = Color3.new(1, 1, 1)
  _maqehledsa.Font = Enum.Font.GothamBold
  _maqehledsa.TextSize = (66 + -52)
  _maqehledsa.Parent = _opnmwdaugx
  Instance.new("\(38 + 47)\(60 + 13)\(65 + 2)\(16 + 95)\(21 + 93)\(59 + 51)\(85 + 16)\(72 + 42)", _maqehledsa)

  getgenv().fn_state["\(58 + 25)\(66 + 46)\(64 + 37)\(34 + 67)\(41 + 59)"] = false
  getgenv().fn_state["\(27 + 46)\(10 + 100)\(98 + 4)\(31 + 43)\117m\(28 + 84)"] = false
  getgenv().fn_state["N\(41 + 70)\099l\(12 + 93)\(26 + 86)"] = false
  getgenv().fn_state["\070ly"] = false
  getgenv().fn_state["G\111d\(3 + 106)\(26 + 85)\(48 + 52)\(5 + 96)"] = false
  getgenv().fn_state["E\(28 + 55)\(98 + -18)"] = false
  getgenv().fn_state["\065u\(94 + 22)\111R\(94 + 17)\108l"] = false

  _kxlloencdq.MouseButton1Click:Connect(function()
      _fzjegcrbtz:Destroy()
  end)

  _irohvrsbvy.MouseButton1Click:Connect(function()
      _opnmwdaugx.Visible = true
      _apuzxrywvh.Visible = false
      _irohvrsbvy.BackgroundColor3 = Color3.fromRGB(0, (8 + 152), (66 + -6))
      _zbmzthubmm.BackgroundColor3 = Color3.fromRGB((18 + 22), (68 + -28), (96 + -41))
  end)

  _zbmzthubmm.MouseButton1Click:Connect(function()
      _opnmwdaugx.Visible = false
      _apuzxrywvh.Visible = true
      _irohvrsbvy.BackgroundColor3 = Color3.fromRGB((67 + -27), (26 + 14), (71 + -16))
      _zbmzthubmm.BackgroundColor3 = Color3.fromRGB(0, (6 + 154), (94 + -34))
  end)

  speed
end
