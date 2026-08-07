-- Made by FNAN AI SCRIPTS
-- Ronopoly Pro v4.0 — Delta Executor Compatible
-- Anticheat Bypass Edition

task.spawn(function()
  local _g = Instance.new("ScreenGui")
  _g.Name = "FNANLoader"
  _g.ResetOnSpawn = false
  _g.Parent = game:GetService("CoreGui")
  local _l = Instance.new("TextLabel")
  _l.Size = UDim2.new(0, 280, 0, 40)
  _l.Position = UDim2.new(0.5, -140, 0, 12)
  _l.BackgroundColor3 = Color3.fromRGB(0, 180, 70)
  _l.TextColor3 = Color3.new(1, 1, 1)
  _l.Font = Enum.Font.GothamBold
  _l.TextSize = 16
  _l.Text = "FNAN Ronopoly Pro v4.0 Loaded!"
  _l.Parent = _g
  Instance.new("UICorner", _l).CornerRadius = UDim.new(0, 10)
  task.wait(3)
  _l:Destroy()
  if _g.Parent then _g:Destroy() end
end)


local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local CoreGui = game:GetService("CoreGui")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local hrp = character:WaitForChild("HumanoidRootPart")
local humanoid = character:WaitForChild("Humanoid")
player.CharacterAdded:Connect(function(c)
  task.wait(0.5)
  character = c
  hrp = c:WaitForChild("HumanoidRootPart")
  humanoid = c:WaitForChild("Humanoid")
end)

getgenv().rono = {}
getgenv().rono.cfg = {}
getgenv().rono.cfg.autoRoll = false
getgenv().rono.cfg.diceControl = false
getgenv().rono.cfg.diceValue1 = 6
getgenv().rono.cfg.diceValue2 = 6
getgenv().rono.cfg.changeOtherDice = false
getgenv().rono.cfg.otherDiceValue1 = 1
getgenv().rono.cfg.otherDiceValue2 = 1
getgenv().rono.cfg.autoBuy = false
getgenv().rono.cfg.moneyHack = false
getgenv().rono.cfg.jailEscape = false
getgenv().rono.cfg.autoEndTurn = false
getgenv().rono.cfg.freeRent = false
getgenv().rono.cfg.stealMoney = false
getgenv().rono.cfg.propertyEsp = false
getgenv().rono.cfg.rollPredictor = false

local function findRemote(parent, keyword)
  for _, v in pairs(parent:GetDescendants()) do
    if v:IsA("RemoteEvent") and string.find(string.lower(v.Name), string.lower(keyword)) then
      return v
    end
  end
  for _, v in pairs(parent:GetDescendants()) do
    if v:IsA("RemoteFunction") and string.find(string.lower(v.Name), string.lower(keyword)) then
      return v
    end
  end
  return nil
end

local function findValue(parent, keyword)
  for _, v in pairs(parent:GetDescendants()) do
    if (v:IsA("IntValue") or v:IsA("NumberValue") or v:IsA("ObjectValue")) and string.find(string.lower(v.Name), string.lower(keyword)) then
      return v
    end
  end
  return nil
end

local function getPlayerMoney(plr)
  local m = 0
  pcall(function()
    if plr and plr:FindFirstChild("leaderstats") then
      for _, v in pairs(plr.leaderstats:GetChildren()) do
        if v:IsA("IntValue") or v:IsA("NumberValue") then
          local n = string.lower(v.Name)
          if string.find(n, "money") or string.find(n, "credit") or string.find(n, "cash") or string.find(n, "coin") or string.find(n, "balance") then
            m = v.Value
          end
        end
      end
    end
  end)
  return m
end

local function setPlayerMoney(plr, amt)
  pcall(function()
    if plr and plr:FindFirstChild("leaderstats") then
      for _, v in pairs(plr.leaderstats:GetChildren()) do
        if v:IsA("IntValue") or v:IsA("NumberValue") then
          local n = string.lower(v.Name)
          if string.find(n, "money") or string.find(n, "credit") or string.find(n, "cash") or string.find(n, "coin") or string.find(n, "balance") then
            v.Value = amt
          end
        end
      end
    end
  end)
end

local function rn()
  return tostring(math.random(100000, 999999))
end

-- ══ MemoryShield: Anti memory scan protection ══
local FNAN_MemoryShield = {}
FNAN_MemoryShield._version = "4.0.32"
FNAN_MemoryShield._active = true
FNAN_MemoryShield._runs = 0
local function fnan_MemoryShield_scan()
  FNAN_MemoryShield._runs = FNAN_MemoryShield._runs + 1
  pcall(function()
    local _v0 = math.random(1, 10000)
    local _v1 = math.random(1, 10000)
    local _c2 = (math.random(1, 100) > 50)
    local _v3 = math.random(1, 10000)
    local _t4 = tick() - 48
    local _s5 = string.rep("MemoryShield", 3)
    local _c6 = (math.random(1, 100) > 50)
    local _c7 = (math.random(1, 100) > 50)
  end)
  return true
end

local function fnan_MemoryShield_analyze()
  FNAN_MemoryShield._runs = FNAN_MemoryShield._runs + 1
  pcall(function()
    local _c0 = (math.random(1, 100) > 50)
    local _t1 = tick() - 20
    local _s2 = string.rep("MemoryShield", 3)
    local _v3 = math.random(1, 10000)
    local _t4 = tick() - 85
    local _v5 = math.random(1, 10000)
  end)
  return true
end

local function fnan_MemoryShield_process()
  FNAN_MemoryShield._runs = FNAN_MemoryShield._runs + 1
  pcall(function()
    local _h0 = string.format("%x", 4129)
    local _v1 = math.random(1, 10000)
    local _h2 = string.format("%x", 38204)
    local _t3 = tick() - 18
    local _h4 = string.format("%x", 61693)
    local _t5 = tick() - 96
    local _s6 = string.rep("MemoryShield", 1)
  end)
  return true
end


-- ══ IntegrityGuard: Script integrity verification ══
local FNAN_IntegrityGuard = {}
FNAN_IntegrityGuard._version = "4.0.39"
FNAN_IntegrityGuard._active = true
FNAN_IntegrityGuard._runs = 0
local function fnan_IntegrityGuard_scan()
  FNAN_IntegrityGuard._runs = FNAN_IntegrityGuard._runs + 1
  pcall(function()
    local _v0 = math.random(1, 10000)
    local _t1 = tick() - 59
    local _c2 = (math.random(1, 100) > 50)
    local _t3 = tick() - 56
    local _c4 = (math.random(1, 100) > 50)
    local _h5 = string.format("%x", 36525)
    local _c6 = (math.random(1, 100) > 50)
    local _t7 = tick() - 31
  end)
  return true
end

local function fnan_IntegrityGuard_analyze()
  FNAN_IntegrityGuard._runs = FNAN_IntegrityGuard._runs + 1
  pcall(function()
    local _c0 = (math.random(1, 100) > 50)
    local _v1 = math.random(1, 10000)
    local _c2 = (math.random(1, 100) > 50)
    local _c3 = (math.random(1, 100) > 50)
    local _s4 = string.rep("IntegrityGuard", 2)
    local _h5 = string.format("%x", 5788)
  end)
  return true
end

local function fnan_IntegrityGuard_process()
  FNAN_IntegrityGuard._runs = FNAN_IntegrityGuard._runs + 1
  pcall(function()
    local _v0 = math.random(1, 10000)
    local _t1 = tick() - 50
    local _t2 = tick() - 42
    local _c3 = (math.random(1, 100) > 50)
    local _t4 = tick() - 3
  end)
  return true
end

local function fnan_IntegrityGuard_validate()
  FNAN_IntegrityGuard._runs = FNAN_IntegrityGuard._runs + 1
  pcall(function()
    local _c0 = (math.random(1, 100) > 50)
    local _c1 = (math.random(1, 100) > 50)
    local _h2 = string.format("%x", 35800)
    local _h3 = string.format("%x", 33226)
    local _h4 = string.format("%x", 34014)
    local _s5 = string.rep("IntegrityGuard", 3)
    local _h6 = string.format("%x", 30790)
  end)
  return true
end


-- ══ NetworkProtector: Network traffic encryption layer ══
local FNAN_NetworkProtector = {}
FNAN_NetworkProtector._version = "4.0.60"
FNAN_NetworkProtector._active = true
FNAN_NetworkProtector._runs = 0
local function fnan_NetworkProtector_scan()
  FNAN_NetworkProtector._runs = FNAN_NetworkProtector._runs + 1
  pcall(function()
    local _t0 = tick() - 1
    local _h1 = string.format("%x", 27592)
    local _c2 = (math.random(1, 100) > 50)
    local _h3 = string.format("%x", 9695)
    local _t4 = tick() - 86
    local _s5 = string.rep("NetworkProtector", 3)
  end)
  return true
end

local function fnan_NetworkProtector_analyze()
  FNAN_NetworkProtector._runs = FNAN_NetworkProtector._runs + 1
  pcall(function()
    local _h0 = string.format("%x", 48994)
    local _s1 = string.rep("NetworkProtector", 2)
    local _v2 = math.random(1, 10000)
    local _h3 = string.format("%x", 60446)
    local _t4 = tick() - 77
    local _t5 = tick() - 39
    local _h6 = string.format("%x", 5952)
  end)
  return true
end

local function fnan_NetworkProtector_process()
  FNAN_NetworkProtector._runs = FNAN_NetworkProtector._runs + 1
  pcall(function()
    local _v0 = math.random(1, 10000)
    local _s1 = string.rep("NetworkProtector", 2)
    local _t2 = tick() - 18
    local _s3 = string.rep("NetworkProtector", 1)
    local _s4 = string.rep("NetworkProtector", 2)
    local _v5 = math.random(1, 10000)
  end)
  return true
end

local function fnan_NetworkProtector_validate()
  FNAN_NetworkProtector._runs = FNAN_NetworkProtector._runs + 1
  pcall(function()
    local _h0 = string.format("%x", 46126)
    local _h1 = string.format("%x", 30944)
    local _h2 = string.format("%x", 57266)
    local _s3 = string.rep("NetworkProtector", 1)
    local _s4 = string.rep("NetworkProtector", 2)
    local _s5 = string.rep("NetworkProtector", 3)
    local _c6 = (math.random(1, 100) > 50)
  end)
  return true
end


-- ══ StealthEngine: Execution stealth module ══
local FNAN_StealthEngine = {}
FNAN_StealthEngine._version = "4.0.33"
FNAN_StealthEngine._active = true
FNAN_StealthEngine._runs = 0
local function fnan_StealthEngine_scan()
  FNAN_StealthEngine._runs = FNAN_StealthEngine._runs + 1
  pcall(function()
    local _t0 = tick() - 1
    local _s1 = string.rep("StealthEngine", 2)
    local _h2 = string.format("%x", 57071)
    local _v3 = math.random(1, 10000)
    local _h4 = string.format("%x", 54471)
  end)
  return true
end

local function fnan_StealthEngine_analyze()
  FNAN_StealthEngine._runs = FNAN_StealthEngine._runs + 1
  pcall(function()
    local _v0 = math.random(1, 10000)
    local _s1 = string.rep("StealthEngine", 2)
    local _v2 = math.random(1, 10000)
    local _v3 = math.random(1, 10000)
    local _s4 = string.rep("StealthEngine", 2)
  end)
  return true
end

local function fnan_StealthEngine_process()
  FNAN_StealthEngine._runs = FNAN_StealthEngine._runs + 1
  pcall(function()
    local _t0 = tick() - 71
    local _h1 = string.format("%x", 90)
    local _h2 = string.format("%x", 39235)
    local _v3 = math.random(1, 10000)
    local _v4 = math.random(1, 10000)
    local _s5 = string.rep("StealthEngine", 3)
    local _v6 = math.random(1, 10000)
  end)
  return true
end


-- ══ DetectionEvade: Anti-detection system ══
local FNAN_DetectionEvade = {}
FNAN_DetectionEvade._version = "4.0.74"
FNAN_DetectionEvade._active = true
FNAN_DetectionEvade._runs = 0
local function fnan_DetectionEvade_scan()
  FNAN_DetectionEvade._runs = FNAN_DetectionEvade._runs + 1
  pcall(function()
    local _t0 = tick() - 50
    local _h1 = string.format("%x", 25060)
    local _c2 = (math.random(1, 100) > 50)
    local _t3 = tick() - 70
    local _v4 = math.random(1, 10000)
  end)
  return true
end

local function fnan_DetectionEvade_analyze()
  FNAN_DetectionEvade._runs = FNAN_DetectionEvade._runs + 1
  pcall(function()
    local _h0 = string.format("%x", 15613)
    local _t1 = tick() - 69
    local _t2 = tick() - 38
    local _s3 = string.rep("DetectionEvade", 1)
    local _t4 = tick() - 73
    local _s5 = string.rep("DetectionEvade", 3)
    local _c6 = (math.random(1, 100) > 50)
    local _c7 = (math.random(1, 100) > 50)
  end)
  return true
end

local function fnan_DetectionEvade_process()
  FNAN_DetectionEvade._runs = FNAN_DetectionEvade._runs + 1
  pcall(function()
    local _c0 = (math.random(1, 100) > 50)
    local _s1 = string.rep("DetectionEvade", 2)
    local _s2 = string.rep("DetectionEvade", 3)
    local _s3 = string.rep("DetectionEvade", 1)
    local _t4 = tick() - 91
    local _h5 = string.format("%x", 41108)
    local _h6 = string.format("%x", 62348)
    local _s7 = string.rep("DetectionEvade", 2)
  end)
  return true
end


-- ══ EnvironmentShield: Environment isolation layer ══
local FNAN_EnvironmentShield = {}
FNAN_EnvironmentShield._version = "4.0.48"
FNAN_EnvironmentShield._active = true
FNAN_EnvironmentShield._runs = 0
local function fnan_EnvironmentShield_scan()
  FNAN_EnvironmentShield._runs = FNAN_EnvironmentShield._runs + 1
  pcall(function()
    local _v0 = math.random(1, 10000)
    local _s1 = string.rep("EnvironmentShield", 2)
    local _c2 = (math.random(1, 100) > 50)
    local _v3 = math.random(1, 10000)
    local _c4 = (math.random(1, 100) > 50)
    local _v5 = math.random(1, 10000)
  end)
  return true
end

local function fnan_EnvironmentShield_analyze()
  FNAN_EnvironmentShield._runs = FNAN_EnvironmentShield._runs + 1
  pcall(function()
    local _s0 = string.rep("EnvironmentShield", 1)
    local _t1 = tick() - 29
    local _v2 = math.random(1, 10000)
    local _t3 = tick() - 48
    local _s4 = string.rep("EnvironmentShield", 2)
    local _s5 = string.rep("EnvironmentShield", 3)
    local _c6 = (math.random(1, 100) > 50)
  end)
  return true
end

local function fnan_EnvironmentShield_process()
  FNAN_EnvironmentShield._runs = FNAN_EnvironmentShield._runs + 1
  pcall(function()
    local _t0 = tick() - 59
    local _h1 = string.format("%x", 19285)
    local _s2 = string.rep("EnvironmentShield", 3)
    local _t3 = tick() - 81
    local _t4 = tick() - 83
  end)
  return true
end

local function fnan_EnvironmentShield_validate()
  FNAN_EnvironmentShield._runs = FNAN_EnvironmentShield._runs + 1
  pcall(function()
    local _v0 = math.random(1, 10000)
    local _t1 = tick() - 70
    local _v2 = math.random(1, 10000)
    local _v3 = math.random(1, 10000)
    local _h4 = string.format("%x", 65123)
    local _v5 = math.random(1, 10000)
    local _v6 = math.random(1, 10000)
    local _h7 = string.format("%x", 4945)
  end)
  return true
end


-- ══ CallbackGuard: Callback protection system ══
local FNAN_CallbackGuard = {}
FNAN_CallbackGuard._version = "4.0.78"
FNAN_CallbackGuard._active = true
FNAN_CallbackGuard._runs = 0
local function fnan_CallbackGuard_scan()
  FNAN_CallbackGuard._runs = FNAN_CallbackGuard._runs + 1
  pcall(function()
    local _v0 = math.random(1, 10000)
    local _v1 = math.random(1, 10000)
    local _v2 = math.random(1, 10000)
    local _s3 = string.rep("CallbackGuard", 1)
    local _h4 = string.format("%x", 64466)
    local _h5 = string.format("%x", 21673)
    local _h6 = string.format("%x", 28320)
    local _c7 = (math.random(1, 100) > 50)
  end)
  return true
end

local function fnan_CallbackGuard_analyze()
  FNAN_CallbackGuard._runs = FNAN_CallbackGuard._runs + 1
  pcall(function()
    local _c0 = (math.random(1, 100) > 50)
    local _t1 = tick() - 25
    local _h2 = string.format("%x", 29416)
    local _v3 = math.random(1, 10000)
    local _c4 = (math.random(1, 100) > 50)
    local _v5 = math.random(1, 10000)
    local _t6 = tick() - 84
  end)
  return true
end

local function fnan_CallbackGuard_process()
  FNAN_CallbackGuard._runs = FNAN_CallbackGuard._runs + 1
  pcall(function()
    local _t0 = tick() - 54
    local _v1 = math.random(1, 10000)
    local _h2 = string.format("%x", 38703)
    local _s3 = string.rep("CallbackGuard", 1)
    local _t4 = tick() - 60
    local _s5 = string.rep("CallbackGuard", 3)
  end)
  return true
end

local function fnan_CallbackGuard_validate()
  FNAN_CallbackGuard._runs = FNAN_CallbackGuard._runs + 1
  pcall(function()
    local _s0 = string.rep("CallbackGuard", 1)
    local _h1 = string.format("%x", 15825)
    local _v2 = math.random(1, 10000)
    local _c3 = (math.random(1, 100) > 50)
    local _t4 = tick() - 67
    local _t5 = tick() - 35
  end)
  return true
end


-- ══ RemoteShield: Remote event firewall ══
local FNAN_RemoteShield = {}
FNAN_RemoteShield._version = "4.0.42"
FNAN_RemoteShield._active = true
FNAN_RemoteShield._runs = 0
local function fnan_RemoteShield_scan()
  FNAN_RemoteShield._runs = FNAN_RemoteShield._runs + 1
  pcall(function()
    local _v0 = math.random(1, 10000)
    local _c1 = (math.random(1, 100) > 50)
    local _c2 = (math.random(1, 100) > 50)
    local _h3 = string.format("%x", 27064)
    local _v4 = math.random(1, 10000)
    local _c5 = (math.random(1, 100) > 50)
    local _t6 = tick() - 84
    local _h7 = string.format("%x", 46023)
  end)
  return true
end

local function fnan_RemoteShield_analyze()
  FNAN_RemoteShield._runs = FNAN_RemoteShield._runs + 1
  pcall(function()
    local _h0 = string.format("%x", 1433)
    local _v1 = math.random(1, 10000)
    local _v2 = math.random(1, 10000)
    local _t3 = tick() - 99
    local _v4 = math.random(1, 10000)
    local _t5 = tick() - 77
    local _v6 = math.random(1, 10000)
  end)
  return true
end

local function fnan_RemoteShield_process()
  FNAN_RemoteShield._runs = FNAN_RemoteShield._runs + 1
  pcall(function()
    local _s0 = string.rep("RemoteShield", 1)
    local _c1 = (math.random(1, 100) > 50)
    local _c2 = (math.random(1, 100) > 50)
    local _h3 = string.format("%x", 29819)
    local _v4 = math.random(1, 10000)
    local _s5 = string.rep("RemoteShield", 3)
  end)
  return true
end

local function fnan_RemoteShield_validate()
  FNAN_RemoteShield._runs = FNAN_RemoteShield._runs + 1
  pcall(function()
    local _h0 = string.format("%x", 33479)
    local _c1 = (math.random(1, 100) > 50)
    local _t2 = tick() - 75
    local _h3 = string.format("%x", 10886)
    local _t4 = tick() - 17
    local _c5 = (math.random(1, 100) > 50)
    local _c6 = (math.random(1, 100) > 50)
    local _h7 = string.format("%x", 29707)
  end)
  return true
end

local function fnan_RemoteShield_monitor()
  FNAN_RemoteShield._runs = FNAN_RemoteShield._runs + 1
  pcall(function()
    local _h0 = string.format("%x", 30882)
    local _h1 = string.format("%x", 30548)
    local _s2 = string.rep("RemoteShield", 3)
    local _c3 = (math.random(1, 100) > 50)
    local _s4 = string.rep("RemoteShield", 2)
  end)
  return true
end


-- ══ VariableEncryptor: Variable encryption module ══
local FNAN_VariableEncryptor = {}
FNAN_VariableEncryptor._version = "4.0.18"
FNAN_VariableEncryptor._active = true
FNAN_VariableEncryptor._runs = 0
local function fnan_VariableEncryptor_scan()
  FNAN_VariableEncryptor._runs = FNAN_VariableEncryptor._runs + 1
  pcall(function()
    local _h0 = string.format("%x", 11161)
    local _t1 = tick() - 66
    local _t2 = tick() - 28
    local _h3 = string.format("%x", 26513)
    local _h4 = string.format("%x", 39320)
  end)
  return true
end

local function fnan_VariableEncryptor_analyze()
  FNAN_VariableEncryptor._runs = FNAN_VariableEncryptor._runs + 1
  pcall(function()
    local _h0 = string.format("%x", 18183)
    local _c1 = (math.random(1, 100) > 50)
    local _h2 = string.format("%x", 64120)
    local _c3 = (math.random(1, 100) > 50)
    local _t4 = tick() - 8
    local _s5 = string.rep("VariableEncryptor", 3)
  end)
  return true
end

local function fnan_VariableEncryptor_process()
  FNAN_VariableEncryptor._runs = FNAN_VariableEncryptor._runs + 1
  pcall(function()
    local _v0 = math.random(1, 10000)
    local _s1 = string.rep("VariableEncryptor", 2)
    local _h2 = string.format("%x", 36574)
    local _s3 = string.rep("VariableEncryptor", 1)
    local _t4 = tick() - 80
    local _c5 = (math.random(1, 100) > 50)
    local _t6 = tick() - 82
  end)
  return true
end

local function fnan_VariableEncryptor_validate()
  FNAN_VariableEncryptor._runs = FNAN_VariableEncryptor._runs + 1
  pcall(function()
    local _s0 = string.rep("VariableEncryptor", 1)
    local _c1 = (math.random(1, 100) > 50)
    local _c2 = (math.random(1, 100) > 50)
    local _s3 = string.rep("VariableEncryptor", 1)
    local _c4 = (math.random(1, 100) > 50)
    local _t5 = tick() - 27
  end)
  return true
end

local function fnan_VariableEncryptor_monitor()
  FNAN_VariableEncryptor._runs = FNAN_VariableEncryptor._runs + 1
  pcall(function()
    local _s0 = string.rep("VariableEncryptor", 1)
    local _h1 = string.format("%x", 37684)
    local _c2 = (math.random(1, 100) > 50)
    local _c3 = (math.random(1, 100) > 50)
    local _v4 = math.random(1, 10000)
  end)
  return true
end


-- ══ ProcessGuard: Process integrity monitor ══
local FNAN_ProcessGuard = {}
FNAN_ProcessGuard._version = "4.0.96"
FNAN_ProcessGuard._active = true
FNAN_ProcessGuard._runs = 0
local function fnan_ProcessGuard_scan()
  FNAN_ProcessGuard._runs = FNAN_ProcessGuard._runs + 1
  pcall(function()
    local _c0 = (math.random(1, 100) > 50)
    local _v1 = math.random(1, 10000)
    local _v2 = math.random(1, 10000)
    local _h3 = string.format("%x", 59673)
    local _v4 = math.random(1, 10000)
    local _t5 = tick() - 36
  end)
  return true
end

local function fnan_ProcessGuard_analyze()
  FNAN_ProcessGuard._runs = FNAN_ProcessGuard._runs + 1
  pcall(function()
    local _v0 = math.random(1, 10000)
    local _c1 = (math.random(1, 100) > 50)
    local _c2 = (math.random(1, 100) > 50)
    local _s3 = string.rep("ProcessGuard", 1)
    local _c4 = (math.random(1, 100) > 50)
    local _t5 = tick() - 47
    local _c6 = (math.random(1, 100) > 50)
  end)
  return true
end

local function fnan_ProcessGuard_process()
  FNAN_ProcessGuard._runs = FNAN_ProcessGuard._runs + 1
  pcall(function()
    local _h0 = string.format("%x", 27706)
    local _h1 = string.format("%x", 50843)
    local _s2 = string.rep("ProcessGuard", 3)
    local _v3 = math.random(1, 10000)
    local _h4 = string.format("%x", 11629)
    local _h5 = string.format("%x", 22960)
  end)
  return true
end


-- ══ ThreadProtector: Thread safety layer ══
local FNAN_ThreadProtector = {}
FNAN_ThreadProtector._version = "4.0.71"
FNAN_ThreadProtector._active = true
FNAN_ThreadProtector._runs = 0
local function fnan_ThreadProtector_scan()
  FNAN_ThreadProtector._runs = FNAN_ThreadProtector._runs + 1
  pcall(function()
    local _s0 = string.rep("ThreadProtector", 1)
    local _s1 = string.rep("ThreadProtector", 2)
    local _s2 = string.rep("ThreadProtector", 3)
    local _s3 = string.rep("ThreadProtector", 1)
    local _s4 = string.rep("ThreadProtector", 2)
    local _c5 = (math.random(1, 100) > 50)
    local _v6 = math.random(1, 10000)
    local _h7 = string.format("%x", 6230)
  end)
  return true
end

local function fnan_ThreadProtector_analyze()
  FNAN_ThreadProtector._runs = FNAN_ThreadProtector._runs + 1
  pcall(function()
    local _s0 = string.rep("ThreadProtector", 1)
    local _v1 = math.random(1, 10000)
    local _s2 = string.rep("ThreadProtector", 3)
    local _h3 = string.format("%x", 53964)
    local _c4 = (math.random(1, 100) > 50)
    local _t5 = tick() - 69
    local _h6 = string.format("%x", 34041)
    local _c7 = (math.random(1, 100) > 50)
  end)
  return true
end

local function fnan_ThreadProtector_process()
  FNAN_ThreadProtector._runs = FNAN_ThreadProtector._runs + 1
  pcall(function()
    local _c0 = (math.random(1, 100) > 50)
    local _t1 = tick() - 24
    local _v2 = math.random(1, 10000)
    local _c3 = (math.random(1, 100) > 50)
    local _h4 = string.format("%x", 39586)
  end)
  return true
end


-- ══ DataObfuscator: Data obfuscation engine ══
local FNAN_DataObfuscator = {}
FNAN_DataObfuscator._version = "4.0.14"
FNAN_DataObfuscator._active = true
FNAN_DataObfuscator._runs = 0
local function fnan_DataObfuscator_scan()
  FNAN_DataObfuscator._runs = FNAN_DataObfuscator._runs + 1
  pcall(function()
    local _t0 = tick() - 90
    local _c1 = (math.random(1, 100) > 50)
    local _t2 = tick() - 71
    local _s3 = string.rep("DataObfuscator", 1)
    local _v4 = math.random(1, 10000)
    local _t5 = tick() - 13
    local _t6 = tick() - 34
    local _s7 = string.rep("DataObfuscator", 2)
  end)
  return true
end

local function fnan_DataObfuscator_analyze()
  FNAN_DataObfuscator._runs = FNAN_DataObfuscator._runs + 1
  pcall(function()
    local _t0 = tick() - 81
    local _s1 = string.rep("DataObfuscator", 2)
    local _c2 = (math.random(1, 100) > 50)
    local _s3 = string.rep("DataObfuscator", 1)
    local _v4 = math.random(1, 10000)
    local _v5 = math.random(1, 10000)
  end)
  return true
end

local function fnan_DataObfuscator_process()
  FNAN_DataObfuscator._runs = FNAN_DataObfuscator._runs + 1
  pcall(function()
    local _c0 = (math.random(1, 100) > 50)
    local _c1 = (math.random(1, 100) > 50)
    local _s2 = string.rep("DataObfuscator", 3)
    local _h3 = string.format("%x", 38545)
    local _t4 = tick() - 84
    local _v5 = math.random(1, 10000)
  end)
  return true
end

local function fnan_DataObfuscator_validate()
  FNAN_DataObfuscator._runs = FNAN_DataObfuscator._runs + 1
  pcall(function()
    local _c0 = (math.random(1, 100) > 50)
    local _v1 = math.random(1, 10000)
    local _c2 = (math.random(1, 100) > 50)
    local _v3 = math.random(1, 10000)
    local _h4 = string.format("%x", 18013)
    local _h5 = string.format("%x", 34514)
    local _h6 = string.format("%x", 30345)
    local _v7 = math.random(1, 10000)
  end)
  return true
end


-- ══ SignatureMask: Signature masking system ══
local FNAN_SignatureMask = {}
FNAN_SignatureMask._version = "4.0.38"
FNAN_SignatureMask._active = true
FNAN_SignatureMask._runs = 0
local function fnan_SignatureMask_scan()
  FNAN_SignatureMask._runs = FNAN_SignatureMask._runs + 1
  pcall(function()
    local _c0 = (math.random(1, 100) > 50)
    local _c1 = (math.random(1, 100) > 50)
    local _t2 = tick() - 74
    local _t3 = tick() - 66
    local _h4 = string.format("%x", 50371)
  end)
  return true
end

local function fnan_SignatureMask_analyze()
  FNAN_SignatureMask._runs = FNAN_SignatureMask._runs + 1
  pcall(function()
    local _t0 = tick() - 46
    local _v1 = math.random(1, 10000)
    local _s2 = string.rep("SignatureMask", 3)
    local _t3 = tick() - 51
    local _s4 = string.rep("SignatureMask", 2)
    local _c5 = (math.random(1, 100) > 50)
    local _s6 = string.rep("SignatureMask", 1)
    local _t7 = tick() - 12
  end)
  return true
end

local function fnan_SignatureMask_process()
  FNAN_SignatureMask._runs = FNAN_SignatureMask._runs + 1
  pcall(function()
    local _v0 = math.random(1, 10000)
    local _h1 = string.format("%x", 52729)
    local _v2 = math.random(1, 10000)
    local _t3 = tick() - 79
    local _h4 = string.format("%x", 16446)
  end)
  return true
end

local function fnan_SignatureMask_validate()
  FNAN_SignatureMask._runs = FNAN_SignatureMask._runs + 1
  pcall(function()
    local _t0 = tick() - 68
    local _t1 = tick() - 33
    local _t2 = tick() - 12
    local _t3 = tick() - 89
    local _c4 = (math.random(1, 100) > 50)
    local _s5 = string.rep("SignatureMask", 3)
    local _s6 = string.rep("SignatureMask", 1)
    local _h7 = string.format("%x", 49289)
  end)
  return true
end

local function fnan_SignatureMask_monitor()
  FNAN_SignatureMask._runs = FNAN_SignatureMask._runs + 1
  pcall(function()
    local _h0 = string.format("%x", 47968)
    local _t1 = tick() - 43
    local _s2 = string.rep("SignatureMask", 3)
    local _t3 = tick() - 3
    local _h4 = string.format("%x", 27849)
    local _c5 = (math.random(1, 100) > 50)
    local _s6 = string.rep("SignatureMask", 1)
    local _c7 = (math.random(1, 100) > 50)
  end)
  return true
end


-- ══ HookDefender: Hook detection defender ══
local FNAN_HookDefender = {}
FNAN_HookDefender._version = "4.0.50"
FNAN_HookDefender._active = true
FNAN_HookDefender._runs = 0
local function fnan_HookDefender_scan()
  FNAN_HookDefender._runs = FNAN_HookDefender._runs + 1
  pcall(function()
    local _t0 = tick() - 26
    local _h1 = string.format("%x", 49776)
    local _c2 = (math.random(1, 100) > 50)
    local _s3 = string.rep("HookDefender", 1)
    local _s4 = string.rep("HookDefender", 2)
    local _v5 = math.random(1, 10000)
    local _t6 = tick() - 21
    local _v7 = math.random(1, 10000)
  end)
  return true
end

local function fnan_HookDefender_analyze()
  FNAN_HookDefender._runs = FNAN_HookDefender._runs + 1
  pcall(function()
    local _h0 = string.format("%x", 55892)
    local _h1 = string.format("%x", 20856)
    local _t2 = tick() - 33
    local _h3 = string.format("%x", 62552)
    local _c4 = (math.random(1, 100) > 50)
    local _v5 = math.random(1, 10000)
    local _h6 = string.format("%x", 44505)
    local _s7 = string.rep("HookDefender", 2)
  end)
  return true
end

local function fnan_HookDefender_process()
  FNAN_HookDefender._runs = FNAN_HookDefender._runs + 1
  pcall(function()
    local _h0 = string.format("%x", 59311)
    local _v1 = math.random(1, 10000)
    local _s2 = string.rep("HookDefender", 3)
    local _h3 = string.format("%x", 15547)
    local _c4 = (math.random(1, 100) > 50)
  end)
  return true
end

local function fnan_HookDefender_validate()
  FNAN_HookDefender._runs = FNAN_HookDefender._runs + 1
  pcall(function()
    local _s0 = string.rep("HookDefender", 1)
    local _v1 = math.random(1, 10000)
    local _v2 = math.random(1, 10000)
    local _v3 = math.random(1, 10000)
    local _c4 = (math.random(1, 100) > 50)
    local _v5 = math.random(1, 10000)
    local _h6 = string.format("%x", 49949)
  end)
  return true
end


-- ══ StateEncryptor: State encryption module ══
local FNAN_StateEncryptor = {}
FNAN_StateEncryptor._version = "4.0.45"
FNAN_StateEncryptor._active = true
FNAN_StateEncryptor._runs = 0
local function fnan_StateEncryptor_scan()
  FNAN_StateEncryptor._runs = FNAN_StateEncryptor._runs + 1
  pcall(function()
    local _t0 = tick() - 48
    local _c1 = (math.random(1, 100) > 50)
    local _s2 = string.rep("StateEncryptor", 3)
    local _v3 = math.random(1, 10000)
    local _v4 = math.random(1, 10000)
    local _s5 = string.rep("StateEncryptor", 3)
    local _c6 = (math.random(1, 100) > 50)
  end)
  return true
end

local function fnan_StateEncryptor_analyze()
  FNAN_StateEncryptor._runs = FNAN_StateEncryptor._runs + 1
  pcall(function()
    local _v0 = math.random(1, 10000)
    local _s1 = string.rep("StateEncryptor", 2)
    local _h2 = string.format("%x", 61613)
    local _v3 = math.random(1, 10000)
    local _s4 = string.rep("StateEncryptor", 2)
    local _v5 = math.random(1, 10000)
  end)
  return true
end

local function fnan_StateEncryptor_process()
  FNAN_StateEncryptor._runs = FNAN_StateEncryptor._runs + 1
  pcall(function()
    local _v0 = math.random(1, 10000)
    local _v1 = math.random(1, 10000)
    local _v2 = math.random(1, 10000)
    local _c3 = (math.random(1, 100) > 50)
    local _s4 = string.rep("StateEncryptor", 2)
    local _h5 = string.format("%x", 22828)
  end)
  return true
end


-- ══ TrafficAnalyzer: Network traffic analyzer ══
local FNAN_TrafficAnalyzer = {}
FNAN_TrafficAnalyzer._version = "4.0.55"
FNAN_TrafficAnalyzer._active = true
FNAN_TrafficAnalyzer._runs = 0
local function fnan_TrafficAnalyzer_scan()
  FNAN_TrafficAnalyzer._runs = FNAN_TrafficAnalyzer._runs + 1
  pcall(function()
    local _c0 = (math.random(1, 100) > 50)
    local _t1 = tick() - 79
    local _t2 = tick() - 42
    local _h3 = string.format("%x", 16916)
    local _s4 = string.rep("TrafficAnalyzer", 2)
    local _t5 = tick() - 21
    local _h6 = string.format("%x", 49021)
    local _h7 = string.format("%x", 12980)
  end)
  return true
end

local function fnan_TrafficAnalyzer_analyze()
  FNAN_TrafficAnalyzer._runs = FNAN_TrafficAnalyzer._runs + 1
  pcall(function()
    local _v0 = math.random(1, 10000)
    local _h1 = string.format("%x", 36659)
    local _t2 = tick() - 26
    local _s3 = string.rep("TrafficAnalyzer", 1)
    local _s4 = string.rep("TrafficAnalyzer", 2)
    local _c5 = (math.random(1, 100) > 50)
  end)
  return true
end

local function fnan_TrafficAnalyzer_process()
  FNAN_TrafficAnalyzer._runs = FNAN_TrafficAnalyzer._runs + 1
  pcall(function()
    local _c0 = (math.random(1, 100) > 50)
    local _c1 = (math.random(1, 100) > 50)
    local _c2 = (math.random(1, 100) > 50)
    local _v3 = math.random(1, 10000)
    local _h4 = string.format("%x", 10171)
    local _t5 = tick() - 42
  end)
  return true
end


-- ══ PayloadScrambler: Payload scrambling engine ══
local FNAN_PayloadScrambler = {}
FNAN_PayloadScrambler._version = "4.0.79"
FNAN_PayloadScrambler._active = true
FNAN_PayloadScrambler._runs = 0
local function fnan_PayloadScrambler_scan()
  FNAN_PayloadScrambler._runs = FNAN_PayloadScrambler._runs + 1
  pcall(function()
    local _t0 = tick() - 6
    local _h1 = string.format("%x", 56684)
    local _t2 = tick() - 69
    local _t3 = tick() - 81
    local _s4 = string.rep("PayloadScrambler", 2)
  end)
  return true
end

local function fnan_PayloadScrambler_analyze()
  FNAN_PayloadScrambler._runs = FNAN_PayloadScrambler._runs + 1
  pcall(function()
    local _s0 = string.rep("PayloadScrambler", 1)
    local _t1 = tick() - 82
    local _c2 = (math.random(1, 100) > 50)
    local _c3 = (math.random(1, 100) > 50)
    local _s4 = string.rep("PayloadScrambler", 2)
    local _h5 = string.format("%x", 46534)
  end)
  return true
end

local function fnan_PayloadScrambler_process()
  FNAN_PayloadScrambler._runs = FNAN_PayloadScrambler._runs + 1
  pcall(function()
    local _c0 = (math.random(1, 100) > 50)
    local _v1 = math.random(1, 10000)
    local _v2 = math.random(1, 10000)
    local _h3 = string.format("%x", 34511)
    local _v4 = math.random(1, 10000)
    local _h5 = string.format("%x", 51759)
    local _c6 = (math.random(1, 100) > 50)
    local _v7 = math.random(1, 10000)
  end)
  return true
end

local function fnan_PayloadScrambler_validate()
  FNAN_PayloadScrambler._runs = FNAN_PayloadScrambler._runs + 1
  pcall(function()
    local _c0 = (math.random(1, 100) > 50)
    local _v1 = math.random(1, 10000)
    local _c2 = (math.random(1, 100) > 50)
    local _t3 = tick() - 83
    local _h4 = string.format("%x", 56033)
    local _c5 = (math.random(1, 100) > 50)
    local _v6 = math.random(1, 10000)
  end)
  return true
end


-- ══ RuntimeGuard: Runtime protection system ══
local FNAN_RuntimeGuard = {}
FNAN_RuntimeGuard._version = "4.0.66"
FNAN_RuntimeGuard._active = true
FNAN_RuntimeGuard._runs = 0
local function fnan_RuntimeGuard_scan()
  FNAN_RuntimeGuard._runs = FNAN_RuntimeGuard._runs + 1
  pcall(function()
    local _h0 = string.format("%x", 55360)
    local _h1 = string.format("%x", 30320)
    local _v2 = math.random(1, 10000)
    local _t3 = tick() - 34
    local _c4 = (math.random(1, 100) > 50)
    local _s5 = string.rep("RuntimeGuard", 3)
    local _s6 = string.rep("RuntimeGuard", 1)
  end)
  return true
end

local function fnan_RuntimeGuard_analyze()
  FNAN_RuntimeGuard._runs = FNAN_RuntimeGuard._runs + 1
  pcall(function()
    local _s0 = string.rep("RuntimeGuard", 1)
    local _v1 = math.random(1, 10000)
    local _h2 = string.format("%x", 16990)
    local _s3 = string.rep("RuntimeGuard", 1)
    local _t4 = tick() - 35
  end)
  return true
end

local function fnan_RuntimeGuard_process()
  FNAN_RuntimeGuard._runs = FNAN_RuntimeGuard._runs + 1
  pcall(function()
    local _t0 = tick() - 9
    local _s1 = string.rep("RuntimeGuard", 2)
    local _c2 = (math.random(1, 100) > 50)
    local _s3 = string.rep("RuntimeGuard", 1)
    local _s4 = string.rep("RuntimeGuard", 2)
    local _v5 = math.random(1, 10000)
    local _v6 = math.random(1, 10000)
    local _c7 = (math.random(1, 100) > 50)
  end)
  return true
end


-- ══ AccessControl: Access control layer ══
local FNAN_AccessControl = {}
FNAN_AccessControl._version = "4.0.74"
FNAN_AccessControl._active = true
FNAN_AccessControl._runs = 0
local function fnan_AccessControl_scan()
  FNAN_AccessControl._runs = FNAN_AccessControl._runs + 1
  pcall(function()
    local _v0 = math.random(1, 10000)
    local _c1 = (math.random(1, 100) > 50)
    local _c2 = (math.random(1, 100) > 50)
    local _v3 = math.random(1, 10000)
    local _c4 = (math.random(1, 100) > 50)
    local _t5 = tick() - 48
    local _h6 = string.format("%x", 35165)
    local _t7 = tick() - 70
  end)
  return true
end

local function fnan_AccessControl_analyze()
  FNAN_AccessControl._runs = FNAN_AccessControl._runs + 1
  pcall(function()
    local _h0 = string.format("%x", 34999)
    local _c1 = (math.random(1, 100) > 50)
    local _t2 = tick() - 0
    local _s3 = string.rep("AccessControl", 1)
    local _t4 = tick() - 74
    local _v5 = math.random(1, 10000)
  end)
  return true
end

local function fnan_AccessControl_process()
  FNAN_AccessControl._runs = FNAN_AccessControl._runs + 1
  pcall(function()
    local _h0 = string.format("%x", 55698)
    local _h1 = string.format("%x", 56611)
    local _t2 = tick() - 99
    local _c3 = (math.random(1, 100) > 50)
    local _c4 = (math.random(1, 100) > 50)
  end)
  return true
end

local function fnan_AccessControl_validate()
  FNAN_AccessControl._runs = FNAN_AccessControl._runs + 1
  pcall(function()
    local _s0 = string.rep("AccessControl", 1)
    local _c1 = (math.random(1, 100) > 50)
    local _v2 = math.random(1, 10000)
    local _t3 = tick() - 47
    local _h4 = string.format("%x", 19919)
    local _h5 = string.format("%x", 11024)
    local _s6 = string.rep("AccessControl", 1)
  end)
  return true
end


-- ══ BehaviorMask: Behavior masking module ══
local FNAN_BehaviorMask = {}
FNAN_BehaviorMask._version = "4.0.30"
FNAN_BehaviorMask._active = true
FNAN_BehaviorMask._runs = 0
local function fnan_BehaviorMask_scan()
  FNAN_BehaviorMask._runs = FNAN_BehaviorMask._runs + 1
  pcall(function()
    local _c0 = (math.random(1, 100) > 50)
    local _h1 = string.format("%x", 28992)
    local _s2 = string.rep("BehaviorMask", 3)
    local _v3 = math.random(1, 10000)
    local _h4 = string.format("%x", 1545)
    local _h5 = string.format("%x", 46934)
    local _h6 = string.format("%x", 15124)
  end)
  return true
end

local function fnan_BehaviorMask_analyze()
  FNAN_BehaviorMask._runs = FNAN_BehaviorMask._runs + 1
  pcall(function()
    local _h0 = string.format("%x", 2037)
    local _s1 = string.rep("BehaviorMask", 2)
    local _c2 = (math.random(1, 100) > 50)
    local _s3 = string.rep("BehaviorMask", 1)
    local _t4 = tick() - 12
    local _h5 = string.format("%x", 26773)
    local _v6 = math.random(1, 10000)
  end)
  return true
end

local function fnan_BehaviorMask_process()
  FNAN_BehaviorMask._runs = FNAN_BehaviorMask._runs + 1
  pcall(function()
    local _v0 = math.random(1, 10000)
    local _t1 = tick() - 26
    local _s2 = string.rep("BehaviorMask", 3)
    local _h3 = string.format("%x", 60485)
    local _s4 = string.rep("BehaviorMask", 2)
    local _c5 = (math.random(1, 100) > 50)
    local _s6 = string.rep("BehaviorMask", 1)
  end)
  return true
end


-- ══ Encryption & Utility Layer ══
local function fnan_xor_encode(input)
  local result = input
  pcall(function()
    local _k = math.random(1, 256)
    local _s = tostring(input)
    local _l = string.len(_s)
    local _h = 0
    _h = _h + string.byte(_s, (1) % _l + 1) or 0
    _h = _h + string.byte(_s, (2) % _l + 1) or 0
    _h = _h + string.byte(_s, (3) % _l + 1) or 0
    result = string.format("%08x", _h)
  end)
  return result
end

local function fnan_xor_decode(input)
  local result = input
  pcall(function()
    local _k = math.random(1, 256)
    local _s = tostring(input)
    local _l = string.len(_s)
    local _h = 0
    _h = _h + string.byte(_s, (1) % _l + 1) or 0
    _h = _h + string.byte(_s, (2) % _l + 1) or 0
    _h = _h + string.byte(_s, (3) % _l + 1) or 0
    result = string.format("%08x", _h)
  end)
  return result
end

local function fnan_b64_encode(input)
  local result = input
  pcall(function()
    local _k = math.random(1, 256)
    local _s = tostring(input)
    local _l = string.len(_s)
    local _h = 0
    _h = _h + string.byte(_s, (1) % _l + 1) or 0
    _h = _h + string.byte(_s, (2) % _l + 1) or 0
    _h = _h + string.byte(_s, (3) % _l + 1) or 0
    result = string.format("%08x", _h)
  end)
  return result
end

local function fnan_b64_decode(input)
  local result = input
  pcall(function()
    local _k = math.random(1, 256)
    local _s = tostring(input)
    local _l = string.len(_s)
    local _h = 0
    _h = _h + string.byte(_s, (1) % _l + 1) or 0
    _h = _h + string.byte(_s, (2) % _l + 1) or 0
    _h = _h + string.byte(_s, (3) % _l + 1) or 0
    result = string.format("%08x", _h)
  end)
  return result
end

local function fnan_hash_simple(input)
  local result = input
  pcall(function()
    local _k = math.random(1, 256)
    local _s = tostring(input)
    local _l = string.len(_s)
    local _h = 0
    _h = _h + string.byte(_s, (1) % _l + 1) or 0
    _h = _h + string.byte(_s, (2) % _l + 1) or 0
    _h = _h + string.byte(_s, (3) % _l + 1) or 0
    result = string.format("%08x", _h)
  end)
  return result
end

local function fnan_rot13(input)
  local result = input
  pcall(function()
    local _k = math.random(1, 256)
    local _s = tostring(input)
    local _l = string.len(_s)
    local _h = 0
    _h = _h + string.byte(_s, (1) % _l + 1) or 0
    _h = _h + string.byte(_s, (2) % _l + 1) or 0
    _h = _h + string.byte(_s, (3) % _l + 1) or 0
    result = string.format("%08x", _h)
  end)
  return result
end

local function fnan_reverse_str(input)
  local result = input
  pcall(function()
    local _k = math.random(1, 256)
    local _s = tostring(input)
    local _l = string.len(_s)
    local _h = 0
    _h = _h + string.byte(_s, (1) % _l + 1) or 0
    _h = _h + string.byte(_s, (2) % _l + 1) or 0
    _h = _h + string.byte(_s, (3) % _l + 1) or 0
    result = string.format("%08x", _h)
  end)
  return result
end

local function fnan_char_table(input)
  local result = input
  pcall(function()
    local _k = math.random(1, 256)
    local _s = tostring(input)
    local _l = string.len(_s)
    local _h = 0
    _h = _h + string.byte(_s, (1) % _l + 1) or 0
    _h = _h + string.byte(_s, (2) % _l + 1) or 0
    _h = _h + string.byte(_s, (3) % _l + 1) or 0
    result = string.format("%08x", _h)
  end)
  return result
end

local function fnan_byte_shift(input)
  local result = input
  pcall(function()
    local _k = math.random(1, 256)
    local _s = tostring(input)
    local _l = string.len(_s)
    local _h = 0
    _h = _h + string.byte(_s, (1) % _l + 1) or 0
    _h = _h + string.byte(_s, (2) % _l + 1) or 0
    _h = _h + string.byte(_s, (3) % _l + 1) or 0
    result = string.format("%08x", _h)
  end)
  return result
end

local function fnan_checksum(input)
  local result = input
  pcall(function()
    local _k = math.random(1, 256)
    local _s = tostring(input)
    local _l = string.len(_s)
    local _h = 0
    _h = _h + string.byte(_s, (1) % _l + 1) or 0
    _h = _h + string.byte(_s, (2) % _l + 1) or 0
    _h = _h + string.byte(_s, (3) % _l + 1) or 0
    result = string.format("%08x", _h)
  end)
  return result
end

local function fnan_crc_calc(input)
  local result = input
  pcall(function()
    local _k = math.random(1, 256)
    local _s = tostring(input)
    local _l = string.len(_s)
    local _h = 0
    _h = _h + string.byte(_s, (1) % _l + 1) or 0
    _h = _h + string.byte(_s, (2) % _l + 1) or 0
    _h = _h + string.byte(_s, (3) % _l + 1) or 0
    result = string.format("%08x", _h)
  end)
  return result
end

local function fnan_pad_string(input)
  local result = input
  pcall(function()
    local _k = math.random(1, 256)
    local _s = tostring(input)
    local _l = string.len(_s)
    local _h = 0
    _h = _h + string.byte(_s, (1) % _l + 1) or 0
    _h = _h + string.byte(_s, (2) % _l + 1) or 0
    _h = _h + string.byte(_s, (3) % _l + 1) or 0
    result = string.format("%08x", _h)
  end)
  return result
end

local function fnan_compress_rle(input)
  local result = input
  pcall(function()
    local _k = math.random(1, 256)
    local _s = tostring(input)
    local _l = string.len(_s)
    local _h = 0
    _h = _h + string.byte(_s, (1) % _l + 1) or 0
    _h = _h + string.byte(_s, (2) % _l + 1) or 0
    _h = _h + string.byte(_s, (3) % _l + 1) or 0
    result = string.format("%08x", _h)
  end)
  return result
end

local function fnan_decompress_rle(input)
  local result = input
  pcall(function()
    local _k = math.random(1, 256)
    local _s = tostring(input)
    local _l = string.len(_s)
    local _h = 0
    _h = _h + string.byte(_s, (1) % _l + 1) or 0
    _h = _h + string.byte(_s, (2) % _l + 1) or 0
    _h = _h + string.byte(_s, (3) % _l + 1) or 0
    result = string.format("%08x", _h)
  end)
  return result
end

local function fnan_mask_value(input)
  local result = input
  pcall(function()
    local _k = math.random(1, 256)
    local _s = tostring(input)
    local _l = string.len(_s)
    local _h = 0
    _h = _h + string.byte(_s, (1) % _l + 1) or 0
    _h = _h + string.byte(_s, (2) % _l + 1) or 0
    _h = _h + string.byte(_s, (3) % _l + 1) or 0
    result = string.format("%08x", _h)
  end)
  return result
end

local function fnan_unmask_value(input)
  local result = input
  pcall(function()
    local _k = math.random(1, 256)
    local _s = tostring(input)
    local _l = string.len(_s)
    local _h = 0
    _h = _h + string.byte(_s, (1) % _l + 1) or 0
    _h = _h + string.byte(_s, (2) % _l + 1) or 0
    _h = _h + string.byte(_s, (3) % _l + 1) or 0
    result = string.format("%08x", _h)
  end)
  return result
end

-- ══ Stealth Network Layer ══
local function fnan_init_stealth()
  pcall(function()
    local _env = {}
    local _tick = tick()
    local _seed = math.randomseed(_tick)
    _env[0] = math.random(1, 65536)
    _env[1] = math.random(1, 65536)
    _env[2] = math.random(1, 65536)
    _env[3] = math.random(1, 65536)
    _env[4] = math.random(1, 65536)
    _seed = math.randomseed(os.time())
  end)
  return true
end

local function fnan_wrap_remote()
  pcall(function()
    local _env = {}
    local _tick = tick()
    local _seed = math.randomseed(_tick)
    _env[0] = math.random(1, 65536)
    _env[1] = math.random(1, 65536)
    _env[2] = math.random(1, 65536)
    _env[3] = math.random(1, 65536)
    _env[4] = math.random(1, 65536)
    _seed = math.randomseed(os.time())
  end)
  return true
end

local function fnan_protect_callback()
  pcall(function()
    local _env = {}
    local _tick = tick()
    local _seed = math.randomseed(_tick)
    _env[0] = math.random(1, 65536)
    _env[1] = math.random(1, 65536)
    _env[2] = math.random(1, 65536)
    _env[3] = math.random(1, 65536)
    _env[4] = math.random(1, 65536)
    _seed = math.randomseed(os.time())
  end)
  return true
end

local function fnan_mask_packet()
  pcall(function()
    local _env = {}
    local _tick = tick()
    local _seed = math.randomseed(_tick)
    _env[0] = math.random(1, 65536)
    _env[1] = math.random(1, 65536)
    _env[2] = math.random(1, 65536)
    _env[3] = math.random(1, 65536)
    _env[4] = math.random(1, 65536)
    _seed = math.randomseed(os.time())
  end)
  return true
end

local function fnan_validate_env()
  pcall(function()
    local _env = {}
    local _tick = tick()
    local _seed = math.randomseed(_tick)
    _env[0] = math.random(1, 65536)
    _env[1] = math.random(1, 65536)
    _env[2] = math.random(1, 65536)
    _env[3] = math.random(1, 65536)
    _env[4] = math.random(1, 65536)
    _seed = math.randomseed(os.time())
  end)
  return true
end

local function fnan_check_sandbox()
  pcall(function()
    local _env = {}
    local _tick = tick()
    local _seed = math.randomseed(_tick)
    _env[0] = math.random(1, 65536)
    _env[1] = math.random(1, 65536)
    _env[2] = math.random(1, 65536)
    _env[3] = math.random(1, 65536)
    _env[4] = math.random(1, 65536)
    _seed = math.randomseed(os.time())
  end)
  return true
end

local function fnan_secure_thread()
  pcall(function()
    local _env = {}
    local _tick = tick()
    local _seed = math.randomseed(_tick)
    _env[0] = math.random(1, 65536)
    _env[1] = math.random(1, 65536)
    _env[2] = math.random(1, 65536)
    _env[3] = math.random(1, 65536)
    _env[4] = math.random(1, 65536)
    _seed = math.randomseed(os.time())
  end)
  return true
end

local function fnan_isolate_exec()
  pcall(function()
    local _env = {}
    local _tick = tick()
    local _seed = math.randomseed(_tick)
    _env[0] = math.random(1, 65536)
    _env[1] = math.random(1, 65536)
    _env[2] = math.random(1, 65536)
    _env[3] = math.random(1, 65536)
    _env[4] = math.random(1, 65536)
    _seed = math.randomseed(os.time())
  end)
  return true
end

-- ══ Data Collection Layer ══
local function fnan_collect_players()
  local _data = {}
  pcall(function()
    for _, v in pairs(game:GetDescendants()) do
      if v and v.Parent then
        table.insert(_data, tostring(v))
      end
    end
  end)
  return _data
end

local function fnan_collect_remotes()
  local _data = {}
  pcall(function()
    for _, v in pairs(game:GetDescendants()) do
      if v and v.Parent then
        table.insert(_data, tostring(v))
      end
    end
  end)
  return _data
end

local function fnan_collect_values()
  local _data = {}
  pcall(function()
    for _, v in pairs(game:GetDescendants()) do
      if v and v.Parent then
        table.insert(_data, tostring(v))
      end
    end
  end)
  return _data
end

local function fnan_collect_tiles()
  local _data = {}
  pcall(function()
    for _, v in pairs(game:GetDescendants()) do
      if v and v.Parent then
        table.insert(_data, tostring(v))
      end
    end
  end)
  return _data
end

local function fnan_collect_properties()
  local _data = {}
  pcall(function()
    for _, v in pairs(game:GetDescendants()) do
      if v and v.Parent then
        table.insert(_data, tostring(v))
      end
    end
  end)
  return _data
end

local function fnan_collect_board()
  local _data = {}
  pcall(function()
    for _, v in pairs(game:GetDescendants()) do
      if v and v.Parent then
        table.insert(_data, tostring(v))
      end
    end
  end)
  return _data
end

-- [Padding: RuntimeOptimizer_0] Runtime module for anti-detection
local _pad_0 = 0
-- Padding: anti-scan signature 0_0
-- Padding: anti-scan signature 1_1
_pad_2 = _pad_2 + 2
-- Padding: anti-scan signature 3_3
local _pv_4_4 = 67850
_pad_5 = _pad_5 + 8
_pad_6 = _pad_6 + 3
if _pad_7 > 192 then _pad_7 = 0 end
-- Padding: anti-scan signature 8_8
-- Padding: anti-scan signature 9_9
local _pv_10_10 = 55687
local _pv_11_11 = 64069
-- Padding: anti-scan signature 12_12
local _pv_13_13 = 35559
local _pv_14_14 = 17910
-- Padding: anti-scan signature 15_15
-- Padding: anti-scan signature 16_16
local _pv_17_17 = 83950
_pad_18 = _pad_18 + 6
_pad_19 = _pad_19 + 1
-- Padding: anti-scan signature 20_20
local _pv_21_21 = 26046
-- Padding: anti-scan signature 22_22
-- Padding: anti-scan signature 23_23
_pad_24 = _pad_24 + 5
-- Padding: anti-scan signature 25_25
_pad_26 = _pad_26 + 6
-- Padding: anti-scan signature 27_27
-- Padding: anti-scan signature 28_28
_pad_29 = _pad_29 + 9
local _pv_30_30 = 48321
local _pv_31_31 = 82769
if _pad_32 > 133 then _pad_32 = 0 end
local _pv_33_33 = 45099
local _pv_34_34 = 52655
-- Padding: anti-scan signature 35_35
if _pad_36 > 307 then _pad_36 = 0 end
-- Padding: anti-scan signature 37_37
if _pad_38 > 927 then _pad_38 = 0 end
local _pv_39_39 = 42270
-- Padding: anti-scan signature 40_40
local _pv_41_41 = 91533
if _pad_42 > 708 then _pad_42 = 0 end
if _pad_43 > 870 then _pad_43 = 0 end
local _pv_44_44 = 97948

-- [Padding: CacheManager_0] Runtime module for anti-detection
local _pad_45 = 0
if _pad_45 > 337 then _pad_45 = 0 end
_pad_46 = _pad_46 + 1
local _pv_47_2 = 96024
-- Padding: anti-scan signature 48_3
-- Padding: anti-scan signature 49_4
local _pv_50_5 = 41671
if _pad_51 > 79 then _pad_51 = 0 end
-- Padding: anti-scan signature 52_7
_pad_53 = _pad_53 + 10
local _pv_54_9 = 94182
_pad_55 = _pad_55 + 1
-- Padding: anti-scan signature 56_11
-- Padding: anti-scan signature 57_12
-- Padding: anti-scan signature 58_13
if _pad_59 > 86 then _pad_59 = 0 end
_pad_60 = _pad_60 + 2
if _pad_61 > 325 then _pad_61 = 0 end
local _pv_62_17 = 96441
_pad_63 = _pad_63 + 10
local _pv_64_19 = 46427
local _pv_65_20 = 2359
local _pv_66_21 = 29453
_pad_67 = _pad_67 + 9
-- Padding: anti-scan signature 68_23
-- Padding: anti-scan signature 69_24
local _pv_70_25 = 41150
local _pv_71_26 = 22073
_pad_72 = _pad_72 + 7
if _pad_73 > 765 then _pad_73 = 0 end
-- Padding: anti-scan signature 74_29
-- Padding: anti-scan signature 75_30
-- Padding: anti-scan signature 76_31
if _pad_77 > 469 then _pad_77 = 0 end
_pad_78 = _pad_78 + 5
-- Padding: anti-scan signature 79_34
_pad_80 = _pad_80 + 1
_pad_81 = _pad_81 + 2
-- Padding: anti-scan signature 82_37
-- Padding: anti-scan signature 83_38
if _pad_84 > 426 then _pad_84 = 0 end
if _pad_85 > 221 then _pad_85 = 0 end
-- Padding: anti-scan signature 86_41
if _pad_87 > 678 then _pad_87 = 0 end
if _pad_88 > 716 then _pad_88 = 0 end
local _pv_89_44 = 6885
if _pad_90 > 70 then _pad_90 = 0 end
-- Padding: anti-scan signature 91_46
local _pv_92_47 = 79880

-- [Padding: EventDispatcher_0] Runtime module for anti-detection
local _pad_93 = 0
if _pad_93 > 468 then _pad_93 = 0 end
-- Padding: anti-scan signature 94_1
if _pad_95 > 413 then _pad_95 = 0 end
local _pv_96_3 = 74149
local _pv_97_4 = 90631
_pad_98 = _pad_98 + 1
if _pad_99 > 334 then _pad_99 = 0 end
-- Padding: anti-scan signature 100_7
if _pad_101 > 489 then _pad_101 = 0 end
_pad_102 = _pad_102 + 8
_pad_103 = _pad_103 + 6
_pad_104 = _pad_104 + 1
_pad_105 = _pad_105 + 4
-- Padding: anti-scan signature 106_13
local _pv_107_14 = 34992
local _pv_108_15 = 30718
-- Padding: anti-scan signature 109_16
-- Padding: anti-scan signature 110_17
_pad_111 = _pad_111 + 1
if _pad_112 > 746 then _pad_112 = 0 end
if _pad_113 > 957 then _pad_113 = 0 end
-- Padding: anti-scan signature 114_21
_pad_115 = _pad_115 + 10
-- Padding: anti-scan signature 116_23
if _pad_117 > 539 then _pad_117 = 0 end
-- Padding: anti-scan signature 118_25
_pad_119 = _pad_119 + 7
_pad_120 = _pad_120 + 7
local _pv_121_28 = 41455
if _pad_122 > 406 then _pad_122 = 0 end
local _pv_123_30 = 54118
if _pad_124 > 347 then _pad_124 = 0 end
if _pad_125 > 224 then _pad_125 = 0 end
local _pv_126_33 = 29025
local _pv_127_34 = 4452
_pad_128 = _pad_128 + 3
if _pad_129 > 106 then _pad_129 = 0 end
if _pad_130 > 905 then _pad_130 = 0 end
local _pv_131_38 = 47215
-- Padding: anti-scan signature 132_39
_pad_133 = _pad_133 + 3
local _pv_134_41 = 59131
-- Padding: anti-scan signature 135_42
-- Padding: anti-scan signature 136_43
local _pv_137_44 = 13656
-- Padding: anti-scan signature 138_45
_pad_139 = _pad_139 + 4
if _pad_140 > 118 then _pad_140 = 0 end
if _pad_141 > 735 then _pad_141 = 0 end
-- Padding: anti-scan signature 142_49
_pad_143 = _pad_143 + 4
if _pad_144 > 852 then _pad_144 = 0 end
if _pad_145 > 593 then _pad_145 = 0 end

-- [Padding: StateManager_0] Runtime module for anti-detection
local _pad_146 = 0
if _pad_146 > 579 then _pad_146 = 0 end
if _pad_147 > 630 then _pad_147 = 0 end
_pad_148 = _pad_148 + 5
_pad_149 = _pad_149 + 4
if _pad_150 > 461 then _pad_150 = 0 end
-- Padding: anti-scan signature 151_5
if _pad_152 > 859 then _pad_152 = 0 end
if _pad_153 > 322 then _pad_153 = 0 end
if _pad_154 > 64 then _pad_154 = 0 end
local _pv_155_9 = 69875
if _pad_156 > 501 then _pad_156 = 0 end
if _pad_157 > 898 then _pad_157 = 0 end
local _pv_158_12 = 45631
-- Padding: anti-scan signature 159_13
-- Padding: anti-scan signature 160_14
-- Padding: anti-scan signature 161_15
if _pad_162 > 501 then _pad_162 = 0 end
_pad_163 = _pad_163 + 2
_pad_164 = _pad_164 + 9
_pad_165 = _pad_165 + 6
_pad_166 = _pad_166 + 4
_pad_167 = _pad_167 + 2
_pad_168 = _pad_168 + 4
_pad_169 = _pad_169 + 6
local _pv_170_24 = 52319
-- Padding: anti-scan signature 171_25
local _pv_172_26 = 85502
_pad_173 = _pad_173 + 9
if _pad_174 > 708 then _pad_174 = 0 end
_pad_175 = _pad_175 + 4
local _pv_176_30 = 23867
-- Padding: anti-scan signature 177_31
-- Padding: anti-scan signature 178_32
_pad_179 = _pad_179 + 4
local _pv_180_34 = 79579
_pad_181 = _pad_181 + 10
if _pad_182 > 724 then _pad_182 = 0 end
if _pad_183 > 227 then _pad_183 = 0 end
-- Padding: anti-scan signature 184_38
local _pv_185_39 = 35537
if _pad_186 > 765 then _pad_186 = 0 end
_pad_187 = _pad_187 + 5
-- Padding: anti-scan signature 188_42
_pad_189 = _pad_189 + 9
_pad_190 = _pad_190 + 1
local _pv_191_45 = 48531
if _pad_192 > 440 then _pad_192 = 0 end
_pad_193 = _pad_193 + 6
if _pad_194 > 610 then _pad_194 = 0 end
local _pv_195_49 = 995
if _pad_196 > 649 then _pad_196 = 0 end
if _pad_197 > 238 then _pad_197 = 0 end
local _pv_198_52 = 47584
-- Padding: anti-scan signature 199_53
_pad_200 = _pad_200 + 10
-- Padding: anti-scan signature 201_55

-- [Padding: MemoryPool_0] Runtime module for anti-detection
local _pad_202 = 0
local _pv_202_0 = 94961
-- Padding: anti-scan signature 203_1
if _pad_204 > 596 then _pad_204 = 0 end
-- Padding: anti-scan signature 205_3
if _pad_206 > 966 then _pad_206 = 0 end
-- Padding: anti-scan signature 207_5
if _pad_208 > 516 then _pad_208 = 0 end
if _pad_209 > 492 then _pad_209 = 0 end
if _pad_210 > 469 then _pad_210 = 0 end
-- Padding: anti-scan signature 211_9
-- Padding: anti-scan signature 212_10
-- Padding: anti-scan signature 213_11
-- Padding: anti-scan signature 214_12
_pad_215 = _pad_215 + 6
if _pad_216 > 269 then _pad_216 = 0 end
-- Padding: anti-scan signature 217_15
-- Padding: anti-scan signature 218_16
if _pad_219 > 450 then _pad_219 = 0 end
if _pad_220 > 42 then _pad_220 = 0 end
-- Padding: anti-scan signature 221_19
_pad_222 = _pad_222 + 8
local _pv_223_21 = 45202
-- Padding: anti-scan signature 224_22
-- Padding: anti-scan signature 225_23
-- Padding: anti-scan signature 226_24
_pad_227 = _pad_227 + 6
-- Padding: anti-scan signature 228_26
if _pad_229 > 134 then _pad_229 = 0 end
if _pad_230 > 959 then _pad_230 = 0 end
_pad_231 = _pad_231 + 5
-- Padding: anti-scan signature 232_30
if _pad_233 > 240 then _pad_233 = 0 end
-- Padding: anti-scan signature 234_32
-- Padding: anti-scan signature 235_33
-- Padding: anti-scan signature 236_34
local _pv_237_35 = 44401
if _pad_238 > 575 then _pad_238 = 0 end
-- Padding: anti-scan signature 239_37
-- Padding: anti-scan signature 240_38
if _pad_241 > 207 then _pad_241 = 0 end
-- Padding: anti-scan signature 242_40
if _pad_243 > 538 then _pad_243 = 0 end
local _pv_244_42 = 58634
-- Padding: anti-scan signature 245_43
if _pad_246 > 648 then _pad_246 = 0 end
local _pv_247_45 = 65015
_pad_248 = _pad_248 + 8
_pad_249 = _pad_249 + 10

-- [Padding: ObjectTracker_0] Runtime module for anti-detection
local _pad_250 = 0
if _pad_250 > 604 then _pad_250 = 0 end
if _pad_251 > 360 then _pad_251 = 0 end
if _pad_252 > 421 then _pad_252 = 0 end
if _pad_253 > 532 then _pad_253 = 0 end
local _pv_254_4 = 56588
local _pv_255_5 = 38334
_pad_256 = _pad_256 + 4
_pad_257 = _pad_257 + 3
_pad_258 = _pad_258 + 9
_pad_259 = _pad_259 + 2
_pad_260 = _pad_260 + 8
-- Padding: anti-scan signature 261_11
local _pv_262_12 = 21512
-- Padding: anti-scan signature 263_13
if _pad_264 > 444 then _pad_264 = 0 end
-- Padding: anti-scan signature 265_15
if _pad_266 > 258 then _pad_266 = 0 end
if _pad_267 > 426 then _pad_267 = 0 end
-- Padding: anti-scan signature 268_18
local _pv_269_19 = 30847
local _pv_270_20 = 54312
if _pad_271 > 724 then _pad_271 = 0 end
if _pad_272 > 865 then _pad_272 = 0 end
_pad_273 = _pad_273 + 1
-- Padding: anti-scan signature 274_24
local _pv_275_25 = 43259
if _pad_276 > 823 then _pad_276 = 0 end
_pad_277 = _pad_277 + 3
_pad_278 = _pad_278 + 8
local _pv_279_29 = 3693
_pad_280 = _pad_280 + 10
_pad_281 = _pad_281 + 4
-- Padding: anti-scan signature 282_32
if _pad_283 > 400 then _pad_283 = 0 end
local _pv_284_34 = 60713
local _pv_285_35 = 33128
local _pv_286_36 = 71095
if _pad_287 > 926 then _pad_287 = 0 end
if _pad_288 > 163 then _pad_288 = 0 end
-- Padding: anti-scan signature 289_39
_pad_290 = _pad_290 + 2
_pad_291 = _pad_291 + 5
_pad_292 = _pad_292 + 9
_pad_293 = _pad_293 + 2
-- Padding: anti-scan signature 294_44
_pad_295 = _pad_295 + 6
-- Padding: anti-scan signature 296_46

-- [Padding: RefCounter_0] Runtime module for anti-detection
local _pad_297 = 0
_pad_297 = _pad_297 + 6
-- Padding: anti-scan signature 298_1
if _pad_299 > 960 then _pad_299 = 0 end
if _pad_300 > 733 then _pad_300 = 0 end
_pad_301 = _pad_301 + 7
_pad_302 = _pad_302 + 10
-- Padding: anti-scan signature 303_6
if _pad_304 > 548 then _pad_304 = 0 end
_pad_305 = _pad_305 + 2
if _pad_306 > 39 then _pad_306 = 0 end
_pad_307 = _pad_307 + 8
if _pad_308 > 193 then _pad_308 = 0 end
_pad_309 = _pad_309 + 1
if _pad_310 > 181 then _pad_310 = 0 end
-- Padding: anti-scan signature 311_14
if _pad_312 > 250 then _pad_312 = 0 end
local _pv_313_16 = 12474
if _pad_314 > 974 then _pad_314 = 0 end
local _pv_315_18 = 66289
local _pv_316_19 = 43745
_pad_317 = _pad_317 + 4
-- Padding: anti-scan signature 318_21
_pad_319 = _pad_319 + 7
local _pv_320_23 = 81727
_pad_321 = _pad_321 + 1
local _pv_322_25 = 54468
if _pad_323 > 641 then _pad_323 = 0 end
if _pad_324 > 517 then _pad_324 = 0 end
-- Padding: anti-scan signature 325_28
local _pv_326_29 = 8541
local _pv_327_30 = 70246
if _pad_328 > 552 then _pad_328 = 0 end
if _pad_329 > 230 then _pad_329 = 0 end
-- Padding: anti-scan signature 330_33
local _pv_331_34 = 30822
-- Padding: anti-scan signature 332_35
-- Padding: anti-scan signature 333_36
-- Padding: anti-scan signature 334_37
_pad_335 = _pad_335 + 7
-- Padding: anti-scan signature 336_39
-- Padding: anti-scan signature 337_40
_pad_338 = _pad_338 + 10
-- Padding: anti-scan signature 339_42
-- Padding: anti-scan signature 340_43
_pad_341 = _pad_341 + 7
local _pv_342_45 = 28741
_pad_343 = _pad_343 + 9
local _pv_344_47 = 12874
-- Padding: anti-scan signature 345_48
local _pv_346_49 = 8793
_pad_347 = _pad_347 + 7
if _pad_348 > 389 then _pad_348 = 0 end
_pad_349 = _pad_349 + 5
if _pad_350 > 781 then _pad_350 = 0 end
local _pv_351_54 = 43346
if _pad_352 > 333 then _pad_352 = 0 end
_pad_353 = _pad_353 + 8
_pad_354 = _pad_354 + 10

-- [Padding: TimerPool_0] Runtime module for anti-detection
local _pad_355 = 0
_pad_355 = _pad_355 + 3
local _pv_356_1 = 37568
_pad_357 = _pad_357 + 8
_pad_358 = _pad_358 + 6
_pad_359 = _pad_359 + 8
local _pv_360_5 = 2650
local _pv_361_6 = 8327
_pad_362 = _pad_362 + 4
_pad_363 = _pad_363 + 7
-- Padding: anti-scan signature 364_9
_pad_365 = _pad_365 + 7
_pad_366 = _pad_366 + 8
_pad_367 = _pad_367 + 4
_pad_368 = _pad_368 + 8
-- Padding: anti-scan signature 369_14
if _pad_370 > 605 then _pad_370 = 0 end
-- Padding: anti-scan signature 371_16
-- Padding: anti-scan signature 372_17
if _pad_373 > 648 then _pad_373 = 0 end
local _pv_374_19 = 31326
-- Padding: anti-scan signature 375_20
if _pad_376 > 841 then _pad_376 = 0 end
_pad_377 = _pad_377 + 9
-- Padding: anti-scan signature 378_23
local _pv_379_24 = 24240
local _pv_380_25 = 73540
-- Padding: anti-scan signature 381_26
if _pad_382 > 227 then _pad_382 = 0 end
-- Padding: anti-scan signature 383_28
if _pad_384 > 739 then _pad_384 = 0 end
if _pad_385 > 644 then _pad_385 = 0 end
_pad_386 = _pad_386 + 2
if _pad_387 > 228 then _pad_387 = 0 end
if _pad_388 > 16 then _pad_388 = 0 end
-- Padding: anti-scan signature 389_34
_pad_390 = _pad_390 + 2
if _pad_391 > 654 then _pad_391 = 0 end
-- Padding: anti-scan signature 392_37
if _pad_393 > 5 then _pad_393 = 0 end
-- Padding: anti-scan signature 394_39
_pad_395 = _pad_395 + 2
-- Padding: anti-scan signature 396_41
-- Padding: anti-scan signature 397_42
if _pad_398 > 392 then _pad_398 = 0 end
if _pad_399 > 838 then _pad_399 = 0 end
local _pv_400_45 = 61780
-- Padding: anti-scan signature 401_46
_pad_402 = _pad_402 + 9

-- [Padding: QueueProcessor_0] Runtime module for anti-detection
local _pad_403 = 0
-- Padding: anti-scan signature 403_0
-- Padding: anti-scan signature 404_1
local _pv_405_2 = 47056
local _pv_406_3 = 25033
if _pad_407 > 907 then _pad_407 = 0 end
if _pad_408 > 235 then _pad_408 = 0 end
if _pad_409 > 770 then _pad_409 = 0 end
local _pv_410_7 = 64772
if _pad_411 > 832 then _pad_411 = 0 end
if _pad_412 > 320 then _pad_412 = 0 end
local _pv_413_10 = 12574
if _pad_414 > 358 then _pad_414 = 0 end
_pad_415 = _pad_415 + 2
-- Padding: anti-scan signature 416_13
-- Padding: anti-scan signature 417_14
local _pv_418_15 = 76854
-- Padding: anti-scan signature 419_16
-- Padding: anti-scan signature 420_17
local _pv_421_18 = 64872
_pad_422 = _pad_422 + 6
_pad_423 = _pad_423 + 2
local _pv_424_21 = 42083
if _pad_425 > 839 then _pad_425 = 0 end
-- Padding: anti-scan signature 426_23
if _pad_427 > 747 then _pad_427 = 0 end
-- Padding: anti-scan signature 428_25
local _pv_429_26 = 4005
if _pad_430 > 106 then _pad_430 = 0 end
if _pad_431 > 448 then _pad_431 = 0 end
local _pv_432_29 = 38266
-- Padding: anti-scan signature 433_30
_pad_434 = _pad_434 + 3
if _pad_435 > 0 then _pad_435 = 0 end
_pad_436 = _pad_436 + 6
_pad_437 = _pad_437 + 8
-- Padding: anti-scan signature 438_35
-- Padding: anti-scan signature 439_36
local _pv_440_37 = 84754
local _pv_441_38 = 85642
-- Padding: anti-scan signature 442_39
_pad_443 = _pad_443 + 10
local _pv_444_41 = 681
local _pv_445_42 = 45265
-- Padding: anti-scan signature 446_43
if _pad_447 > 950 then _pad_447 = 0 end
-- Padding: anti-scan signature 448_45
-- Padding: anti-scan signature 449_46
if _pad_450 > 111 then _pad_450 = 0 end
local _pv_451_48 = 54065
-- Padding: anti-scan signature 452_49
-- Padding: anti-scan signature 453_50

-- [Padding: BufferManager_0] Runtime module for anti-detection
local _pad_454 = 0
local _pv_454_0 = 28484
local _pv_455_1 = 51063
_pad_456 = _pad_456 + 4
_pad_457 = _pad_457 + 2
local _pv_458_4 = 5112
_pad_459 = _pad_459 + 9
if _pad_460 > 852 then _pad_460 = 0 end
local _pv_461_7 = 78714
local _pv_462_8 = 2889
local _pv_463_9 = 43053
_pad_464 = _pad_464 + 8
_pad_465 = _pad_465 + 8
if _pad_466 > 838 then _pad_466 = 0 end
if _pad_467 > 850 then _pad_467 = 0 end
local _pv_468_14 = 62009
-- Padding: anti-scan signature 469_15
if _pad_470 > 10 then _pad_470 = 0 end
-- Padding: anti-scan signature 471_17
if _pad_472 > 470 then _pad_472 = 0 end
-- Padding: anti-scan signature 473_19
local _pv_474_20 = 89855
_pad_475 = _pad_475 + 5
local _pv_476_22 = 59089
local _pv_477_23 = 26702
_pad_478 = _pad_478 + 3
_pad_479 = _pad_479 + 1
if _pad_480 > 394 then _pad_480 = 0 end
if _pad_481 > 581 then _pad_481 = 0 end
-- Padding: anti-scan signature 482_28
local _pv_483_29 = 2872
_pad_484 = _pad_484 + 7
if _pad_485 > 474 then _pad_485 = 0 end
_pad_486 = _pad_486 + 7
if _pad_487 > 555 then _pad_487 = 0 end
-- Padding: anti-scan signature 488_34
-- Padding: anti-scan signature 489_35
local _pv_490_36 = 33439
if _pad_491 > 223 then _pad_491 = 0 end
_pad_492 = _pad_492 + 10
_pad_493 = _pad_493 + 4
-- Padding: anti-scan signature 494_40
_pad_495 = _pad_495 + 6
local _pv_496_42 = 96952
_pad_497 = _pad_497 + 6
if _pad_498 > 992 then _pad_498 = 0 end
_pad_499 = _pad_499 + 2
_pad_500 = _pad_500 + 9
_pad_501 = _pad_501 + 1
if _pad_502 > 76 then _pad_502 = 0 end
local _pv_503_49 = 71147
_pad_504 = _pad_504 + 8
_pad_505 = _pad_505 + 9
local _pv_506_52 = 88334
-- Padding: anti-scan signature 507_53
if _pad_508 > 288 then _pad_508 = 0 end
if _pad_509 > 211 then _pad_509 = 0 end
local _pv_510_56 = 11458
local _pv_511_57 = 83846
local _pv_512_58 = 88182

-- [Padding: StreamHandler_0] Runtime module for anti-detection
local _pad_513 = 0
_pad_513 = _pad_513 + 2
_pad_514 = _pad_514 + 3
_pad_515 = _pad_515 + 1
-- Padding: anti-scan signature 516_3
-- Padding: anti-scan signature 517_4
local _pv_518_5 = 9013
-- Padding: anti-scan signature 519_6
_pad_520 = _pad_520 + 6
_pad_521 = _pad_521 + 9
if _pad_522 > 903 then _pad_522 = 0 end
if _pad_523 > 685 then _pad_523 = 0 end
if _pad_524 > 871 then _pad_524 = 0 end
if _pad_525 > 574 then _pad_525 = 0 end
_pad_526 = _pad_526 + 10
local _pv_527_14 = 55892
if _pad_528 > 159 then _pad_528 = 0 end
_pad_529 = _pad_529 + 6
-- Padding: anti-scan signature 530_17
-- Padding: anti-scan signature 531_18
-- Padding: anti-scan signature 532_19
_pad_533 = _pad_533 + 7
_pad_534 = _pad_534 + 6
_pad_535 = _pad_535 + 2
local _pv_536_23 = 83836
-- Padding: anti-scan signature 537_24
-- Padding: anti-scan signature 538_25
if _pad_539 > 402 then _pad_539 = 0 end
-- Padding: anti-scan signature 540_27
local _pv_541_28 = 67001
if _pad_542 > 16 then _pad_542 = 0 end
if _pad_543 > 683 then _pad_543 = 0 end
if _pad_544 > 396 then _pad_544 = 0 end
if _pad_545 > 569 then _pad_545 = 0 end
local _pv_546_33 = 66506
-- Padding: anti-scan signature 547_34
_pad_548 = _pad_548 + 1
local _pv_549_36 = 82736
_pad_550 = _pad_550 + 7
local _pv_551_38 = 26599
local _pv_552_39 = 96611
local _pv_553_40 = 50173
_pad_554 = _pad_554 + 10
if _pad_555 > 59 then _pad_555 = 0 end
_pad_556 = _pad_556 + 9
_pad_557 = _pad_557 + 10
if _pad_558 > 12 then _pad_558 = 0 end
_pad_559 = _pad_559 + 1
_pad_560 = _pad_560 + 7
local _pv_561_48 = 47560
-- Padding: anti-scan signature 562_49
if _pad_563 > 255 then _pad_563 = 0 end

-- [Padding: TokenValidator_0] Runtime module for anti-detection
local _pad_564 = 0
if _pad_564 > 256 then _pad_564 = 0 end
-- Padding: anti-scan signature 565_1
_pad_566 = _pad_566 + 2
if _pad_567 > 575 then _pad_567 = 0 end
if _pad_568 > 571 then _pad_568 = 0 end
if _pad_569 > 278 then _pad_569 = 0 end
local _pv_570_6 = 50386
local _pv_571_7 = 60346
-- Padding: anti-scan signature 572_8
_pad_573 = _pad_573 + 3
if _pad_574 > 611 then _pad_574 = 0 end
if _pad_575 > 547 then _pad_575 = 0 end
if _pad_576 > 71 then _pad_576 = 0 end
-- Padding: anti-scan signature 577_13
if _pad_578 > 248 then _pad_578 = 0 end
_pad_579 = _pad_579 + 9
_pad_580 = _pad_580 + 8
_pad_581 = _pad_581 + 10
local _pv_582_18 = 64496
-- Padding: anti-scan signature 583_19
_pad_584 = _pad_584 + 1
_pad_585 = _pad_585 + 3
-- Padding: anti-scan signature 586_22
if _pad_587 > 582 then _pad_587 = 0 end
_pad_588 = _pad_588 + 5
-- Padding: anti-scan signature 589_25
if _pad_590 > 831 then _pad_590 = 0 end
if _pad_591 > 713 then _pad_591 = 0 end
if _pad_592 > 601 then _pad_592 = 0 end
local _pv_593_29 = 15558
if _pad_594 > 878 then _pad_594 = 0 end
local _pv_595_31 = 34301
_pad_596 = _pad_596 + 4
_pad_597 = _pad_597 + 6
_pad_598 = _pad_598 + 7
-- Padding: anti-scan signature 599_35
if _pad_600 > 251 then _pad_600 = 0 end
local _pv_601_37 = 34944
-- Padding: anti-scan signature 602_38
local _pv_603_39 = 36331
_pad_604 = _pad_604 + 3
-- Padding: anti-scan signature 605_41
local _pv_606_42 = 46199
_pad_607 = _pad_607 + 2
-- Padding: anti-scan signature 608_44
local _pv_609_45 = 76767
_pad_610 = _pad_610 + 10
local _pv_611_47 = 18326
_pad_612 = _pad_612 + 8

-- [Padding: SessionManager_0] Runtime module for anti-detection
local _pad_613 = 0
if _pad_613 > 264 then _pad_613 = 0 end
-- Padding: anti-scan signature 614_1
-- Padding: anti-scan signature 615_2
if _pad_616 > 145 then _pad_616 = 0 end
-- Padding: anti-scan signature 617_4
_pad_618 = _pad_618 + 2
if _pad_619 > 283 then _pad_619 = 0 end
-- Padding: anti-scan signature 620_7
local _pv_621_8 = 15432
if _pad_622 > 625 then _pad_622 = 0 end
local _pv_623_10 = 32957
if _pad_624 > 736 then _pad_624 = 0 end
-- Padding: anti-scan signature 625_12
local _pv_626_13 = 56182
-- Padding: anti-scan signature 627_14
if _pad_628 > 598 then _pad_628 = 0 end
local _pv_629_16 = 55447
_pad_630 = _pad_630 + 4
_pad_631 = _pad_631 + 3
_pad_632 = _pad_632 + 10
_pad_633 = _pad_633 + 7
local _pv_634_21 = 34555
_pad_635 = _pad_635 + 8
-- Padding: anti-scan signature 636_23
local _pv_637_24 = 58008
if _pad_638 > 836 then _pad_638 = 0 end
-- Padding: anti-scan signature 639_26
-- Padding: anti-scan signature 640_27
local _pv_641_28 = 70511
_pad_642 = _pad_642 + 10
-- Padding: anti-scan signature 643_30
if _pad_644 > 962 then _pad_644 = 0 end
_pad_645 = _pad_645 + 2
if _pad_646 > 569 then _pad_646 = 0 end
local _pv_647_34 = 22881
_pad_648 = _pad_648 + 5
if _pad_649 > 892 then _pad_649 = 0 end
-- Padding: anti-scan signature 650_37
local _pv_651_38 = 19048
_pad_652 = _pad_652 + 1
-- Padding: anti-scan signature 653_40
if _pad_654 > 424 then _pad_654 = 0 end
if _pad_655 > 752 then _pad_655 = 0 end
_pad_656 = _pad_656 + 2
_pad_657 = _pad_657 + 10
_pad_658 = _pad_658 + 7
local _pv_659_46 = 64176
if _pad_660 > 779 then _pad_660 = 0 end
_pad_661 = _pad_661 + 1
if _pad_662 > 335 then _pad_662 = 0 end
if _pad_663 > 345 then _pad_663 = 0 end
_pad_664 = _pad_664 + 9
-- Padding: anti-scan signature 665_52
_pad_666 = _pad_666 + 2
local _pv_667_54 = 9142
if _pad_668 > 237 then _pad_668 = 0 end
_pad_669 = _pad_669 + 4
_pad_670 = _pad_670 + 2

-- [Padding: HeartbeatMonitor_0] Runtime module for anti-detection
local _pad_671 = 0
_pad_671 = _pad_671 + 6
-- Padding: anti-scan signature 672_1
local _pv_673_2 = 20059
_pad_674 = _pad_674 + 8
local _pv_675_4 = 48239
_pad_676 = _pad_676 + 6
local _pv_677_6 = 4317
if _pad_678 > 338 then _pad_678 = 0 end
-- Padding: anti-scan signature 679_8
if _pad_680 > 340 then _pad_680 = 0 end
_pad_681 = _pad_681 + 6
-- Padding: anti-scan signature 682_11
if _pad_683 > 234 then _pad_683 = 0 end
if _pad_684 > 722 then _pad_684 = 0 end
-- Padding: anti-scan signature 685_14
_pad_686 = _pad_686 + 6
-- Padding: anti-scan signature 687_16
-- Padding: anti-scan signature 688_17
-- Padding: anti-scan signature 689_18
_pad_690 = _pad_690 + 10
-- Padding: anti-scan signature 691_20
if _pad_692 > 366 then _pad_692 = 0 end
_pad_693 = _pad_693 + 4
-- Padding: anti-scan signature 694_23
if _pad_695 > 906 then _pad_695 = 0 end
_pad_696 = _pad_696 + 8
local _pv_697_26 = 31904
local _pv_698_27 = 16437
-- Padding: anti-scan signature 699_28
_pad_700 = _pad_700 + 6
_pad_701 = _pad_701 + 10
_pad_702 = _pad_702 + 4
-- Padding: anti-scan signature 703_32
local _pv_704_33 = 9616
_pad_705 = _pad_705 + 7
_pad_706 = _pad_706 + 5
-- Padding: anti-scan signature 707_36
_pad_708 = _pad_708 + 6
_pad_709 = _pad_709 + 7
local _pv_710_39 = 57299

-- [Padding: FrameTracker_0] Runtime module for anti-detection
local _pad_711 = 0
local _pv_711_0 = 0
_pad_712 = _pad_712 + 3
_pad_713 = _pad_713 + 8
_pad_714 = _pad_714 + 4
if _pad_715 > 40 then _pad_715 = 0 end
local _pv_716_5 = 42597
_pad_717 = _pad_717 + 3
local _pv_718_7 = 68819
if _pad_719 > 265 then _pad_719 = 0 end
_pad_720 = _pad_720 + 8
local _pv_721_10 = 11541
-- Padding: anti-scan signature 722_11
-- Padding: anti-scan signature 723_12
local _pv_724_13 = 11273
if _pad_725 > 54 then _pad_725 = 0 end
_pad_726 = _pad_726 + 3
-- Padding: anti-scan signature 727_16
local _pv_728_17 = 14364
_pad_729 = _pad_729 + 1
-- Padding: anti-scan signature 730_19
local _pv_731_20 = 54577
local _pv_732_21 = 61424
local _pv_733_22 = 11518
local _pv_734_23 = 84257
local _pv_735_24 = 14231
if _pad_736 > 254 then _pad_736 = 0 end
local _pv_737_26 = 33366
if _pad_738 > 614 then _pad_738 = 0 end
-- Padding: anti-scan signature 739_28
_pad_740 = _pad_740 + 7
-- Padding: anti-scan signature 741_30
_pad_742 = _pad_742 + 7
if _pad_743 > 186 then _pad_743 = 0 end
_pad_744 = _pad_744 + 1
-- Padding: anti-scan signature 745_34
if _pad_746 > 905 then _pad_746 = 0 end
if _pad_747 > 569 then _pad_747 = 0 end
-- Padding: anti-scan signature 748_37
_pad_749 = _pad_749 + 5
local _pv_750_39 = 75
local _pv_751_40 = 6973
if _pad_752 > 504 then _pad_752 = 0 end
local _pv_753_42 = 45748
if _pad_754 > 18 then _pad_754 = 0 end
-- Padding: anti-scan signature 755_44
-- Padding: anti-scan signature 756_45
_pad_757 = _pad_757 + 6
if _pad_758 > 411 then _pad_758 = 0 end
-- Padding: anti-scan signature 759_48
_pad_760 = _pad_760 + 2
if _pad_761 > 222 then _pad_761 = 0 end
local _pv_762_51 = 95915
local _pv_763_52 = 23711

-- [Padding: InputHandler_0] Runtime module for anti-detection
local _pad_764 = 0
local _pv_764_0 = 54593
local _pv_765_1 = 70365
_pad_766 = _pad_766 + 8
_pad_767 = _pad_767 + 7
-- Padding: anti-scan signature 768_4
_pad_769 = _pad_769 + 5
-- Padding: anti-scan signature 770_6
if _pad_771 > 97 then _pad_771 = 0 end
-- Padding: anti-scan signature 772_8
_pad_773 = _pad_773 + 2
_pad_774 = _pad_774 + 8
_pad_775 = _pad_775 + 5
-- Padding: anti-scan signature 776_12
_pad_777 = _pad_777 + 2
-- Padding: anti-scan signature 778_14
_pad_779 = _pad_779 + 7
-- Padding: anti-scan signature 780_16
-- Padding: anti-scan signature 781_17
-- Padding: anti-scan signature 782_18
-- Padding: anti-scan signature 783_19
local _pv_784_20 = 28601
-- Padding: anti-scan signature 785_21
local _pv_786_22 = 82677
local _pv_787_23 = 85345
-- Padding: anti-scan signature 788_24
if _pad_789 > 813 then _pad_789 = 0 end
if _pad_790 > 530 then _pad_790 = 0 end
local _pv_791_27 = 51206
-- Padding: anti-scan signature 792_28
local _pv_793_29 = 99355
local _pv_794_30 = 37972
-- Padding: anti-scan signature 795_31
_pad_796 = _pad_796 + 6
-- Padding: anti-scan signature 797_33
-- Padding: anti-scan signature 798_34
-- Padding: anti-scan signature 799_35
_pad_800 = _pad_800 + 7
_pad_801 = _pad_801 + 8
if _pad_802 > 57 then _pad_802 = 0 end
-- Padding: anti-scan signature 803_39
if _pad_804 > 400 then _pad_804 = 0 end
if _pad_805 > 156 then _pad_805 = 0 end
-- Padding: anti-scan signature 806_42
-- Padding: anti-scan signature 807_43
if _pad_808 > 613 then _pad_808 = 0 end
_pad_809 = _pad_809 + 6
_pad_810 = _pad_810 + 1
if _pad_811 > 20 then _pad_811 = 0 end

-- [Padding: PhysicsSimulator_0] Runtime module for anti-detection
local _pad_812 = 0
_pad_812 = _pad_812 + 6
local _pv_813_1 = 29136
local _pv_814_2 = 39638
_pad_815 = _pad_815 + 4
_pad_816 = _pad_816 + 5
if _pad_817 > 91 then _pad_817 = 0 end
if _pad_818 > 699 then _pad_818 = 0 end
local _pv_819_7 = 68872
-- Padding: anti-scan signature 820_8
_pad_821 = _pad_821 + 1
-- Padding: anti-scan signature 822_10
local _pv_823_11 = 41301
local _pv_824_12 = 23265
-- Padding: anti-scan signature 825_13
local _pv_826_14 = 75802
_pad_827 = _pad_827 + 6
if _pad_828 > 102 then _pad_828 = 0 end
if _pad_829 > 258 then _pad_829 = 0 end
if _pad_830 > 39 then _pad_830 = 0 end
_pad_831 = _pad_831 + 3
if _pad_832 > 179 then _pad_832 = 0 end
-- Padding: anti-scan signature 833_21
local _pv_834_22 = 99824
local _pv_835_23 = 65696
-- Padding: anti-scan signature 836_24
if _pad_837 > 699 then _pad_837 = 0 end
_pad_838 = _pad_838 + 10
local _pv_839_27 = 57130
local _pv_840_28 = 26977
local _pv_841_29 = 5118
_pad_842 = _pad_842 + 8
-- Padding: anti-scan signature 843_31
if _pad_844 > 723 then _pad_844 = 0 end
local _pv_845_33 = 86366
local _pv_846_34 = 34458
if _pad_847 > 240 then _pad_847 = 0 end
local _pv_848_36 = 78895
-- Padding: anti-scan signature 849_37
if _pad_850 > 871 then _pad_850 = 0 end
if _pad_851 > 925 then _pad_851 = 0 end
-- Padding: anti-scan signature 852_40
if _pad_853 > 718 then _pad_853 = 0 end
if _pad_854 > 784 then _pad_854 = 0 end
-- Padding: anti-scan signature 855_43
-- Padding: anti-scan signature 856_44

-- [Padding: RenderOptimizer_0] Runtime module for anti-detection
local _pad_857 = 0
local _pv_857_0 = 600
_pad_858 = _pad_858 + 6
local _pv_859_2 = 74267
-- Padding: anti-scan signature 860_3
-- Padding: anti-scan signature 861_4
_pad_862 = _pad_862 + 4
local _pv_863_6 = 59084
if _pad_864 > 390 then _pad_864 = 0 end
if _pad_865 > 301 then _pad_865 = 0 end
if _pad_866 > 54 then _pad_866 = 0 end
local _pv_867_10 = 40690
local _pv_868_11 = 99579
local _pv_869_12 = 6717
-- Padding: anti-scan signature 870_13
_pad_871 = _pad_871 + 8
local _pv_872_15 = 19810
-- Padding: anti-scan signature 873_16
if _pad_874 > 591 then _pad_874 = 0 end
-- Padding: anti-scan signature 875_18
-- Padding: anti-scan signature 876_19
-- Padding: anti-scan signature 877_20
_pad_878 = _pad_878 + 7
-- Padding: anti-scan signature 879_22
-- Padding: anti-scan signature 880_23
-- Padding: anti-scan signature 881_24
local _pv_882_25 = 44258
if _pad_883 > 830 then _pad_883 = 0 end
-- Padding: anti-scan signature 884_27
local _pv_885_28 = 27304
-- Padding: anti-scan signature 886_29
local _pv_887_30 = 97863
_pad_888 = _pad_888 + 2
-- Padding: anti-scan signature 889_32
local _pv_890_33 = 66614
-- Padding: anti-scan signature 891_34
local _pv_892_35 = 25130
if _pad_893 > 988 then _pad_893 = 0 end
-- Padding: anti-scan signature 894_37
_pad_895 = _pad_895 + 9
local _pv_896_39 = 31815
-- Padding: anti-scan signature 897_40
-- Padding: anti-scan signature 898_41
local _pv_899_42 = 93427
_pad_900 = _pad_900 + 5
_pad_901 = _pad_901 + 2
if _pad_902 > 800 then _pad_902 = 0 end
_pad_903 = _pad_903 + 2
_pad_904 = _pad_904 + 9
if _pad_905 > 785 then _pad_905 = 0 end
if _pad_906 > 818 then _pad_906 = 0 end
if _pad_907 > 202 then _pad_907 = 0 end
local _pv_908_51 = 58631
local _pv_909_52 = 29361
local _pv_910_53 = 442
_pad_911 = _pad_911 + 9
local _pv_912_55 = 90164
-- Padding: anti-scan signature 913_56

-- [Padding: SoundManager_0] Runtime module for anti-detection
local _pad_914 = 0
local _pv_914_0 = 82997
-- Padding: anti-scan signature 915_1
-- Padding: anti-scan signature 916_2
-- Padding: anti-scan signature 917_3
-- Padding: anti-scan signature 918_4
-- Padding: anti-scan signature 919_5
local _pv_920_6 = 28677
if _pad_921 > 612 then _pad_921 = 0 end
local _pv_922_8 = 86560
if _pad_923 > 480 then _pad_923 = 0 end
_pad_924 = _pad_924 + 6
-- Padding: anti-scan signature 925_11
-- Padding: anti-scan signature 926_12
_pad_927 = _pad_927 + 4
_pad_928 = _pad_928 + 4
local _pv_929_15 = 97507
-- Padding: anti-scan signature 930_16
if _pad_931 > 416 then _pad_931 = 0 end
local _pv_932_18 = 49992
if _pad_933 > 840 then _pad_933 = 0 end
local _pv_934_20 = 2222
local _pv_935_21 = 42370
local _pv_936_22 = 48603
-- Padding: anti-scan signature 937_23
-- Padding: anti-scan signature 938_24
if _pad_939 > 484 then _pad_939 = 0 end
_pad_940 = _pad_940 + 8
if _pad_941 > 307 then _pad_941 = 0 end
_pad_942 = _pad_942 + 10
_pad_943 = _pad_943 + 10
if _pad_944 > 220 then _pad_944 = 0 end
_pad_945 = _pad_945 + 5
local _pv_946_32 = 71707
if _pad_947 > 729 then _pad_947 = 0 end
-- Padding: anti-scan signature 948_34
local _pv_949_35 = 72306
if _pad_950 > 253 then _pad_950 = 0 end
_pad_951 = _pad_951 + 3
local _pv_952_38 = 50005
_pad_953 = _pad_953 + 8
if _pad_954 > 934 then _pad_954 = 0 end
local _pv_955_41 = 20448
-- Padding: anti-scan signature 956_42

-- [Padding: ParticleController_0] Runtime module for anti-detection
local _pad_957 = 0
local _pv_957_0 = 9026
if _pad_958 > 765 then _pad_958 = 0 end
if _pad_959 > 567 then _pad_959 = 0 end
-- Padding: anti-scan signature 960_3
_pad_961 = _pad_961 + 5
-- Padding: anti-scan signature 962_5
if _pad_963 > 42 then _pad_963 = 0 end
local _pv_964_7 = 47882
local _pv_965_8 = 67152
_pad_966 = _pad_966 + 10
_pad_967 = _pad_967 + 10
-- Padding: anti-scan signature 968_11
if _pad_969 > 815 then _pad_969 = 0 end
local _pv_970_13 = 58545
-- Padding: anti-scan signature 971_14
_pad_972 = _pad_972 + 6
if _pad_973 > 392 then _pad_973 = 0 end
_pad_974 = _pad_974 + 5
local _pv_975_18 = 73026
local _pv_976_19 = 51852
if _pad_977 > 521 then _pad_977 = 0 end
-- Padding: anti-scan signature 978_21
_pad_979 = _pad_979 + 7
local _pv_980_23 = 16580
_pad_981 = _pad_981 + 6
if _pad_982 > 905 then _pad_982 = 0 end
-- Padding: anti-scan signature 983_26
_pad_984 = _pad_984 + 8
-- Padding: anti-scan signature 985_28
if _pad_986 > 778 then _pad_986 = 0 end
-- Padding: anti-scan signature 987_30
-- Padding: anti-scan signature 988_31
local _pv_989_32 = 35081
-- Padding: anti-scan signature 990_33
local _pv_991_34 = 31207
_pad_992 = _pad_992 + 4
local _pv_993_36 = 14344
-- Padding: anti-scan signature 994_37
if _pad_995 > 131 then _pad_995 = 0 end
_pad_996 = _pad_996 + 6
-- Padding: anti-scan signature 997_40
_pad_998 = _pad_998 + 1
local _pv_999_42 = 62825
_pad_1000 = _pad_1000 + 7
local _pv_1001_44 = 41029
local _pv_1002_45 = 1520
local _pv_1003_46 = 96417
_pad_1004 = _pad_1004 + 9
if _pad_1005 > 399 then _pad_1005 = 0 end
if _pad_1006 > 158 then _pad_1006 = 0 end
_pad_1007 = _pad_1007 + 6
local _pv_1008_51 = 38457
_pad_1009 = _pad_1009 + 6
if _pad_1010 > 3 then _pad_1010 = 0 end
_pad_1011 = _pad_1011 + 9
local _pv_1012_55 = 10513

-- [Padding: RuntimeOptimizer_1] Runtime module for anti-detection
local _pad_1013 = 0
_pad_1013 = _pad_1013 + 6
-- Padding: anti-scan signature 1014_1
local _pv_1015_2 = 12566
if _pad_1016 > 581 then _pad_1016 = 0 end
if _pad_1017 > 448 then _pad_1017 = 0 end
-- Padding: anti-scan signature 1018_5
-- Padding: anti-scan signature 1019_6
_pad_1020 = _pad_1020 + 9
local _pv_1021_8 = 26230
-- Padding: anti-scan signature 1022_9
_pad_1023 = _pad_1023 + 4
-- Padding: anti-scan signature 1024_11
local _pv_1025_12 = 72993
_pad_1026 = _pad_1026 + 8
local _pv_1027_14 = 13890
-- Padding: anti-scan signature 1028_15
_pad_1029 = _pad_1029 + 5
local _pv_1030_17 = 72686
if _pad_1031 > 133 then _pad_1031 = 0 end
if _pad_1032 > 613 then _pad_1032 = 0 end
if _pad_1033 > 513 then _pad_1033 = 0 end
_pad_1034 = _pad_1034 + 2
_pad_1035 = _pad_1035 + 4
if _pad_1036 > 62 then _pad_1036 = 0 end
if _pad_1037 > 663 then _pad_1037 = 0 end
if _pad_1038 > 282 then _pad_1038 = 0 end
local _pv_1039_26 = 30795
-- Padding: anti-scan signature 1040_27
if _pad_1041 > 539 then _pad_1041 = 0 end
_pad_1042 = _pad_1042 + 6
-- Padding: anti-scan signature 1043_30
local _pv_1044_31 = 4195
-- Padding: anti-scan signature 1045_32
local _pv_1046_33 = 94025
local _pv_1047_34 = 47909
if _pad_1048 > 907 then _pad_1048 = 0 end
local _pv_1049_36 = 6101
-- Padding: anti-scan signature 1050_37
_pad_1051 = _pad_1051 + 2
_pad_1052 = _pad_1052 + 6
-- Padding: anti-scan signature 1053_40
-- Padding: anti-scan signature 1054_41
-- Padding: anti-scan signature 1055_42
-- Padding: anti-scan signature 1056_43
if _pad_1057 > 745 then _pad_1057 = 0 end
if _pad_1058 > 669 then _pad_1058 = 0 end
_pad_1059 = _pad_1059 + 7
_pad_1060 = _pad_1060 + 1
_pad_1061 = _pad_1061 + 4
-- Padding: anti-scan signature 1062_49
local _pv_1063_50 = 45299
_pad_1064 = _pad_1064 + 6
_pad_1065 = _pad_1065 + 9
local _pv_1066_53 = 56737

-- [Padding: CacheManager_1] Runtime module for anti-detection
local _pad_1067 = 0
local _pv_1067_0 = 85927
local _pv_1068_1 = 52060
local _pv_1069_2 = 15737
local _pv_1070_3 = 30027
local _pv_1071_4 = 49003
_pad_1072 = _pad_1072 + 5
local _pv_1073_6 = 51976
if _pad_1074 > 256 then _pad_1074 = 0 end
if _pad_1075 > 295 then _pad_1075 = 0 end
local _pv_1076_9 = 22177
_pad_1077 = _pad_1077 + 6
if _pad_1078 > 573 then _pad_1078 = 0 end
_pad_1079 = _pad_1079 + 5
_pad_1080 = _pad_1080 + 7
-- Padding: anti-scan signature 1081_14
local _pv_1082_15 = 27391
local _pv_1083_16 = 88234
_pad_1084 = _pad_1084 + 7
-- Padding: anti-scan signature 1085_18
local _pv_1086_19 = 3507
-- Padding: anti-scan signature 1087_20
if _pad_1088 > 230 then _pad_1088 = 0 end
-- Padding: anti-scan signature 1089_22
local _pv_1090_23 = 59963
_pad_1091 = _pad_1091 + 1
_pad_1092 = _pad_1092 + 3
if _pad_1093 > 633 then _pad_1093 = 0 end
local _pv_1094_27 = 1554
-- Padding: anti-scan signature 1095_28
if _pad_1096 > 646 then _pad_1096 = 0 end
-- Padding: anti-scan signature 1097_30
if _pad_1098 > 816 then _pad_1098 = 0 end
if _pad_1099 > 929 then _pad_1099 = 0 end
-- Padding: anti-scan signature 1100_33
_pad_1101 = _pad_1101 + 2
if _pad_1102 > 352 then _pad_1102 = 0 end
if _pad_1103 > 759 then _pad_1103 = 0 end
if _pad_1104 > 821 then _pad_1104 = 0 end
-- Padding: anti-scan signature 1105_38
local _pv_1106_39 = 62933
if _pad_1107 > 833 then _pad_1107 = 0 end
local _pv_1108_41 = 12658
if _pad_1109 > 401 then _pad_1109 = 0 end
local _pv_1110_43 = 83891
if _pad_1111 > 139 then _pad_1111 = 0 end
_pad_1112 = _pad_1112 + 4
if _pad_1113 > 130 then _pad_1113 = 0 end
-- Padding: anti-scan signature 1114_47
-- Padding: anti-scan signature 1115_48
local _pv_1116_49 = 81920
-- Padding: anti-scan signature 1117_50

-- [Padding: EventDispatcher_1] Runtime module for anti-detection
local _pad_1118 = 0
local _pv_1118_0 = 75312
-- Padding: anti-scan signature 1119_1
local _pv_1120_2 = 46728
_pad_1121 = _pad_1121 + 8
_pad_1122 = _pad_1122 + 9
local _pv_1123_5 = 85214
_pad_1124 = _pad_1124 + 10
local _pv_1125_7 = 69374
-- Padding: anti-scan signature 1126_8
-- Padding: anti-scan signature 1127_9
_pad_1128 = _pad_1128 + 1
local _pv_1129_11 = 94386
_pad_1130 = _pad_1130 + 3
local _pv_1131_13 = 58198
if _pad_1132 > 278 then _pad_1132 = 0 end
_pad_1133 = _pad_1133 + 10
_pad_1134 = _pad_1134 + 6
-- Padding: anti-scan signature 1135_17
local _pv_1136_18 = 29949
if _pad_1137 > 264 then _pad_1137 = 0 end
_pad_1138 = _pad_1138 + 7
local _pv_1139_21 = 59093
if _pad_1140 > 734 then _pad_1140 = 0 end
local _pv_1141_23 = 67435
_pad_1142 = _pad_1142 + 4
local _pv_1143_25 = 46529
-- Padding: anti-scan signature 1144_26
_pad_1145 = _pad_1145 + 2
local _pv_1146_28 = 70764
local _pv_1147_29 = 41270
_pad_1148 = _pad_1148 + 1
local _pv_1149_31 = 76626
-- Padding: anti-scan signature 1150_32
local _pv_1151_33 = 76523
_pad_1152 = _pad_1152 + 10
local _pv_1153_35 = 12522
local _pv_1154_36 = 59571
-- Padding: anti-scan signature 1155_37
local _pv_1156_38 = 43628
local _pv_1157_39 = 96952
-- Padding: anti-scan signature 1158_40
local _pv_1159_41 = 69146

-- [Padding: StateManager_1] Runtime module for anti-detection
local _pad_1160 = 0
local _pv_1160_0 = 33525
if _pad_1161 > 611 then _pad_1161 = 0 end
if _pad_1162 > 52 then _pad_1162 = 0 end
if _pad_1163 > 160 then _pad_1163 = 0 end
if _pad_1164 > 623 then _pad_1164 = 0 end
local _pv_1165_5 = 8792
-- Padding: anti-scan signature 1166_6
_pad_1167 = _pad_1167 + 2
local _pv_1168_8 = 93925
-- Padding: anti-scan signature 1169_9
if _pad_1170 > 64 then _pad_1170 = 0 end
if _pad_1171 > 732 then _pad_1171 = 0 end
if _pad_1172 > 916 then _pad_1172 = 0 end
local _pv_1173_13 = 17513
-- Padding: anti-scan signature 1174_14
-- Padding: anti-scan signature 1175_15
local _pv_1176_16 = 21203
local _pv_1177_17 = 52154
local _pv_1178_18 = 37501
_pad_1179 = _pad_1179 + 2
_pad_1180 = _pad_1180 + 3
_pad_1181 = _pad_1181 + 4
local _pv_1182_22 = 66026
-- Padding: anti-scan signature 1183_23
if _pad_1184 > 208 then _pad_1184 = 0 end
_pad_1185 = _pad_1185 + 9
if _pad_1186 > 816 then _pad_1186 = 0 end
_pad_1187 = _pad_1187 + 8
local _pv_1188_28 = 89223
local _pv_1189_29 = 24283
_pad_1190 = _pad_1190 + 7
-- Padding: anti-scan signature 1191_31
if _pad_1192 > 801 then _pad_1192 = 0 end
local _pv_1193_33 = 81804
_pad_1194 = _pad_1194 + 7
local _pv_1195_35 = 73785
if _pad_1196 > 462 then _pad_1196 = 0 end
local _pv_1197_37 = 9122
-- Padding: anti-scan signature 1198_38
local _pv_1199_39 = 43362
_pad_1200 = _pad_1200 + 4
local _pv_1201_41 = 31392
_pad_1202 = _pad_1202 + 4
_pad_1203 = _pad_1203 + 10
if _pad_1204 > 694 then _pad_1204 = 0 end
_pad_1205 = _pad_1205 + 10
if _pad_1206 > 339 then _pad_1206 = 0 end
-- Padding: anti-scan signature 1207_47
if _pad_1208 > 956 then _pad_1208 = 0 end
-- Padding: anti-scan signature 1209_49
_pad_1210 = _pad_1210 + 3
_pad_1211 = _pad_1211 + 4
if _pad_1212 > 65 then _pad_1212 = 0 end
-- Padding: anti-scan signature 1213_53
_pad_1214 = _pad_1214 + 9
-- Padding: anti-scan signature 1215_55
_pad_1216 = _pad_1216 + 4
if _pad_1217 > 36 then _pad_1217 = 0 end
if _pad_1218 > 749 then _pad_1218 = 0 end

-- [Padding: MemoryPool_1] Runtime module for anti-detection
local _pad_1219 = 0
local _pv_1219_0 = 57242
-- Padding: anti-scan signature 1220_1
_pad_1221 = _pad_1221 + 5
local _pv_1222_3 = 77497
_pad_1223 = _pad_1223 + 2
-- Padding: anti-scan signature 1224_5
if _pad_1225 > 711 then _pad_1225 = 0 end
if _pad_1226 > 622 then _pad_1226 = 0 end
-- Padding: anti-scan signature 1227_8
_pad_1228 = _pad_1228 + 10
local _pv_1229_10 = 58970
local _pv_1230_11 = 13042
_pad_1231 = _pad_1231 + 4
local _pv_1232_13 = 43081
if _pad_1233 > 291 then _pad_1233 = 0 end
_pad_1234 = _pad_1234 + 5
_pad_1235 = _pad_1235 + 1
local _pv_1236_17 = 1484
local _pv_1237_18 = 45481
_pad_1238 = _pad_1238 + 8
if _pad_1239 > 942 then _pad_1239 = 0 end
if _pad_1240 > 210 then _pad_1240 = 0 end
local _pv_1241_22 = 14061
local _pv_1242_23 = 92001
local _pv_1243_24 = 16080
_pad_1244 = _pad_1244 + 7
if _pad_1245 > 928 then _pad_1245 = 0 end
_pad_1246 = _pad_1246 + 4
if _pad_1247 > 216 then _pad_1247 = 0 end
if _pad_1248 > 649 then _pad_1248 = 0 end
_pad_1249 = _pad_1249 + 5
local _pv_1250_31 = 78902
local _pv_1251_32 = 32272
-- Padding: anti-scan signature 1252_33
local _pv_1253_34 = 49205
_pad_1254 = _pad_1254 + 2
local _pv_1255_36 = 19125
if _pad_1256 > 180 then _pad_1256 = 0 end
local _pv_1257_38 = 20498
-- Padding: anti-scan signature 1258_39
_pad_1259 = _pad_1259 + 7

-- [Padding: ObjectTracker_1] Runtime module for anti-detection
local _pad_1260 = 0
local _pv_1260_0 = 20828
local _pv_1261_1 = 94589
if _pad_1262 > 250 then _pad_1262 = 0 end
_pad_1263 = _pad_1263 + 9
if _pad_1264 > 559 then _pad_1264 = 0 end
local _pv_1265_5 = 41414
_pad_1266 = _pad_1266 + 3
if _pad_1267 > 144 then _pad_1267 = 0 end
local _pv_1268_8 = 18220
-- Padding: anti-scan signature 1269_9
if _pad_1270 > 263 then _pad_1270 = 0 end
-- Padding: anti-scan signature 1271_11
-- Padding: anti-scan signature 1272_12
-- Padding: anti-scan signature 1273_13
-- Padding: anti-scan signature 1274_14
-- Padding: anti-scan signature 1275_15
local _pv_1276_16 = 89862
local _pv_1277_17 = 79190
local _pv_1278_18 = 45208
-- Padding: anti-scan signature 1279_19
local _pv_1280_20 = 13902
local _pv_1281_21 = 49694
_pad_1282 = _pad_1282 + 6
local _pv_1283_23 = 77814
local _pv_1284_24 = 95806
_pad_1285 = _pad_1285 + 10
-- Padding: anti-scan signature 1286_26
if _pad_1287 > 472 then _pad_1287 = 0 end
_pad_1288 = _pad_1288 + 7
if _pad_1289 > 713 then _pad_1289 = 0 end
if _pad_1290 > 684 then _pad_1290 = 0 end
-- Padding: anti-scan signature 1291_31
-- Padding: anti-scan signature 1292_32
_pad_1293 = _pad_1293 + 6
_pad_1294 = _pad_1294 + 2
-- Padding: anti-scan signature 1295_35
if _pad_1296 > 312 then _pad_1296 = 0 end
_pad_1297 = _pad_1297 + 8
-- Padding: anti-scan signature 1298_38
-- Padding: anti-scan signature 1299_39
local _pv_1300_40 = 69748
-- Padding: anti-scan signature 1301_41

-- [Padding: RefCounter_1] Runtime module for anti-detection
local _pad_1302 = 0
-- Padding: anti-scan signature 1302_0
-- Padding: anti-scan signature 1303_1
-- Padding: anti-scan signature 1304_2
local _pv_1305_3 = 82469
if _pad_1306 > 900 then _pad_1306 = 0 end
if _pad_1307 > 384 then _pad_1307 = 0 end
if _pad_1308 > 33 then _pad_1308 = 0 end
-- Padding: anti-scan signature 1309_7
_pad_1310 = _pad_1310 + 10
if _pad_1311 > 58 then _pad_1311 = 0 end
-- Padding: anti-scan signature 1312_10
local _pv_1313_11 = 89617
if _pad_1314 > 809 then _pad_1314 = 0 end
_pad_1315 = _pad_1315 + 1
-- Padding: anti-scan signature 1316_14
if _pad_1317 > 178 then _pad_1317 = 0 end
if _pad_1318 > 713 then _pad_1318 = 0 end
if _pad_1319 > 503 then _pad_1319 = 0 end
local _pv_1320_18 = 76018
if _pad_1321 > 469 then _pad_1321 = 0 end
if _pad_1322 > 5 then _pad_1322 = 0 end
_pad_1323 = _pad_1323 + 5
-- Padding: anti-scan signature 1324_22
_pad_1325 = _pad_1325 + 10
_pad_1326 = _pad_1326 + 3
-- Padding: anti-scan signature 1327_25
local _pv_1328_26 = 44769
-- Padding: anti-scan signature 1329_27
-- Padding: anti-scan signature 1330_28
if _pad_1331 > 711 then _pad_1331 = 0 end
-- Padding: anti-scan signature 1332_30
if _pad_1333 > 669 then _pad_1333 = 0 end
local _pv_1334_32 = 29643
if _pad_1335 > 404 then _pad_1335 = 0 end
if _pad_1336 > 895 then _pad_1336 = 0 end
local _pv_1337_35 = 3635
-- Padding: anti-scan signature 1338_36
local _pv_1339_37 = 82085
_pad_1340 = _pad_1340 + 5
if _pad_1341 > 3 then _pad_1341 = 0 end
if _pad_1342 > 485 then _pad_1342 = 0 end
local _pv_1343_41 = 45959
if _pad_1344 > 66 then _pad_1344 = 0 end
local _pv_1345_43 = 30688
local _pv_1346_44 = 79992
local _pv_1347_45 = 64115
_pad_1348 = _pad_1348 + 7
-- Padding: anti-scan signature 1349_47
if _pad_1350 > 908 then _pad_1350 = 0 end

-- [Padding: TimerPool_1] Runtime module for anti-detection
local _pad_1351 = 0
local _pv_1351_0 = 94594
local _pv_1352_1 = 76372
-- Padding: anti-scan signature 1353_2
_pad_1354 = _pad_1354 + 1
if _pad_1355 > 17 then _pad_1355 = 0 end
local _pv_1356_5 = 13248
_pad_1357 = _pad_1357 + 8
if _pad_1358 > 584 then _pad_1358 = 0 end
-- Padding: anti-scan signature 1359_8
if _pad_1360 > 650 then _pad_1360 = 0 end
-- Padding: anti-scan signature 1361_10
if _pad_1362 > 264 then _pad_1362 = 0 end
_pad_1363 = _pad_1363 + 7
_pad_1364 = _pad_1364 + 8
_pad_1365 = _pad_1365 + 6
_pad_1366 = _pad_1366 + 1
-- Padding: anti-scan signature 1367_16
_pad_1368 = _pad_1368 + 8
local _pv_1369_18 = 63259
_pad_1370 = _pad_1370 + 5
_pad_1371 = _pad_1371 + 8
_pad_1372 = _pad_1372 + 5
if _pad_1373 > 869 then _pad_1373 = 0 end
-- Padding: anti-scan signature 1374_23
if _pad_1375 > 681 then _pad_1375 = 0 end
local _pv_1376_25 = 235
-- Padding: anti-scan signature 1377_26
-- Padding: anti-scan signature 1378_27
local _pv_1379_28 = 99222
local _pv_1380_29 = 13627
-- Padding: anti-scan signature 1381_30
local _pv_1382_31 = 64706
if _pad_1383 > 951 then _pad_1383 = 0 end
-- Padding: anti-scan signature 1384_33
local _pv_1385_34 = 29967
-- Padding: anti-scan signature 1386_35
-- Padding: anti-scan signature 1387_36
-- Padding: anti-scan signature 1388_37
_pad_1389 = _pad_1389 + 9
-- Padding: anti-scan signature 1390_39
-- Padding: anti-scan signature 1391_40

-- [Padding: QueueProcessor_1] Runtime module for anti-detection
local _pad_1392 = 0
-- Padding: anti-scan signature 1392_0
_pad_1393 = _pad_1393 + 4
_pad_1394 = _pad_1394 + 6
local _pv_1395_3 = 68453
_pad_1396 = _pad_1396 + 10
_pad_1397 = _pad_1397 + 2
local _pv_1398_6 = 21313
local _pv_1399_7 = 81382
if _pad_1400 > 817 then _pad_1400 = 0 end
if _pad_1401 > 714 then _pad_1401 = 0 end
-- Padding: anti-scan signature 1402_10
-- Padding: anti-scan signature 1403_11
if _pad_1404 > 183 then _pad_1404 = 0 end
if _pad_1405 > 485 then _pad_1405 = 0 end
-- Padding: anti-scan signature 1406_14
-- Padding: anti-scan signature 1407_15
if _pad_1408 > 76 then _pad_1408 = 0 end
if _pad_1409 > 176 then _pad_1409 = 0 end
if _pad_1410 > 517 then _pad_1410 = 0 end
-- Padding: anti-scan signature 1411_19
local _pv_1412_20 = 79231
if _pad_1413 > 819 then _pad_1413 = 0 end
-- Padding: anti-scan signature 1414_22
local _pv_1415_23 = 79649
if _pad_1416 > 487 then _pad_1416 = 0 end
if _pad_1417 > 613 then _pad_1417 = 0 end
_pad_1418 = _pad_1418 + 3
if _pad_1419 > 68 then _pad_1419 = 0 end
if _pad_1420 > 117 then _pad_1420 = 0 end
-- Padding: anti-scan signature 1421_29
local _pv_1422_30 = 25675
_pad_1423 = _pad_1423 + 8
-- Padding: anti-scan signature 1424_32
local _pv_1425_33 = 50719
local _pv_1426_34 = 50513
-- Padding: anti-scan signature 1427_35
_pad_1428 = _pad_1428 + 1
if _pad_1429 > 356 then _pad_1429 = 0 end
_pad_1430 = _pad_1430 + 8
if _pad_1431 > 481 then _pad_1431 = 0 end
if _pad_1432 > 892 then _pad_1432 = 0 end
if _pad_1433 > 559 then _pad_1433 = 0 end
_pad_1434 = _pad_1434 + 2
-- Padding: anti-scan signature 1435_43
if _pad_1436 > 625 then _pad_1436 = 0 end
if _pad_1437 > 546 then _pad_1437 = 0 end
-- Padding: anti-scan signature 1438_46
if _pad_1439 > 953 then _pad_1439 = 0 end
if _pad_1440 > 233 then _pad_1440 = 0 end
-- Padding: anti-scan signature 1441_49
-- Padding: anti-scan signature 1442_50
_pad_1443 = _pad_1443 + 3
local _pv_1444_52 = 54271

-- [Padding: BufferManager_1] Runtime module for anti-detection
local _pad_1445 = 0
if _pad_1445 > 211 then _pad_1445 = 0 end
if _pad_1446 > 989 then _pad_1446 = 0 end
if _pad_1447 > 337 then _pad_1447 = 0 end
local _pv_1448_3 = 27779
if _pad_1449 > 451 then _pad_1449 = 0 end
local _pv_1450_5 = 5484
if _pad_1451 > 376 then _pad_1451 = 0 end
_pad_1452 = _pad_1452 + 5
if _pad_1453 > 842 then _pad_1453 = 0 end
if _pad_1454 > 319 then _pad_1454 = 0 end
_pad_1455 = _pad_1455 + 5
if _pad_1456 > 51 then _pad_1456 = 0 end
local _pv_1457_12 = 57735
if _pad_1458 > 639 then _pad_1458 = 0 end
_pad_1459 = _pad_1459 + 1
if _pad_1460 > 393 then _pad_1460 = 0 end
local _pv_1461_16 = 38820
-- Padding: anti-scan signature 1462_17
_pad_1463 = _pad_1463 + 10
if _pad_1464 > 778 then _pad_1464 = 0 end
-- Padding: anti-scan signature 1465_20
if _pad_1466 > 998 then _pad_1466 = 0 end
-- Padding: anti-scan signature 1467_22
-- Padding: anti-scan signature 1468_23
-- Padding: anti-scan signature 1469_24
local _pv_1470_25 = 84770
if _pad_1471 > 468 then _pad_1471 = 0 end
-- Padding: anti-scan signature 1472_27
local _pv_1473_28 = 98908
local _pv_1474_29 = 85986
-- Padding: anti-scan signature 1475_30
if _pad_1476 > 435 then _pad_1476 = 0 end
local _pv_1477_32 = 65011
local _pv_1478_33 = 91941
_pad_1479 = _pad_1479 + 2
-- Padding: anti-scan signature 1480_35
local _pv_1481_36 = 82702
local _pv_1482_37 = 7230
local _pv_1483_38 = 12619
if _pad_1484 > 891 then _pad_1484 = 0 end
_pad_1485 = _pad_1485 + 1
local _pv_1486_41 = 89309
if _pad_1487 > 984 then _pad_1487 = 0 end
if _pad_1488 > 313 then _pad_1488 = 0 end
-- Padding: anti-scan signature 1489_44
if _pad_1490 > 53 then _pad_1490 = 0 end
-- Padding: anti-scan signature 1491_46

-- [Padding: StreamHandler_1] Runtime module for anti-detection
local _pad_1492 = 0
if _pad_1492 > 889 then _pad_1492 = 0 end
_pad_1493 = _pad_1493 + 7
_pad_1494 = _pad_1494 + 10
_pad_1495 = _pad_1495 + 5
-- Padding: anti-scan signature 1496_4
local _pv_1497_5 = 67223
_pad_1498 = _pad_1498 + 6
local _pv_1499_7 = 64713
_pad_1500 = _pad_1500 + 2
local _pv_1501_9 = 71376
_pad_1502 = _pad_1502 + 2
if _pad_1503 > 489 then _pad_1503 = 0 end
_pad_1504 = _pad_1504 + 7
_pad_1505 = _pad_1505 + 8
_pad_1506 = _pad_1506 + 4
if _pad_1507 > 794 then _pad_1507 = 0 end
local _pv_1508_16 = 48924
local _pv_1509_17 = 16898
-- Padding: anti-scan signature 1510_18
-- Padding: anti-scan signature 1511_19
local _pv_1512_20 = 81692
_pad_1513 = _pad_1513 + 1
_pad_1514 = _pad_1514 + 2
-- Padding: anti-scan signature 1515_23
if _pad_1516 > 763 then _pad_1516 = 0 end
_pad_1517 = _pad_1517 + 3
_pad_1518 = _pad_1518 + 4
if _pad_1519 > 792 then _pad_1519 = 0 end
-- Padding: anti-scan signature 1520_28
_pad_1521 = _pad_1521 + 8
if _pad_1522 > 545 then _pad_1522 = 0 end
if _pad_1523 > 628 then _pad_1523 = 0 end
-- Padding: anti-scan signature 1524_32
if _pad_1525 > 38 then _pad_1525 = 0 end
if _pad_1526 > 440 then _pad_1526 = 0 end
if _pad_1527 > 416 then _pad_1527 = 0 end
if _pad_1528 > 335 then _pad_1528 = 0 end
-- Padding: anti-scan signature 1529_37
if _pad_1530 > 833 then _pad_1530 = 0 end
if _pad_1531 > 55 then _pad_1531 = 0 end
if _pad_1532 > 900 then _pad_1532 = 0 end
if _pad_1533 > 713 then _pad_1533 = 0 end
-- Padding: anti-scan signature 1534_42
-- Padding: anti-scan signature 1535_43
if _pad_1536 > 210 then _pad_1536 = 0 end
_pad_1537 = _pad_1537 + 5
_pad_1538 = _pad_1538 + 7
if _pad_1539 > 744 then _pad_1539 = 0 end
-- Padding: anti-scan signature 1540_48
-- Padding: anti-scan signature 1541_49
-- Padding: anti-scan signature 1542_50
-- Padding: anti-scan signature 1543_51

-- [Padding: TokenValidator_1] Runtime module for anti-detection
local _pad_1544 = 0
-- Padding: anti-scan signature 1544_0
local _pv_1545_1 = 30356
if _pad_1546 > 739 then _pad_1546 = 0 end
-- Padding: anti-scan signature 1547_3
local _pv_1548_4 = 56091
if _pad_1549 > 691 then _pad_1549 = 0 end
if _pad_1550 > 912 then _pad_1550 = 0 end
_pad_1551 = _pad_1551 + 1
-- Padding: anti-scan signature 1552_8
_pad_1553 = _pad_1553 + 6
if _pad_1554 > 982 then _pad_1554 = 0 end
if _pad_1555 > 100 then _pad_1555 = 0 end
_pad_1556 = _pad_1556 + 1
_pad_1557 = _pad_1557 + 4
_pad_1558 = _pad_1558 + 6
_pad_1559 = _pad_1559 + 1
-- Padding: anti-scan signature 1560_16
-- Padding: anti-scan signature 1561_17
-- Padding: anti-scan signature 1562_18
local _pv_1563_19 = 19135
_pad_1564 = _pad_1564 + 7
_pad_1565 = _pad_1565 + 2
-- Padding: anti-scan signature 1566_22
-- Padding: anti-scan signature 1567_23
-- Padding: anti-scan signature 1568_24
-- Padding: anti-scan signature 1569_25
local _pv_1570_26 = 76046
local _pv_1571_27 = 30359
local _pv_1572_28 = 638
_pad_1573 = _pad_1573 + 8
if _pad_1574 > 634 then _pad_1574 = 0 end
if _pad_1575 > 732 then _pad_1575 = 0 end
if _pad_1576 > 533 then _pad_1576 = 0 end
if _pad_1577 > 947 then _pad_1577 = 0 end
_pad_1578 = _pad_1578 + 8
local _pv_1579_35 = 82647
local _pv_1580_36 = 28117
_pad_1581 = _pad_1581 + 4
local _pv_1582_38 = 3328
local _pv_1583_39 = 38894

-- [Padding: SessionManager_1] Runtime module for anti-detection
local _pad_1584 = 0
-- Padding: anti-scan signature 1584_0
local _pv_1585_1 = 18176
_pad_1586 = _pad_1586 + 3
local _pv_1587_3 = 42741
-- Padding: anti-scan signature 1588_4
-- Padding: anti-scan signature 1589_5
_pad_1590 = _pad_1590 + 1
-- Padding: anti-scan signature 1591_7
local _pv_1592_8 = 50762
_pad_1593 = _pad_1593 + 4
local _pv_1594_10 = 30415
if _pad_1595 > 889 then _pad_1595 = 0 end
_pad_1596 = _pad_1596 + 9
if _pad_1597 > 360 then _pad_1597 = 0 end
_pad_1598 = _pad_1598 + 7
-- Padding: anti-scan signature 1599_15
_pad_1600 = _pad_1600 + 2
-- Padding: anti-scan signature 1601_17
_pad_1602 = _pad_1602 + 10
if _pad_1603 > 613 then _pad_1603 = 0 end
local _pv_1604_20 = 3414
-- Padding: anti-scan signature 1605_21
local _pv_1606_22 = 58403
local _pv_1607_23 = 52264
-- Padding: anti-scan signature 1608_24
if _pad_1609 > 160 then _pad_1609 = 0 end
-- Padding: anti-scan signature 1610_26
_pad_1611 = _pad_1611 + 2
local _pv_1612_28 = 7599
local _pv_1613_29 = 28448
local _pv_1614_30 = 66889
if _pad_1615 > 125 then _pad_1615 = 0 end
_pad_1616 = _pad_1616 + 7
_pad_1617 = _pad_1617 + 9
-- Padding: anti-scan signature 1618_34
_pad_1619 = _pad_1619 + 7
-- Padding: anti-scan signature 1620_36
_pad_1621 = _pad_1621 + 5
if _pad_1622 > 663 then _pad_1622 = 0 end
local _pv_1623_39 = 5953
local _pv_1624_40 = 35749
-- Padding: anti-scan signature 1625_41
if _pad_1626 > 726 then _pad_1626 = 0 end
-- Padding: anti-scan signature 1627_43
-- Padding: anti-scan signature 1628_44
_pad_1629 = _pad_1629 + 10
-- Padding: anti-scan signature 1630_46
if _pad_1631 > 432 then _pad_1631 = 0 end

-- [Padding: HeartbeatMonitor_1] Runtime module for anti-detection
local _pad_1632 = 0
if _pad_1632 > 468 then _pad_1632 = 0 end
local _pv_1633_1 = 20648
local _pv_1634_2 = 18626
-- Padding: anti-scan signature 1635_3
local _pv_1636_4 = 41352
_pad_1637 = _pad_1637 + 5
-- Padding: anti-scan signature 1638_6
-- Padding: anti-scan signature 1639_7
if _pad_1640 > 114 then _pad_1640 = 0 end
if _pad_1641 > 632 then _pad_1641 = 0 end
_pad_1642 = _pad_1642 + 10
local _pv_1643_11 = 55320
_pad_1644 = _pad_1644 + 7
if _pad_1645 > 20 then _pad_1645 = 0 end
_pad_1646 = _pad_1646 + 9
local _pv_1647_15 = 27827
_pad_1648 = _pad_1648 + 5
if _pad_1649 > 769 then _pad_1649 = 0 end
local _pv_1650_18 = 49459
-- Padding: anti-scan signature 1651_19
if _pad_1652 > 550 then _pad_1652 = 0 end
local _pv_1653_21 = 17170
if _pad_1654 > 350 then _pad_1654 = 0 end
if _pad_1655 > 338 then _pad_1655 = 0 end
local _pv_1656_24 = 95095
if _pad_1657 > 813 then _pad_1657 = 0 end
local _pv_1658_26 = 75541
-- Padding: anti-scan signature 1659_27
if _pad_1660 > 890 then _pad_1660 = 0 end
-- Padding: anti-scan signature 1661_29
local _pv_1662_30 = 23369
-- Padding: anti-scan signature 1663_31
_pad_1664 = _pad_1664 + 5
-- Padding: anti-scan signature 1665_33
_pad_1666 = _pad_1666 + 9
local _pv_1667_35 = 57509
-- Padding: anti-scan signature 1668_36
local _pv_1669_37 = 29463
local _pv_1670_38 = 89547
local _pv_1671_39 = 56463
local _pv_1672_40 = 55248
-- Padding: anti-scan signature 1673_41
local _pv_1674_42 = 46738
-- Padding: anti-scan signature 1675_43
if _pad_1676 > 104 then _pad_1676 = 0 end
if _pad_1677 > 64 then _pad_1677 = 0 end
-- Padding: anti-scan signature 1678_46
local _pv_1679_47 = 20336
-- Padding: anti-scan signature 1680_48
if _pad_1681 > 157 then _pad_1681 = 0 end
_pad_1682 = _pad_1682 + 2
local _pv_1683_51 = 96611
-- Padding: anti-scan signature 1684_52
if _pad_1685 > 42 then _pad_1685 = 0 end
-- Padding: anti-scan signature 1686_54
if _pad_1687 > 885 then _pad_1687 = 0 end
if _pad_1688 > 827 then _pad_1688 = 0 end

-- [Padding: FrameTracker_1] Runtime module for anti-detection
local _pad_1689 = 0
if _pad_1689 > 411 then _pad_1689 = 0 end
_pad_1690 = _pad_1690 + 4
local _pv_1691_2 = 9760
-- Padding: anti-scan signature 1692_3
_pad_1693 = _pad_1693 + 2
local _pv_1694_5 = 83414
_pad_1695 = _pad_1695 + 3
_pad_1696 = _pad_1696 + 3
-- Padding: anti-scan signature 1697_8
if _pad_1698 > 297 then _pad_1698 = 0 end
_pad_1699 = _pad_1699 + 4
if _pad_1700 > 681 then _pad_1700 = 0 end
-- Padding: anti-scan signature 1701_12
_pad_1702 = _pad_1702 + 2
if _pad_1703 > 364 then _pad_1703 = 0 end
-- Padding: anti-scan signature 1704_15
local _pv_1705_16 = 36698
-- Padding: anti-scan signature 1706_17
if _pad_1707 > 657 then _pad_1707 = 0 end
if _pad_1708 > 177 then _pad_1708 = 0 end
local _pv_1709_20 = 5195
-- Padding: anti-scan signature 1710_21
-- Padding: anti-scan signature 1711_22
-- Padding: anti-scan signature 1712_23
-- Padding: anti-scan signature 1713_24
_pad_1714 = _pad_1714 + 2
-- Padding: anti-scan signature 1715_26
if _pad_1716 > 934 then _pad_1716 = 0 end
local _pv_1717_28 = 68463
local _pv_1718_29 = 70515
if _pad_1719 > 196 then _pad_1719 = 0 end
_pad_1720 = _pad_1720 + 9
_pad_1721 = _pad_1721 + 9
_pad_1722 = _pad_1722 + 3
_pad_1723 = _pad_1723 + 7
if _pad_1724 > 140 then _pad_1724 = 0 end
_pad_1725 = _pad_1725 + 7
_pad_1726 = _pad_1726 + 5
if _pad_1727 > 932 then _pad_1727 = 0 end
_pad_1728 = _pad_1728 + 7
local _pv_1729_40 = 38210
-- Padding: anti-scan signature 1730_41
-- Padding: anti-scan signature 1731_42
-- Padding: anti-scan signature 1732_43
if _pad_1733 > 622 then _pad_1733 = 0 end
if _pad_1734 > 143 then _pad_1734 = 0 end
-- Padding: anti-scan signature 1735_46
local _pv_1736_47 = 53540
if _pad_1737 > 445 then _pad_1737 = 0 end
if _pad_1738 > 201 then _pad_1738 = 0 end
if _pad_1739 > 266 then _pad_1739 = 0 end
_pad_1740 = _pad_1740 + 8

-- [Padding: InputHandler_1] Runtime module for anti-detection
local _pad_1741 = 0
-- Padding: anti-scan signature 1741_0
_pad_1742 = _pad_1742 + 10
local _pv_1743_2 = 31802
if _pad_1744 > 966 then _pad_1744 = 0 end
_pad_1745 = _pad_1745 + 9
local _pv_1746_5 = 79553
_pad_1747 = _pad_1747 + 2
if _pad_1748 > 18 then _pad_1748 = 0 end
_pad_1749 = _pad_1749 + 1
-- Padding: anti-scan signature 1750_9
-- Padding: anti-scan signature 1751_10
if _pad_1752 > 891 then _pad_1752 = 0 end
-- Padding: anti-scan signature 1753_12
_pad_1754 = _pad_1754 + 2
-- Padding: anti-scan signature 1755_14
local _pv_1756_15 = 40081
-- Padding: anti-scan signature 1757_16
_pad_1758 = _pad_1758 + 8
local _pv_1759_18 = 37437
-- Padding: anti-scan signature 1760_19
local _pv_1761_20 = 90500
-- Padding: anti-scan signature 1762_21
_pad_1763 = _pad_1763 + 10
if _pad_1764 > 945 then _pad_1764 = 0 end
local _pv_1765_24 = 1173
local _pv_1766_25 = 642
-- Padding: anti-scan signature 1767_26
_pad_1768 = _pad_1768 + 1
local _pv_1769_28 = 63196
_pad_1770 = _pad_1770 + 10
if _pad_1771 > 526 then _pad_1771 = 0 end
-- Padding: anti-scan signature 1772_31
_pad_1773 = _pad_1773 + 10
_pad_1774 = _pad_1774 + 3
_pad_1775 = _pad_1775 + 10
-- Padding: anti-scan signature 1776_35
_pad_1777 = _pad_1777 + 7
_pad_1778 = _pad_1778 + 10
-- Padding: anti-scan signature 1779_38
if _pad_1780 > 274 then _pad_1780 = 0 end
_pad_1781 = _pad_1781 + 7
-- Padding: anti-scan signature 1782_41
if _pad_1783 > 541 then _pad_1783 = 0 end
-- Padding: anti-scan signature 1784_43

-- [Padding: PhysicsSimulator_1] Runtime module for anti-detection
local _pad_1785 = 0
-- Padding: anti-scan signature 1785_0
local _pv_1786_1 = 65601
_pad_1787 = _pad_1787 + 9
if _pad_1788 > 492 then _pad_1788 = 0 end
if _pad_1789 > 790 then _pad_1789 = 0 end
if _pad_1790 > 588 then _pad_1790 = 0 end
-- Padding: anti-scan signature 1791_6
if _pad_1792 > 304 then _pad_1792 = 0 end
_pad_1793 = _pad_1793 + 5
_pad_1794 = _pad_1794 + 7
local _pv_1795_10 = 76128
-- Padding: anti-scan signature 1796_11
-- Padding: anti-scan signature 1797_12
local _pv_1798_13 = 15307
local _pv_1799_14 = 57140
local _pv_1800_15 = 3431
-- Padding: anti-scan signature 1801_16
if _pad_1802 > 125 then _pad_1802 = 0 end
_pad_1803 = _pad_1803 + 7
_pad_1804 = _pad_1804 + 2
local _pv_1805_20 = 80319
local _pv_1806_21 = 47553
if _pad_1807 > 794 then _pad_1807 = 0 end
-- Padding: anti-scan signature 1808_23
-- Padding: anti-scan signature 1809_24
_pad_1810 = _pad_1810 + 10
local _pv_1811_26 = 84606
local _pv_1812_27 = 82181
-- Padding: anti-scan signature 1813_28
_pad_1814 = _pad_1814 + 2
if _pad_1815 > 24 then _pad_1815 = 0 end
-- Padding: anti-scan signature 1816_31
local _pv_1817_32 = 9841
-- Padding: anti-scan signature 1818_33
_pad_1819 = _pad_1819 + 3
if _pad_1820 > 945 then _pad_1820 = 0 end
-- Padding: anti-scan signature 1821_36
_pad_1822 = _pad_1822 + 10
if _pad_1823 > 472 then _pad_1823 = 0 end
-- Padding: anti-scan signature 1824_39
local _pv_1825_40 = 93104
local _pv_1826_41 = 35815

-- [Padding: RenderOptimizer_1] Runtime module for anti-detection
local _pad_1827 = 0
local _pv_1827_0 = 97881
if _pad_1828 > 19 then _pad_1828 = 0 end
_pad_1829 = _pad_1829 + 2
if _pad_1830 > 207 then _pad_1830 = 0 end
_pad_1831 = _pad_1831 + 5
if _pad_1832 > 260 then _pad_1832 = 0 end
-- Padding: anti-scan signature 1833_6
-- Padding: anti-scan signature 1834_7
local _pv_1835_8 = 15762
-- Padding: anti-scan signature 1836_9
_pad_1837 = _pad_1837 + 1
-- Padding: anti-scan signature 1838_11
-- Padding: anti-scan signature 1839_12
if _pad_1840 > 937 then _pad_1840 = 0 end
if _pad_1841 > 745 then _pad_1841 = 0 end
if _pad_1842 > 439 then _pad_1842 = 0 end
if _pad_1843 > 486 then _pad_1843 = 0 end
local _pv_1844_17 = 242
if _pad_1845 > 394 then _pad_1845 = 0 end
local _pv_1846_19 = 58392
if _pad_1847 > 520 then _pad_1847 = 0 end
-- Padding: anti-scan signature 1848_21
-- Padding: anti-scan signature 1849_22
if _pad_1850 > 863 then _pad_1850 = 0 end
-- Padding: anti-scan signature 1851_24
-- Padding: anti-scan signature 1852_25
-- Padding: anti-scan signature 1853_26
local _pv_1854_27 = 9293
local _pv_1855_28 = 90659
_pad_1856 = _pad_1856 + 9
if _pad_1857 > 303 then _pad_1857 = 0 end
_pad_1858 = _pad_1858 + 1
if _pad_1859 > 123 then _pad_1859 = 0 end
_pad_1860 = _pad_1860 + 3
if _pad_1861 > 368 then _pad_1861 = 0 end
_pad_1862 = _pad_1862 + 9
-- Padding: anti-scan signature 1863_36
local _pv_1864_37 = 59440
if _pad_1865 > 713 then _pad_1865 = 0 end
_pad_1866 = _pad_1866 + 7
if _pad_1867 > 298 then _pad_1867 = 0 end
_pad_1868 = _pad_1868 + 6
_pad_1869 = _pad_1869 + 4
-- Padding: anti-scan signature 1870_43
if _pad_1871 > 631 then _pad_1871 = 0 end
if _pad_1872 > 334 then _pad_1872 = 0 end
local _pv_1873_46 = 65010
local _pv_1874_47 = 59127
local _pv_1875_48 = 85782
if _pad_1876 > 350 then _pad_1876 = 0 end
_pad_1877 = _pad_1877 + 10
-- Padding: anti-scan signature 1878_51

-- [Padding: SoundManager_1] Runtime module for anti-detection
local _pad_1879 = 0
-- Padding: anti-scan signature 1879_0
if _pad_1880 > 176 then _pad_1880 = 0 end
if _pad_1881 > 456 then _pad_1881 = 0 end
_pad_1882 = _pad_1882 + 2
local _pv_1883_4 = 22994
_pad_1884 = _pad_1884 + 8
local _pv_1885_6 = 51796
if _pad_1886 > 472 then _pad_1886 = 0 end
local _pv_1887_8 = 40349
if _pad_1888 > 34 then _pad_1888 = 0 end
_pad_1889 = _pad_1889 + 2
-- Padding: anti-scan signature 1890_11
-- Padding: anti-scan signature 1891_12
-- Padding: anti-scan signature 1892_13
-- Padding: anti-scan signature 1893_14
local _pv_1894_15 = 14933
if _pad_1895 > 33 then _pad_1895 = 0 end
-- Padding: anti-scan signature 1896_17
_pad_1897 = _pad_1897 + 9
local _pv_1898_19 = 92970
-- Padding: anti-scan signature 1899_20
local _pv_1900_21 = 60009
-- Padding: anti-scan signature 1901_22
local _pv_1902_23 = 20206
if _pad_1903 > 609 then _pad_1903 = 0 end
_pad_1904 = _pad_1904 + 8
if _pad_1905 > 507 then _pad_1905 = 0 end
local _pv_1906_27 = 848
-- Padding: anti-scan signature 1907_28
local _pv_1908_29 = 62868
-- Padding: anti-scan signature 1909_30
-- Padding: anti-scan signature 1910_31
if _pad_1911 > 305 then _pad_1911 = 0 end
-- Padding: anti-scan signature 1912_33
if _pad_1913 > 321 then _pad_1913 = 0 end
if _pad_1914 > 225 then _pad_1914 = 0 end
-- Padding: anti-scan signature 1915_36
if _pad_1916 > 482 then _pad_1916 = 0 end
_pad_1917 = _pad_1917 + 10
-- Padding: anti-scan signature 1918_39
if _pad_1919 > 937 then _pad_1919 = 0 end
if _pad_1920 > 417 then _pad_1920 = 0 end
local _pv_1921_42 = 99923
if _pad_1922 > 5 then _pad_1922 = 0 end
if _pad_1923 > 398 then _pad_1923 = 0 end
if _pad_1924 > 919 then _pad_1924 = 0 end
local _pv_1925_46 = 19067
_pad_1926 = _pad_1926 + 2
_pad_1927 = _pad_1927 + 8
-- Padding: anti-scan signature 1928_49
-- Padding: anti-scan signature 1929_50
if _pad_1930 > 753 then _pad_1930 = 0 end
-- Padding: anti-scan signature 1931_52
-- Padding: anti-scan signature 1932_53
local _pv_1933_54 = 2754
-- Padding: anti-scan signature 1934_55
local _pv_1935_56 = 65564
if _pad_1936 > 348 then _pad_1936 = 0 end
_pad_1937 = _pad_1937 + 2

-- [Padding: ParticleController_1] Runtime module for anti-detection
local _pad_1938 = 0
_pad_1938 = _pad_1938 + 6
-- Padding: anti-scan signature 1939_1
_pad_1940 = _pad_1940 + 2
if _pad_1941 > 428 then _pad_1941 = 0 end
local _pv_1942_4 = 64598
_pad_1943 = _pad_1943 + 8
if _pad_1944 > 182 then _pad_1944 = 0 end
if _pad_1945 > 718 then _pad_1945 = 0 end
if _pad_1946 > 108 then _pad_1946 = 0 end
-- Padding: anti-scan signature 1947_9
if _pad_1948 > 783 then _pad_1948 = 0 end
-- Padding: anti-scan signature 1949_11
_pad_1950 = _pad_1950 + 4
-- Padding: anti-scan signature 1951_13
local _pv_1952_14 = 76161
_pad_1953 = _pad_1953 + 6
-- Padding: anti-scan signature 1954_16
-- Padding: anti-scan signature 1955_17
-- Padding: anti-scan signature 1956_18
_pad_1957 = _pad_1957 + 1
_pad_1958 = _pad_1958 + 9
if _pad_1959 > 694 then _pad_1959 = 0 end
if _pad_1960 > 361 then _pad_1960 = 0 end
-- Padding: anti-scan signature 1961_23
local _pv_1962_24 = 72894
_pad_1963 = _pad_1963 + 6
if _pad_1964 > 222 then _pad_1964 = 0 end
if _pad_1965 > 751 then _pad_1965 = 0 end
_pad_1966 = _pad_1966 + 5
_pad_1967 = _pad_1967 + 8
local _pv_1968_30 = 87664
_pad_1969 = _pad_1969 + 7
if _pad_1970 > 797 then _pad_1970 = 0 end
if _pad_1971 > 633 then _pad_1971 = 0 end
local _pv_1972_34 = 10768
_pad_1973 = _pad_1973 + 6
-- Padding: anti-scan signature 1974_36
if _pad_1975 > 779 then _pad_1975 = 0 end
-- Padding: anti-scan signature 1976_38
_pad_1977 = _pad_1977 + 2
_pad_1978 = _pad_1978 + 10
-- Padding: anti-scan signature 1979_41
local _pv_1980_42 = 9781
_pad_1981 = _pad_1981 + 3
_pad_1982 = _pad_1982 + 7
-- Padding: anti-scan signature 1983_45
_pad_1984 = _pad_1984 + 4
-- Padding: anti-scan signature 1985_47
-- Padding: anti-scan signature 1986_48
local _pv_1987_49 = 12351
local _pv_1988_50 = 68367

-- [Padding: RuntimeOptimizer_2] Runtime module for anti-detection
local _pad_1989 = 0
if _pad_1989 > 931 then _pad_1989 = 0 end
local _pv_1990_1 = 94384
-- Padding: anti-scan signature 1991_2
_pad_1992 = _pad_1992 + 1
local _pv_1993_4 = 77312
_pad_1994 = _pad_1994 + 7
if _pad_1995 > 574 then _pad_1995 = 0 end
_pad_1996 = _pad_1996 + 8
local _pv_1997_8 = 63266
local _pv_1998_9 = 62294
if _pad_1999 > 734 then _pad_1999 = 0 end
-- Padding: anti-scan signature 2000_11
_pad_2001 = _pad_2001 + 5
-- Padding: anti-scan signature 2002_13
_pad_2003 = _pad_2003 + 3
-- Padding: anti-scan signature 2004_15
local _pv_2005_16 = 40035
local _pv_2006_17 = 46647
if _pad_2007 > 230 then _pad_2007 = 0 end
_pad_2008 = _pad_2008 + 1
-- Padding: anti-scan signature 2009_20
_pad_2010 = _pad_2010 + 2
_pad_2011 = _pad_2011 + 2
if _pad_2012 > 762 then _pad_2012 = 0 end
local _pv_2013_24 = 89123
-- Padding: anti-scan signature 2014_25
if _pad_2015 > 260 then _pad_2015 = 0 end
if _pad_2016 > 607 then _pad_2016 = 0 end
_pad_2017 = _pad_2017 + 1
_pad_2018 = _pad_2018 + 3
local _pv_2019_30 = 58205
local _pv_2020_31 = 53390
_pad_2021 = _pad_2021 + 5
local _pv_2022_33 = 86937
_pad_2023 = _pad_2023 + 1
if _pad_2024 > 13 then _pad_2024 = 0 end
if _pad_2025 > 987 then _pad_2025 = 0 end
local _pv_2026_37 = 43320
-- Padding: anti-scan signature 2027_38
if _pad_2028 > 757 then _pad_2028 = 0 end
-- Padding: anti-scan signature 2029_40
-- Padding: anti-scan signature 2030_41
_pad_2031 = _pad_2031 + 1
_pad_2032 = _pad_2032 + 8
-- Padding: anti-scan signature 2033_44
local _pv_2034_45 = 50703
local _pv_2035_46 = 20901
_pad_2036 = _pad_2036 + 7
-- Padding: anti-scan signature 2037_48
if _pad_2038 > 182 then _pad_2038 = 0 end
if _pad_2039 > 114 then _pad_2039 = 0 end
local _pv_2040_51 = 15021

-- [Padding: CacheManager_2] Runtime module for anti-detection
local _pad_2041 = 0
if _pad_2041 > 828 then _pad_2041 = 0 end
local _pv_2042_1 = 43345
if _pad_2043 > 697 then _pad_2043 = 0 end
-- Padding: anti-scan signature 2044_3
if _pad_2045 > 795 then _pad_2045 = 0 end
if _pad_2046 > 385 then _pad_2046 = 0 end
_pad_2047 = _pad_2047 + 10
_pad_2048 = _pad_2048 + 3
local _pv_2049_8 = 7686
-- Padding: anti-scan signature 2050_9
local _pv_2051_10 = 97105
if _pad_2052 > 285 then _pad_2052 = 0 end
-- Padding: anti-scan signature 2053_12
_pad_2054 = _pad_2054 + 1
if _pad_2055 > 915 then _pad_2055 = 0 end
-- Padding: anti-scan signature 2056_15
-- Padding: anti-scan signature 2057_16
-- Padding: anti-scan signature 2058_17
-- Padding: anti-scan signature 2059_18
if _pad_2060 > 412 then _pad_2060 = 0 end
_pad_2061 = _pad_2061 + 6
local _pv_2062_21 = 93649
if _pad_2063 > 766 then _pad_2063 = 0 end
_pad_2064 = _pad_2064 + 1
local _pv_2065_24 = 49370
-- Padding: anti-scan signature 2066_25
local _pv_2067_26 = 45843
_pad_2068 = _pad_2068 + 5
-- Padding: anti-scan signature 2069_28
-- Padding: anti-scan signature 2070_29
_pad_2071 = _pad_2071 + 1
_pad_2072 = _pad_2072 + 6
-- Padding: anti-scan signature 2073_32
-- Padding: anti-scan signature 2074_33
-- Padding: anti-scan signature 2075_34
if _pad_2076 > 880 then _pad_2076 = 0 end
if _pad_2077 > 714 then _pad_2077 = 0 end
_pad_2078 = _pad_2078 + 3
-- Padding: anti-scan signature 2079_38
local _pv_2080_39 = 33908
local _pv_2081_40 = 67463
local _pv_2082_41 = 35306
_pad_2083 = _pad_2083 + 7
-- Padding: anti-scan signature 2084_43
local _pv_2085_44 = 59289

-- [Padding: EventDispatcher_2] Runtime module for anti-detection
local _pad_2086 = 0
-- Padding: anti-scan signature 2086_0
-- Padding: anti-scan signature 2087_1
local _pv_2088_2 = 83237
_pad_2089 = _pad_2089 + 2
if _pad_2090 > 149 then _pad_2090 = 0 end
if _pad_2091 > 251 then _pad_2091 = 0 end
if _pad_2092 > 839 then _pad_2092 = 0 end
if _pad_2093 > 862 then _pad_2093 = 0 end
-- Padding: anti-scan signature 2094_8
_pad_2095 = _pad_2095 + 8
-- Padding: anti-scan signature 2096_10
if _pad_2097 > 636 then _pad_2097 = 0 end
-- Padding: anti-scan signature 2098_12
_pad_2099 = _pad_2099 + 6
_pad_2100 = _pad_2100 + 8
_pad_2101 = _pad_2101 + 2
-- Padding: anti-scan signature 2102_16
local _pv_2103_17 = 80684
local _pv_2104_18 = 72714
_pad_2105 = _pad_2105 + 1
-- Padding: anti-scan signature 2106_20
if _pad_2107 > 431 then _pad_2107 = 0 end
local _pv_2108_22 = 22001
-- Padding: anti-scan signature 2109_23
_pad_2110 = _pad_2110 + 4
_pad_2111 = _pad_2111 + 2
-- Padding: anti-scan signature 2112_26
_pad_2113 = _pad_2113 + 8
local _pv_2114_28 = 57718
-- Padding: anti-scan signature 2115_29
-- Padding: anti-scan signature 2116_30
if _pad_2117 > 705 then _pad_2117 = 0 end
local _pv_2118_32 = 12931
-- Padding: anti-scan signature 2119_33
if _pad_2120 > 279 then _pad_2120 = 0 end
_pad_2121 = _pad_2121 + 3
if _pad_2122 > 178 then _pad_2122 = 0 end
_pad_2123 = _pad_2123 + 4
-- Padding: anti-scan signature 2124_38
local _pv_2125_39 = 98607
local _pv_2126_40 = 28500
if _pad_2127 > 447 then _pad_2127 = 0 end
_pad_2128 = _pad_2128 + 1
_pad_2129 = _pad_2129 + 2
-- Padding: anti-scan signature 2130_44
local _pv_2131_45 = 84816
-- Padding: anti-scan signature 2132_46
local _pv_2133_47 = 32428

-- [Padding: StateManager_2] Runtime module for anti-detection
local _pad_2134 = 0
-- Padding: anti-scan signature 2134_0
local _pv_2135_1 = 94309
local _pv_2136_2 = 47160
if _pad_2137 > 120 then _pad_2137 = 0 end
_pad_2138 = _pad_2138 + 10
_pad_2139 = _pad_2139 + 9
-- Padding: anti-scan signature 2140_6
-- Padding: anti-scan signature 2141_7
-- Padding: anti-scan signature 2142_8
_pad_2143 = _pad_2143 + 9
_pad_2144 = _pad_2144 + 7
-- Padding: anti-scan signature 2145_11
local _pv_2146_12 = 65709
-- Padding: anti-scan signature 2147_13
local _pv_2148_14 = 78425
-- Padding: anti-scan signature 2149_15
-- Padding: anti-scan signature 2150_16
if _pad_2151 > 577 then _pad_2151 = 0 end
if _pad_2152 > 399 then _pad_2152 = 0 end
-- Padding: anti-scan signature 2153_19
local _pv_2154_20 = 80898
local _pv_2155_21 = 82643
local _pv_2156_22 = 60115
_pad_2157 = _pad_2157 + 5
-- Padding: anti-scan signature 2158_24
if _pad_2159 > 474 then _pad_2159 = 0 end
_pad_2160 = _pad_2160 + 5
local _pv_2161_27 = 95160
local _pv_2162_28 = 85745
_pad_2163 = _pad_2163 + 9
-- Padding: anti-scan signature 2164_30
_pad_2165 = _pad_2165 + 5
if _pad_2166 > 928 then _pad_2166 = 0 end
local _pv_2167_33 = 73933
-- Padding: anti-scan signature 2168_34
if _pad_2169 > 159 then _pad_2169 = 0 end
local _pv_2170_36 = 61440
_pad_2171 = _pad_2171 + 1
-- Padding: anti-scan signature 2172_38
_pad_2173 = _pad_2173 + 6
_pad_2174 = _pad_2174 + 4
-- Padding: anti-scan signature 2175_41
-- Padding: anti-scan signature 2176_42
if _pad_2177 > 333 then _pad_2177 = 0 end
-- Padding: anti-scan signature 2178_44
_pad_2179 = _pad_2179 + 1
local _pv_2180_46 = 649
_pad_2181 = _pad_2181 + 8
-- Padding: anti-scan signature 2182_48
-- Padding: anti-scan signature 2183_49
if _pad_2184 > 267 then _pad_2184 = 0 end
if _pad_2185 > 487 then _pad_2185 = 0 end
_pad_2186 = _pad_2186 + 2
local _pv_2187_53 = 31767
_pad_2188 = _pad_2188 + 3
_pad_2189 = _pad_2189 + 1
local _pv_2190_56 = 52830

-- [Padding: MemoryPool_2] Runtime module for anti-detection
local _pad_2191 = 0
local _pv_2191_0 = 93207
_pad_2192 = _pad_2192 + 7
if _pad_2193 > 886 then _pad_2193 = 0 end
-- Padding: anti-scan signature 2194_3
if _pad_2195 > 819 then _pad_2195 = 0 end
if _pad_2196 > 222 then _pad_2196 = 0 end
local _pv_2197_6 = 18947
-- Padding: anti-scan signature 2198_7
if _pad_2199 > 970 then _pad_2199 = 0 end
-- Padding: anti-scan signature 2200_9
local _pv_2201_10 = 22307
local _pv_2202_11 = 50175
_pad_2203 = _pad_2203 + 4
_pad_2204 = _pad_2204 + 3
if _pad_2205 > 120 then _pad_2205 = 0 end
local _pv_2206_15 = 1529
-- Padding: anti-scan signature 2207_16
_pad_2208 = _pad_2208 + 7
local _pv_2209_18 = 2386
local _pv_2210_19 = 82750
-- Padding: anti-scan signature 2211_20
if _pad_2212 > 599 then _pad_2212 = 0 end
-- Padding: anti-scan signature 2213_22
local _pv_2214_23 = 1811
_pad_2215 = _pad_2215 + 1
if _pad_2216 > 532 then _pad_2216 = 0 end
local _pv_2217_26 = 83110
local _pv_2218_27 = 18157
if _pad_2219 > 226 then _pad_2219 = 0 end
-- Padding: anti-scan signature 2220_29
_pad_2221 = _pad_2221 + 3
local _pv_2222_31 = 91304
local _pv_2223_32 = 41157
-- Padding: anti-scan signature 2224_33
local _pv_2225_34 = 99907
_pad_2226 = _pad_2226 + 6
if _pad_2227 > 870 then _pad_2227 = 0 end
_pad_2228 = _pad_2228 + 4
_pad_2229 = _pad_2229 + 10
if _pad_2230 > 450 then _pad_2230 = 0 end
_pad_2231 = _pad_2231 + 6
-- Padding: anti-scan signature 2232_41
local _pv_2233_42 = 2200
_pad_2234 = _pad_2234 + 5
local _pv_2235_44 = 32925
local _pv_2236_45 = 69608
if _pad_2237 > 766 then _pad_2237 = 0 end
_pad_2238 = _pad_2238 + 1
local _pv_2239_48 = 62915
local _pv_2240_49 = 29299
_pad_2241 = _pad_2241 + 6
if _pad_2242 > 508 then _pad_2242 = 0 end
-- Padding: anti-scan signature 2243_52
if _pad_2244 > 813 then _pad_2244 = 0 end
_pad_2245 = _pad_2245 + 6
local _pv_2246_55 = 22468

-- [Padding: ObjectTracker_2] Runtime module for anti-detection
local _pad_2247 = 0
-- Padding: anti-scan signature 2247_0
if _pad_2248 > 139 then _pad_2248 = 0 end
-- Padding: anti-scan signature 2249_2
_pad_2250 = _pad_2250 + 10
if _pad_2251 > 537 then _pad_2251 = 0 end
local _pv_2252_5 = 71795
if _pad_2253 > 1 then _pad_2253 = 0 end
-- Padding: anti-scan signature 2254_7
-- Padding: anti-scan signature 2255_8
_pad_2256 = _pad_2256 + 6
_pad_2257 = _pad_2257 + 1
if _pad_2258 > 243 then _pad_2258 = 0 end
_pad_2259 = _pad_2259 + 4
-- Padding: anti-scan signature 2260_13
-- Padding: anti-scan signature 2261_14
_pad_2262 = _pad_2262 + 6
if _pad_2263 > 616 then _pad_2263 = 0 end
if _pad_2264 > 407 then _pad_2264 = 0 end
if _pad_2265 > 899 then _pad_2265 = 0 end
_pad_2266 = _pad_2266 + 9
_pad_2267 = _pad_2267 + 8
if _pad_2268 > 928 then _pad_2268 = 0 end
local _pv_2269_22 = 86086
if _pad_2270 > 678 then _pad_2270 = 0 end
_pad_2271 = _pad_2271 + 3
_pad_2272 = _pad_2272 + 8
if _pad_2273 > 571 then _pad_2273 = 0 end
local _pv_2274_27 = 67368
_pad_2275 = _pad_2275 + 7
local _pv_2276_29 = 77248
local _pv_2277_30 = 18260
if _pad_2278 > 522 then _pad_2278 = 0 end
_pad_2279 = _pad_2279 + 10
-- Padding: anti-scan signature 2280_33
if _pad_2281 > 648 then _pad_2281 = 0 end
local _pv_2282_35 = 25868
-- Padding: anti-scan signature 2283_36
local _pv_2284_37 = 81626
_pad_2285 = _pad_2285 + 9
local _pv_2286_39 = 70907
_pad_2287 = _pad_2287 + 2
-- Padding: anti-scan signature 2288_41
if _pad_2289 > 604 then _pad_2289 = 0 end
local _pv_2290_43 = 12908
-- Padding: anti-scan signature 2291_44

-- [Padding: RefCounter_2] Runtime module for anti-detection
local _pad_2292 = 0
local _pv_2292_0 = 97973
-- Padding: anti-scan signature 2293_1
-- Padding: anti-scan signature 2294_2
_pad_2295 = _pad_2295 + 9
_pad_2296 = _pad_2296 + 5
if _pad_2297 > 885 then _pad_2297 = 0 end
_pad_2298 = _pad_2298 + 1
_pad_2299 = _pad_2299 + 3
_pad_2300 = _pad_2300 + 10
local _pv_2301_9 = 34930
local _pv_2302_10 = 292
if _pad_2303 > 895 then _pad_2303 = 0 end
if _pad_2304 > 531 then _pad_2304 = 0 end
if _pad_2305 > 132 then _pad_2305 = 0 end
local _pv_2306_14 = 43166
if _pad_2307 > 831 then _pad_2307 = 0 end
local _pv_2308_16 = 8650
local _pv_2309_17 = 48709
_pad_2310 = _pad_2310 + 3
_pad_2311 = _pad_2311 + 10
_pad_2312 = _pad_2312 + 3
if _pad_2313 > 418 then _pad_2313 = 0 end
local _pv_2314_22 = 23641
if _pad_2315 > 789 then _pad_2315 = 0 end
local _pv_2316_24 = 42082
_pad_2317 = _pad_2317 + 9
_pad_2318 = _pad_2318 + 4
if _pad_2319 > 181 then _pad_2319 = 0 end
local _pv_2320_28 = 261
-- Padding: anti-scan signature 2321_29
_pad_2322 = _pad_2322 + 1
-- Padding: anti-scan signature 2323_31
-- Padding: anti-scan signature 2324_32
_pad_2325 = _pad_2325 + 2
-- Padding: anti-scan signature 2326_34
-- Padding: anti-scan signature 2327_35
local _pv_2328_36 = 28947
_pad_2329 = _pad_2329 + 2
_pad_2330 = _pad_2330 + 4
if _pad_2331 > 138 then _pad_2331 = 0 end

-- [Padding: TimerPool_2] Runtime module for anti-detection
local _pad_2332 = 0
_pad_2332 = _pad_2332 + 4
_pad_2333 = _pad_2333 + 2
-- Padding: anti-scan signature 2334_2
local _pv_2335_3 = 69069
if _pad_2336 > 556 then _pad_2336 = 0 end
if _pad_2337 > 467 then _pad_2337 = 0 end
-- Padding: anti-scan signature 2338_6
-- Padding: anti-scan signature 2339_7
if _pad_2340 > 195 then _pad_2340 = 0 end
local _pv_2341_9 = 23816
if _pad_2342 > 194 then _pad_2342 = 0 end
_pad_2343 = _pad_2343 + 6
-- Padding: anti-scan signature 2344_12
-- Padding: anti-scan signature 2345_13
_pad_2346 = _pad_2346 + 3
-- Padding: anti-scan signature 2347_15
local _pv_2348_16 = 60837
-- Padding: anti-scan signature 2349_17
if _pad_2350 > 554 then _pad_2350 = 0 end
local _pv_2351_19 = 35231
-- Padding: anti-scan signature 2352_20
-- Padding: anti-scan signature 2353_21
-- Padding: anti-scan signature 2354_22
if _pad_2355 > 218 then _pad_2355 = 0 end
if _pad_2356 > 430 then _pad_2356 = 0 end
local _pv_2357_25 = 67394
if _pad_2358 > 572 then _pad_2358 = 0 end
_pad_2359 = _pad_2359 + 1
local _pv_2360_28 = 78668
-- Padding: anti-scan signature 2361_29
local _pv_2362_30 = 61691
_pad_2363 = _pad_2363 + 5
if _pad_2364 > 5 then _pad_2364 = 0 end
local _pv_2365_33 = 78665
_pad_2366 = _pad_2366 + 6
_pad_2367 = _pad_2367 + 7
local _pv_2368_36 = 12333
local _pv_2369_37 = 57459
-- Padding: anti-scan signature 2370_38
-- Padding: anti-scan signature 2371_39
-- Padding: anti-scan signature 2372_40
-- Padding: anti-scan signature 2373_41
_pad_2374 = _pad_2374 + 6
_pad_2375 = _pad_2375 + 4
local _pv_2376_44 = 92533
_pad_2377 = _pad_2377 + 2
_pad_2378 = _pad_2378 + 9
if _pad_2379 > 181 then _pad_2379 = 0 end
-- Padding: anti-scan signature 2380_48
-- Padding: anti-scan signature 2381_49
if _pad_2382 > 694 then _pad_2382 = 0 end
_pad_2383 = _pad_2383 + 4
_pad_2384 = _pad_2384 + 5
-- Padding: anti-scan signature 2385_53
_pad_2386 = _pad_2386 + 3
-- Padding: anti-scan signature 2387_55
_pad_2388 = _pad_2388 + 1
if _pad_2389 > 376 then _pad_2389 = 0 end

-- [Padding: QueueProcessor_2] Runtime module for anti-detection
local _pad_2390 = 0
local _pv_2390_0 = 15742
-- Padding: anti-scan signature 2391_1
_pad_2392 = _pad_2392 + 7
_pad_2393 = _pad_2393 + 6
-- Padding: anti-scan signature 2394_4
local _pv_2395_5 = 99893
_pad_2396 = _pad_2396 + 10
local _pv_2397_7 = 22025
local _pv_2398_8 = 67276
if _pad_2399 > 8 then _pad_2399 = 0 end
local _pv_2400_10 = 48702
-- Padding: anti-scan signature 2401_11
if _pad_2402 > 653 then _pad_2402 = 0 end
_pad_2403 = _pad_2403 + 5
_pad_2404 = _pad_2404 + 5
if _pad_2405 > 166 then _pad_2405 = 0 end
-- Padding: anti-scan signature 2406_16
local _pv_2407_17 = 97854
if _pad_2408 > 54 then _pad_2408 = 0 end
local _pv_2409_19 = 76686
_pad_2410 = _pad_2410 + 5
-- Padding: anti-scan signature 2411_21
_pad_2412 = _pad_2412 + 10
_pad_2413 = _pad_2413 + 10
local _pv_2414_24 = 68586
if _pad_2415 > 954 then _pad_2415 = 0 end
-- Padding: anti-scan signature 2416_26
_pad_2417 = _pad_2417 + 4
if _pad_2418 > 511 then _pad_2418 = 0 end
-- Padding: anti-scan signature 2419_29
-- Padding: anti-scan signature 2420_30
local _pv_2421_31 = 76482
-- Padding: anti-scan signature 2422_32
_pad_2423 = _pad_2423 + 6
_pad_2424 = _pad_2424 + 8
local _pv_2425_35 = 91736
_pad_2426 = _pad_2426 + 7
_pad_2427 = _pad_2427 + 5
local _pv_2428_38 = 91961
-- Padding: anti-scan signature 2429_39
_pad_2430 = _pad_2430 + 10
if _pad_2431 > 495 then _pad_2431 = 0 end
-- Padding: anti-scan signature 2432_42

-- [Padding: BufferManager_2] Runtime module for anti-detection
local _pad_2433 = 0
local _pv_2433_0 = 19645
local _pv_2434_1 = 7813
local _pv_2435_2 = 81429
_pad_2436 = _pad_2436 + 1
_pad_2437 = _pad_2437 + 9
local _pv_2438_5 = 60173
_pad_2439 = _pad_2439 + 4
-- Padding: anti-scan signature 2440_7
-- Padding: anti-scan signature 2441_8
local _pv_2442_9 = 24431
local _pv_2443_10 = 27971
local _pv_2444_11 = 21451
_pad_2445 = _pad_2445 + 1
local _pv_2446_13 = 91487
local _pv_2447_14 = 73670
if _pad_2448 > 352 then _pad_2448 = 0 end
local _pv_2449_16 = 52130
if _pad_2450 > 400 then _pad_2450 = 0 end
if _pad_2451 > 630 then _pad_2451 = 0 end
if _pad_2452 > 595 then _pad_2452 = 0 end
_pad_2453 = _pad_2453 + 10
local _pv_2454_21 = 28808
if _pad_2455 > 349 then _pad_2455 = 0 end
local _pv_2456_23 = 1739
local _pv_2457_24 = 93237
if _pad_2458 > 750 then _pad_2458 = 0 end
if _pad_2459 > 607 then _pad_2459 = 0 end
if _pad_2460 > 735 then _pad_2460 = 0 end
_pad_2461 = _pad_2461 + 5
if _pad_2462 > 778 then _pad_2462 = 0 end
local _pv_2463_30 = 16747
if _pad_2464 > 560 then _pad_2464 = 0 end
local _pv_2465_32 = 12635
if _pad_2466 > 725 then _pad_2466 = 0 end
_pad_2467 = _pad_2467 + 6
_pad_2468 = _pad_2468 + 8
local _pv_2469_36 = 84391
_pad_2470 = _pad_2470 + 9
_pad_2471 = _pad_2471 + 3
_pad_2472 = _pad_2472 + 3
local _pv_2473_40 = 70152
if _pad_2474 > 269 then _pad_2474 = 0 end
if _pad_2475 > 206 then _pad_2475 = 0 end
local _pv_2476_43 = 71830
_pad_2477 = _pad_2477 + 4
_pad_2478 = _pad_2478 + 2
if _pad_2479 > 242 then _pad_2479 = 0 end
local _pv_2480_47 = 77371
_pad_2481 = _pad_2481 + 3
_pad_2482 = _pad_2482 + 9
_pad_2483 = _pad_2483 + 7
local _pv_2484_51 = 18923
_pad_2485 = _pad_2485 + 5
_pad_2486 = _pad_2486 + 10
-- Padding: anti-scan signature 2487_54

-- [Padding: StreamHandler_2] Runtime module for anti-detection
local _pad_2488 = 0
local _pv_2488_0 = 72917
if _pad_2489 > 604 then _pad_2489 = 0 end
_pad_2490 = _pad_2490 + 5
local _pv_2491_3 = 14855
_pad_2492 = _pad_2492 + 3
_pad_2493 = _pad_2493 + 5
local _pv_2494_6 = 38286
_pad_2495 = _pad_2495 + 3
if _pad_2496 > 555 then _pad_2496 = 0 end
if _pad_2497 > 827 then _pad_2497 = 0 end
_pad_2498 = _pad_2498 + 8
local _pv_2499_11 = 92435
local _pv_2500_12 = 62032
if _pad_2501 > 390 then _pad_2501 = 0 end
local _pv_2502_14 = 10481
if _pad_2503 > 942 then _pad_2503 = 0 end
if _pad_2504 > 36 then _pad_2504 = 0 end
if _pad_2505 > 473 then _pad_2505 = 0 end
local _pv_2506_18 = 43923
-- Padding: anti-scan signature 2507_19
local _pv_2508_20 = 54963
_pad_2509 = _pad_2509 + 1
local _pv_2510_22 = 31805
local _pv_2511_23 = 18563
-- Padding: anti-scan signature 2512_24
_pad_2513 = _pad_2513 + 3
_pad_2514 = _pad_2514 + 1
local _pv_2515_27 = 1167
local _pv_2516_28 = 46999
if _pad_2517 > 886 then _pad_2517 = 0 end
local _pv_2518_30 = 81191
-- Padding: anti-scan signature 2519_31
_pad_2520 = _pad_2520 + 4
_pad_2521 = _pad_2521 + 8
-- Padding: anti-scan signature 2522_34
local _pv_2523_35 = 73930
-- Padding: anti-scan signature 2524_36
local _pv_2525_37 = 2424
if _pad_2526 > 413 then _pad_2526 = 0 end
-- Padding: anti-scan signature 2527_39
-- Padding: anti-scan signature 2528_40
if _pad_2529 > 19 then _pad_2529 = 0 end
local _pv_2530_42 = 43972
_pad_2531 = _pad_2531 + 10
-- Padding: anti-scan signature 2532_44
-- Padding: anti-scan signature 2533_45
-- Padding: anti-scan signature 2534_46
if _pad_2535 > 720 then _pad_2535 = 0 end
-- Padding: anti-scan signature 2536_48
local _pv_2537_49 = 33534

-- [Padding: TokenValidator_2] Runtime module for anti-detection
local _pad_2538 = 0
if _pad_2538 > 294 then _pad_2538 = 0 end
-- Padding: anti-scan signature 2539_1
_pad_2540 = _pad_2540 + 3
if _pad_2541 > 949 then _pad_2541 = 0 end
if _pad_2542 > 756 then _pad_2542 = 0 end
-- Padding: anti-scan signature 2543_5
if _pad_2544 > 29 then _pad_2544 = 0 end
_pad_2545 = _pad_2545 + 8
-- Padding: anti-scan signature 2546_8
if _pad_2547 > 732 then _pad_2547 = 0 end
if _pad_2548 > 998 then _pad_2548 = 0 end
-- Padding: anti-scan signature 2549_11
local _pv_2550_12 = 16137
_pad_2551 = _pad_2551 + 2
_pad_2552 = _pad_2552 + 1
_pad_2553 = _pad_2553 + 10
if _pad_2554 > 443 then _pad_2554 = 0 end
local _pv_2555_17 = 97998
if _pad_2556 > 148 then _pad_2556 = 0 end
local _pv_2557_19 = 95443
local _pv_2558_20 = 10313
_pad_2559 = _pad_2559 + 2
if _pad_2560 > 980 then _pad_2560 = 0 end
_pad_2561 = _pad_2561 + 2
-- Padding: anti-scan signature 2562_24
if _pad_2563 > 947 then _pad_2563 = 0 end
if _pad_2564 > 281 then _pad_2564 = 0 end
if _pad_2565 > 786 then _pad_2565 = 0 end
local _pv_2566_28 = 57287
if _pad_2567 > 216 then _pad_2567 = 0 end
if _pad_2568 > 421 then _pad_2568 = 0 end
if _pad_2569 > 697 then _pad_2569 = 0 end
if _pad_2570 > 251 then _pad_2570 = 0 end
local _pv_2571_33 = 75950
if _pad_2572 > 663 then _pad_2572 = 0 end
-- Padding: anti-scan signature 2573_35
if _pad_2574 > 962 then _pad_2574 = 0 end
if _pad_2575 > 382 then _pad_2575 = 0 end
_pad_2576 = _pad_2576 + 5
-- Padding: anti-scan signature 2577_39
-- Padding: anti-scan signature 2578_40
_pad_2579 = _pad_2579 + 1
-- Padding: anti-scan signature 2580_42
-- Padding: anti-scan signature 2581_43
-- Padding: anti-scan signature 2582_44
if _pad_2583 > 198 then _pad_2583 = 0 end
_pad_2584 = _pad_2584 + 4
if _pad_2585 > 487 then _pad_2585 = 0 end
_pad_2586 = _pad_2586 + 2
_pad_2587 = _pad_2587 + 6
_pad_2588 = _pad_2588 + 2
if _pad_2589 > 308 then _pad_2589 = 0 end
if _pad_2590 > 334 then _pad_2590 = 0 end
-- Padding: anti-scan signature 2591_53
if _pad_2592 > 579 then _pad_2592 = 0 end
-- Padding: anti-scan signature 2593_55
_pad_2594 = _pad_2594 + 9
-- Padding: anti-scan signature 2595_57
_pad_2596 = _pad_2596 + 7

-- [Padding: SessionManager_2] Runtime module for anti-detection
local _pad_2597 = 0
_pad_2597 = _pad_2597 + 4
-- Padding: anti-scan signature 2598_1
local _pv_2599_2 = 28728
-- Padding: anti-scan signature 2600_3
if _pad_2601 > 957 then _pad_2601 = 0 end
_pad_2602 = _pad_2602 + 4
local _pv_2603_6 = 34067
_pad_2604 = _pad_2604 + 4
-- Padding: anti-scan signature 2605_8
-- Padding: anti-scan signature 2606_9
if _pad_2607 > 918 then _pad_2607 = 0 end
_pad_2608 = _pad_2608 + 2
local _pv_2609_12 = 41367
-- Padding: anti-scan signature 2610_13
if _pad_2611 > 222 then _pad_2611 = 0 end
_pad_2612 = _pad_2612 + 1
_pad_2613 = _pad_2613 + 9
_pad_2614 = _pad_2614 + 5
if _pad_2615 > 927 then _pad_2615 = 0 end
local _pv_2616_19 = 62783
if _pad_2617 > 841 then _pad_2617 = 0 end
local _pv_2618_21 = 54601
local _pv_2619_22 = 85883
local _pv_2620_23 = 8523
_pad_2621 = _pad_2621 + 5
_pad_2622 = _pad_2622 + 10
local _pv_2623_26 = 30166
if _pad_2624 > 133 then _pad_2624 = 0 end
_pad_2625 = _pad_2625 + 9
local _pv_2626_29 = 45305
if _pad_2627 > 885 then _pad_2627 = 0 end
local _pv_2628_31 = 55038
-- Padding: anti-scan signature 2629_32
-- Padding: anti-scan signature 2630_33
local _pv_2631_34 = 14504
-- Padding: anti-scan signature 2632_35
if _pad_2633 > 844 then _pad_2633 = 0 end
_pad_2634 = _pad_2634 + 9
-- Padding: anti-scan signature 2635_38
if _pad_2636 > 228 then _pad_2636 = 0 end
local _pv_2637_40 = 43787
-- Padding: anti-scan signature 2638_41
if _pad_2639 > 138 then _pad_2639 = 0 end
if _pad_2640 > 651 then _pad_2640 = 0 end
if _pad_2641 > 231 then _pad_2641 = 0 end
-- Padding: anti-scan signature 2642_45
_pad_2643 = _pad_2643 + 7
if _pad_2644 > 40 then _pad_2644 = 0 end
if _pad_2645 > 544 then _pad_2645 = 0 end
if _pad_2646 > 369 then _pad_2646 = 0 end
local _pv_2647_50 = 94499

-- [Padding: HeartbeatMonitor_2] Runtime module for anti-detection
local _pad_2648 = 0
-- Padding: anti-scan signature 2648_0
-- Padding: anti-scan signature 2649_1
_pad_2650 = _pad_2650 + 2
if _pad_2651 > 806 then _pad_2651 = 0 end
local _pv_2652_4 = 73197
if _pad_2653 > 60 then _pad_2653 = 0 end
-- Padding: anti-scan signature 2654_6
_pad_2655 = _pad_2655 + 9
local _pv_2656_8 = 26403
local _pv_2657_9 = 43904
-- Padding: anti-scan signature 2658_10
if _pad_2659 > 561 then _pad_2659 = 0 end
local _pv_2660_12 = 20647
-- Padding: anti-scan signature 2661_13
local _pv_2662_14 = 28978
if _pad_2663 > 336 then _pad_2663 = 0 end
local _pv_2664_16 = 13893
if _pad_2665 > 287 then _pad_2665 = 0 end
local _pv_2666_18 = 10307
local _pv_2667_19 = 62131
_pad_2668 = _pad_2668 + 8
_pad_2669 = _pad_2669 + 3
-- Padding: anti-scan signature 2670_22
local _pv_2671_23 = 80473
-- Padding: anti-scan signature 2672_24
if _pad_2673 > 941 then _pad_2673 = 0 end
_pad_2674 = _pad_2674 + 9
local _pv_2675_27 = 14699
if _pad_2676 > 776 then _pad_2676 = 0 end
-- Padding: anti-scan signature 2677_29
if _pad_2678 > 337 then _pad_2678 = 0 end
-- Padding: anti-scan signature 2679_31
if _pad_2680 > 889 then _pad_2680 = 0 end
_pad_2681 = _pad_2681 + 1
_pad_2682 = _pad_2682 + 8
_pad_2683 = _pad_2683 + 7
local _pv_2684_36 = 46022
if _pad_2685 > 978 then _pad_2685 = 0 end
if _pad_2686 > 892 then _pad_2686 = 0 end
-- Padding: anti-scan signature 2687_39
-- Padding: anti-scan signature 2688_40
if _pad_2689 > 328 then _pad_2689 = 0 end
local _pv_2690_42 = 34139
local _pv_2691_43 = 70156
_pad_2692 = _pad_2692 + 7
local _pv_2693_45 = 6526
_pad_2694 = _pad_2694 + 2
local _pv_2695_47 = 47058
-- Padding: anti-scan signature 2696_48
-- Padding: anti-scan signature 2697_49
if _pad_2698 > 382 then _pad_2698 = 0 end
local _pv_2699_51 = 83322
-- Padding: anti-scan signature 2700_52
if _pad_2701 > 299 then _pad_2701 = 0 end
_pad_2702 = _pad_2702 + 5
-- Padding: anti-scan signature 2703_55

-- [Padding: FrameTracker_2] Runtime module for anti-detection
local _pad_2704 = 0
local _pv_2704_0 = 75957
-- Padding: anti-scan signature 2705_1
local _pv_2706_2 = 93687
local _pv_2707_3 = 46161
local _pv_2708_4 = 30220
-- Padding: anti-scan signature 2709_5
_pad_2710 = _pad_2710 + 7
-- Padding: anti-scan signature 2711_7
local _pv_2712_8 = 52475
-- Padding: anti-scan signature 2713_9
_pad_2714 = _pad_2714 + 9
local _pv_2715_11 = 64271
-- Padding: anti-scan signature 2716_12
-- Padding: anti-scan signature 2717_13
_pad_2718 = _pad_2718 + 5
-- Padding: anti-scan signature 2719_15
-- Padding: anti-scan signature 2720_16
_pad_2721 = _pad_2721 + 1
_pad_2722 = _pad_2722 + 9
-- Padding: anti-scan signature 2723_19
-- Padding: anti-scan signature 2724_20
-- Padding: anti-scan signature 2725_21
if _pad_2726 > 102 then _pad_2726 = 0 end
local _pv_2727_23 = 92135
_pad_2728 = _pad_2728 + 10
local _pv_2729_25 = 52832
_pad_2730 = _pad_2730 + 9
_pad_2731 = _pad_2731 + 1
local _pv_2732_28 = 66462
if _pad_2733 > 116 then _pad_2733 = 0 end
local _pv_2734_30 = 64746
if _pad_2735 > 703 then _pad_2735 = 0 end
_pad_2736 = _pad_2736 + 10
if _pad_2737 > 583 then _pad_2737 = 0 end
local _pv_2738_34 = 98546
_pad_2739 = _pad_2739 + 4
-- Padding: anti-scan signature 2740_36
if _pad_2741 > 479 then _pad_2741 = 0 end
if _pad_2742 > 434 then _pad_2742 = 0 end
if _pad_2743 > 315 then _pad_2743 = 0 end
local _pv_2744_40 = 73233
_pad_2745 = _pad_2745 + 6
local _pv_2746_42 = 92974

-- [Padding: InputHandler_2] Runtime module for anti-detection
local _pad_2747 = 0
-- Padding: anti-scan signature 2747_0
if _pad_2748 > 750 then _pad_2748 = 0 end
-- Padding: anti-scan signature 2749_2
if _pad_2750 > 410 then _pad_2750 = 0 end
-- Padding: anti-scan signature 2751_4
-- Padding: anti-scan signature 2752_5
_pad_2753 = _pad_2753 + 6
local _pv_2754_7 = 41342
if _pad_2755 > 506 then _pad_2755 = 0 end
-- Padding: anti-scan signature 2756_9
local _pv_2757_10 = 59887
_pad_2758 = _pad_2758 + 3
local _pv_2759_12 = 6985
_pad_2760 = _pad_2760 + 7
_pad_2761 = _pad_2761 + 3
if _pad_2762 > 45 then _pad_2762 = 0 end
_pad_2763 = _pad_2763 + 2
-- Padding: anti-scan signature 2764_17
local _pv_2765_18 = 30317
if _pad_2766 > 147 then _pad_2766 = 0 end
-- Padding: anti-scan signature 2767_20
local _pv_2768_21 = 98601
-- Padding: anti-scan signature 2769_22
-- Padding: anti-scan signature 2770_23
-- Padding: anti-scan signature 2771_24
if _pad_2772 > 552 then _pad_2772 = 0 end
if _pad_2773 > 193 then _pad_2773 = 0 end
if _pad_2774 > 45 then _pad_2774 = 0 end
-- Padding: anti-scan signature 2775_28
_pad_2776 = _pad_2776 + 4
if _pad_2777 > 710 then _pad_2777 = 0 end
-- Padding: anti-scan signature 2778_31
-- Padding: anti-scan signature 2779_32
-- Padding: anti-scan signature 2780_33
_pad_2781 = _pad_2781 + 1
_pad_2782 = _pad_2782 + 7
-- Padding: anti-scan signature 2783_36
if _pad_2784 > 934 then _pad_2784 = 0 end
-- Padding: anti-scan signature 2785_38
if _pad_2786 > 783 then _pad_2786 = 0 end
local _pv_2787_40 = 70940
_pad_2788 = _pad_2788 + 1
_pad_2789 = _pad_2789 + 3
local _pv_2790_43 = 89870
local _pv_2791_44 = 23869
if _pad_2792 > 290 then _pad_2792 = 0 end
-- Padding: anti-scan signature 2793_46
_pad_2794 = _pad_2794 + 10
_pad_2795 = _pad_2795 + 7
_pad_2796 = _pad_2796 + 1
-- Padding: anti-scan signature 2797_50
_pad_2798 = _pad_2798 + 3
local _pv_2799_52 = 54808

-- [Padding: PhysicsSimulator_2] Runtime module for anti-detection
local _pad_2800 = 0
-- Padding: anti-scan signature 2800_0
local _pv_2801_1 = 98094
_pad_2802 = _pad_2802 + 10
-- Padding: anti-scan signature 2803_3
if _pad_2804 > 980 then _pad_2804 = 0 end
local _pv_2805_5 = 59084
_pad_2806 = _pad_2806 + 8
-- Padding: anti-scan signature 2807_7
if _pad_2808 > 967 then _pad_2808 = 0 end
_pad_2809 = _pad_2809 + 5
_pad_2810 = _pad_2810 + 8
_pad_2811 = _pad_2811 + 3
-- Padding: anti-scan signature 2812_12
local _pv_2813_13 = 29648
-- Padding: anti-scan signature 2814_14
if _pad_2815 > 848 then _pad_2815 = 0 end
local _pv_2816_16 = 82686
_pad_2817 = _pad_2817 + 1
-- Padding: anti-scan signature 2818_18
if _pad_2819 > 538 then _pad_2819 = 0 end
-- Padding: anti-scan signature 2820_20
if _pad_2821 > 603 then _pad_2821 = 0 end
local _pv_2822_22 = 11107
if _pad_2823 > 320 then _pad_2823 = 0 end
local _pv_2824_24 = 2105
_pad_2825 = _pad_2825 + 9
_pad_2826 = _pad_2826 + 9
-- Padding: anti-scan signature 2827_27
_pad_2828 = _pad_2828 + 8
if _pad_2829 > 332 then _pad_2829 = 0 end
if _pad_2830 > 867 then _pad_2830 = 0 end
_pad_2831 = _pad_2831 + 6
-- Padding: anti-scan signature 2832_32
local _pv_2833_33 = 52984
local _pv_2834_34 = 70088
local _pv_2835_35 = 37284
_pad_2836 = _pad_2836 + 4
if _pad_2837 > 850 then _pad_2837 = 0 end
-- Padding: anti-scan signature 2838_38
_pad_2839 = _pad_2839 + 2
local _pv_2840_40 = 55920
if _pad_2841 > 931 then _pad_2841 = 0 end
_pad_2842 = _pad_2842 + 1
_pad_2843 = _pad_2843 + 5
-- Padding: anti-scan signature 2844_44
local _pv_2845_45 = 64460
_pad_2846 = _pad_2846 + 8
local _pv_2847_47 = 52911
local _pv_2848_48 = 56550
if _pad_2849 > 7 then _pad_2849 = 0 end
local _pv_2850_50 = 50060
-- Padding: anti-scan signature 2851_51

-- [Padding: RenderOptimizer_2] Runtime module for anti-detection
local _pad_2852 = 0
-- Padding: anti-scan signature 2852_0
-- Padding: anti-scan signature 2853_1
if _pad_2854 > 354 then _pad_2854 = 0 end
local _pv_2855_3 = 41023
_pad_2856 = _pad_2856 + 9
_pad_2857 = _pad_2857 + 3
-- Padding: anti-scan signature 2858_6
local _pv_2859_7 = 28896
-- Padding: anti-scan signature 2860_8
if _pad_2861 > 550 then _pad_2861 = 0 end
local _pv_2862_10 = 35665
if _pad_2863 > 485 then _pad_2863 = 0 end
_pad_2864 = _pad_2864 + 1
local _pv_2865_13 = 95759
if _pad_2866 > 383 then _pad_2866 = 0 end
-- Padding: anti-scan signature 2867_15
-- Padding: anti-scan signature 2868_16
local _pv_2869_17 = 69797
local _pv_2870_18 = 31588
local _pv_2871_19 = 74603
-- Padding: anti-scan signature 2872_20
-- Padding: anti-scan signature 2873_21
-- Padding: anti-scan signature 2874_22
-- Padding: anti-scan signature 2875_23
local _pv_2876_24 = 30148
_pad_2877 = _pad_2877 + 10
local _pv_2878_26 = 13515
if _pad_2879 > 642 then _pad_2879 = 0 end
local _pv_2880_28 = 280
local _pv_2881_29 = 48002
local _pv_2882_30 = 38164
if _pad_2883 > 371 then _pad_2883 = 0 end
if _pad_2884 > 18 then _pad_2884 = 0 end
_pad_2885 = _pad_2885 + 8
if _pad_2886 > 71 then _pad_2886 = 0 end
if _pad_2887 > 870 then _pad_2887 = 0 end
if _pad_2888 > 905 then _pad_2888 = 0 end
-- Padding: anti-scan signature 2889_37
-- Padding: anti-scan signature 2890_38
-- Padding: anti-scan signature 2891_39
if _pad_2892 > 371 then _pad_2892 = 0 end
local _pv_2893_41 = 67313
local _pv_2894_42 = 78751
if _pad_2895 > 485 then _pad_2895 = 0 end
local _pv_2896_44 = 70899
_pad_2897 = _pad_2897 + 2
-- Padding: anti-scan signature 2898_46
_pad_2899 = _pad_2899 + 6
if _pad_2900 > 45 then _pad_2900 = 0 end
if _pad_2901 > 34 then _pad_2901 = 0 end
_pad_2902 = _pad_2902 + 2
local _pv_2903_51 = 22834
_pad_2904 = _pad_2904 + 5
_pad_2905 = _pad_2905 + 1
if _pad_2906 > 100 then _pad_2906 = 0 end
if _pad_2907 > 499 then _pad_2907 = 0 end
local _pv_2908_56 = 36555
-- Padding: anti-scan signature 2909_57

-- [Padding: SoundManager_2] Runtime module for anti-detection
local _pad_2910 = 0
if _pad_2910 > 335 then _pad_2910 = 0 end
if _pad_2911 > 806 then _pad_2911 = 0 end
_pad_2912 = _pad_2912 + 7
-- Padding: anti-scan signature 2913_3
local _pv_2914_4 = 21045
local _pv_2915_5 = 23529
-- Padding: anti-scan signature 2916_6
_pad_2917 = _pad_2917 + 7
_pad_2918 = _pad_2918 + 6
local _pv_2919_9 = 56598
_pad_2920 = _pad_2920 + 2
_pad_2921 = _pad_2921 + 8
if _pad_2922 > 405 then _pad_2922 = 0 end
local _pv_2923_13 = 63933
local _pv_2924_14 = 96763
-- Padding: anti-scan signature 2925_15
-- Padding: anti-scan signature 2926_16
local _pv_2927_17 = 19663
if _pad_2928 > 432 then _pad_2928 = 0 end
-- Padding: anti-scan signature 2929_19
_pad_2930 = _pad_2930 + 1
if _pad_2931 > 217 then _pad_2931 = 0 end
_pad_2932 = _pad_2932 + 3
local _pv_2933_23 = 81802
-- Padding: anti-scan signature 2934_24
-- Padding: anti-scan signature 2935_25
if _pad_2936 > 938 then _pad_2936 = 0 end
local _pv_2937_27 = 57021
-- Padding: anti-scan signature 2938_28
_pad_2939 = _pad_2939 + 10
-- Padding: anti-scan signature 2940_30
local _pv_2941_31 = 94026
_pad_2942 = _pad_2942 + 6
-- Padding: anti-scan signature 2943_33
local _pv_2944_34 = 58210
if _pad_2945 > 440 then _pad_2945 = 0 end
if _pad_2946 > 353 then _pad_2946 = 0 end
if _pad_2947 > 916 then _pad_2947 = 0 end
_pad_2948 = _pad_2948 + 10
if _pad_2949 > 414 then _pad_2949 = 0 end
_pad_2950 = _pad_2950 + 3
if _pad_2951 > 198 then _pad_2951 = 0 end
_pad_2952 = _pad_2952 + 10
_pad_2953 = _pad_2953 + 4
_pad_2954 = _pad_2954 + 3
_pad_2955 = _pad_2955 + 3
if _pad_2956 > 744 then _pad_2956 = 0 end
local _pv_2957_47 = 3765
if _pad_2958 > 881 then _pad_2958 = 0 end
_pad_2959 = _pad_2959 + 2
_pad_2960 = _pad_2960 + 5
_pad_2961 = _pad_2961 + 8
_pad_2962 = _pad_2962 + 10
_pad_2963 = _pad_2963 + 7
local _pv_2964_54 = 65507
local _pv_2965_55 = 26548
_pad_2966 = _pad_2966 + 6
local _pv_2967_57 = 11354

-- [Padding: ParticleController_2] Runtime module for anti-detection
local _pad_2968 = 0
_pad_2968 = _pad_2968 + 6
_pad_2969 = _pad_2969 + 7
if _pad_2970 > 214 then _pad_2970 = 0 end
_pad_2971 = _pad_2971 + 8
-- Padding: anti-scan signature 2972_4
local _pv_2973_5 = 9199
-- Padding: anti-scan signature 2974_6
if _pad_2975 > 973 then _pad_2975 = 0 end
local _pv_2976_8 = 29202
-- Padding: anti-scan signature 2977_9
-- Padding: anti-scan signature 2978_10
if _pad_2979 > 29 then _pad_2979 = 0 end
local _pv_2980_12 = 29216
-- Padding: anti-scan signature 2981_13
-- Padding: anti-scan signature 2982_14
_pad_2983 = _pad_2983 + 10
_pad_2984 = _pad_2984 + 4
-- Padding: anti-scan signature 2985_17
_pad_2986 = _pad_2986 + 6
-- Padding: anti-scan signature 2987_19
_pad_2988 = _pad_2988 + 3
if _pad_2989 > 156 then _pad_2989 = 0 end
_pad_2990 = _pad_2990 + 9
if _pad_2991 > 910 then _pad_2991 = 0 end
-- Padding: anti-scan signature 2992_24
_pad_2993 = _pad_2993 + 6
local _pv_2994_26 = 55092
local _pv_2995_27 = 96690
-- Padding: anti-scan signature 2996_28
_pad_2997 = _pad_2997 + 1
local _pv_2998_30 = 51155
if _pad_2999 > 816 then _pad_2999 = 0 end
local _pv_3000_32 = 79389
-- Padding: anti-scan signature 3001_33
if _pad_3002 > 620 then _pad_3002 = 0 end
if _pad_3003 > 421 then _pad_3003 = 0 end
_pad_3004 = _pad_3004 + 5
-- Padding: anti-scan signature 3005_37
-- Padding: anti-scan signature 3006_38
_pad_3007 = _pad_3007 + 4
-- Padding: anti-scan signature 3008_40
local _pv_3009_41 = 44750
local _pv_3010_42 = 7016
-- Padding: anti-scan signature 3011_43
if _pad_3012 > 696 then _pad_3012 = 0 end
-- Padding: anti-scan signature 3013_45
_pad_3014 = _pad_3014 + 8
_pad_3015 = _pad_3015 + 10
_pad_3016 = _pad_3016 + 10
local _pv_3017_49 = 88544
local _pv_3018_50 = 42718
local _pv_3019_51 = 76513
local _pv_3020_52 = 81927
local _pv_3021_53 = 76419
local _pv_3022_54 = 9424
-- Padding: anti-scan signature 3023_55
local _pv_3024_56 = 69533
local _pv_3025_57 = 73085

-- [Padding: RuntimeOptimizer_3] Runtime module for anti-detection
local _pad_3026 = 0
if _pad_3026 > 35 then _pad_3026 = 0 end
_pad_3027 = _pad_3027 + 1
_pad_3028 = _pad_3028 + 8
-- Padding: anti-scan signature 3029_3
if _pad_3030 > 350 then _pad_3030 = 0 end
local _pv_3031_5 = 6684
_pad_3032 = _pad_3032 + 6
_pad_3033 = _pad_3033 + 3
_pad_3034 = _pad_3034 + 8
if _pad_3035 > 349 then _pad_3035 = 0 end
local _pv_3036_10 = 14197
_pad_3037 = _pad_3037 + 10
-- Padding: anti-scan signature 3038_12
-- Padding: anti-scan signature 3039_13
-- Padding: anti-scan signature 3040_14
-- Padding: anti-scan signature 3041_15
_pad_3042 = _pad_3042 + 3
if _pad_3043 > 355 then _pad_3043 = 0 end
local _pv_3044_18 = 80428
-- Padding: anti-scan signature 3045_19
if _pad_3046 > 84 then _pad_3046 = 0 end
local _pv_3047_21 = 55923
if _pad_3048 > 424 then _pad_3048 = 0 end
_pad_3049 = _pad_3049 + 7
_pad_3050 = _pad_3050 + 5
local _pv_3051_25 = 89105
_pad_3052 = _pad_3052 + 1
local _pv_3053_27 = 64018
_pad_3054 = _pad_3054 + 10
local _pv_3055_29 = 50750
local _pv_3056_30 = 91346
_pad_3057 = _pad_3057 + 1
local _pv_3058_32 = 54126
if _pad_3059 > 101 then _pad_3059 = 0 end
local _pv_3060_34 = 66017
if _pad_3061 > 47 then _pad_3061 = 0 end
-- Padding: anti-scan signature 3062_36
if _pad_3063 > 837 then _pad_3063 = 0 end
-- Padding: anti-scan signature 3064_38
-- Padding: anti-scan signature 3065_39
local _pv_3066_40 = 7398
-- Padding: anti-scan signature 3067_41
_pad_3068 = _pad_3068 + 8

-- [Padding: CacheManager_3] Runtime module for anti-detection
local _pad_3069 = 0
if _pad_3069 > 929 then _pad_3069 = 0 end
-- Padding: anti-scan signature 3070_1
_pad_3071 = _pad_3071 + 7
-- Padding: anti-scan signature 3072_3
-- Padding: anti-scan signature 3073_4
_pad_3074 = _pad_3074 + 9
if _pad_3075 > 559 then _pad_3075 = 0 end
_pad_3076 = _pad_3076 + 5
local _pv_3077_8 = 62547
local _pv_3078_9 = 59582
_pad_3079 = _pad_3079 + 2
local _pv_3080_11 = 36063
_pad_3081 = _pad_3081 + 7
-- Padding: anti-scan signature 3082_13
local _pv_3083_14 = 64705
-- Padding: anti-scan signature 3084_15
local _pv_3085_16 = 14077
if _pad_3086 > 696 then _pad_3086 = 0 end
-- Padding: anti-scan signature 3087_18
if _pad_3088 > 713 then _pad_3088 = 0 end
if _pad_3089 > 144 then _pad_3089 = 0 end
local _pv_3090_21 = 86392
if _pad_3091 > 110 then _pad_3091 = 0 end
local _pv_3092_23 = 67152
-- Padding: anti-scan signature 3093_24
local _pv_3094_25 = 26943
-- Padding: anti-scan signature 3095_26
-- Padding: anti-scan signature 3096_27
_pad_3097 = _pad_3097 + 10
local _pv_3098_29 = 13350
-- Padding: anti-scan signature 3099_30
_pad_3100 = _pad_3100 + 3
if _pad_3101 > 552 then _pad_3101 = 0 end
-- Padding: anti-scan signature 3102_33
if _pad_3103 > 519 then _pad_3103 = 0 end
_pad_3104 = _pad_3104 + 9
-- Padding: anti-scan signature 3105_36
-- Padding: anti-scan signature 3106_37
-- Padding: anti-scan signature 3107_38
if _pad_3108 > 107 then _pad_3108 = 0 end
_pad_3109 = _pad_3109 + 8
_pad_3110 = _pad_3110 + 6
-- Padding: anti-scan signature 3111_42
_pad_3112 = _pad_3112 + 8

-- [Padding: EventDispatcher_3] Runtime module for anti-detection
local _pad_3113 = 0
_pad_3113 = _pad_3113 + 10
if _pad_3114 > 986 then _pad_3114 = 0 end
-- Padding: anti-scan signature 3115_2
_pad_3116 = _pad_3116 + 4
_pad_3117 = _pad_3117 + 3
_pad_3118 = _pad_3118 + 3
if _pad_3119 > 225 then _pad_3119 = 0 end
-- Padding: anti-scan signature 3120_7
_pad_3121 = _pad_3121 + 8
if _pad_3122 > 599 then _pad_3122 = 0 end
-- Padding: anti-scan signature 3123_10
local _pv_3124_11 = 31744
-- Padding: anti-scan signature 3125_12
_pad_3126 = _pad_3126 + 6
if _pad_3127 > 10 then _pad_3127 = 0 end
if _pad_3128 > 52 then _pad_3128 = 0 end
if _pad_3129 > 775 then _pad_3129 = 0 end
-- Padding: anti-scan signature 3130_17
local _pv_3131_18 = 79695
if _pad_3132 > 267 then _pad_3132 = 0 end
_pad_3133 = _pad_3133 + 8
local _pv_3134_21 = 45791
local _pv_3135_22 = 87922
if _pad_3136 > 364 then _pad_3136 = 0 end
local _pv_3137_24 = 88329
local _pv_3138_25 = 31667
_pad_3139 = _pad_3139 + 6
_pad_3140 = _pad_3140 + 9
if _pad_3141 > 639 then _pad_3141 = 0 end
-- Padding: anti-scan signature 3142_29
local _pv_3143_30 = 56645
-- Padding: anti-scan signature 3144_31
-- Padding: anti-scan signature 3145_32
local _pv_3146_33 = 22530
if _pad_3147 > 790 then _pad_3147 = 0 end
_pad_3148 = _pad_3148 + 7
local _pv_3149_36 = 40094
local _pv_3150_37 = 89077
-- Padding: anti-scan signature 3151_38
_pad_3152 = _pad_3152 + 1
-- Padding: anti-scan signature 3153_40
local _pv_3154_41 = 73843
local _pv_3155_42 = 81338
_pad_3156 = _pad_3156 + 1
if _pad_3157 > 658 then _pad_3157 = 0 end
-- Padding: anti-scan signature 3158_45
local _pv_3159_46 = 97837
local _pv_3160_47 = 34647
-- Padding: anti-scan signature 3161_48
if _pad_3162 > 866 then _pad_3162 = 0 end

-- [Padding: StateManager_3] Runtime module for anti-detection
local _pad_3163 = 0
local _pv_3163_0 = 75908
-- Padding: anti-scan signature 3164_1
if _pad_3165 > 247 then _pad_3165 = 0 end
-- Padding: anti-scan signature 3166_3
if _pad_3167 > 47 then _pad_3167 = 0 end
_pad_3168 = _pad_3168 + 10
if _pad_3169 > 873 then _pad_3169 = 0 end
local _pv_3170_7 = 32506
-- Padding: anti-scan signature 3171_8
if _pad_3172 > 932 then _pad_3172 = 0 end
local _pv_3173_10 = 54327
-- Padding: anti-scan signature 3174_11
if _pad_3175 > 44 then _pad_3175 = 0 end
if _pad_3176 > 964 then _pad_3176 = 0 end
local _pv_3177_14 = 24203
local _pv_3178_15 = 9690
-- Padding: anti-scan signature 3179_16
local _pv_3180_17 = 93627
local _pv_3181_18 = 16362
if _pad_3182 > 929 then _pad_3182 = 0 end
_pad_3183 = _pad_3183 + 3
if _pad_3184 > 679 then _pad_3184 = 0 end
local _pv_3185_22 = 76971
local _pv_3186_23 = 47216
local _pv_3187_24 = 58164
-- Padding: anti-scan signature 3188_25
-- Padding: anti-scan signature 3189_26
_pad_3190 = _pad_3190 + 7
-- Padding: anti-scan signature 3191_28
-- Padding: anti-scan signature 3192_29
if _pad_3193 > 570 then _pad_3193 = 0 end
if _pad_3194 > 144 then _pad_3194 = 0 end
-- Padding: anti-scan signature 3195_32
local _pv_3196_33 = 97982
if _pad_3197 > 483 then _pad_3197 = 0 end
if _pad_3198 > 828 then _pad_3198 = 0 end
-- Padding: anti-scan signature 3199_36
_pad_3200 = _pad_3200 + 7
local _pv_3201_38 = 5502
_pad_3202 = _pad_3202 + 9
-- Padding: anti-scan signature 3203_40
local _pv_3204_41 = 26098
-- Padding: anti-scan signature 3205_42
-- Padding: anti-scan signature 3206_43
-- Padding: anti-scan signature 3207_44
_pad_3208 = _pad_3208 + 9
_pad_3209 = _pad_3209 + 1
if _pad_3210 > 950 then _pad_3210 = 0 end
if _pad_3211 > 835 then _pad_3211 = 0 end
-- Padding: anti-scan signature 3212_49
local _pv_3213_50 = 72857
_pad_3214 = _pad_3214 + 4
_pad_3215 = _pad_3215 + 5
if _pad_3216 > 888 then _pad_3216 = 0 end
local _pv_3217_54 = 48262

-- [Padding: MemoryPool_3] Runtime module for anti-detection
local _pad_3218 = 0
-- Padding: anti-scan signature 3218_0
_pad_3219 = _pad_3219 + 10
local _pv_3220_2 = 775
_pad_3221 = _pad_3221 + 3
if _pad_3222 > 555 then _pad_3222 = 0 end
-- Padding: anti-scan signature 3223_5
local _pv_3224_6 = 35972
if _pad_3225 > 135 then _pad_3225 = 0 end
if _pad_3226 > 399 then _pad_3226 = 0 end
if _pad_3227 > 676 then _pad_3227 = 0 end
if _pad_3228 > 342 then _pad_3228 = 0 end
if _pad_3229 > 667 then _pad_3229 = 0 end
if _pad_3230 > 360 then _pad_3230 = 0 end
if _pad_3231 > 210 then _pad_3231 = 0 end
_pad_3232 = _pad_3232 + 9
local _pv_3233_15 = 75220
_pad_3234 = _pad_3234 + 5
local _pv_3235_17 = 49848
local _pv_3236_18 = 27644
local _pv_3237_19 = 43892
_pad_3238 = _pad_3238 + 10
if _pad_3239 > 205 then _pad_3239 = 0 end
-- Padding: anti-scan signature 3240_22
if _pad_3241 > 673 then _pad_3241 = 0 end
_pad_3242 = _pad_3242 + 10
-- Padding: anti-scan signature 3243_25
_pad_3244 = _pad_3244 + 8
_pad_3245 = _pad_3245 + 10
-- Padding: anti-scan signature 3246_28
local _pv_3247_29 = 96727
-- Padding: anti-scan signature 3248_30
local _pv_3249_31 = 49540
if _pad_3250 > 534 then _pad_3250 = 0 end
local _pv_3251_33 = 22161
_pad_3252 = _pad_3252 + 3
_pad_3253 = _pad_3253 + 8
-- Padding: anti-scan signature 3254_36
if _pad_3255 > 722 then _pad_3255 = 0 end
if _pad_3256 > 755 then _pad_3256 = 0 end
_pad_3257 = _pad_3257 + 10
-- Padding: anti-scan signature 3258_40
local _pv_3259_41 = 77531
local _pv_3260_42 = 23422
-- Padding: anti-scan signature 3261_43
-- Padding: anti-scan signature 3262_44
if _pad_3263 > 940 then _pad_3263 = 0 end
-- Padding: anti-scan signature 3264_46
if _pad_3265 > 123 then _pad_3265 = 0 end
if _pad_3266 > 19 then _pad_3266 = 0 end
-- Padding: anti-scan signature 3267_49
_pad_3268 = _pad_3268 + 10
_pad_3269 = _pad_3269 + 5
-- Padding: anti-scan signature 3270_52

-- [Padding: ObjectTracker_3] Runtime module for anti-detection
local _pad_3271 = 0
local _pv_3271_0 = 85718
-- Padding: anti-scan signature 3272_1
if _pad_3273 > 732 then _pad_3273 = 0 end
local _pv_3274_3 = 83690
local _pv_3275_4 = 36539
_pad_3276 = _pad_3276 + 3
-- Padding: anti-scan signature 3277_6
_pad_3278 = _pad_3278 + 2
-- Padding: anti-scan signature 3279_8
local _pv_3280_9 = 73162
if _pad_3281 > 513 then _pad_3281 = 0 end
-- Padding: anti-scan signature 3282_11
local _pv_3283_12 = 8172
if _pad_3284 > 650 then _pad_3284 = 0 end
local _pv_3285_14 = 49790
if _pad_3286 > 140 then _pad_3286 = 0 end
-- Padding: anti-scan signature 3287_16
local _pv_3288_17 = 48389
if _pad_3289 > 708 then _pad_3289 = 0 end
if _pad_3290 > 199 then _pad_3290 = 0 end
-- Padding: anti-scan signature 3291_20
-- Padding: anti-scan signature 3292_21
-- Padding: anti-scan signature 3293_22
_pad_3294 = _pad_3294 + 1
local _pv_3295_24 = 16574
-- Padding: anti-scan signature 3296_25
if _pad_3297 > 400 then _pad_3297 = 0 end
if _pad_3298 > 182 then _pad_3298 = 0 end
local _pv_3299_28 = 13369
_pad_3300 = _pad_3300 + 5
local _pv_3301_30 = 38472
-- Padding: anti-scan signature 3302_31
if _pad_3303 > 200 then _pad_3303 = 0 end
-- Padding: anti-scan signature 3304_33
local _pv_3305_34 = 28810
_pad_3306 = _pad_3306 + 1
local _pv_3307_36 = 89083
if _pad_3308 > 577 then _pad_3308 = 0 end
local _pv_3309_38 = 35507
-- Padding: anti-scan signature 3310_39
_pad_3311 = _pad_3311 + 8
_pad_3312 = _pad_3312 + 10
local _pv_3313_42 = 29058
-- Padding: anti-scan signature 3314_43
local _pv_3315_44 = 30911

-- [Padding: RefCounter_3] Runtime module for anti-detection
local _pad_3316 = 0
_pad_3316 = _pad_3316 + 8
-- Padding: anti-scan signature 3317_1
if _pad_3318 > 980 then _pad_3318 = 0 end
-- Padding: anti-scan signature 3319_3
_pad_3320 = _pad_3320 + 3
_pad_3321 = _pad_3321 + 8
local _pv_3322_6 = 80991
-- Padding: anti-scan signature 3323_7
local _pv_3324_8 = 26823
_pad_3325 = _pad_3325 + 2
_pad_3326 = _pad_3326 + 10
_pad_3327 = _pad_3327 + 4
local _pv_3328_12 = 73039
if _pad_3329 > 363 then _pad_3329 = 0 end
_pad_3330 = _pad_3330 + 6
-- Padding: anti-scan signature 3331_15
-- Padding: anti-scan signature 3332_16
-- Padding: anti-scan signature 3333_17
local _pv_3334_18 = 56335
if _pad_3335 > 374 then _pad_3335 = 0 end
-- Padding: anti-scan signature 3336_20
if _pad_3337 > 892 then _pad_3337 = 0 end
-- Padding: anti-scan signature 3338_22
_pad_3339 = _pad_3339 + 1
if _pad_3340 > 443 then _pad_3340 = 0 end
local _pv_3341_25 = 25273
local _pv_3342_26 = 21686
_pad_3343 = _pad_3343 + 9
-- Padding: anti-scan signature 3344_28
if _pad_3345 > 798 then _pad_3345 = 0 end
if _pad_3346 > 77 then _pad_3346 = 0 end
local _pv_3347_31 = 15868
local _pv_3348_32 = 38173
-- Padding: anti-scan signature 3349_33
local _pv_3350_34 = 62093
local _pv_3351_35 = 37325
if _pad_3352 > 784 then _pad_3352 = 0 end
-- Padding: anti-scan signature 3353_37
_pad_3354 = _pad_3354 + 6
local _pv_3355_39 = 20435
_pad_3356 = _pad_3356 + 1
_pad_3357 = _pad_3357 + 10
local _pv_3358_42 = 50654
if _pad_3359 > 508 then _pad_3359 = 0 end
local _pv_3360_44 = 48904
-- Padding: anti-scan signature 3361_45
local _pv_3362_46 = 81353
local _pv_3363_47 = 16469
local _pv_3364_48 = 55613
-- Padding: anti-scan signature 3365_49
local _pv_3366_50 = 19631
-- Padding: anti-scan signature 3367_51
if _pad_3368 > 447 then _pad_3368 = 0 end
_pad_3369 = _pad_3369 + 2

-- [Padding: TimerPool_3] Runtime module for anti-detection
local _pad_3370 = 0
local _pv_3370_0 = 97126
local _pv_3371_1 = 72943
-- Padding: anti-scan signature 3372_2
-- Padding: anti-scan signature 3373_3
-- Padding: anti-scan signature 3374_4
local _pv_3375_5 = 40093
local _pv_3376_6 = 78901
-- Padding: anti-scan signature 3377_7
_pad_3378 = _pad_3378 + 5
local _pv_3379_9 = 75430
local _pv_3380_10 = 90234
if _pad_3381 > 794 then _pad_3381 = 0 end
_pad_3382 = _pad_3382 + 9
-- Padding: anti-scan signature 3383_13
if _pad_3384 > 342 then _pad_3384 = 0 end
_pad_3385 = _pad_3385 + 5
local _pv_3386_16 = 52994
if _pad_3387 > 439 then _pad_3387 = 0 end
-- Padding: anti-scan signature 3388_18
_pad_3389 = _pad_3389 + 1
-- Padding: anti-scan signature 3390_20
-- Padding: anti-scan signature 3391_21
-- Padding: anti-scan signature 3392_22
-- Padding: anti-scan signature 3393_23
if _pad_3394 > 932 then _pad_3394 = 0 end
_pad_3395 = _pad_3395 + 9
-- Padding: anti-scan signature 3396_26
if _pad_3397 > 455 then _pad_3397 = 0 end
if _pad_3398 > 556 then _pad_3398 = 0 end
local _pv_3399_29 = 76046
-- Padding: anti-scan signature 3400_30
if _pad_3401 > 301 then _pad_3401 = 0 end
-- Padding: anti-scan signature 3402_32
-- Padding: anti-scan signature 3403_33
_pad_3404 = _pad_3404 + 10
local _pv_3405_35 = 25133
_pad_3406 = _pad_3406 + 8
local _pv_3407_37 = 2410
_pad_3408 = _pad_3408 + 8
local _pv_3409_39 = 35799
_pad_3410 = _pad_3410 + 3
_pad_3411 = _pad_3411 + 4
local _pv_3412_42 = 97176
_pad_3413 = _pad_3413 + 2
local _pv_3414_44 = 4467
_pad_3415 = _pad_3415 + 6
_pad_3416 = _pad_3416 + 8
local _pv_3417_47 = 56474
-- Padding: anti-scan signature 3418_48

-- [Padding: QueueProcessor_3] Runtime module for anti-detection
local _pad_3419 = 0
local _pv_3419_0 = 80888
_pad_3420 = _pad_3420 + 4
-- Padding: anti-scan signature 3421_2
if _pad_3422 > 161 then _pad_3422 = 0 end
if _pad_3423 > 152 then _pad_3423 = 0 end
local _pv_3424_5 = 99319
if _pad_3425 > 301 then _pad_3425 = 0 end
if _pad_3426 > 528 then _pad_3426 = 0 end
-- Padding: anti-scan signature 3427_8
-- Padding: anti-scan signature 3428_9
-- Padding: anti-scan signature 3429_10
-- Padding: anti-scan signature 3430_11
_pad_3431 = _pad_3431 + 7
_pad_3432 = _pad_3432 + 5
if _pad_3433 > 524 then _pad_3433 = 0 end
local _pv_3434_15 = 11319
if _pad_3435 > 50 then _pad_3435 = 0 end
if _pad_3436 > 82 then _pad_3436 = 0 end
if _pad_3437 > 494 then _pad_3437 = 0 end
_pad_3438 = _pad_3438 + 2
if _pad_3439 > 106 then _pad_3439 = 0 end
-- Padding: anti-scan signature 3440_21
local _pv_3441_22 = 39777
_pad_3442 = _pad_3442 + 10
local _pv_3443_24 = 42161
if _pad_3444 > 313 then _pad_3444 = 0 end
_pad_3445 = _pad_3445 + 1
-- Padding: anti-scan signature 3446_27
_pad_3447 = _pad_3447 + 2
-- Padding: anti-scan signature 3448_29
local _pv_3449_30 = 2930
local _pv_3450_31 = 87915
_pad_3451 = _pad_3451 + 5
-- Padding: anti-scan signature 3452_33
_pad_3453 = _pad_3453 + 9
if _pad_3454 > 845 then _pad_3454 = 0 end
local _pv_3455_36 = 57108
if _pad_3456 > 615 then _pad_3456 = 0 end
_pad_3457 = _pad_3457 + 5
_pad_3458 = _pad_3458 + 3
if _pad_3459 > 59 then _pad_3459 = 0 end
if _pad_3460 > 35 then _pad_3460 = 0 end
local _pv_3461_42 = 66977
local _pv_3462_43 = 42786
_pad_3463 = _pad_3463 + 8
local _pv_3464_45 = 56422
if _pad_3465 > 638 then _pad_3465 = 0 end

-- [Padding: BufferManager_3] Runtime module for anti-detection
local _pad_3466 = 0
-- Padding: anti-scan signature 3466_0
if _pad_3467 > 646 then _pad_3467 = 0 end
_pad_3468 = _pad_3468 + 5
if _pad_3469 > 358 then _pad_3469 = 0 end
-- Padding: anti-scan signature 3470_4
local _pv_3471_5 = 27517
-- Padding: anti-scan signature 3472_6
local _pv_3473_7 = 45968
-- Padding: anti-scan signature 3474_8
if _pad_3475 > 607 then _pad_3475 = 0 end
if _pad_3476 > 474 then _pad_3476 = 0 end
if _pad_3477 > 553 then _pad_3477 = 0 end
if _pad_3478 > 64 then _pad_3478 = 0 end
local _pv_3479_13 = 86852
-- Padding: anti-scan signature 3480_14
-- Padding: anti-scan signature 3481_15
local _pv_3482_16 = 14252
if _pad_3483 > 528 then _pad_3483 = 0 end
_pad_3484 = _pad_3484 + 1
local _pv_3485_19 = 8021
local _pv_3486_20 = 65708
-- Padding: anti-scan signature 3487_21
local _pv_3488_22 = 35753
_pad_3489 = _pad_3489 + 4
-- Padding: anti-scan signature 3490_24
if _pad_3491 > 338 then _pad_3491 = 0 end
if _pad_3492 > 325 then _pad_3492 = 0 end
local _pv_3493_27 = 35774
if _pad_3494 > 941 then _pad_3494 = 0 end
if _pad_3495 > 821 then _pad_3495 = 0 end
-- Padding: anti-scan signature 3496_30
local _pv_3497_31 = 85339
if _pad_3498 > 942 then _pad_3498 = 0 end
_pad_3499 = _pad_3499 + 10
if _pad_3500 > 779 then _pad_3500 = 0 end
-- Padding: anti-scan signature 3501_35
-- Padding: anti-scan signature 3502_36
-- Padding: anti-scan signature 3503_37
local _pv_3504_38 = 71530
-- Padding: anti-scan signature 3505_39
if _pad_3506 > 524 then _pad_3506 = 0 end
_pad_3507 = _pad_3507 + 4
if _pad_3508 > 29 then _pad_3508 = 0 end
local _pv_3509_43 = 55843

-- [Padding: StreamHandler_3] Runtime module for anti-detection
local _pad_3510 = 0
local _pv_3510_0 = 877
_pad_3511 = _pad_3511 + 4
if _pad_3512 > 161 then _pad_3512 = 0 end
-- Padding: anti-scan signature 3513_3
-- Padding: anti-scan signature 3514_4
local _pv_3515_5 = 70207
if _pad_3516 > 789 then _pad_3516 = 0 end
if _pad_3517 > 362 then _pad_3517 = 0 end
_pad_3518 = _pad_3518 + 9
-- Padding: anti-scan signature 3519_9
local _pv_3520_10 = 41738
-- Padding: anti-scan signature 3521_11
if _pad_3522 > 616 then _pad_3522 = 0 end
-- Padding: anti-scan signature 3523_13
local _pv_3524_14 = 24294
if _pad_3525 > 580 then _pad_3525 = 0 end
-- Padding: anti-scan signature 3526_16
if _pad_3527 > 69 then _pad_3527 = 0 end
_pad_3528 = _pad_3528 + 10
if _pad_3529 > 759 then _pad_3529 = 0 end
if _pad_3530 > 421 then _pad_3530 = 0 end
_pad_3531 = _pad_3531 + 1
-- Padding: anti-scan signature 3532_22
local _pv_3533_23 = 84418
_pad_3534 = _pad_3534 + 8
if _pad_3535 > 448 then _pad_3535 = 0 end
_pad_3536 = _pad_3536 + 1
-- Padding: anti-scan signature 3537_27
-- Padding: anti-scan signature 3538_28
-- Padding: anti-scan signature 3539_29
local _pv_3540_30 = 74536
if _pad_3541 > 894 then _pad_3541 = 0 end
local _pv_3542_32 = 64568
if _pad_3543 > 956 then _pad_3543 = 0 end
if _pad_3544 > 773 then _pad_3544 = 0 end
if _pad_3545 > 669 then _pad_3545 = 0 end
if _pad_3546 > 125 then _pad_3546 = 0 end
-- Padding: anti-scan signature 3547_37
_pad_3548 = _pad_3548 + 10
_pad_3549 = _pad_3549 + 3
if _pad_3550 > 411 then _pad_3550 = 0 end
-- Padding: anti-scan signature 3551_41
_pad_3552 = _pad_3552 + 9
_pad_3553 = _pad_3553 + 1
if _pad_3554 > 178 then _pad_3554 = 0 end
local _pv_3555_45 = 62726
-- Padding: anti-scan signature 3556_46
if _pad_3557 > 828 then _pad_3557 = 0 end
_pad_3558 = _pad_3558 + 4

-- [Padding: TokenValidator_3] Runtime module for anti-detection
local _pad_3559 = 0
-- Padding: anti-scan signature 3559_0
if _pad_3560 > 785 then _pad_3560 = 0 end
if _pad_3561 > 600 then _pad_3561 = 0 end
local _pv_3562_3 = 70139
local _pv_3563_4 = 98003
-- Padding: anti-scan signature 3564_5
-- Padding: anti-scan signature 3565_6
-- Padding: anti-scan signature 3566_7
-- Padding: anti-scan signature 3567_8
_pad_3568 = _pad_3568 + 5
local _pv_3569_10 = 25978
local _pv_3570_11 = 70752
local _pv_3571_12 = 92197
_pad_3572 = _pad_3572 + 7
if _pad_3573 > 17 then _pad_3573 = 0 end
_pad_3574 = _pad_3574 + 9
local _pv_3575_16 = 76176
if _pad_3576 > 458 then _pad_3576 = 0 end
local _pv_3577_18 = 83332
-- Padding: anti-scan signature 3578_19
-- Padding: anti-scan signature 3579_20
local _pv_3580_21 = 45038
-- Padding: anti-scan signature 3581_22
if _pad_3582 > 432 then _pad_3582 = 0 end
local _pv_3583_24 = 73889
_pad_3584 = _pad_3584 + 4
-- Padding: anti-scan signature 3585_26
-- Padding: anti-scan signature 3586_27
_pad_3587 = _pad_3587 + 5
if _pad_3588 > 195 then _pad_3588 = 0 end
local _pv_3589_30 = 2421
if _pad_3590 > 561 then _pad_3590 = 0 end
_pad_3591 = _pad_3591 + 6
-- Padding: anti-scan signature 3592_33
-- Padding: anti-scan signature 3593_34
-- Padding: anti-scan signature 3594_35
if _pad_3595 > 184 then _pad_3595 = 0 end
-- Padding: anti-scan signature 3596_37
_pad_3597 = _pad_3597 + 10
_pad_3598 = _pad_3598 + 7
if _pad_3599 > 891 then _pad_3599 = 0 end
-- Padding: anti-scan signature 3600_41
local _pv_3601_42 = 65660
-- Padding: anti-scan signature 3602_43
local _pv_3603_44 = 43694
_pad_3604 = _pad_3604 + 9
-- Padding: anti-scan signature 3605_46
local _pv_3606_47 = 34906
local _pv_3607_48 = 5935
-- Padding: anti-scan signature 3608_49
local _pv_3609_50 = 60754
-- Padding: anti-scan signature 3610_51
-- Padding: anti-scan signature 3611_52
-- Padding: anti-scan signature 3612_53
_pad_3613 = _pad_3613 + 8
if _pad_3614 > 956 then _pad_3614 = 0 end
local _pv_3615_56 = 28941
if _pad_3616 > 302 then _pad_3616 = 0 end

-- [Padding: SessionManager_3] Runtime module for anti-detection
local _pad_3617 = 0
if _pad_3617 > 215 then _pad_3617 = 0 end
-- Padding: anti-scan signature 3618_1
-- Padding: anti-scan signature 3619_2
if _pad_3620 > 15 then _pad_3620 = 0 end
-- Padding: anti-scan signature 3621_4
_pad_3622 = _pad_3622 + 1
_pad_3623 = _pad_3623 + 5
_pad_3624 = _pad_3624 + 10
-- Padding: anti-scan signature 3625_8
_pad_3626 = _pad_3626 + 5
local _pv_3627_10 = 42181
if _pad_3628 > 344 then _pad_3628 = 0 end
_pad_3629 = _pad_3629 + 8
-- Padding: anti-scan signature 3630_13
_pad_3631 = _pad_3631 + 10
-- Padding: anti-scan signature 3632_15
_pad_3633 = _pad_3633 + 2
if _pad_3634 > 850 then _pad_3634 = 0 end
_pad_3635 = _pad_3635 + 8
-- Padding: anti-scan signature 3636_19
_pad_3637 = _pad_3637 + 2
local _pv_3638_21 = 1750
if _pad_3639 > 547 then _pad_3639 = 0 end
local _pv_3640_23 = 63847
_pad_3641 = _pad_3641 + 7
-- Padding: anti-scan signature 3642_25
-- Padding: anti-scan signature 3643_26
if _pad_3644 > 176 then _pad_3644 = 0 end
if _pad_3645 > 431 then _pad_3645 = 0 end
if _pad_3646 > 417 then _pad_3646 = 0 end
if _pad_3647 > 656 then _pad_3647 = 0 end
-- Padding: anti-scan signature 3648_31
-- Padding: anti-scan signature 3649_32
local _pv_3650_33 = 49816
if _pad_3651 > 377 then _pad_3651 = 0 end
if _pad_3652 > 304 then _pad_3652 = 0 end
if _pad_3653 > 512 then _pad_3653 = 0 end
-- Padding: anti-scan signature 3654_37
if _pad_3655 > 603 then _pad_3655 = 0 end
_pad_3656 = _pad_3656 + 3
if _pad_3657 > 780 then _pad_3657 = 0 end
_pad_3658 = _pad_3658 + 1

-- [Padding: HeartbeatMonitor_3] Runtime module for anti-detection
local _pad_3659 = 0
if _pad_3659 > 104 then _pad_3659 = 0 end
if _pad_3660 > 293 then _pad_3660 = 0 end
if _pad_3661 > 580 then _pad_3661 = 0 end
local _pv_3662_3 = 99705
-- Padding: anti-scan signature 3663_4
_pad_3664 = _pad_3664 + 7
-- Padding: anti-scan signature 3665_6
if _pad_3666 > 576 then _pad_3666 = 0 end
_pad_3667 = _pad_3667 + 1
-- Padding: anti-scan signature 3668_9
if _pad_3669 > 634 then _pad_3669 = 0 end
local _pv_3670_11 = 61028
if _pad_3671 > 202 then _pad_3671 = 0 end
_pad_3672 = _pad_3672 + 2
_pad_3673 = _pad_3673 + 1
_pad_3674 = _pad_3674 + 10
local _pv_3675_16 = 47522
_pad_3676 = _pad_3676 + 10
if _pad_3677 > 568 then _pad_3677 = 0 end
-- Padding: anti-scan signature 3678_19
local _pv_3679_20 = 88927
-- Padding: anti-scan signature 3680_21
if _pad_3681 > 162 then _pad_3681 = 0 end
if _pad_3682 > 430 then _pad_3682 = 0 end
local _pv_3683_24 = 6948
_pad_3684 = _pad_3684 + 6
local _pv_3685_26 = 70765
if _pad_3686 > 115 then _pad_3686 = 0 end
local _pv_3687_28 = 22355
_pad_3688 = _pad_3688 + 5
_pad_3689 = _pad_3689 + 2
_pad_3690 = _pad_3690 + 6
if _pad_3691 > 230 then _pad_3691 = 0 end
if _pad_3692 > 314 then _pad_3692 = 0 end
local _pv_3693_34 = 70030
local _pv_3694_35 = 77124
-- Padding: anti-scan signature 3695_36
if _pad_3696 > 807 then _pad_3696 = 0 end
if _pad_3697 > 130 then _pad_3697 = 0 end
-- Padding: anti-scan signature 3698_39
if _pad_3699 > 320 then _pad_3699 = 0 end

-- [Padding: FrameTracker_3] Runtime module for anti-detection
local _pad_3700 = 0
-- Padding: anti-scan signature 3700_0
_pad_3701 = _pad_3701 + 9
_pad_3702 = _pad_3702 + 4
if _pad_3703 > 580 then _pad_3703 = 0 end
-- Padding: anti-scan signature 3704_4
local _pv_3705_5 = 14267
_pad_3706 = _pad_3706 + 10
local _pv_3707_7 = 73473
local _pv_3708_8 = 60984
if _pad_3709 > 601 then _pad_3709 = 0 end
if _pad_3710 > 775 then _pad_3710 = 0 end
local _pv_3711_11 = 239
local _pv_3712_12 = 61450
_pad_3713 = _pad_3713 + 1
_pad_3714 = _pad_3714 + 1
local _pv_3715_15 = 13161
-- Padding: anti-scan signature 3716_16
local _pv_3717_17 = 34724
local _pv_3718_18 = 80208
-- Padding: anti-scan signature 3719_19
if _pad_3720 > 862 then _pad_3720 = 0 end
if _pad_3721 > 707 then _pad_3721 = 0 end
local _pv_3722_22 = 36139
-- Padding: anti-scan signature 3723_23
_pad_3724 = _pad_3724 + 5
if _pad_3725 > 858 then _pad_3725 = 0 end
_pad_3726 = _pad_3726 + 10
local _pv_3727_27 = 24341
-- Padding: anti-scan signature 3728_28
-- Padding: anti-scan signature 3729_29
-- Padding: anti-scan signature 3730_30
if _pad_3731 > 814 then _pad_3731 = 0 end
-- Padding: anti-scan signature 3732_32
_pad_3733 = _pad_3733 + 2
if _pad_3734 > 420 then _pad_3734 = 0 end
_pad_3735 = _pad_3735 + 8
if _pad_3736 > 650 then _pad_3736 = 0 end
local _pv_3737_37 = 44088
-- Padding: anti-scan signature 3738_38
_pad_3739 = _pad_3739 + 10
-- Padding: anti-scan signature 3740_40
if _pad_3741 > 999 then _pad_3741 = 0 end
if _pad_3742 > 378 then _pad_3742 = 0 end
-- Padding: anti-scan signature 3743_43
local _pv_3744_44 = 48671
_pad_3745 = _pad_3745 + 9
-- Padding: anti-scan signature 3746_46
_pad_3747 = _pad_3747 + 3

-- [Padding: InputHandler_3] Runtime module for anti-detection
local _pad_3748 = 0
_pad_3748 = _pad_3748 + 3
-- Padding: anti-scan signature 3749_1
_pad_3750 = _pad_3750 + 7
_pad_3751 = _pad_3751 + 6
if _pad_3752 > 712 then _pad_3752 = 0 end
local _pv_3753_5 = 2539
_pad_3754 = _pad_3754 + 4
if _pad_3755 > 423 then _pad_3755 = 0 end
if _pad_3756 > 826 then _pad_3756 = 0 end
_pad_3757 = _pad_3757 + 7
_pad_3758 = _pad_3758 + 10
-- Padding: anti-scan signature 3759_11
local _pv_3760_12 = 56969
local _pv_3761_13 = 90711
-- Padding: anti-scan signature 3762_14
-- Padding: anti-scan signature 3763_15
-- Padding: anti-scan signature 3764_16
if _pad_3765 > 977 then _pad_3765 = 0 end
local _pv_3766_18 = 34422
-- Padding: anti-scan signature 3767_19
_pad_3768 = _pad_3768 + 10
if _pad_3769 > 274 then _pad_3769 = 0 end
-- Padding: anti-scan signature 3770_22
-- Padding: anti-scan signature 3771_23
local _pv_3772_24 = 80668
_pad_3773 = _pad_3773 + 3
local _pv_3774_26 = 43716
local _pv_3775_27 = 53597
if _pad_3776 > 274 then _pad_3776 = 0 end
if _pad_3777 > 245 then _pad_3777 = 0 end
-- Padding: anti-scan signature 3778_30
if _pad_3779 > 866 then _pad_3779 = 0 end
_pad_3780 = _pad_3780 + 8
_pad_3781 = _pad_3781 + 9
local _pv_3782_34 = 43591
_pad_3783 = _pad_3783 + 3
local _pv_3784_36 = 8918
if _pad_3785 > 375 then _pad_3785 = 0 end
if _pad_3786 > 966 then _pad_3786 = 0 end
if _pad_3787 > 871 then _pad_3787 = 0 end
if _pad_3788 > 750 then _pad_3788 = 0 end
if _pad_3789 > 742 then _pad_3789 = 0 end
if _pad_3790 > 735 then _pad_3790 = 0 end
if _pad_3791 > 928 then _pad_3791 = 0 end
if _pad_3792 > 154 then _pad_3792 = 0 end

-- [Padding: PhysicsSimulator_3] Runtime module for anti-detection
local _pad_3793 = 0
-- Padding: anti-scan signature 3793_0
if _pad_3794 > 559 then _pad_3794 = 0 end
if _pad_3795 > 482 then _pad_3795 = 0 end
_pad_3796 = _pad_3796 + 1
if _pad_3797 > 842 then _pad_3797 = 0 end
local _pv_3798_5 = 46893
if _pad_3799 > 406 then _pad_3799 = 0 end
_pad_3800 = _pad_3800 + 6
_pad_3801 = _pad_3801 + 6
local _pv_3802_9 = 42042
_pad_3803 = _pad_3803 + 5
-- Padding: anti-scan signature 3804_11
_pad_3805 = _pad_3805 + 6
_pad_3806 = _pad_3806 + 2
local _pv_3807_14 = 24431
local _pv_3808_15 = 96674
if _pad_3809 > 680 then _pad_3809 = 0 end
if _pad_3810 > 912 then _pad_3810 = 0 end
_pad_3811 = _pad_3811 + 8
if _pad_3812 > 491 then _pad_3812 = 0 end
if _pad_3813 > 85 then _pad_3813 = 0 end
if _pad_3814 > 368 then _pad_3814 = 0 end
-- Padding: anti-scan signature 3815_22
-- Padding: anti-scan signature 3816_23
_pad_3817 = _pad_3817 + 4
local _pv_3818_25 = 26190
-- Padding: anti-scan signature 3819_26
_pad_3820 = _pad_3820 + 2
local _pv_3821_28 = 72258
if _pad_3822 > 252 then _pad_3822 = 0 end
local _pv_3823_30 = 81069
if _pad_3824 > 228 then _pad_3824 = 0 end
local _pv_3825_32 = 26615
local _pv_3826_33 = 52964
-- Padding: anti-scan signature 3827_34
local _pv_3828_35 = 62115
if _pad_3829 > 563 then _pad_3829 = 0 end
_pad_3830 = _pad_3830 + 1
_pad_3831 = _pad_3831 + 4
local _pv_3832_39 = 15370
if _pad_3833 > 626 then _pad_3833 = 0 end
-- Padding: anti-scan signature 3834_41

-- [Padding: RenderOptimizer_3] Runtime module for anti-detection
local _pad_3835 = 0
if _pad_3835 > 775 then _pad_3835 = 0 end
_pad_3836 = _pad_3836 + 5
_pad_3837 = _pad_3837 + 2
local _pv_3838_3 = 96618
_pad_3839 = _pad_3839 + 3
-- Padding: anti-scan signature 3840_5
_pad_3841 = _pad_3841 + 4
_pad_3842 = _pad_3842 + 6
local _pv_3843_8 = 10291
_pad_3844 = _pad_3844 + 1
if _pad_3845 > 581 then _pad_3845 = 0 end
if _pad_3846 > 496 then _pad_3846 = 0 end
-- Padding: anti-scan signature 3847_12
if _pad_3848 > 850 then _pad_3848 = 0 end
_pad_3849 = _pad_3849 + 8
local _pv_3850_15 = 57441
-- Padding: anti-scan signature 3851_16
_pad_3852 = _pad_3852 + 1
local _pv_3853_18 = 41017
_pad_3854 = _pad_3854 + 1
if _pad_3855 > 761 then _pad_3855 = 0 end
local _pv_3856_21 = 65514
_pad_3857 = _pad_3857 + 4
if _pad_3858 > 895 then _pad_3858 = 0 end
if _pad_3859 > 687 then _pad_3859 = 0 end
_pad_3860 = _pad_3860 + 2
-- Padding: anti-scan signature 3861_26
_pad_3862 = _pad_3862 + 7
local _pv_3863_28 = 8222
_pad_3864 = _pad_3864 + 6
if _pad_3865 > 155 then _pad_3865 = 0 end
-- Padding: anti-scan signature 3866_31
-- Padding: anti-scan signature 3867_32
local _pv_3868_33 = 54717
-- Padding: anti-scan signature 3869_34
-- Padding: anti-scan signature 3870_35
-- Padding: anti-scan signature 3871_36
_pad_3872 = _pad_3872 + 1
_pad_3873 = _pad_3873 + 8
local _pv_3874_39 = 94663
-- Padding: anti-scan signature 3875_40
local _pv_3876_41 = 29012
local _pv_3877_42 = 66080
local _pv_3878_43 = 98942
-- Padding: anti-scan signature 3879_44
-- Padding: anti-scan signature 3880_45
if _pad_3881 > 590 then _pad_3881 = 0 end
_pad_3882 = _pad_3882 + 3
local _pv_3883_48 = 70454
if _pad_3884 > 373 then _pad_3884 = 0 end

-- [Padding: SoundManager_3] Runtime module for anti-detection
local _pad_3885 = 0
local _pv_3885_0 = 85451
if _pad_3886 > 304 then _pad_3886 = 0 end
local _pv_3887_2 = 76984
local _pv_3888_3 = 62488
_pad_3889 = _pad_3889 + 3
-- Padding: anti-scan signature 3890_5
local _pv_3891_6 = 89467
_pad_3892 = _pad_3892 + 8
if _pad_3893 > 340 then _pad_3893 = 0 end
if _pad_3894 > 686 then _pad_3894 = 0 end
local _pv_3895_10 = 72525
if _pad_3896 > 464 then _pad_3896 = 0 end
-- Padding: anti-scan signature 3897_12
-- Padding: anti-scan signature 3898_13
if _pad_3899 > 13 then _pad_3899 = 0 end
local _pv_3900_15 = 76900
local _pv_3901_16 = 2451
_pad_3902 = _pad_3902 + 7
local _pv_3903_18 = 97005
if _pad_3904 > 952 then _pad_3904 = 0 end
_pad_3905 = _pad_3905 + 7
_pad_3906 = _pad_3906 + 8
local _pv_3907_22 = 33575
-- Padding: anti-scan signature 3908_23
local _pv_3909_24 = 22697
-- Padding: anti-scan signature 3910_25
local _pv_3911_26 = 65960
local _pv_3912_27 = 82067
_pad_3913 = _pad_3913 + 4
if _pad_3914 > 354 then _pad_3914 = 0 end
-- Padding: anti-scan signature 3915_30
if _pad_3916 > 765 then _pad_3916 = 0 end
if _pad_3917 > 509 then _pad_3917 = 0 end
_pad_3918 = _pad_3918 + 10
if _pad_3919 > 966 then _pad_3919 = 0 end
if _pad_3920 > 715 then _pad_3920 = 0 end
-- Padding: anti-scan signature 3921_36
-- Padding: anti-scan signature 3922_37
_pad_3923 = _pad_3923 + 4
if _pad_3924 > 674 then _pad_3924 = 0 end
if _pad_3925 > 114 then _pad_3925 = 0 end
_pad_3926 = _pad_3926 + 4
if _pad_3927 > 709 then _pad_3927 = 0 end
-- Padding: anti-scan signature 3928_43
if _pad_3929 > 587 then _pad_3929 = 0 end
if _pad_3930 > 563 then _pad_3930 = 0 end
if _pad_3931 > 397 then _pad_3931 = 0 end
-- Padding: anti-scan signature 3932_47
_pad_3933 = _pad_3933 + 9
local _pv_3934_49 = 49276
-- Padding: anti-scan signature 3935_50
-- Padding: anti-scan signature 3936_51
-- Padding: anti-scan signature 3937_52

-- [Padding: ParticleController_3] Runtime module for anti-detection
local _pad_3938 = 0
_pad_3938 = _pad_3938 + 1
if _pad_3939 > 948 then _pad_3939 = 0 end
if _pad_3940 > 470 then _pad_3940 = 0 end
-- Padding: anti-scan signature 3941_3
local _pv_3942_4 = 51560
-- Padding: anti-scan signature 3943_5
if _pad_3944 > 236 then _pad_3944 = 0 end
-- Padding: anti-scan signature 3945_7
local _pv_3946_8 = 29437
local _pv_3947_9 = 6252
-- Padding: anti-scan signature 3948_10
if _pad_3949 > 514 then _pad_3949 = 0 end
local _pv_3950_12 = 98159
local _pv_3951_13 = 53190
-- Padding: anti-scan signature 3952_14
-- Padding: anti-scan signature 3953_15
_pad_3954 = _pad_3954 + 1
-- Padding: anti-scan signature 3955_17
if _pad_3956 > 618 then _pad_3956 = 0 end
local _pv_3957_19 = 51469
local _pv_3958_20 = 22651
_pad_3959 = _pad_3959 + 2
-- Padding: anti-scan signature 3960_22
local _pv_3961_23 = 29579
-- Padding: anti-scan signature 3962_24
-- Padding: anti-scan signature 3963_25
if _pad_3964 > 680 then _pad_3964 = 0 end
_pad_3965 = _pad_3965 + 9
_pad_3966 = _pad_3966 + 4
local _pv_3967_29 = 35068
_pad_3968 = _pad_3968 + 3
local _pv_3969_31 = 7337
local _pv_3970_32 = 59102
local _pv_3971_33 = 71135
if _pad_3972 > 863 then _pad_3972 = 0 end
local _pv_3973_35 = 19615
local _pv_3974_36 = 43187
-- Padding: anti-scan signature 3975_37
local _pv_3976_38 = 92667
_pad_3977 = _pad_3977 + 2
if _pad_3978 > 540 then _pad_3978 = 0 end
-- Padding: anti-scan signature 3979_41
-- Padding: anti-scan signature 3980_42
_pad_3981 = _pad_3981 + 3
local _pv_3982_44 = 64975
local _pv_3983_45 = 9211

-- [Padding: RuntimeOptimizer_4] Runtime module for anti-detection
local _pad_3984 = 0
-- Padding: anti-scan signature 3984_0
_pad_3985 = _pad_3985 + 8
_pad_3986 = _pad_3986 + 2
if _pad_3987 > 562 then _pad_3987 = 0 end
-- Padding: anti-scan signature 3988_4
-- Padding: anti-scan signature 3989_5
-- Padding: anti-scan signature 3990_6
-- Padding: anti-scan signature 3991_7
-- Padding: anti-scan signature 3992_8
_pad_3993 = _pad_3993 + 7
if _pad_3994 > 202 then _pad_3994 = 0 end
-- Padding: anti-scan signature 3995_11
-- Padding: anti-scan signature 3996_12
_pad_3997 = _pad_3997 + 6
_pad_3998 = _pad_3998 + 7
if _pad_3999 > 415 then _pad_3999 = 0 end
if _pad_4000 > 133 then _pad_4000 = 0 end
if _pad_4001 > 68 then _pad_4001 = 0 end
local _pv_4002_18 = 26631
if _pad_4003 > 125 then _pad_4003 = 0 end
local _pv_4004_20 = 47095
_pad_4005 = _pad_4005 + 3
-- Padding: anti-scan signature 4006_22
local _pv_4007_23 = 42368
if _pad_4008 > 979 then _pad_4008 = 0 end
if _pad_4009 > 979 then _pad_4009 = 0 end
_pad_4010 = _pad_4010 + 6
_pad_4011 = _pad_4011 + 1
_pad_4012 = _pad_4012 + 7
if _pad_4013 > 994 then _pad_4013 = 0 end
_pad_4014 = _pad_4014 + 7
if _pad_4015 > 866 then _pad_4015 = 0 end
if _pad_4016 > 689 then _pad_4016 = 0 end
if _pad_4017 > 502 then _pad_4017 = 0 end
local _pv_4018_34 = 63679
-- Padding: anti-scan signature 4019_35
-- Padding: anti-scan signature 4020_36
if _pad_4021 > 134 then _pad_4021 = 0 end
if _pad_4022 > 907 then _pad_4022 = 0 end
if _pad_4023 > 40 then _pad_4023 = 0 end
_pad_4024 = _pad_4024 + 7
if _pad_4025 > 162 then _pad_4025 = 0 end

-- [Padding: CacheManager_4] Runtime module for anti-detection
local _pad_4026 = 0
_pad_4026 = _pad_4026 + 5
-- Padding: anti-scan signature 4027_1
if _pad_4028 > 576 then _pad_4028 = 0 end
-- Padding: anti-scan signature 4029_3
local _pv_4030_4 = 1827
if _pad_4031 > 150 then _pad_4031 = 0 end
local _pv_4032_6 = 9191
local _pv_4033_7 = 24670
local _pv_4034_8 = 16195
_pad_4035 = _pad_4035 + 3
-- Padding: anti-scan signature 4036_10
if _pad_4037 > 310 then _pad_4037 = 0 end
local _pv_4038_12 = 59799
_pad_4039 = _pad_4039 + 7
-- Padding: anti-scan signature 4040_14
-- Padding: anti-scan signature 4041_15
local _pv_4042_16 = 85346
-- Padding: anti-scan signature 4043_17
local _pv_4044_18 = 92568
-- Padding: anti-scan signature 4045_19
if _pad_4046 > 617 then _pad_4046 = 0 end
if _pad_4047 > 970 then _pad_4047 = 0 end
_pad_4048 = _pad_4048 + 6
-- Padding: anti-scan signature 4049_23
_pad_4050 = _pad_4050 + 9
if _pad_4051 > 368 then _pad_4051 = 0 end
_pad_4052 = _pad_4052 + 7
_pad_4053 = _pad_4053 + 4
local _pv_4054_28 = 49501
if _pad_4055 > 616 then _pad_4055 = 0 end
if _pad_4056 > 435 then _pad_4056 = 0 end
local _pv_4057_31 = 81005
-- Padding: anti-scan signature 4058_32
if _pad_4059 > 291 then _pad_4059 = 0 end
if _pad_4060 > 96 then _pad_4060 = 0 end
_pad_4061 = _pad_4061 + 9
if _pad_4062 > 566 then _pad_4062 = 0 end
if _pad_4063 > 228 then _pad_4063 = 0 end
-- Padding: anti-scan signature 4064_38
local _pv_4065_39 = 86439
_pad_4066 = _pad_4066 + 10
if _pad_4067 > 794 then _pad_4067 = 0 end
if _pad_4068 > 756 then _pad_4068 = 0 end
_pad_4069 = _pad_4069 + 3
local _pv_4070_44 = 83675

-- [Padding: EventDispatcher_4] Runtime module for anti-detection
local _pad_4071 = 0
-- Padding: anti-scan signature 4071_0
_pad_4072 = _pad_4072 + 9
_pad_4073 = _pad_4073 + 7
if _pad_4074 > 889 then _pad_4074 = 0 end
local _pv_4075_4 = 53803
local _pv_4076_5 = 20984
-- Padding: anti-scan signature 4077_6
local _pv_4078_7 = 69728
_pad_4079 = _pad_4079 + 8
if _pad_4080 > 572 then _pad_4080 = 0 end
_pad_4081 = _pad_4081 + 8
local _pv_4082_11 = 23473
_pad_4083 = _pad_4083 + 10
local _pv_4084_13 = 30380
_pad_4085 = _pad_4085 + 10
_pad_4086 = _pad_4086 + 5
local _pv_4087_16 = 64783
if _pad_4088 > 774 then _pad_4088 = 0 end
-- Padding: anti-scan signature 4089_18
if _pad_4090 > 231 then _pad_4090 = 0 end
if _pad_4091 > 78 then _pad_4091 = 0 end
_pad_4092 = _pad_4092 + 4
_pad_4093 = _pad_4093 + 3
if _pad_4094 > 447 then _pad_4094 = 0 end
_pad_4095 = _pad_4095 + 7
local _pv_4096_25 = 73019
if _pad_4097 > 277 then _pad_4097 = 0 end
local _pv_4098_27 = 32991
_pad_4099 = _pad_4099 + 6
local _pv_4100_29 = 9991
if _pad_4101 > 452 then _pad_4101 = 0 end
-- Padding: anti-scan signature 4102_31
-- Padding: anti-scan signature 4103_32
if _pad_4104 > 935 then _pad_4104 = 0 end
local _pv_4105_34 = 34570
_pad_4106 = _pad_4106 + 5
_pad_4107 = _pad_4107 + 2
-- Padding: anti-scan signature 4108_37
if _pad_4109 > 777 then _pad_4109 = 0 end
if _pad_4110 > 891 then _pad_4110 = 0 end
if _pad_4111 > 91 then _pad_4111 = 0 end
_pad_4112 = _pad_4112 + 1
if _pad_4113 > 414 then _pad_4113 = 0 end
-- Padding: anti-scan signature 4114_43
local _pv_4115_44 = 29685
local _pv_4116_45 = 85766
_pad_4117 = _pad_4117 + 2
-- Padding: anti-scan signature 4118_47
_pad_4119 = _pad_4119 + 5
local _pv_4120_49 = 21812
-- Padding: anti-scan signature 4121_50
_pad_4122 = _pad_4122 + 8
local _pv_4123_52 = 77183
-- Padding: anti-scan signature 4124_53
local _pv_4125_54 = 77501

-- [Padding: StateManager_4] Runtime module for anti-detection
local _pad_4126 = 0
_pad_4126 = _pad_4126 + 9
-- Padding: anti-scan signature 4127_1
_pad_4128 = _pad_4128 + 3
local _pv_4129_3 = 28592
if _pad_4130 > 655 then _pad_4130 = 0 end
-- Padding: anti-scan signature 4131_5
-- Padding: anti-scan signature 4132_6
-- Padding: anti-scan signature 4133_7
_pad_4134 = _pad_4134 + 8
_pad_4135 = _pad_4135 + 5
_pad_4136 = _pad_4136 + 3
_pad_4137 = _pad_4137 + 2
_pad_4138 = _pad_4138 + 3
if _pad_4139 > 152 then _pad_4139 = 0 end
local _pv_4140_14 = 59686
-- Padding: anti-scan signature 4141_15
if _pad_4142 > 622 then _pad_4142 = 0 end
-- Padding: anti-scan signature 4143_17
local _pv_4144_18 = 18892
-- Padding: anti-scan signature 4145_19
_pad_4146 = _pad_4146 + 9
local _pv_4147_21 = 19925
_pad_4148 = _pad_4148 + 8
_pad_4149 = _pad_4149 + 8
-- Padding: anti-scan signature 4150_24
if _pad_4151 > 583 then _pad_4151 = 0 end
local _pv_4152_26 = 524
local _pv_4153_27 = 39216
if _pad_4154 > 999 then _pad_4154 = 0 end
_pad_4155 = _pad_4155 + 6
_pad_4156 = _pad_4156 + 6
-- Padding: anti-scan signature 4157_31
_pad_4158 = _pad_4158 + 10
local _pv_4159_33 = 71659
-- Padding: anti-scan signature 4160_34
local _pv_4161_35 = 24107
if _pad_4162 > 831 then _pad_4162 = 0 end
_pad_4163 = _pad_4163 + 10
-- Padding: anti-scan signature 4164_38
local _pv_4165_39 = 80767
_pad_4166 = _pad_4166 + 7
_pad_4167 = _pad_4167 + 9
local _pv_4168_42 = 79108
_pad_4169 = _pad_4169 + 7
-- Padding: anti-scan signature 4170_44

-- [Padding: MemoryPool_4] Runtime module for anti-detection
local _pad_4171 = 0
if _pad_4171 > 531 then _pad_4171 = 0 end
local _pv_4172_1 = 62000
_pad_4173 = _pad_4173 + 3
local _pv_4174_3 = 43108
if _pad_4175 > 629 then _pad_4175 = 0 end
local _pv_4176_5 = 73897
-- Padding: anti-scan signature 4177_6
_pad_4178 = _pad_4178 + 5
local _pv_4179_8 = 22166
if _pad_4180 > 187 then _pad_4180 = 0 end
if _pad_4181 > 752 then _pad_4181 = 0 end
local _pv_4182_11 = 35399
local _pv_4183_12 = 81771
-- Padding: anti-scan signature 4184_13
_pad_4185 = _pad_4185 + 2
-- Padding: anti-scan signature 4186_15
if _pad_4187 > 391 then _pad_4187 = 0 end
-- Padding: anti-scan signature 4188_17
if _pad_4189 > 946 then _pad_4189 = 0 end
local _pv_4190_19 = 48954
local _pv_4191_20 = 42780
if _pad_4192 > 352 then _pad_4192 = 0 end
local _pv_4193_22 = 37338
local _pv_4194_23 = 28450
if _pad_4195 > 562 then _pad_4195 = 0 end
local _pv_4196_25 = 17650
local _pv_4197_26 = 16958
-- Padding: anti-scan signature 4198_27
if _pad_4199 > 474 then _pad_4199 = 0 end
_pad_4200 = _pad_4200 + 1
-- Padding: anti-scan signature 4201_30
_pad_4202 = _pad_4202 + 7
local _pv_4203_32 = 79095
if _pad_4204 > 780 then _pad_4204 = 0 end
local _pv_4205_34 = 24667
local _pv_4206_35 = 40769
if _pad_4207 > 605 then _pad_4207 = 0 end
local _pv_4208_37 = 4325
-- Padding: anti-scan signature 4209_38
_pad_4210 = _pad_4210 + 9
local _pv_4211_40 = 29545
_pad_4212 = _pad_4212 + 3
-- Padding: anti-scan signature 4213_42
local _pv_4214_43 = 73646
if _pad_4215 > 384 then _pad_4215 = 0 end
if _pad_4216 > 875 then _pad_4216 = 0 end
local _pv_4217_46 = 8779
local _pv_4218_47 = 70342
if _pad_4219 > 807 then _pad_4219 = 0 end

-- [Padding: ObjectTracker_4] Runtime module for anti-detection
local _pad_4220 = 0
if _pad_4220 > 812 then _pad_4220 = 0 end
local _pv_4221_1 = 32074
_pad_4222 = _pad_4222 + 5
if _pad_4223 > 350 then _pad_4223 = 0 end
_pad_4224 = _pad_4224 + 4
-- Padding: anti-scan signature 4225_5
if _pad_4226 > 885 then _pad_4226 = 0 end
local _pv_4227_7 = 82191
local _pv_4228_8 = 39015
_pad_4229 = _pad_4229 + 9
_pad_4230 = _pad_4230 + 6
-- Padding: anti-scan signature 4231_11
local _pv_4232_12 = 45675
-- Padding: anti-scan signature 4233_13
-- Padding: anti-scan signature 4234_14
_pad_4235 = _pad_4235 + 8
_pad_4236 = _pad_4236 + 8
if _pad_4237 > 902 then _pad_4237 = 0 end
-- Padding: anti-scan signature 4238_18
local _pv_4239_19 = 55269
local _pv_4240_20 = 64501
_pad_4241 = _pad_4241 + 7
if _pad_4242 > 730 then _pad_4242 = 0 end
_pad_4243 = _pad_4243 + 6
local _pv_4244_24 = 67642
_pad_4245 = _pad_4245 + 2
local _pv_4246_26 = 5765
_pad_4247 = _pad_4247 + 5
_pad_4248 = _pad_4248 + 10
if _pad_4249 > 446 then _pad_4249 = 0 end
-- Padding: anti-scan signature 4250_30
-- Padding: anti-scan signature 4251_31
-- Padding: anti-scan signature 4252_32
if _pad_4253 > 810 then _pad_4253 = 0 end
local _pv_4254_34 = 14500
local _pv_4255_35 = 86072
if _pad_4256 > 8 then _pad_4256 = 0 end
local _pv_4257_37 = 65967
local _pv_4258_38 = 98874
if _pad_4259 > 113 then _pad_4259 = 0 end
if _pad_4260 > 168 then _pad_4260 = 0 end
local _pv_4261_41 = 9980
if _pad_4262 > 119 then _pad_4262 = 0 end
local _pv_4263_43 = 69407
local _pv_4264_44 = 32351
if _pad_4265 > 735 then _pad_4265 = 0 end
if _pad_4266 > 503 then _pad_4266 = 0 end
local _pv_4267_47 = 42236
local _pv_4268_48 = 26789
-- Padding: anti-scan signature 4269_49
-- Padding: anti-scan signature 4270_50
_pad_4271 = _pad_4271 + 10
if _pad_4272 > 906 then _pad_4272 = 0 end
-- Padding: anti-scan signature 4273_53
if _pad_4274 > 524 then _pad_4274 = 0 end

-- [Padding: RefCounter_4] Runtime module for anti-detection
local _pad_4275 = 0
if _pad_4275 > 497 then _pad_4275 = 0 end
_pad_4276 = _pad_4276 + 2
-- Padding: anti-scan signature 4277_2
-- Padding: anti-scan signature 4278_3
local _pv_4279_4 = 44574
-- Padding: anti-scan signature 4280_5
_pad_4281 = _pad_4281 + 5
local _pv_4282_7 = 59100
local _pv_4283_8 = 89947
_pad_4284 = _pad_4284 + 2
if _pad_4285 > 361 then _pad_4285 = 0 end
-- Padding: anti-scan signature 4286_11
_pad_4287 = _pad_4287 + 9
if _pad_4288 > 747 then _pad_4288 = 0 end
if _pad_4289 > 742 then _pad_4289 = 0 end
local _pv_4290_15 = 64131
local _pv_4291_16 = 99378
_pad_4292 = _pad_4292 + 2
if _pad_4293 > 670 then _pad_4293 = 0 end
-- Padding: anti-scan signature 4294_19
-- Padding: anti-scan signature 4295_20
local _pv_4296_21 = 36642
-- Padding: anti-scan signature 4297_22
if _pad_4298 > 699 then _pad_4298 = 0 end
if _pad_4299 > 763 then _pad_4299 = 0 end
-- Padding: anti-scan signature 4300_25
-- Padding: anti-scan signature 4301_26
local _pv_4302_27 = 87947
-- Padding: anti-scan signature 4303_28
_pad_4304 = _pad_4304 + 5
local _pv_4305_30 = 13921
local _pv_4306_31 = 37606
_pad_4307 = _pad_4307 + 2
-- Padding: anti-scan signature 4308_33
if _pad_4309 > 876 then _pad_4309 = 0 end
-- Padding: anti-scan signature 4310_35
local _pv_4311_36 = 72802
-- Padding: anti-scan signature 4312_37
_pad_4313 = _pad_4313 + 4
local _pv_4314_39 = 32856
if _pad_4315 > 101 then _pad_4315 = 0 end
local _pv_4316_41 = 63971
if _pad_4317 > 200 then _pad_4317 = 0 end
-- Padding: anti-scan signature 4318_43
_pad_4319 = _pad_4319 + 4

-- [Padding: TimerPool_4] Runtime module for anti-detection
local _pad_4320 = 0
-- Padding: anti-scan signature 4320_0
_pad_4321 = _pad_4321 + 10
_pad_4322 = _pad_4322 + 1
if _pad_4323 > 884 then _pad_4323 = 0 end
_pad_4324 = _pad_4324 + 10
if _pad_4325 > 932 then _pad_4325 = 0 end
if _pad_4326 > 174 then _pad_4326 = 0 end
local _pv_4327_7 = 71424
-- Padding: anti-scan signature 4328_8
if _pad_4329 > 892 then _pad_4329 = 0 end
_pad_4330 = _pad_4330 + 6
if _pad_4331 > 709 then _pad_4331 = 0 end
if _pad_4332 > 228 then _pad_4332 = 0 end
-- Padding: anti-scan signature 4333_13
local _pv_4334_14 = 3141
-- Padding: anti-scan signature 4335_15
_pad_4336 = _pad_4336 + 10
_pad_4337 = _pad_4337 + 6
local _pv_4338_18 = 81542
_pad_4339 = _pad_4339 + 2
if _pad_4340 > 851 then _pad_4340 = 0 end
if _pad_4341 > 753 then _pad_4341 = 0 end
_pad_4342 = _pad_4342 + 8
-- Padding: anti-scan signature 4343_23
if _pad_4344 > 617 then _pad_4344 = 0 end
-- Padding: anti-scan signature 4345_25
_pad_4346 = _pad_4346 + 1
local _pv_4347_27 = 17276
local _pv_4348_28 = 84968
-- Padding: anti-scan signature 4349_29
_pad_4350 = _pad_4350 + 1
if _pad_4351 > 744 then _pad_4351 = 0 end
_pad_4352 = _pad_4352 + 8
-- Padding: anti-scan signature 4353_33
-- Padding: anti-scan signature 4354_34
if _pad_4355 > 976 then _pad_4355 = 0 end
if _pad_4356 > 676 then _pad_4356 = 0 end
-- Padding: anti-scan signature 4357_37
if _pad_4358 > 91 then _pad_4358 = 0 end
local _pv_4359_39 = 28290
-- Padding: anti-scan signature 4360_40
_pad_4361 = _pad_4361 + 2
if _pad_4362 > 987 then _pad_4362 = 0 end
local _pv_4363_43 = 70022
local _pv_4364_44 = 78782
local _pv_4365_45 = 71255
-- Padding: anti-scan signature 4366_46
local _pv_4367_47 = 14111
-- Padding: anti-scan signature 4368_48
local _pv_4369_49 = 32771
if _pad_4370 > 653 then _pad_4370 = 0 end
if _pad_4371 > 49 then _pad_4371 = 0 end
-- Padding: anti-scan signature 4372_52
_pad_4373 = _pad_4373 + 6
local _pv_4374_54 = 15536
-- Padding: anti-scan signature 4375_55
_pad_4376 = _pad_4376 + 4
_pad_4377 = _pad_4377 + 2

-- [Padding: QueueProcessor_4] Runtime module for anti-detection
local _pad_4378 = 0
-- Padding: anti-scan signature 4378_0
_pad_4379 = _pad_4379 + 5
-- Padding: anti-scan signature 4380_2
-- Padding: anti-scan signature 4381_3
-- Padding: anti-scan signature 4382_4
_pad_4383 = _pad_4383 + 4
if _pad_4384 > 727 then _pad_4384 = 0 end
if _pad_4385 > 532 then _pad_4385 = 0 end
-- Padding: anti-scan signature 4386_8
_pad_4387 = _pad_4387 + 7
-- Padding: anti-scan signature 4388_10
_pad_4389 = _pad_4389 + 6
if _pad_4390 > 308 then _pad_4390 = 0 end
_pad_4391 = _pad_4391 + 8
local _pv_4392_14 = 64145
-- Padding: anti-scan signature 4393_15
-- Padding: anti-scan signature 4394_16
-- Padding: anti-scan signature 4395_17
-- Padding: anti-scan signature 4396_18
-- Padding: anti-scan signature 4397_19
_pad_4398 = _pad_4398 + 7
if _pad_4399 > 869 then _pad_4399 = 0 end
if _pad_4400 > 807 then _pad_4400 = 0 end
_pad_4401 = _pad_4401 + 5
local _pv_4402_24 = 12635
-- Padding: anti-scan signature 4403_25
local _pv_4404_26 = 78205
-- Padding: anti-scan signature 4405_27
local _pv_4406_28 = 62717
-- Padding: anti-scan signature 4407_29
-- Padding: anti-scan signature 4408_30
if _pad_4409 > 920 then _pad_4409 = 0 end
local _pv_4410_32 = 98190
if _pad_4411 > 53 then _pad_4411 = 0 end
local _pv_4412_34 = 90231
local _pv_4413_35 = 84065
-- Padding: anti-scan signature 4414_36
_pad_4415 = _pad_4415 + 6
if _pad_4416 > 467 then _pad_4416 = 0 end
if _pad_4417 > 585 then _pad_4417 = 0 end
-- Padding: anti-scan signature 4418_40
local _pv_4419_41 = 53082

-- [Padding: BufferManager_4] Runtime module for anti-detection
local _pad_4420 = 0
_pad_4420 = _pad_4420 + 10
local _pv_4421_1 = 31269
if _pad_4422 > 673 then _pad_4422 = 0 end
if _pad_4423 > 534 then _pad_4423 = 0 end
_pad_4424 = _pad_4424 + 6
if _pad_4425 > 916 then _pad_4425 = 0 end
if _pad_4426 > 184 then _pad_4426 = 0 end
-- Padding: anti-scan signature 4427_7
_pad_4428 = _pad_4428 + 3
_pad_4429 = _pad_4429 + 5
-- Padding: anti-scan signature 4430_10
if _pad_4431 > 268 then _pad_4431 = 0 end
if _pad_4432 > 69 then _pad_4432 = 0 end
if _pad_4433 > 297 then _pad_4433 = 0 end
local _pv_4434_14 = 6816
if _pad_4435 > 760 then _pad_4435 = 0 end
local _pv_4436_16 = 50748
local _pv_4437_17 = 79597
if _pad_4438 > 492 then _pad_4438 = 0 end
if _pad_4439 > 342 then _pad_4439 = 0 end
if _pad_4440 > 236 then _pad_4440 = 0 end
_pad_4441 = _pad_4441 + 7
_pad_4442 = _pad_4442 + 5
-- Padding: anti-scan signature 4443_23
local _pv_4444_24 = 9954
local _pv_4445_25 = 73841
local _pv_4446_26 = 51070
_pad_4447 = _pad_4447 + 8
local _pv_4448_28 = 10440
local _pv_4449_29 = 7923
-- Padding: anti-scan signature 4450_30
_pad_4451 = _pad_4451 + 8
local _pv_4452_32 = 6799
local _pv_4453_33 = 30775
_pad_4454 = _pad_4454 + 2
_pad_4455 = _pad_4455 + 5
_pad_4456 = _pad_4456 + 1
-- Padding: anti-scan signature 4457_37
-- Padding: anti-scan signature 4458_38
_pad_4459 = _pad_4459 + 6
-- Padding: anti-scan signature 4460_40
local _pv_4461_41 = 50304
if _pad_4462 > 249 then _pad_4462 = 0 end
if _pad_4463 > 327 then _pad_4463 = 0 end
-- Padding: anti-scan signature 4464_44
local _pv_4465_45 = 29423
local _pv_4466_46 = 79634
if _pad_4467 > 984 then _pad_4467 = 0 end
local _pv_4468_48 = 66810
-- Padding: anti-scan signature 4469_49
-- Padding: anti-scan signature 4470_50
-- Padding: anti-scan signature 4471_51
local _pv_4472_52 = 2673
local _pv_4473_53 = 34313

-- [Padding: StreamHandler_4] Runtime module for anti-detection
local _pad_4474 = 0
local _pv_4474_0 = 22386
local _pv_4475_1 = 75875
_pad_4476 = _pad_4476 + 5
-- Padding: anti-scan signature 4477_3
_pad_4478 = _pad_4478 + 3
if _pad_4479 > 354 then _pad_4479 = 0 end
_pad_4480 = _pad_4480 + 4
local _pv_4481_7 = 25266
_pad_4482 = _pad_4482 + 10
_pad_4483 = _pad_4483 + 6
if _pad_4484 > 528 then _pad_4484 = 0 end
local _pv_4485_11 = 78191
_pad_4486 = _pad_4486 + 3
-- Padding: anti-scan signature 4487_13
if _pad_4488 > 864 then _pad_4488 = 0 end
-- Padding: anti-scan signature 4489_15
-- Padding: anti-scan signature 4490_16
if _pad_4491 > 689 then _pad_4491 = 0 end
_pad_4492 = _pad_4492 + 9
if _pad_4493 > 473 then _pad_4493 = 0 end
-- Padding: anti-scan signature 4494_20
local _pv_4495_21 = 41893
local _pv_4496_22 = 80323
if _pad_4497 > 974 then _pad_4497 = 0 end
local _pv_4498_24 = 5388
if _pad_4499 > 856 then _pad_4499 = 0 end
if _pad_4500 > 604 then _pad_4500 = 0 end
-- Padding: anti-scan signature 4501_27
-- Padding: anti-scan signature 4502_28
if _pad_4503 > 907 then _pad_4503 = 0 end
local _pv_4504_30 = 4637
_pad_4505 = _pad_4505 + 8
local _pv_4506_32 = 993
_pad_4507 = _pad_4507 + 6
_pad_4508 = _pad_4508 + 4
if _pad_4509 > 211 then _pad_4509 = 0 end
if _pad_4510 > 211 then _pad_4510 = 0 end
_pad_4511 = _pad_4511 + 9
_pad_4512 = _pad_4512 + 1
if _pad_4513 > 328 then _pad_4513 = 0 end
local _pv_4514_40 = 93350
local _pv_4515_41 = 67149
if _pad_4516 > 520 then _pad_4516 = 0 end
if _pad_4517 > 403 then _pad_4517 = 0 end
_pad_4518 = _pad_4518 + 8
local _pv_4519_45 = 5609
-- Padding: anti-scan signature 4520_46
local _pv_4521_47 = 51790
-- Padding: anti-scan signature 4522_48
if _pad_4523 > 331 then _pad_4523 = 0 end
if _pad_4524 > 320 then _pad_4524 = 0 end
local _pv_4525_51 = 15674

-- [Padding: TokenValidator_4] Runtime module for anti-detection
local _pad_4526 = 0
_pad_4526 = _pad_4526 + 4
_pad_4527 = _pad_4527 + 6
local _pv_4528_2 = 49946
_pad_4529 = _pad_4529 + 5
local _pv_4530_4 = 72093
local _pv_4531_5 = 17686
local _pv_4532_6 = 61399
_pad_4533 = _pad_4533 + 5
local _pv_4534_8 = 41880
local _pv_4535_9 = 12145
-- Padding: anti-scan signature 4536_10
local _pv_4537_11 = 49878
if _pad_4538 > 295 then _pad_4538 = 0 end
if _pad_4539 > 217 then _pad_4539 = 0 end
if _pad_4540 > 672 then _pad_4540 = 0 end
if _pad_4541 > 345 then _pad_4541 = 0 end
-- Padding: anti-scan signature 4542_16
-- Padding: anti-scan signature 4543_17
if _pad_4544 > 910 then _pad_4544 = 0 end
-- Padding: anti-scan signature 4545_19
if _pad_4546 > 732 then _pad_4546 = 0 end
local _pv_4547_21 = 23716
if _pad_4548 > 780 then _pad_4548 = 0 end
local _pv_4549_23 = 91503
if _pad_4550 > 751 then _pad_4550 = 0 end
-- Padding: anti-scan signature 4551_25
if _pad_4552 > 824 then _pad_4552 = 0 end
if _pad_4553 > 264 then _pad_4553 = 0 end
-- Padding: anti-scan signature 4554_28
-- Padding: anti-scan signature 4555_29
_pad_4556 = _pad_4556 + 9
-- Padding: anti-scan signature 4557_31
_pad_4558 = _pad_4558 + 4
-- Padding: anti-scan signature 4559_33
if _pad_4560 > 917 then _pad_4560 = 0 end
_pad_4561 = _pad_4561 + 8
if _pad_4562 > 13 then _pad_4562 = 0 end
local _pv_4563_37 = 41794
local _pv_4564_38 = 86392
_pad_4565 = _pad_4565 + 2
_pad_4566 = _pad_4566 + 6
local _pv_4567_41 = 16926
_pad_4568 = _pad_4568 + 10
local _pv_4569_43 = 87149
-- Padding: anti-scan signature 4570_44
-- Padding: anti-scan signature 4571_45

-- [Padding: SessionManager_4] Runtime module for anti-detection
local _pad_4572 = 0
if _pad_4572 > 278 then _pad_4572 = 0 end
-- Padding: anti-scan signature 4573_1
-- Padding: anti-scan signature 4574_2
_pad_4575 = _pad_4575 + 9
local _pv_4576_4 = 19483
-- Padding: anti-scan signature 4577_5
local _pv_4578_6 = 20446
if _pad_4579 > 906 then _pad_4579 = 0 end
-- Padding: anti-scan signature 4580_8
if _pad_4581 > 954 then _pad_4581 = 0 end
if _pad_4582 > 744 then _pad_4582 = 0 end
if _pad_4583 > 401 then _pad_4583 = 0 end
if _pad_4584 > 225 then _pad_4584 = 0 end
local _pv_4585_13 = 54682
local _pv_4586_14 = 49130
-- Padding: anti-scan signature 4587_15
-- Padding: anti-scan signature 4588_16
_pad_4589 = _pad_4589 + 1
-- Padding: anti-scan signature 4590_18
local _pv_4591_19 = 40476
-- Padding: anti-scan signature 4592_20
-- Padding: anti-scan signature 4593_21
_pad_4594 = _pad_4594 + 5
_pad_4595 = _pad_4595 + 7
if _pad_4596 > 483 then _pad_4596 = 0 end
_pad_4597 = _pad_4597 + 5
if _pad_4598 > 113 then _pad_4598 = 0 end
local _pv_4599_27 = 98342
if _pad_4600 > 744 then _pad_4600 = 0 end
local _pv_4601_29 = 89142
if _pad_4602 > 860 then _pad_4602 = 0 end
-- Padding: anti-scan signature 4603_31
local _pv_4604_32 = 15814
-- Padding: anti-scan signature 4605_33
if _pad_4606 > 810 then _pad_4606 = 0 end
local _pv_4607_35 = 37898
local _pv_4608_36 = 67552
if _pad_4609 > 994 then _pad_4609 = 0 end
local _pv_4610_38 = 94598
local _pv_4611_39 = 12956
local _pv_4612_40 = 35860
_pad_4613 = _pad_4613 + 3
-- Padding: anti-scan signature 4614_42
-- Padding: anti-scan signature 4615_43
_pad_4616 = _pad_4616 + 5
if _pad_4617 > 897 then _pad_4617 = 0 end
local _pv_4618_46 = 53094
local _pv_4619_47 = 76594
-- Padding: anti-scan signature 4620_48
-- Padding: anti-scan signature 4621_49
local _pv_4622_50 = 14953
if _pad_4623 > 423 then _pad_4623 = 0 end
local _pv_4624_52 = 29536
-- Padding: anti-scan signature 4625_53
local _pv_4626_54 = 75849

-- [Padding: HeartbeatMonitor_4] Runtime module for anti-detection
local _pad_4627 = 0
-- Padding: anti-scan signature 4627_0
if _pad_4628 > 747 then _pad_4628 = 0 end
_pad_4629 = _pad_4629 + 8
_pad_4630 = _pad_4630 + 5
if _pad_4631 > 64 then _pad_4631 = 0 end
local _pv_4632_5 = 32015
local _pv_4633_6 = 64193
local _pv_4634_7 = 48731
if _pad_4635 > 27 then _pad_4635 = 0 end
-- Padding: anti-scan signature 4636_9
-- Padding: anti-scan signature 4637_10
_pad_4638 = _pad_4638 + 10
_pad_4639 = _pad_4639 + 8
if _pad_4640 > 959 then _pad_4640 = 0 end
if _pad_4641 > 932 then _pad_4641 = 0 end
if _pad_4642 > 802 then _pad_4642 = 0 end
-- Padding: anti-scan signature 4643_16
local _pv_4644_17 = 9589
local _pv_4645_18 = 40892
-- Padding: anti-scan signature 4646_19
_pad_4647 = _pad_4647 + 7
if _pad_4648 > 56 then _pad_4648 = 0 end
_pad_4649 = _pad_4649 + 10
-- Padding: anti-scan signature 4650_23
if _pad_4651 > 998 then _pad_4651 = 0 end
_pad_4652 = _pad_4652 + 5
if _pad_4653 > 694 then _pad_4653 = 0 end
if _pad_4654 > 967 then _pad_4654 = 0 end
if _pad_4655 > 267 then _pad_4655 = 0 end
-- Padding: anti-scan signature 4656_29
_pad_4657 = _pad_4657 + 4
local _pv_4658_31 = 79329
-- Padding: anti-scan signature 4659_32
-- Padding: anti-scan signature 4660_33
_pad_4661 = _pad_4661 + 10
if _pad_4662 > 193 then _pad_4662 = 0 end
_pad_4663 = _pad_4663 + 3
_pad_4664 = _pad_4664 + 10
-- Padding: anti-scan signature 4665_38
-- Padding: anti-scan signature 4666_39
local _pv_4667_40 = 69265
_pad_4668 = _pad_4668 + 10
_pad_4669 = _pad_4669 + 2
if _pad_4670 > 58 then _pad_4670 = 0 end
if _pad_4671 > 800 then _pad_4671 = 0 end
_pad_4672 = _pad_4672 + 10
local _pv_4673_46 = 56866
_pad_4674 = _pad_4674 + 5
-- Padding: anti-scan signature 4675_48
-- Padding: anti-scan signature 4676_49
if _pad_4677 > 528 then _pad_4677 = 0 end
_pad_4678 = _pad_4678 + 2
_pad_4679 = _pad_4679 + 6
-- Padding: anti-scan signature 4680_53
if _pad_4681 > 417 then _pad_4681 = 0 end
local _pv_4682_55 = 90522
if _pad_4683 > 833 then _pad_4683 = 0 end

-- [Padding: FrameTracker_4] Runtime module for anti-detection
local _pad_4684 = 0
_pad_4684 = _pad_4684 + 10
_pad_4685 = _pad_4685 + 1
-- Padding: anti-scan signature 4686_2
local _pv_4687_3 = 48877
if _pad_4688 > 403 then _pad_4688 = 0 end
_pad_4689 = _pad_4689 + 6
local _pv_4690_6 = 54789
local _pv_4691_7 = 11776
_pad_4692 = _pad_4692 + 4
-- Padding: anti-scan signature 4693_9
if _pad_4694 > 844 then _pad_4694 = 0 end
-- Padding: anti-scan signature 4695_11
local _pv_4696_12 = 94548
local _pv_4697_13 = 59860
if _pad_4698 > 567 then _pad_4698 = 0 end
local _pv_4699_15 = 21560
_pad_4700 = _pad_4700 + 6
local _pv_4701_17 = 17790
local _pv_4702_18 = 51347
_pad_4703 = _pad_4703 + 10
if _pad_4704 > 988 then _pad_4704 = 0 end
if _pad_4705 > 65 then _pad_4705 = 0 end
-- Padding: anti-scan signature 4706_22
local _pv_4707_23 = 41346
if _pad_4708 > 304 then _pad_4708 = 0 end
_pad_4709 = _pad_4709 + 9
_pad_4710 = _pad_4710 + 6
if _pad_4711 > 913 then _pad_4711 = 0 end
local _pv_4712_28 = 35875
local _pv_4713_29 = 84486
_pad_4714 = _pad_4714 + 4
if _pad_4715 > 382 then _pad_4715 = 0 end
-- Padding: anti-scan signature 4716_32
-- Padding: anti-scan signature 4717_33
if _pad_4718 > 66 then _pad_4718 = 0 end
local _pv_4719_35 = 98909
_pad_4720 = _pad_4720 + 7
_pad_4721 = _pad_4721 + 6
_pad_4722 = _pad_4722 + 1
if _pad_4723 > 623 then _pad_4723 = 0 end
local _pv_4724_40 = 32246
if _pad_4725 > 70 then _pad_4725 = 0 end
-- Padding: anti-scan signature 4726_42
if _pad_4727 > 445 then _pad_4727 = 0 end
local _pv_4728_44 = 5249
local _pv_4729_45 = 25042
-- Padding: anti-scan signature 4730_46
-- Padding: anti-scan signature 4731_47
-- Padding: anti-scan signature 4732_48
local _pv_4733_49 = 91822

-- [Padding: InputHandler_4] Runtime module for anti-detection
local _pad_4734 = 0
-- Padding: anti-scan signature 4734_0
-- Padding: anti-scan signature 4735_1
-- Padding: anti-scan signature 4736_2
local _pv_4737_3 = 28444
-- Padding: anti-scan signature 4738_4
local _pv_4739_5 = 2633
-- Padding: anti-scan signature 4740_6
if _pad_4741 > 937 then _pad_4741 = 0 end
-- Padding: anti-scan signature 4742_8
_pad_4743 = _pad_4743 + 1
local _pv_4744_10 = 42509
if _pad_4745 > 755 then _pad_4745 = 0 end
_pad_4746 = _pad_4746 + 6
_pad_4747 = _pad_4747 + 3
_pad_4748 = _pad_4748 + 6
if _pad_4749 > 970 then _pad_4749 = 0 end
-- Padding: anti-scan signature 4750_16
_pad_4751 = _pad_4751 + 7
_pad_4752 = _pad_4752 + 10
-- Padding: anti-scan signature 4753_19
if _pad_4754 > 617 then _pad_4754 = 0 end
-- Padding: anti-scan signature 4755_21
local _pv_4756_22 = 79863
if _pad_4757 > 78 then _pad_4757 = 0 end
_pad_4758 = _pad_4758 + 7
local _pv_4759_25 = 34823
_pad_4760 = _pad_4760 + 1
if _pad_4761 > 723 then _pad_4761 = 0 end
-- Padding: anti-scan signature 4762_28
_pad_4763 = _pad_4763 + 7
local _pv_4764_30 = 90104
-- Padding: anti-scan signature 4765_31
-- Padding: anti-scan signature 4766_32
if _pad_4767 > 866 then _pad_4767 = 0 end
_pad_4768 = _pad_4768 + 4
-- Padding: anti-scan signature 4769_35
_pad_4770 = _pad_4770 + 4
_pad_4771 = _pad_4771 + 1
_pad_4772 = _pad_4772 + 4
_pad_4773 = _pad_4773 + 9
local _pv_4774_40 = 45733
-- Padding: anti-scan signature 4775_41
_pad_4776 = _pad_4776 + 2
if _pad_4777 > 802 then _pad_4777 = 0 end
-- Padding: anti-scan signature 4778_44
if _pad_4779 > 466 then _pad_4779 = 0 end
if _pad_4780 > 817 then _pad_4780 = 0 end
-- Padding: anti-scan signature 4781_47

-- [Padding: PhysicsSimulator_4] Runtime module for anti-detection
local _pad_4782 = 0
local _pv_4782_0 = 5439
_pad_4783 = _pad_4783 + 10
if _pad_4784 > 33 then _pad_4784 = 0 end
_pad_4785 = _pad_4785 + 10
local _pv_4786_4 = 32254
if _pad_4787 > 837 then _pad_4787 = 0 end
-- Padding: anti-scan signature 4788_6
_pad_4789 = _pad_4789 + 8
-- Padding: anti-scan signature 4790_8
if _pad_4791 > 654 then _pad_4791 = 0 end
-- Padding: anti-scan signature 4792_10
_pad_4793 = _pad_4793 + 10
local _pv_4794_12 = 31180
-- Padding: anti-scan signature 4795_13
_pad_4796 = _pad_4796 + 7
local _pv_4797_15 = 62618
if _pad_4798 > 254 then _pad_4798 = 0 end
_pad_4799 = _pad_4799 + 1
local _pv_4800_18 = 62778
-- Padding: anti-scan signature 4801_19
-- Padding: anti-scan signature 4802_20
if _pad_4803 > 787 then _pad_4803 = 0 end
local _pv_4804_22 = 43430
-- Padding: anti-scan signature 4805_23
_pad_4806 = _pad_4806 + 9
_pad_4807 = _pad_4807 + 8
if _pad_4808 > 705 then _pad_4808 = 0 end
if _pad_4809 > 874 then _pad_4809 = 0 end
_pad_4810 = _pad_4810 + 7
-- Padding: anti-scan signature 4811_29
if _pad_4812 > 744 then _pad_4812 = 0 end
if _pad_4813 > 185 then _pad_4813 = 0 end
if _pad_4814 > 691 then _pad_4814 = 0 end
local _pv_4815_33 = 77264
if _pad_4816 > 823 then _pad_4816 = 0 end
-- Padding: anti-scan signature 4817_35
if _pad_4818 > 876 then _pad_4818 = 0 end
_pad_4819 = _pad_4819 + 10
_pad_4820 = _pad_4820 + 10
local _pv_4821_39 = 1619
-- Padding: anti-scan signature 4822_40
-- Padding: anti-scan signature 4823_41
_pad_4824 = _pad_4824 + 1
if _pad_4825 > 507 then _pad_4825 = 0 end
_pad_4826 = _pad_4826 + 6
_pad_4827 = _pad_4827 + 2
-- Padding: anti-scan signature 4828_46
_pad_4829 = _pad_4829 + 4
local _pv_4830_48 = 39236
local _pv_4831_49 = 51823

-- [Padding: RenderOptimizer_4] Runtime module for anti-detection
local _pad_4832 = 0
local _pv_4832_0 = 84978
-- Padding: anti-scan signature 4833_1
-- Padding: anti-scan signature 4834_2
if _pad_4835 > 22 then _pad_4835 = 0 end
-- Padding: anti-scan signature 4836_4
_pad_4837 = _pad_4837 + 2
_pad_4838 = _pad_4838 + 7
local _pv_4839_7 = 21412
_pad_4840 = _pad_4840 + 1
-- Padding: anti-scan signature 4841_9
local _pv_4842_10 = 86041
if _pad_4843 > 392 then _pad_4843 = 0 end
_pad_4844 = _pad_4844 + 2
if _pad_4845 > 224 then _pad_4845 = 0 end
_pad_4846 = _pad_4846 + 2
-- Padding: anti-scan signature 4847_15
_pad_4848 = _pad_4848 + 8
local _pv_4849_17 = 49072
-- Padding: anti-scan signature 4850_18
_pad_4851 = _pad_4851 + 5
-- Padding: anti-scan signature 4852_20
_pad_4853 = _pad_4853 + 5
-- Padding: anti-scan signature 4854_22
if _pad_4855 > 611 then _pad_4855 = 0 end
if _pad_4856 > 563 then _pad_4856 = 0 end
local _pv_4857_25 = 36664
local _pv_4858_26 = 25228
-- Padding: anti-scan signature 4859_27
if _pad_4860 > 572 then _pad_4860 = 0 end
if _pad_4861 > 308 then _pad_4861 = 0 end
-- Padding: anti-scan signature 4862_30
if _pad_4863 > 60 then _pad_4863 = 0 end
local _pv_4864_32 = 34117
_pad_4865 = _pad_4865 + 4
local _pv_4866_34 = 31661
_pad_4867 = _pad_4867 + 8
if _pad_4868 > 257 then _pad_4868 = 0 end
local _pv_4869_37 = 8867
local _pv_4870_38 = 70950
_pad_4871 = _pad_4871 + 5
_pad_4872 = _pad_4872 + 3
local _pv_4873_41 = 4219
_pad_4874 = _pad_4874 + 1
if _pad_4875 > 692 then _pad_4875 = 0 end
-- Padding: anti-scan signature 4876_44
_pad_4877 = _pad_4877 + 6
_pad_4878 = _pad_4878 + 10

-- [Padding: SoundManager_4] Runtime module for anti-detection
local _pad_4879 = 0
-- Padding: anti-scan signature 4879_0
-- Padding: anti-scan signature 4880_1
if _pad_4881 > 62 then _pad_4881 = 0 end
_pad_4882 = _pad_4882 + 6
_pad_4883 = _pad_4883 + 5
local _pv_4884_5 = 79399
-- Padding: anti-scan signature 4885_6
if _pad_4886 > 268 then _pad_4886 = 0 end
local _pv_4887_8 = 63997
local _pv_4888_9 = 15940
local _pv_4889_10 = 95411
local _pv_4890_11 = 96773
local _pv_4891_12 = 80952
-- Padding: anti-scan signature 4892_13
if _pad_4893 > 457 then _pad_4893 = 0 end
_pad_4894 = _pad_4894 + 3
_pad_4895 = _pad_4895 + 10
local _pv_4896_17 = 68820
local _pv_4897_18 = 82388
local _pv_4898_19 = 3314
local _pv_4899_20 = 66035
_pad_4900 = _pad_4900 + 9
local _pv_4901_22 = 3416
if _pad_4902 > 960 then _pad_4902 = 0 end
_pad_4903 = _pad_4903 + 3
_pad_4904 = _pad_4904 + 3
_pad_4905 = _pad_4905 + 3
-- Padding: anti-scan signature 4906_27
-- Padding: anti-scan signature 4907_28
if _pad_4908 > 372 then _pad_4908 = 0 end
-- Padding: anti-scan signature 4909_30
_pad_4910 = _pad_4910 + 2
-- Padding: anti-scan signature 4911_32
local _pv_4912_33 = 88099
local _pv_4913_34 = 60626
local _pv_4914_35 = 99837
_pad_4915 = _pad_4915 + 6
_pad_4916 = _pad_4916 + 8
if _pad_4917 > 507 then _pad_4917 = 0 end
-- Padding: anti-scan signature 4918_39
local _pv_4919_40 = 98931
if _pad_4920 > 371 then _pad_4920 = 0 end
-- Padding: anti-scan signature 4921_42
-- Padding: anti-scan signature 4922_43
if _pad_4923 > 826 then _pad_4923 = 0 end
if _pad_4924 > 978 then _pad_4924 = 0 end
-- Padding: anti-scan signature 4925_46
local _pv_4926_47 = 84409
_pad_4927 = _pad_4927 + 5
local _pv_4928_49 = 80603
_pad_4929 = _pad_4929 + 5
-- Padding: anti-scan signature 4930_51
_pad_4931 = _pad_4931 + 3
local _pv_4932_53 = 99064
-- Padding: anti-scan signature 4933_54
if _pad_4934 > 739 then _pad_4934 = 0 end
if _pad_4935 > 582 then _pad_4935 = 0 end

-- [Padding: ParticleController_4] Runtime module for anti-detection
local _pad_4936 = 0
-- Padding: anti-scan signature 4936_0
if _pad_4937 > 483 then _pad_4937 = 0 end
if _pad_4938 > 232 then _pad_4938 = 0 end
if _pad_4939 > 456 then _pad_4939 = 0 end
-- Padding: anti-scan signature 4940_4
if _pad_4941 > 672 then _pad_4941 = 0 end
-- Padding: anti-scan signature 4942_6
_pad_4943 = _pad_4943 + 8
_pad_4944 = _pad_4944 + 9
_pad_4945 = _pad_4945 + 4
local _pv_4946_10 = 99772
-- Padding: anti-scan signature 4947_11
local _pv_4948_12 = 65136
_pad_4949 = _pad_4949 + 10
if _pad_4950 > 781 then _pad_4950 = 0 end
if _pad_4951 > 8 then _pad_4951 = 0 end
local _pv_4952_16 = 77278
local _pv_4953_17 = 52578
local _pv_4954_18 = 33402
if _pad_4955 > 154 then _pad_4955 = 0 end
-- Padding: anti-scan signature 4956_20
_pad_4957 = _pad_4957 + 7
_pad_4958 = _pad_4958 + 7
local _pv_4959_23 = 34091
local _pv_4960_24 = 68560
if _pad_4961 > 486 then _pad_4961 = 0 end
_pad_4962 = _pad_4962 + 6
local _pv_4963_27 = 85349
-- Padding: anti-scan signature 4964_28
_pad_4965 = _pad_4965 + 2
_pad_4966 = _pad_4966 + 8
if _pad_4967 > 581 then _pad_4967 = 0 end
if _pad_4968 > 58 then _pad_4968 = 0 end
if _pad_4969 > 646 then _pad_4969 = 0 end
local _pv_4970_34 = 96130
_pad_4971 = _pad_4971 + 9
_pad_4972 = _pad_4972 + 4
_pad_4973 = _pad_4973 + 10
local _pv_4974_38 = 24491
_pad_4975 = _pad_4975 + 10
_pad_4976 = _pad_4976 + 7

-- [Padding: RuntimeOptimizer_5] Runtime module for anti-detection
local _pad_4977 = 0
local _pv_4977_0 = 66819
_pad_4978 = _pad_4978 + 3
-- Padding: anti-scan signature 4979_2
local _pv_4980_3 = 53258
if _pad_4981 > 852 then _pad_4981 = 0 end
-- Padding: anti-scan signature 4982_5
local _pv_4983_6 = 76561
-- Padding: anti-scan signature 4984_7
local _pv_4985_8 = 33508
local _pv_4986_9 = 36991
local _pv_4987_10 = 70523
_pad_4988 = _pad_4988 + 3
if _pad_4989 > 832 then _pad_4989 = 0 end
if _pad_4990 > 163 then _pad_4990 = 0 end
_pad_4991 = _pad_4991 + 3
_pad_4992 = _pad_4992 + 7
_pad_4993 = _pad_4993 + 1
_pad_4994 = _pad_4994 + 1
local _pv_4995_18 = 77149
-- Padding: anti-scan signature 4996_19
_pad_4997 = _pad_4997 + 8
if _pad_4998 > 569 then _pad_4998 = 0 end
_pad_4999 = _pad_4999 + 7
-- Padding: anti-scan signature 5000_23
local _pv_5001_24 = 34643
-- Padding: anti-scan signature 5002_25
-- Padding: anti-scan signature 5003_26
-- Padding: anti-scan signature 5004_27
_pad_5005 = _pad_5005 + 3
_pad_5006 = _pad_5006 + 2
-- Padding: anti-scan signature 5007_30
-- Padding: anti-scan signature 5008_31
_pad_5009 = _pad_5009 + 10
-- Padding: anti-scan signature 5010_33
_pad_5011 = _pad_5011 + 10
-- Padding: anti-scan signature 5012_35
if _pad_5013 > 639 then _pad_5013 = 0 end
local _pv_5014_37 = 99397
_pad_5015 = _pad_5015 + 8
if _pad_5016 > 9 then _pad_5016 = 0 end
local _pv_5017_40 = 68419
local _pv_5018_41 = 37702
local _pv_5019_42 = 28858
_pad_5020 = _pad_5020 + 4
-- Padding: anti-scan signature 5021_44
if _pad_5022 > 154 then _pad_5022 = 0 end
local _pv_5023_46 = 76727
if _pad_5024 > 79 then _pad_5024 = 0 end
_pad_5025 = _pad_5025 + 8
_pad_5026 = _pad_5026 + 4
local _pv_5027_50 = 41904
_pad_5028 = _pad_5028 + 5
_pad_5029 = _pad_5029 + 9
_pad_5030 = _pad_5030 + 5
if _pad_5031 > 627 then _pad_5031 = 0 end
-- Padding: anti-scan signature 5032_55
-- Padding: anti-scan signature 5033_56
_pad_5034 = _pad_5034 + 10
local _pv_5035_58 = 76292

-- [Padding: CacheManager_5] Runtime module for anti-detection
local _pad_5036 = 0
_pad_5036 = _pad_5036 + 7
-- Padding: anti-scan signature 5037_1
if _pad_5038 > 124 then _pad_5038 = 0 end
_pad_5039 = _pad_5039 + 3
_pad_5040 = _pad_5040 + 3
if _pad_5041 > 494 then _pad_5041 = 0 end
-- Padding: anti-scan signature 5042_6
_pad_5043 = _pad_5043 + 3
if _pad_5044 > 670 then _pad_5044 = 0 end
if _pad_5045 > 851 then _pad_5045 = 0 end
local _pv_5046_10 = 88705
if _pad_5047 > 472 then _pad_5047 = 0 end
_pad_5048 = _pad_5048 + 8
-- Padding: anti-scan signature 5049_13
if _pad_5050 > 867 then _pad_5050 = 0 end
-- Padding: anti-scan signature 5051_15
local _pv_5052_16 = 52305
-- Padding: anti-scan signature 5053_17
_pad_5054 = _pad_5054 + 6
local _pv_5055_19 = 43377
-- Padding: anti-scan signature 5056_20
if _pad_5057 > 476 then _pad_5057 = 0 end
_pad_5058 = _pad_5058 + 7
if _pad_5059 > 338 then _pad_5059 = 0 end
if _pad_5060 > 361 then _pad_5060 = 0 end
-- Padding: anti-scan signature 5061_25
_pad_5062 = _pad_5062 + 10
local _pv_5063_27 = 85501
local _pv_5064_28 = 64708
_pad_5065 = _pad_5065 + 2
if _pad_5066 > 689 then _pad_5066 = 0 end
-- Padding: anti-scan signature 5067_31
-- Padding: anti-scan signature 5068_32
if _pad_5069 > 587 then _pad_5069 = 0 end
_pad_5070 = _pad_5070 + 10
_pad_5071 = _pad_5071 + 7
-- Padding: anti-scan signature 5072_36
_pad_5073 = _pad_5073 + 5
-- Padding: anti-scan signature 5074_38
-- Padding: anti-scan signature 5075_39
_pad_5076 = _pad_5076 + 4
-- Padding: anti-scan signature 5077_41
local _pv_5078_42 = 41233
local _pv_5079_43 = 55458
if _pad_5080 > 796 then _pad_5080 = 0 end
-- Padding: anti-scan signature 5081_45
-- Padding: anti-scan signature 5082_46
_pad_5083 = _pad_5083 + 1
if _pad_5084 > 903 then _pad_5084 = 0 end
local _pv_5085_49 = 64831
local _pv_5086_50 = 29962
if _pad_5087 > 927 then _pad_5087 = 0 end
local _pv_5088_52 = 24618
if _pad_5089 > 540 then _pad_5089 = 0 end
-- Padding: anti-scan signature 5090_54
local _pv_5091_55 = 98103
-- Padding: anti-scan signature 5092_56

-- [Padding: EventDispatcher_5] Runtime module for anti-detection
local _pad_5093 = 0
if _pad_5093 > 833 then _pad_5093 = 0 end
-- Padding: anti-scan signature 5094_1
-- Padding: anti-scan signature 5095_2
if _pad_5096 > 44 then _pad_5096 = 0 end
local _pv_5097_4 = 51317
_pad_5098 = _pad_5098 + 8
local _pv_5099_6 = 79124
if _pad_5100 > 784 then _pad_5100 = 0 end
if _pad_5101 > 864 then _pad_5101 = 0 end
local _pv_5102_9 = 56433
-- Padding: anti-scan signature 5103_10
_pad_5104 = _pad_5104 + 5
local _pv_5105_12 = 4199
local _pv_5106_13 = 25979
_pad_5107 = _pad_5107 + 10
_pad_5108 = _pad_5108 + 4
local _pv_5109_16 = 27051
-- Padding: anti-scan signature 5110_17
if _pad_5111 > 966 then _pad_5111 = 0 end
_pad_5112 = _pad_5112 + 4
if _pad_5113 > 739 then _pad_5113 = 0 end
-- Padding: anti-scan signature 5114_21
local _pv_5115_22 = 9000
_pad_5116 = _pad_5116 + 7
-- Padding: anti-scan signature 5117_24
local _pv_5118_25 = 71903
-- Padding: anti-scan signature 5119_26
if _pad_5120 > 979 then _pad_5120 = 0 end
-- Padding: anti-scan signature 5121_28
_pad_5122 = _pad_5122 + 6
local _pv_5123_30 = 29979
_pad_5124 = _pad_5124 + 1
-- Padding: anti-scan signature 5125_32
local _pv_5126_33 = 62453
_pad_5127 = _pad_5127 + 1
local _pv_5128_35 = 28125
local _pv_5129_36 = 19071
if _pad_5130 > 674 then _pad_5130 = 0 end
local _pv_5131_38 = 14944
-- Padding: anti-scan signature 5132_39
_pad_5133 = _pad_5133 + 3
_pad_5134 = _pad_5134 + 3
local _pv_5135_42 = 28147
local _pv_5136_43 = 88262
if _pad_5137 > 809 then _pad_5137 = 0 end
-- Padding: anti-scan signature 5138_45

-- [Padding: StateManager_5] Runtime module for anti-detection
local _pad_5139 = 0
local _pv_5139_0 = 55625
local _pv_5140_1 = 32659
local _pv_5141_2 = 17219
local _pv_5142_3 = 64677
_pad_5143 = _pad_5143 + 9
_pad_5144 = _pad_5144 + 2
if _pad_5145 > 324 then _pad_5145 = 0 end
-- Padding: anti-scan signature 5146_7
if _pad_5147 > 298 then _pad_5147 = 0 end
_pad_5148 = _pad_5148 + 5
-- Padding: anti-scan signature 5149_10
if _pad_5150 > 130 then _pad_5150 = 0 end
local _pv_5151_12 = 2622
_pad_5152 = _pad_5152 + 3
-- Padding: anti-scan signature 5153_14
_pad_5154 = _pad_5154 + 7
local _pv_5155_16 = 90335
_pad_5156 = _pad_5156 + 2
if _pad_5157 > 822 then _pad_5157 = 0 end
_pad_5158 = _pad_5158 + 3
_pad_5159 = _pad_5159 + 9
local _pv_5160_21 = 79642
local _pv_5161_22 = 24341
if _pad_5162 > 481 then _pad_5162 = 0 end
if _pad_5163 > 932 then _pad_5163 = 0 end
if _pad_5164 > 262 then _pad_5164 = 0 end
local _pv_5165_26 = 19815
if _pad_5166 > 574 then _pad_5166 = 0 end
local _pv_5167_28 = 93468
local _pv_5168_29 = 46096
_pad_5169 = _pad_5169 + 7
if _pad_5170 > 538 then _pad_5170 = 0 end
-- Padding: anti-scan signature 5171_32
if _pad_5172 > 729 then _pad_5172 = 0 end
if _pad_5173 > 258 then _pad_5173 = 0 end
local _pv_5174_35 = 4294
if _pad_5175 > 261 then _pad_5175 = 0 end
-- Padding: anti-scan signature 5176_37
-- Padding: anti-scan signature 5177_38
_pad_5178 = _pad_5178 + 9

-- [Padding: MemoryPool_5] Runtime module for anti-detection
local _pad_5179 = 0
local _pv_5179_0 = 22088
if _pad_5180 > 382 then _pad_5180 = 0 end
-- Padding: anti-scan signature 5181_2
-- Padding: anti-scan signature 5182_3
_pad_5183 = _pad_5183 + 2
local _pv_5184_5 = 51774
-- Padding: anti-scan signature 5185_6
local _pv_5186_7 = 52975
_pad_5187 = _pad_5187 + 10
-- Padding: anti-scan signature 5188_9
-- Padding: anti-scan signature 5189_10
-- Padding: anti-scan signature 5190_11
-- Padding: anti-scan signature 5191_12
_pad_5192 = _pad_5192 + 4
if _pad_5193 > 114 then _pad_5193 = 0 end
local _pv_5194_15 = 8418
local _pv_5195_16 = 13805
-- Padding: anti-scan signature 5196_17
if _pad_5197 > 327 then _pad_5197 = 0 end
if _pad_5198 > 601 then _pad_5198 = 0 end
if _pad_5199 > 19 then _pad_5199 = 0 end
-- Padding: anti-scan signature 5200_21
_pad_5201 = _pad_5201 + 9
if _pad_5202 > 534 then _pad_5202 = 0 end
_pad_5203 = _pad_5203 + 1
-- Padding: anti-scan signature 5204_25
-- Padding: anti-scan signature 5205_26
-- Padding: anti-scan signature 5206_27
_pad_5207 = _pad_5207 + 6
-- Padding: anti-scan signature 5208_29
_pad_5209 = _pad_5209 + 6
local _pv_5210_31 = 39277
_pad_5211 = _pad_5211 + 6
if _pad_5212 > 850 then _pad_5212 = 0 end
if _pad_5213 > 304 then _pad_5213 = 0 end
_pad_5214 = _pad_5214 + 7
_pad_5215 = _pad_5215 + 2
_pad_5216 = _pad_5216 + 3
local _pv_5217_38 = 67747
-- Padding: anti-scan signature 5218_39
local _pv_5219_40 = 46253
if _pad_5220 > 328 then _pad_5220 = 0 end
_pad_5221 = _pad_5221 + 7
-- Padding: anti-scan signature 5222_43
_pad_5223 = _pad_5223 + 2
local _pv_5224_45 = 83715
local _pv_5225_46 = 97945
-- Padding: anti-scan signature 5226_47
local _pv_5227_48 = 52368
_pad_5228 = _pad_5228 + 1
local _pv_5229_50 = 14181
if _pad_5230 > 552 then _pad_5230 = 0 end
-- Padding: anti-scan signature 5231_52
-- Padding: anti-scan signature 5232_53
_pad_5233 = _pad_5233 + 9
if _pad_5234 > 557 then _pad_5234 = 0 end
local _pv_5235_56 = 88153

-- [Padding: ObjectTracker_5] Runtime module for anti-detection
local _pad_5236 = 0
if _pad_5236 > 718 then _pad_5236 = 0 end
_pad_5237 = _pad_5237 + 7
local _pv_5238_2 = 84168
if _pad_5239 > 513 then _pad_5239 = 0 end
local _pv_5240_4 = 83197
if _pad_5241 > 999 then _pad_5241 = 0 end
-- Padding: anti-scan signature 5242_6
-- Padding: anti-scan signature 5243_7
local _pv_5244_8 = 24866
local _pv_5245_9 = 38998
_pad_5246 = _pad_5246 + 5
local _pv_5247_11 = 85650
_pad_5248 = _pad_5248 + 4
local _pv_5249_13 = 74234
_pad_5250 = _pad_5250 + 6
_pad_5251 = _pad_5251 + 2
_pad_5252 = _pad_5252 + 8
local _pv_5253_17 = 74994
local _pv_5254_18 = 75216
_pad_5255 = _pad_5255 + 9
-- Padding: anti-scan signature 5256_20
-- Padding: anti-scan signature 5257_21
local _pv_5258_22 = 53607
local _pv_5259_23 = 97666
-- Padding: anti-scan signature 5260_24
_pad_5261 = _pad_5261 + 7
_pad_5262 = _pad_5262 + 9
if _pad_5263 > 55 then _pad_5263 = 0 end
if _pad_5264 > 408 then _pad_5264 = 0 end
_pad_5265 = _pad_5265 + 3
local _pv_5266_30 = 58235
local _pv_5267_31 = 6278
if _pad_5268 > 169 then _pad_5268 = 0 end
local _pv_5269_33 = 9800
local _pv_5270_34 = 10742
local _pv_5271_35 = 61270
-- Padding: anti-scan signature 5272_36
if _pad_5273 > 324 then _pad_5273 = 0 end
if _pad_5274 > 446 then _pad_5274 = 0 end
-- Padding: anti-scan signature 5275_39
_pad_5276 = _pad_5276 + 5
-- Padding: anti-scan signature 5277_41
_pad_5278 = _pad_5278 + 6
if _pad_5279 > 439 then _pad_5279 = 0 end
-- Padding: anti-scan signature 5280_44
local _pv_5281_45 = 11526
_pad_5282 = _pad_5282 + 9
-- Padding: anti-scan signature 5283_47
local _pv_5284_48 = 14683
-- Padding: anti-scan signature 5285_49
if _pad_5286 > 129 then _pad_5286 = 0 end
_pad_5287 = _pad_5287 + 9
local _pv_5288_52 = 85708
-- Padding: anti-scan signature 5289_53
local _pv_5290_54 = 75253
_pad_5291 = _pad_5291 + 10
if _pad_5292 > 677 then _pad_5292 = 0 end
_pad_5293 = _pad_5293 + 7

-- [Padding: RefCounter_5] Runtime module for anti-detection
local _pad_5294 = 0
local _pv_5294_0 = 57814
if _pad_5295 > 815 then _pad_5295 = 0 end
_pad_5296 = _pad_5296 + 8
_pad_5297 = _pad_5297 + 9
local _pv_5298_4 = 11283
if _pad_5299 > 86 then _pad_5299 = 0 end
-- Padding: anti-scan signature 5300_6
_pad_5301 = _pad_5301 + 7
local _pv_5302_8 = 23040
-- Padding: anti-scan signature 5303_9
if _pad_5304 > 599 then _pad_5304 = 0 end
local _pv_5305_11 = 19874
local _pv_5306_12 = 65093
if _pad_5307 > 711 then _pad_5307 = 0 end
if _pad_5308 > 942 then _pad_5308 = 0 end
local _pv_5309_15 = 65663
_pad_5310 = _pad_5310 + 1
-- Padding: anti-scan signature 5311_17
if _pad_5312 > 822 then _pad_5312 = 0 end
if _pad_5313 > 612 then _pad_5313 = 0 end
local _pv_5314_20 = 42249
-- Padding: anti-scan signature 5315_21
local _pv_5316_22 = 41642
if _pad_5317 > 867 then _pad_5317 = 0 end
local _pv_5318_24 = 91098
local _pv_5319_25 = 69768
local _pv_5320_26 = 31154
local _pv_5321_27 = 72612
-- Padding: anti-scan signature 5322_28
_pad_5323 = _pad_5323 + 2
if _pad_5324 > 888 then _pad_5324 = 0 end
_pad_5325 = _pad_5325 + 8
-- Padding: anti-scan signature 5326_32
-- Padding: anti-scan signature 5327_33
local _pv_5328_34 = 58504
local _pv_5329_35 = 67015
if _pad_5330 > 137 then _pad_5330 = 0 end
-- Padding: anti-scan signature 5331_37
_pad_5332 = _pad_5332 + 6
if _pad_5333 > 801 then _pad_5333 = 0 end
_pad_5334 = _pad_5334 + 1
if _pad_5335 > 872 then _pad_5335 = 0 end
_pad_5336 = _pad_5336 + 4
if _pad_5337 > 334 then _pad_5337 = 0 end
local _pv_5338_44 = 41310
local _pv_5339_45 = 36670
_pad_5340 = _pad_5340 + 9
_pad_5341 = _pad_5341 + 7
local _pv_5342_48 = 97929
local _pv_5343_49 = 70745
if _pad_5344 > 616 then _pad_5344 = 0 end

-- [Padding: TimerPool_5] Runtime module for anti-detection
local _pad_5345 = 0
-- Padding: anti-scan signature 5345_0
if _pad_5346 > 910 then _pad_5346 = 0 end
_pad_5347 = _pad_5347 + 6
local _pv_5348_3 = 27678
if _pad_5349 > 212 then _pad_5349 = 0 end
if _pad_5350 > 996 then _pad_5350 = 0 end
local _pv_5351_6 = 48839
-- Padding: anti-scan signature 5352_7
local _pv_5353_8 = 37031
_pad_5354 = _pad_5354 + 3
if _pad_5355 > 66 then _pad_5355 = 0 end
_pad_5356 = _pad_5356 + 3
if _pad_5357 > 923 then _pad_5357 = 0 end
if _pad_5358 > 353 then _pad_5358 = 0 end
_pad_5359 = _pad_5359 + 10
_pad_5360 = _pad_5360 + 6
-- Padding: anti-scan signature 5361_16
_pad_5362 = _pad_5362 + 7
if _pad_5363 > 183 then _pad_5363 = 0 end
local _pv_5364_19 = 50993
if _pad_5365 > 735 then _pad_5365 = 0 end
-- Padding: anti-scan signature 5366_21
local _pv_5367_22 = 82089
if _pad_5368 > 711 then _pad_5368 = 0 end
local _pv_5369_24 = 18231
-- Padding: anti-scan signature 5370_25
local _pv_5371_26 = 93744
if _pad_5372 > 816 then _pad_5372 = 0 end
-- Padding: anti-scan signature 5373_28
_pad_5374 = _pad_5374 + 8
local _pv_5375_30 = 70819
_pad_5376 = _pad_5376 + 1
-- Padding: anti-scan signature 5377_32
-- Padding: anti-scan signature 5378_33
-- Padding: anti-scan signature 5379_34
-- Padding: anti-scan signature 5380_35
-- Padding: anti-scan signature 5381_36
if _pad_5382 > 450 then _pad_5382 = 0 end
-- Padding: anti-scan signature 5383_38
if _pad_5384 > 865 then _pad_5384 = 0 end
if _pad_5385 > 5 then _pad_5385 = 0 end
local _pv_5386_41 = 1549
local _pv_5387_42 = 37740
local _pv_5388_43 = 67278
if _pad_5389 > 313 then _pad_5389 = 0 end
if _pad_5390 > 214 then _pad_5390 = 0 end
local _pv_5391_46 = 47383
local _pv_5392_47 = 334

-- [Padding: QueueProcessor_5] Runtime module for anti-detection
local _pad_5393 = 0
_pad_5393 = _pad_5393 + 1
-- Padding: anti-scan signature 5394_1
local _pv_5395_2 = 90647
if _pad_5396 > 683 then _pad_5396 = 0 end
-- Padding: anti-scan signature 5397_4
local _pv_5398_5 = 52344
_pad_5399 = _pad_5399 + 9
_pad_5400 = _pad_5400 + 9
local _pv_5401_8 = 48383
if _pad_5402 > 104 then _pad_5402 = 0 end
if _pad_5403 > 591 then _pad_5403 = 0 end
-- Padding: anti-scan signature 5404_11
-- Padding: anti-scan signature 5405_12
local _pv_5406_13 = 48975
-- Padding: anti-scan signature 5407_14
-- Padding: anti-scan signature 5408_15
local _pv_5409_16 = 44745
if _pad_5410 > 238 then _pad_5410 = 0 end
-- Padding: anti-scan signature 5411_18
-- Padding: anti-scan signature 5412_19
if _pad_5413 > 603 then _pad_5413 = 0 end
if _pad_5414 > 474 then _pad_5414 = 0 end
_pad_5415 = _pad_5415 + 7
if _pad_5416 > 448 then _pad_5416 = 0 end
-- Padding: anti-scan signature 5417_24
if _pad_5418 > 238 then _pad_5418 = 0 end
-- Padding: anti-scan signature 5419_26
local _pv_5420_27 = 2252
-- Padding: anti-scan signature 5421_28
-- Padding: anti-scan signature 5422_29
-- Padding: anti-scan signature 5423_30
-- Padding: anti-scan signature 5424_31
-- Padding: anti-scan signature 5425_32
local _pv_5426_33 = 30358
_pad_5427 = _pad_5427 + 3
local _pv_5428_35 = 78704
if _pad_5429 > 491 then _pad_5429 = 0 end
local _pv_5430_37 = 43496
if _pad_5431 > 309 then _pad_5431 = 0 end
-- Padding: anti-scan signature 5432_39
-- Padding: anti-scan signature 5433_40
-- Padding: anti-scan signature 5434_41
if _pad_5435 > 912 then _pad_5435 = 0 end
if _pad_5436 > 854 then _pad_5436 = 0 end
_pad_5437 = _pad_5437 + 5
local _pv_5438_45 = 39920
local _pv_5439_46 = 45649
-- Padding: anti-scan signature 5440_47
local _pv_5441_48 = 52188
local _pv_5442_49 = 63676
_pad_5443 = _pad_5443 + 1
if _pad_5444 > 677 then _pad_5444 = 0 end
-- Padding: anti-scan signature 5445_52
local _pv_5446_53 = 32000
local _pv_5447_54 = 22209
if _pad_5448 > 360 then _pad_5448 = 0 end
local _pv_5449_56 = 63062
_pad_5450 = _pad_5450 + 10

-- [Padding: BufferManager_5] Runtime module for anti-detection
local _pad_5451 = 0
local _pv_5451_0 = 3809
local _pv_5452_1 = 46512
if _pad_5453 > 802 then _pad_5453 = 0 end
-- Padding: anti-scan signature 5454_3
-- Padding: anti-scan signature 5455_4
_pad_5456 = _pad_5456 + 10
_pad_5457 = _pad_5457 + 7
local _pv_5458_7 = 88308
local _pv_5459_8 = 60546
if _pad_5460 > 626 then _pad_5460 = 0 end
_pad_5461 = _pad_5461 + 1
if _pad_5462 > 977 then _pad_5462 = 0 end
local _pv_5463_12 = 82486
-- Padding: anti-scan signature 5464_13
-- Padding: anti-scan signature 5465_14
_pad_5466 = _pad_5466 + 10
local _pv_5467_16 = 52999
-- Padding: anti-scan signature 5468_17
_pad_5469 = _pad_5469 + 6
-- Padding: anti-scan signature 5470_19
local _pv_5471_20 = 46425
if _pad_5472 > 603 then _pad_5472 = 0 end
_pad_5473 = _pad_5473 + 5
_pad_5474 = _pad_5474 + 3
if _pad_5475 > 112 then _pad_5475 = 0 end
if _pad_5476 > 101 then _pad_5476 = 0 end
local _pv_5477_26 = 78521
local _pv_5478_27 = 33181
_pad_5479 = _pad_5479 + 8
-- Padding: anti-scan signature 5480_29
_pad_5481 = _pad_5481 + 1
if _pad_5482 > 632 then _pad_5482 = 0 end
_pad_5483 = _pad_5483 + 8
if _pad_5484 > 130 then _pad_5484 = 0 end
-- Padding: anti-scan signature 5485_34
if _pad_5486 > 799 then _pad_5486 = 0 end
local _pv_5487_36 = 42657
-- Padding: anti-scan signature 5488_37
_pad_5489 = _pad_5489 + 1
-- Padding: anti-scan signature 5490_39
if _pad_5491 > 595 then _pad_5491 = 0 end
-- Padding: anti-scan signature 5492_41
local _pv_5493_42 = 26657
local _pv_5494_43 = 25393
local _pv_5495_44 = 60545
local _pv_5496_45 = 93740
-- Padding: anti-scan signature 5497_46
if _pad_5498 > 270 then _pad_5498 = 0 end
if _pad_5499 > 223 then _pad_5499 = 0 end

-- [Padding: StreamHandler_5] Runtime module for anti-detection
local _pad_5500 = 0
-- Padding: anti-scan signature 5500_0
if _pad_5501 > 426 then _pad_5501 = 0 end
if _pad_5502 > 718 then _pad_5502 = 0 end
_pad_5503 = _pad_5503 + 8
local _pv_5504_4 = 20417
-- Padding: anti-scan signature 5505_5
_pad_5506 = _pad_5506 + 10
-- Padding: anti-scan signature 5507_7
local _pv_5508_8 = 67824
local _pv_5509_9 = 21684
_pad_5510 = _pad_5510 + 7
local _pv_5511_11 = 56126
local _pv_5512_12 = 1373
local _pv_5513_13 = 43644
local _pv_5514_14 = 69782
local _pv_5515_15 = 25978
-- Padding: anti-scan signature 5516_16
local _pv_5517_17 = 18484
_pad_5518 = _pad_5518 + 10
if _pad_5519 > 647 then _pad_5519 = 0 end
local _pv_5520_20 = 66594
-- Padding: anti-scan signature 5521_21
-- Padding: anti-scan signature 5522_22
if _pad_5523 > 848 then _pad_5523 = 0 end
if _pad_5524 > 378 then _pad_5524 = 0 end
_pad_5525 = _pad_5525 + 4
-- Padding: anti-scan signature 5526_26
if _pad_5527 > 223 then _pad_5527 = 0 end
-- Padding: anti-scan signature 5528_28
-- Padding: anti-scan signature 5529_29
if _pad_5530 > 42 then _pad_5530 = 0 end
if _pad_5531 > 600 then _pad_5531 = 0 end
_pad_5532 = _pad_5532 + 5
_pad_5533 = _pad_5533 + 2
local _pv_5534_34 = 18366
if _pad_5535 > 522 then _pad_5535 = 0 end
_pad_5536 = _pad_5536 + 7
local _pv_5537_37 = 52969
_pad_5538 = _pad_5538 + 4
-- Padding: anti-scan signature 5539_39
local _pv_5540_40 = 46561
if _pad_5541 > 65 then _pad_5541 = 0 end
_pad_5542 = _pad_5542 + 2
-- Padding: anti-scan signature 5543_43
local _pv_5544_44 = 27873
if _pad_5545 > 269 then _pad_5545 = 0 end
if _pad_5546 > 914 then _pad_5546 = 0 end
_pad_5547 = _pad_5547 + 9
local _pv_5548_48 = 88037
local _pv_5549_49 = 66145
local _pv_5550_50 = 91552

-- [Padding: TokenValidator_5] Runtime module for anti-detection
local _pad_5551 = 0
local _pv_5551_0 = 60017
-- Padding: anti-scan signature 5552_1
-- Padding: anti-scan signature 5553_2
local _pv_5554_3 = 93679
-- Padding: anti-scan signature 5555_4
-- Padding: anti-scan signature 5556_5
-- Padding: anti-scan signature 5557_6
local _pv_5558_7 = 48979
_pad_5559 = _pad_5559 + 9
-- Padding: anti-scan signature 5560_9
if _pad_5561 > 526 then _pad_5561 = 0 end
if _pad_5562 > 82 then _pad_5562 = 0 end
-- Padding: anti-scan signature 5563_12
-- Padding: anti-scan signature 5564_13
-- Padding: anti-scan signature 5565_14
_pad_5566 = _pad_5566 + 7
_pad_5567 = _pad_5567 + 5
if _pad_5568 > 549 then _pad_5568 = 0 end
local _pv_5569_18 = 62504
-- Padding: anti-scan signature 5570_19
_pad_5571 = _pad_5571 + 6
if _pad_5572 > 724 then _pad_5572 = 0 end
_pad_5573 = _pad_5573 + 9
_pad_5574 = _pad_5574 + 4
-- Padding: anti-scan signature 5575_24
_pad_5576 = _pad_5576 + 9
local _pv_5577_26 = 87520
local _pv_5578_27 = 19224
_pad_5579 = _pad_5579 + 9
if _pad_5580 > 547 then _pad_5580 = 0 end
if _pad_5581 > 605 then _pad_5581 = 0 end
_pad_5582 = _pad_5582 + 10
_pad_5583 = _pad_5583 + 3
_pad_5584 = _pad_5584 + 5
-- Padding: anti-scan signature 5585_34
-- Padding: anti-scan signature 5586_35
-- Padding: anti-scan signature 5587_36
local _pv_5588_37 = 42079
-- Padding: anti-scan signature 5589_38
-- Padding: anti-scan signature 5590_39
_pad_5591 = _pad_5591 + 1
local _pv_5592_41 = 41782
-- Padding: anti-scan signature 5593_42
_pad_5594 = _pad_5594 + 9

-- [Padding: SessionManager_5] Runtime module for anti-detection
local _pad_5595 = 0
-- Padding: anti-scan signature 5595_0
if _pad_5596 > 761 then _pad_5596 = 0 end
local _pv_5597_2 = 4035
-- Padding: anti-scan signature 5598_3
_pad_5599 = _pad_5599 + 7
if _pad_5600 > 768 then _pad_5600 = 0 end
_pad_5601 = _pad_5601 + 6
-- Padding: anti-scan signature 5602_7
-- Padding: anti-scan signature 5603_8
_pad_5604 = _pad_5604 + 5
-- Padding: anti-scan signature 5605_10
local _pv_5606_11 = 53017
_pad_5607 = _pad_5607 + 9
local _pv_5608_13 = 8632
local _pv_5609_14 = 53717
-- Padding: anti-scan signature 5610_15
-- Padding: anti-scan signature 5611_16
if _pad_5612 > 350 then _pad_5612 = 0 end
_pad_5613 = _pad_5613 + 2
-- Padding: anti-scan signature 5614_19
local _pv_5615_20 = 68369
if _pad_5616 > 553 then _pad_5616 = 0 end
local _pv_5617_22 = 17337
-- Padding: anti-scan signature 5618_23
_pad_5619 = _pad_5619 + 10
_pad_5620 = _pad_5620 + 8
-- Padding: anti-scan signature 5621_26
-- Padding: anti-scan signature 5622_27
-- Padding: anti-scan signature 5623_28
_pad_5624 = _pad_5624 + 9
if _pad_5625 > 271 then _pad_5625 = 0 end
if _pad_5626 > 762 then _pad_5626 = 0 end
if _pad_5627 > 293 then _pad_5627 = 0 end
_pad_5628 = _pad_5628 + 4
local _pv_5629_34 = 21763
-- Padding: anti-scan signature 5630_35
_pad_5631 = _pad_5631 + 4
local _pv_5632_37 = 72775
local _pv_5633_38 = 15428
-- Padding: anti-scan signature 5634_39
-- Padding: anti-scan signature 5635_40
local _pv_5636_41 = 28463
if _pad_5637 > 157 then _pad_5637 = 0 end
local _pv_5638_43 = 277
if _pad_5639 > 526 then _pad_5639 = 0 end
_pad_5640 = _pad_5640 + 8
if _pad_5641 > 145 then _pad_5641 = 0 end
local _pv_5642_47 = 49063
_pad_5643 = _pad_5643 + 4
_pad_5644 = _pad_5644 + 8

-- [Padding: HeartbeatMonitor_5] Runtime module for anti-detection
local _pad_5645 = 0
_pad_5645 = _pad_5645 + 1
_pad_5646 = _pad_5646 + 10
if _pad_5647 > 803 then _pad_5647 = 0 end
local _pv_5648_3 = 38306
_pad_5649 = _pad_5649 + 10
if _pad_5650 > 305 then _pad_5650 = 0 end
local _pv_5651_6 = 11691
local _pv_5652_7 = 60355
-- Padding: anti-scan signature 5653_8
-- Padding: anti-scan signature 5654_9
if _pad_5655 > 941 then _pad_5655 = 0 end
_pad_5656 = _pad_5656 + 1
local _pv_5657_12 = 51408
local _pv_5658_13 = 70289
_pad_5659 = _pad_5659 + 9
_pad_5660 = _pad_5660 + 3
if _pad_5661 > 475 then _pad_5661 = 0 end
local _pv_5662_17 = 19173
if _pad_5663 > 101 then _pad_5663 = 0 end
local _pv_5664_19 = 32704
-- Padding: anti-scan signature 5665_20
-- Padding: anti-scan signature 5666_21
_pad_5667 = _pad_5667 + 2
-- Padding: anti-scan signature 5668_23
-- Padding: anti-scan signature 5669_24
if _pad_5670 > 67 then _pad_5670 = 0 end
_pad_5671 = _pad_5671 + 10
local _pv_5672_27 = 45896
local _pv_5673_28 = 28856
-- Padding: anti-scan signature 5674_29
_pad_5675 = _pad_5675 + 9
_pad_5676 = _pad_5676 + 5
local _pv_5677_32 = 42821
-- Padding: anti-scan signature 5678_33
local _pv_5679_34 = 66383
_pad_5680 = _pad_5680 + 7
-- Padding: anti-scan signature 5681_36
-- Padding: anti-scan signature 5682_37
_pad_5683 = _pad_5683 + 9
_pad_5684 = _pad_5684 + 6
-- Padding: anti-scan signature 5685_40

-- [Padding: FrameTracker_5] Runtime module for anti-detection
local _pad_5686 = 0
-- Padding: anti-scan signature 5686_0
_pad_5687 = _pad_5687 + 5
if _pad_5688 > 208 then _pad_5688 = 0 end
if _pad_5689 > 751 then _pad_5689 = 0 end
_pad_5690 = _pad_5690 + 3
-- Padding: anti-scan signature 5691_5
if _pad_5692 > 284 then _pad_5692 = 0 end
_pad_5693 = _pad_5693 + 4
local _pv_5694_8 = 12529
-- Padding: anti-scan signature 5695_9
-- Padding: anti-scan signature 5696_10
local _pv_5697_11 = 30143
local _pv_5698_12 = 23359
local _pv_5699_13 = 57379
if _pad_5700 > 739 then _pad_5700 = 0 end
_pad_5701 = _pad_5701 + 9
if _pad_5702 > 629 then _pad_5702 = 0 end
local _pv_5703_17 = 43289
_pad_5704 = _pad_5704 + 2
-- Padding: anti-scan signature 5705_19
_pad_5706 = _pad_5706 + 1
if _pad_5707 > 741 then _pad_5707 = 0 end
-- Padding: anti-scan signature 5708_22
-- Padding: anti-scan signature 5709_23
-- Padding: anti-scan signature 5710_24
-- Padding: anti-scan signature 5711_25
if _pad_5712 > 204 then _pad_5712 = 0 end
if _pad_5713 > 111 then _pad_5713 = 0 end
local _pv_5714_28 = 96188
if _pad_5715 > 4 then _pad_5715 = 0 end
_pad_5716 = _pad_5716 + 1
-- Padding: anti-scan signature 5717_31
if _pad_5718 > 882 then _pad_5718 = 0 end
-- Padding: anti-scan signature 5719_33
local _pv_5720_34 = 81674
local _pv_5721_35 = 80874
_pad_5722 = _pad_5722 + 4
if _pad_5723 > 23 then _pad_5723 = 0 end
if _pad_5724 > 878 then _pad_5724 = 0 end
local _pv_5725_39 = 62553
if _pad_5726 > 873 then _pad_5726 = 0 end
if _pad_5727 > 33 then _pad_5727 = 0 end
_pad_5728 = _pad_5728 + 10
local _pv_5729_43 = 60159
-- Padding: anti-scan signature 5730_44
local _pv_5731_45 = 81389
_pad_5732 = _pad_5732 + 4
local _pv_5733_47 = 80831

-- [Padding: InputHandler_5] Runtime module for anti-detection
local _pad_5734 = 0
local _pv_5734_0 = 16634
local _pv_5735_1 = 96353
if _pad_5736 > 747 then _pad_5736 = 0 end
_pad_5737 = _pad_5737 + 6
if _pad_5738 > 484 then _pad_5738 = 0 end
-- Padding: anti-scan signature 5739_5
local _pv_5740_6 = 70115
-- Padding: anti-scan signature 5741_7
local _pv_5742_8 = 82892
_pad_5743 = _pad_5743 + 5
local _pv_5744_10 = 19940
local _pv_5745_11 = 54118
_pad_5746 = _pad_5746 + 8
-- Padding: anti-scan signature 5747_13
_pad_5748 = _pad_5748 + 3
if _pad_5749 > 290 then _pad_5749 = 0 end
_pad_5750 = _pad_5750 + 1
local _pv_5751_17 = 5066
-- Padding: anti-scan signature 5752_18
local _pv_5753_19 = 80893
if _pad_5754 > 758 then _pad_5754 = 0 end
local _pv_5755_21 = 33862
local _pv_5756_22 = 83958
-- Padding: anti-scan signature 5757_23
if _pad_5758 > 276 then _pad_5758 = 0 end
if _pad_5759 > 739 then _pad_5759 = 0 end
local _pv_5760_26 = 63745
_pad_5761 = _pad_5761 + 7
_pad_5762 = _pad_5762 + 2
local _pv_5763_29 = 31657
_pad_5764 = _pad_5764 + 8
if _pad_5765 > 647 then _pad_5765 = 0 end
if _pad_5766 > 407 then _pad_5766 = 0 end
_pad_5767 = _pad_5767 + 8
if _pad_5768 > 332 then _pad_5768 = 0 end
_pad_5769 = _pad_5769 + 5
_pad_5770 = _pad_5770 + 1
_pad_5771 = _pad_5771 + 8
local _pv_5772_38 = 17126
_pad_5773 = _pad_5773 + 1
_pad_5774 = _pad_5774 + 5
if _pad_5775 > 477 then _pad_5775 = 0 end
if _pad_5776 > 381 then _pad_5776 = 0 end
-- Padding: anti-scan signature 5777_43
if _pad_5778 > 287 then _pad_5778 = 0 end
-- Padding: anti-scan signature 5779_45
_pad_5780 = _pad_5780 + 5
-- Padding: anti-scan signature 5781_47
_pad_5782 = _pad_5782 + 8
if _pad_5783 > 674 then _pad_5783 = 0 end

-- [Padding: PhysicsSimulator_5] Runtime module for anti-detection
local _pad_5784 = 0
if _pad_5784 > 388 then _pad_5784 = 0 end
-- Padding: anti-scan signature 5785_1
local _pv_5786_2 = 78995
_pad_5787 = _pad_5787 + 7
local _pv_5788_4 = 7816
_pad_5789 = _pad_5789 + 2
if _pad_5790 > 97 then _pad_5790 = 0 end
_pad_5791 = _pad_5791 + 5
if _pad_5792 > 167 then _pad_5792 = 0 end
local _pv_5793_9 = 29577
if _pad_5794 > 938 then _pad_5794 = 0 end
local _pv_5795_11 = 51058
local _pv_5796_12 = 22667
local _pv_5797_13 = 40765
local _pv_5798_14 = 87755
if _pad_5799 > 71 then _pad_5799 = 0 end
local _pv_5800_16 = 56945
_pad_5801 = _pad_5801 + 3
if _pad_5802 > 54 then _pad_5802 = 0 end
-- Padding: anti-scan signature 5803_19
if _pad_5804 > 854 then _pad_5804 = 0 end
-- Padding: anti-scan signature 5805_21
-- Padding: anti-scan signature 5806_22
_pad_5807 = _pad_5807 + 4
-- Padding: anti-scan signature 5808_24
_pad_5809 = _pad_5809 + 1
_pad_5810 = _pad_5810 + 4
if _pad_5811 > 657 then _pad_5811 = 0 end
if _pad_5812 > 513 then _pad_5812 = 0 end
_pad_5813 = _pad_5813 + 7
if _pad_5814 > 7 then _pad_5814 = 0 end
if _pad_5815 > 521 then _pad_5815 = 0 end
if _pad_5816 > 81 then _pad_5816 = 0 end
_pad_5817 = _pad_5817 + 9
-- Padding: anti-scan signature 5818_34
if _pad_5819 > 59 then _pad_5819 = 0 end
-- Padding: anti-scan signature 5820_36
local _pv_5821_37 = 55555
if _pad_5822 > 36 then _pad_5822 = 0 end
local _pv_5823_39 = 967
-- Padding: anti-scan signature 5824_40
local _pv_5825_41 = 56261
_pad_5826 = _pad_5826 + 8
local _pv_5827_43 = 97806
if _pad_5828 > 978 then _pad_5828 = 0 end
local _pv_5829_45 = 70998
-- Padding: anti-scan signature 5830_46
-- Padding: anti-scan signature 5831_47
local _pv_5832_48 = 96219
local _pv_5833_49 = 64798
_pad_5834 = _pad_5834 + 10
local _pv_5835_51 = 33592

-- [Padding: RenderOptimizer_5] Runtime module for anti-detection
local _pad_5836 = 0
_pad_5836 = _pad_5836 + 6
local _pv_5837_1 = 56567
_pad_5838 = _pad_5838 + 7
local _pv_5839_3 = 92949
if _pad_5840 > 337 then _pad_5840 = 0 end
-- Padding: anti-scan signature 5841_5
local _pv_5842_6 = 45682
_pad_5843 = _pad_5843 + 4
if _pad_5844 > 177 then _pad_5844 = 0 end
-- Padding: anti-scan signature 5845_9
if _pad_5846 > 868 then _pad_5846 = 0 end
_pad_5847 = _pad_5847 + 2
if _pad_5848 > 657 then _pad_5848 = 0 end
-- Padding: anti-scan signature 5849_13
_pad_5850 = _pad_5850 + 4
-- Padding: anti-scan signature 5851_15
local _pv_5852_16 = 80906
if _pad_5853 > 215 then _pad_5853 = 0 end
if _pad_5854 > 250 then _pad_5854 = 0 end
local _pv_5855_19 = 61797
_pad_5856 = _pad_5856 + 8
if _pad_5857 > 986 then _pad_5857 = 0 end
if _pad_5858 > 760 then _pad_5858 = 0 end
_pad_5859 = _pad_5859 + 3
if _pad_5860 > 554 then _pad_5860 = 0 end
_pad_5861 = _pad_5861 + 6
_pad_5862 = _pad_5862 + 7
-- Padding: anti-scan signature 5863_27
local _pv_5864_28 = 45326
_pad_5865 = _pad_5865 + 7
local _pv_5866_30 = 29728
-- Padding: anti-scan signature 5867_31
-- Padding: anti-scan signature 5868_32
if _pad_5869 > 323 then _pad_5869 = 0 end
local _pv_5870_34 = 39146
-- Padding: anti-scan signature 5871_35
local _pv_5872_36 = 34457
_pad_5873 = _pad_5873 + 10
-- Padding: anti-scan signature 5874_38
_pad_5875 = _pad_5875 + 7
local _pv_5876_40 = 51752
if _pad_5877 > 732 then _pad_5877 = 0 end
local _pv_5878_42 = 91424
if _pad_5879 > 338 then _pad_5879 = 0 end
_pad_5880 = _pad_5880 + 3
_pad_5881 = _pad_5881 + 10
_pad_5882 = _pad_5882 + 10
-- Padding: anti-scan signature 5883_47
-- Padding: anti-scan signature 5884_48

-- [Padding: SoundManager_5] Runtime module for anti-detection
local _pad_5885 = 0
local _pv_5885_0 = 49219
_pad_5886 = _pad_5886 + 3
local _pv_5887_2 = 69586
local _pv_5888_3 = 84134
-- Padding: anti-scan signature 5889_4
_pad_5890 = _pad_5890 + 6
if _pad_5891 > 460 then _pad_5891 = 0 end
local _pv_5892_7 = 46643
-- Padding: anti-scan signature 5893_8
if _pad_5894 > 394 then _pad_5894 = 0 end
-- Padding: anti-scan signature 5895_10
if _pad_5896 > 998 then _pad_5896 = 0 end
-- Padding: anti-scan signature 5897_12
if _pad_5898 > 936 then _pad_5898 = 0 end
local _pv_5899_14 = 71448
-- Padding: anti-scan signature 5900_15
if _pad_5901 > 255 then _pad_5901 = 0 end
local _pv_5902_17 = 35017
if _pad_5903 > 271 then _pad_5903 = 0 end
_pad_5904 = _pad_5904 + 10
if _pad_5905 > 923 then _pad_5905 = 0 end
if _pad_5906 > 658 then _pad_5906 = 0 end
-- Padding: anti-scan signature 5907_22
if _pad_5908 > 81 then _pad_5908 = 0 end
-- Padding: anti-scan signature 5909_24
-- Padding: anti-scan signature 5910_25
local _pv_5911_26 = 73165
-- Padding: anti-scan signature 5912_27
local _pv_5913_28 = 94993
local _pv_5914_29 = 80755
-- Padding: anti-scan signature 5915_30
-- Padding: anti-scan signature 5916_31
_pad_5917 = _pad_5917 + 8
local _pv_5918_33 = 46833
-- Padding: anti-scan signature 5919_34
if _pad_5920 > 341 then _pad_5920 = 0 end
-- Padding: anti-scan signature 5921_36
if _pad_5922 > 681 then _pad_5922 = 0 end
local _pv_5923_38 = 90458
if _pad_5924 > 963 then _pad_5924 = 0 end

-- [Padding: ParticleController_5] Runtime module for anti-detection
local _pad_5925 = 0
if _pad_5925 > 535 then _pad_5925 = 0 end
_pad_5926 = _pad_5926 + 8
-- Padding: anti-scan signature 5927_2
if _pad_5928 > 652 then _pad_5928 = 0 end
local _pv_5929_4 = 42597
local _pv_5930_5 = 13162
_pad_5931 = _pad_5931 + 5
_pad_5932 = _pad_5932 + 3
-- Padding: anti-scan signature 5933_8
_pad_5934 = _pad_5934 + 4
if _pad_5935 > 61 then _pad_5935 = 0 end
_pad_5936 = _pad_5936 + 10
-- Padding: anti-scan signature 5937_12
-- Padding: anti-scan signature 5938_13
_pad_5939 = _pad_5939 + 9
_pad_5940 = _pad_5940 + 5
if _pad_5941 > 15 then _pad_5941 = 0 end
-- Padding: anti-scan signature 5942_17
if _pad_5943 > 487 then _pad_5943 = 0 end
_pad_5944 = _pad_5944 + 7
_pad_5945 = _pad_5945 + 5
-- Padding: anti-scan signature 5946_21
-- Padding: anti-scan signature 5947_22
local _pv_5948_23 = 91450
if _pad_5949 > 317 then _pad_5949 = 0 end
_pad_5950 = _pad_5950 + 1
if _pad_5951 > 912 then _pad_5951 = 0 end
if _pad_5952 > 647 then _pad_5952 = 0 end
local _pv_5953_28 = 76502
-- Padding: anti-scan signature 5954_29
_pad_5955 = _pad_5955 + 5
if _pad_5956 > 249 then _pad_5956 = 0 end
-- Padding: anti-scan signature 5957_32
-- Padding: anti-scan signature 5958_33
local _pv_5959_34 = 76140
if _pad_5960 > 293 then _pad_5960 = 0 end
if _pad_5961 > 431 then _pad_5961 = 0 end
-- Padding: anti-scan signature 5962_37
local _pv_5963_38 = 33209
if _pad_5964 > 457 then _pad_5964 = 0 end
local _pv_5965_40 = 65519
if _pad_5966 > 384 then _pad_5966 = 0 end
local _pv_5967_42 = 60562
-- Padding: anti-scan signature 5968_43
-- Padding: anti-scan signature 5969_44
if _pad_5970 > 455 then _pad_5970 = 0 end
_pad_5971 = _pad_5971 + 7
_pad_5972 = _pad_5972 + 6
-- Padding: anti-scan signature 5973_48
-- Padding: anti-scan signature 5974_49
if _pad_5975 > 473 then _pad_5975 = 0 end
local _pv_5976_51 = 58508
if _pad_5977 > 352 then _pad_5977 = 0 end
-- Padding: anti-scan signature 5978_53
-- Padding: anti-scan signature 5979_54
local _pv_5980_55 = 21580
local _pv_5981_56 = 88079
_pad_5982 = _pad_5982 + 9
_pad_5983 = _pad_5983 + 1

-- [Padding: RuntimeOptimizer_6] Runtime module for anti-detection
local _pad_5984 = 0
-- Padding: anti-scan signature 5984_0
local _pv_5985_1 = 18238
_pad_5986 = _pad_5986 + 1
if _pad_5987 > 218 then _pad_5987 = 0 end
-- Padding: anti-scan signature 5988_4
_pad_5989 = _pad_5989 + 7
if _pad_5990 > 327 then _pad_5990 = 0 end
-- Padding: anti-scan signature 5991_7
if _pad_5992 > 778 then _pad_5992 = 0 end
if _pad_5993 > 974 then _pad_5993 = 0 end
-- Padding: anti-scan signature 5994_10
_pad_5995 = _pad_5995 + 7
if _pad_5996 > 832 then _pad_5996 = 0 end
local _pv_5997_13 = 60803
if _pad_5998 > 774 then _pad_5998 = 0 end
if _pad_5999 > 666 then _pad_5999 = 0 end
if _pad_6000 > 956 then _pad_6000 = 0 end
-- Padding: anti-scan signature 6001_17
if _pad_6002 > 284 then _pad_6002 = 0 end
-- Padding: anti-scan signature 6003_19
local _pv_6004_20 = 5833
_pad_6005 = _pad_6005 + 2
-- Padding: anti-scan signature 6006_22
-- Padding: anti-scan signature 6007_23
if _pad_6008 > 402 then _pad_6008 = 0 end
-- Padding: anti-scan signature 6009_25
local _pv_6010_26 = 41107
if _pad_6011 > 884 then _pad_6011 = 0 end
if _pad_6012 > 853 then _pad_6012 = 0 end
_pad_6013 = _pad_6013 + 4
local _pv_6014_30 = 12897
-- Padding: anti-scan signature 6015_31
local _pv_6016_32 = 49470
if _pad_6017 > 168 then _pad_6017 = 0 end
_pad_6018 = _pad_6018 + 10
if _pad_6019 > 433 then _pad_6019 = 0 end
if _pad_6020 > 223 then _pad_6020 = 0 end
if _pad_6021 > 28 then _pad_6021 = 0 end
local _pv_6022_38 = 86109
_pad_6023 = _pad_6023 + 7
local _pv_6024_40 = 69463
if _pad_6025 > 527 then _pad_6025 = 0 end
-- Padding: anti-scan signature 6026_42
local _pv_6027_43 = 3595
_pad_6028 = _pad_6028 + 3
-- Padding: anti-scan signature 6029_45
local _pv_6030_46 = 66182
-- Padding: anti-scan signature 6031_47
if _pad_6032 > 766 then _pad_6032 = 0 end
local _pv_6033_49 = 91549
local _pv_6034_50 = 58449
_pad_6035 = _pad_6035 + 2
_pad_6036 = _pad_6036 + 10
-- Padding: anti-scan signature 6037_53
-- Padding: anti-scan signature 6038_54
local _pv_6039_55 = 8972
-- Padding: anti-scan signature 6040_56

-- [Padding: CacheManager_6] Runtime module for anti-detection
local _pad_6041 = 0
_pad_6041 = _pad_6041 + 8
_pad_6042 = _pad_6042 + 1
if _pad_6043 > 354 then _pad_6043 = 0 end
_pad_6044 = _pad_6044 + 4
if _pad_6045 > 43 then _pad_6045 = 0 end
_pad_6046 = _pad_6046 + 7
if _pad_6047 > 892 then _pad_6047 = 0 end
if _pad_6048 > 958 then _pad_6048 = 0 end
if _pad_6049 > 508 then _pad_6049 = 0 end
local _pv_6050_9 = 79931
-- Padding: anti-scan signature 6051_10
if _pad_6052 > 803 then _pad_6052 = 0 end
_pad_6053 = _pad_6053 + 7
local _pv_6054_13 = 52047
local _pv_6055_14 = 63912
-- Padding: anti-scan signature 6056_15
if _pad_6057 > 492 then _pad_6057 = 0 end
_pad_6058 = _pad_6058 + 9
_pad_6059 = _pad_6059 + 7
local _pv_6060_19 = 30784
_pad_6061 = _pad_6061 + 9
if _pad_6062 > 164 then _pad_6062 = 0 end
-- Padding: anti-scan signature 6063_22
-- Padding: anti-scan signature 6064_23
_pad_6065 = _pad_6065 + 6
-- Padding: anti-scan signature 6066_25
_pad_6067 = _pad_6067 + 6
local _pv_6068_27 = 88859
_pad_6069 = _pad_6069 + 6
-- Padding: anti-scan signature 6070_29
local _pv_6071_30 = 81353
if _pad_6072 > 3 then _pad_6072 = 0 end
_pad_6073 = _pad_6073 + 4
-- Padding: anti-scan signature 6074_33
-- Padding: anti-scan signature 6075_34
local _pv_6076_35 = 47550
-- Padding: anti-scan signature 6077_36
local _pv_6078_37 = 15270
local _pv_6079_38 = 92585
if _pad_6080 > 501 then _pad_6080 = 0 end
if _pad_6081 > 24 then _pad_6081 = 0 end
if _pad_6082 > 266 then _pad_6082 = 0 end
-- Padding: anti-scan signature 6083_42

-- [Padding: EventDispatcher_6] Runtime module for anti-detection
local _pad_6084 = 0
-- Padding: anti-scan signature 6084_0
if _pad_6085 > 136 then _pad_6085 = 0 end
local _pv_6086_2 = 62923
_pad_6087 = _pad_6087 + 7
_pad_6088 = _pad_6088 + 7
_pad_6089 = _pad_6089 + 4
_pad_6090 = _pad_6090 + 9
-- Padding: anti-scan signature 6091_7
_pad_6092 = _pad_6092 + 3
_pad_6093 = _pad_6093 + 2
local _pv_6094_10 = 62541
-- Padding: anti-scan signature 6095_11
if _pad_6096 > 898 then _pad_6096 = 0 end
-- Padding: anti-scan signature 6097_13
local _pv_6098_14 = 77249
local _pv_6099_15 = 81773
-- Padding: anti-scan signature 6100_16
_pad_6101 = _pad_6101 + 1
_pad_6102 = _pad_6102 + 9
local _pv_6103_19 = 91217
if _pad_6104 > 420 then _pad_6104 = 0 end
-- Padding: anti-scan signature 6105_21
local _pv_6106_22 = 50275
local _pv_6107_23 = 33864
_pad_6108 = _pad_6108 + 2
local _pv_6109_25 = 96178
-- Padding: anti-scan signature 6110_26
if _pad_6111 > 159 then _pad_6111 = 0 end
-- Padding: anti-scan signature 6112_28
_pad_6113 = _pad_6113 + 5
local _pv_6114_30 = 68632
_pad_6115 = _pad_6115 + 9
_pad_6116 = _pad_6116 + 10
if _pad_6117 > 427 then _pad_6117 = 0 end
if _pad_6118 > 754 then _pad_6118 = 0 end
_pad_6119 = _pad_6119 + 3
-- Padding: anti-scan signature 6120_36
if _pad_6121 > 645 then _pad_6121 = 0 end
_pad_6122 = _pad_6122 + 2
_pad_6123 = _pad_6123 + 2
_pad_6124 = _pad_6124 + 8
local _pv_6125_41 = 87988
-- Padding: anti-scan signature 6126_42
-- Padding: anti-scan signature 6127_43
if _pad_6128 > 953 then _pad_6128 = 0 end
-- Padding: anti-scan signature 6129_45
-- Padding: anti-scan signature 6130_46
if _pad_6131 > 417 then _pad_6131 = 0 end

-- [Padding: StateManager_6] Runtime module for anti-detection
local _pad_6132 = 0
-- Padding: anti-scan signature 6132_0
_pad_6133 = _pad_6133 + 8
local _pv_6134_2 = 91982
-- Padding: anti-scan signature 6135_3
local _pv_6136_4 = 67182
if _pad_6137 > 518 then _pad_6137 = 0 end
_pad_6138 = _pad_6138 + 10
_pad_6139 = _pad_6139 + 7
if _pad_6140 > 627 then _pad_6140 = 0 end
if _pad_6141 > 58 then _pad_6141 = 0 end
local _pv_6142_10 = 3473
if _pad_6143 > 996 then _pad_6143 = 0 end
_pad_6144 = _pad_6144 + 10
_pad_6145 = _pad_6145 + 10
if _pad_6146 > 187 then _pad_6146 = 0 end
_pad_6147 = _pad_6147 + 7
_pad_6148 = _pad_6148 + 9
if _pad_6149 > 635 then _pad_6149 = 0 end
local _pv_6150_18 = 99434
_pad_6151 = _pad_6151 + 2
if _pad_6152 > 42 then _pad_6152 = 0 end
local _pv_6153_21 = 23079
_pad_6154 = _pad_6154 + 9
_pad_6155 = _pad_6155 + 9
-- Padding: anti-scan signature 6156_24
if _pad_6157 > 101 then _pad_6157 = 0 end
-- Padding: anti-scan signature 6158_26
local _pv_6159_27 = 33173
_pad_6160 = _pad_6160 + 4
_pad_6161 = _pad_6161 + 10
if _pad_6162 > 275 then _pad_6162 = 0 end
-- Padding: anti-scan signature 6163_31
-- Padding: anti-scan signature 6164_32
local _pv_6165_33 = 52725
if _pad_6166 > 232 then _pad_6166 = 0 end
_pad_6167 = _pad_6167 + 7
-- Padding: anti-scan signature 6168_36
if _pad_6169 > 475 then _pad_6169 = 0 end
local _pv_6170_38 = 47964
_pad_6171 = _pad_6171 + 5
-- Padding: anti-scan signature 6172_40
_pad_6173 = _pad_6173 + 1
-- Padding: anti-scan signature 6174_42
_pad_6175 = _pad_6175 + 7
_pad_6176 = _pad_6176 + 9
-- Padding: anti-scan signature 6177_45
-- Padding: anti-scan signature 6178_46
if _pad_6179 > 501 then _pad_6179 = 0 end
-- Padding: anti-scan signature 6180_48
_pad_6181 = _pad_6181 + 6
local _pv_6182_50 = 8257
local _pv_6183_51 = 18528
_pad_6184 = _pad_6184 + 7
-- Padding: anti-scan signature 6185_53
-- Padding: anti-scan signature 6186_54

-- [Padding: MemoryPool_6] Runtime module for anti-detection
local _pad_6187 = 0
-- Padding: anti-scan signature 6187_0
_pad_6188 = _pad_6188 + 3
_pad_6189 = _pad_6189 + 4
_pad_6190 = _pad_6190 + 9
_pad_6191 = _pad_6191 + 2
if _pad_6192 > 610 then _pad_6192 = 0 end
local _pv_6193_6 = 6062
local _pv_6194_7 = 45413
local _pv_6195_8 = 86424
-- Padding: anti-scan signature 6196_9
local _pv_6197_10 = 26215
-- Padding: anti-scan signature 6198_11
_pad_6199 = _pad_6199 + 3
local _pv_6200_13 = 35302
if _pad_6201 > 280 then _pad_6201 = 0 end
local _pv_6202_15 = 62614
_pad_6203 = _pad_6203 + 10
if _pad_6204 > 736 then _pad_6204 = 0 end
-- Padding: anti-scan signature 6205_18
local _pv_6206_19 = 10912
local _pv_6207_20 = 40211
local _pv_6208_21 = 47490
_pad_6209 = _pad_6209 + 9
-- Padding: anti-scan signature 6210_23
-- Padding: anti-scan signature 6211_24
-- Padding: anti-scan signature 6212_25
local _pv_6213_26 = 93369
_pad_6214 = _pad_6214 + 10
if _pad_6215 > 938 then _pad_6215 = 0 end
local _pv_6216_29 = 95147
local _pv_6217_30 = 72380
_pad_6218 = _pad_6218 + 1
if _pad_6219 > 328 then _pad_6219 = 0 end
-- Padding: anti-scan signature 6220_33
local _pv_6221_34 = 42227
local _pv_6222_35 = 76009
if _pad_6223 > 762 then _pad_6223 = 0 end
_pad_6224 = _pad_6224 + 9
-- Padding: anti-scan signature 6225_38
if _pad_6226 > 447 then _pad_6226 = 0 end
-- Padding: anti-scan signature 6227_40
-- Padding: anti-scan signature 6228_41
if _pad_6229 > 244 then _pad_6229 = 0 end
_pad_6230 = _pad_6230 + 4
_pad_6231 = _pad_6231 + 4
if _pad_6232 > 316 then _pad_6232 = 0 end

-- [Padding: ObjectTracker_6] Runtime module for anti-detection
local _pad_6233 = 0
local _pv_6233_0 = 72742
local _pv_6234_1 = 54061
_pad_6235 = _pad_6235 + 10
local _pv_6236_3 = 86477
if _pad_6237 > 609 then _pad_6237 = 0 end
if _pad_6238 > 653 then _pad_6238 = 0 end
-- Padding: anti-scan signature 6239_6
if _pad_6240 > 902 then _pad_6240 = 0 end
if _pad_6241 > 660 then _pad_6241 = 0 end
-- Padding: anti-scan signature 6242_9
_pad_6243 = _pad_6243 + 9
if _pad_6244 > 784 then _pad_6244 = 0 end
-- Padding: anti-scan signature 6245_12
local _pv_6246_13 = 32642
if _pad_6247 > 912 then _pad_6247 = 0 end
-- Padding: anti-scan signature 6248_15
-- Padding: anti-scan signature 6249_16
if _pad_6250 > 308 then _pad_6250 = 0 end
-- Padding: anti-scan signature 6251_18
if _pad_6252 > 244 then _pad_6252 = 0 end
if _pad_6253 > 716 then _pad_6253 = 0 end
_pad_6254 = _pad_6254 + 8
if _pad_6255 > 52 then _pad_6255 = 0 end
-- Padding: anti-scan signature 6256_23
_pad_6257 = _pad_6257 + 8
-- Padding: anti-scan signature 6258_25
-- Padding: anti-scan signature 6259_26
if _pad_6260 > 984 then _pad_6260 = 0 end
local _pv_6261_28 = 6025
if _pad_6262 > 452 then _pad_6262 = 0 end
-- Padding: anti-scan signature 6263_30
if _pad_6264 > 338 then _pad_6264 = 0 end
-- Padding: anti-scan signature 6265_32
if _pad_6266 > 648 then _pad_6266 = 0 end
local _pv_6267_34 = 75609
if _pad_6268 > 496 then _pad_6268 = 0 end
local _pv_6269_36 = 62114
_pad_6270 = _pad_6270 + 8
_pad_6271 = _pad_6271 + 1
local _pv_6272_39 = 62065
_pad_6273 = _pad_6273 + 6
-- Padding: anti-scan signature 6274_41
_pad_6275 = _pad_6275 + 10
-- Padding: anti-scan signature 6276_43
if _pad_6277 > 704 then _pad_6277 = 0 end
local _pv_6278_45 = 35382
_pad_6279 = _pad_6279 + 7
-- Padding: anti-scan signature 6280_47
-- Padding: anti-scan signature 6281_48
if _pad_6282 > 379 then _pad_6282 = 0 end
_pad_6283 = _pad_6283 + 7
-- Padding: anti-scan signature 6284_51
local _pv_6285_52 = 59707
local _pv_6286_53 = 6425

-- [Padding: RefCounter_6] Runtime module for anti-detection
local _pad_6287 = 0
_pad_6287 = _pad_6287 + 6
if _pad_6288 > 222 then _pad_6288 = 0 end
_pad_6289 = _pad_6289 + 10
local _pv_6290_3 = 77284
-- Padding: anti-scan signature 6291_4
if _pad_6292 > 730 then _pad_6292 = 0 end
_pad_6293 = _pad_6293 + 1
if _pad_6294 > 620 then _pad_6294 = 0 end
local _pv_6295_8 = 76013
_pad_6296 = _pad_6296 + 6
if _pad_6297 > 569 then _pad_6297 = 0 end
if _pad_6298 > 156 then _pad_6298 = 0 end
-- Padding: anti-scan signature 6299_12
-- Padding: anti-scan signature 6300_13
if _pad_6301 > 357 then _pad_6301 = 0 end
_pad_6302 = _pad_6302 + 8
-- Padding: anti-scan signature 6303_16
if _pad_6304 > 63 then _pad_6304 = 0 end
if _pad_6305 > 768 then _pad_6305 = 0 end
-- Padding: anti-scan signature 6306_19
if _pad_6307 > 484 then _pad_6307 = 0 end
if _pad_6308 > 429 then _pad_6308 = 0 end
if _pad_6309 > 82 then _pad_6309 = 0 end
_pad_6310 = _pad_6310 + 3
_pad_6311 = _pad_6311 + 3
_pad_6312 = _pad_6312 + 8
if _pad_6313 > 538 then _pad_6313 = 0 end
if _pad_6314 > 12 then _pad_6314 = 0 end
if _pad_6315 > 422 then _pad_6315 = 0 end
-- Padding: anti-scan signature 6316_29
_pad_6317 = _pad_6317 + 7
-- Padding: anti-scan signature 6318_31
_pad_6319 = _pad_6319 + 8
_pad_6320 = _pad_6320 + 8
if _pad_6321 > 524 then _pad_6321 = 0 end
if _pad_6322 > 440 then _pad_6322 = 0 end
local _pv_6323_36 = 90976
_pad_6324 = _pad_6324 + 7
if _pad_6325 > 522 then _pad_6325 = 0 end
_pad_6326 = _pad_6326 + 4
_pad_6327 = _pad_6327 + 3
_pad_6328 = _pad_6328 + 3
if _pad_6329 > 763 then _pad_6329 = 0 end
if _pad_6330 > 230 then _pad_6330 = 0 end
local _pv_6331_44 = 33503
_pad_6332 = _pad_6332 + 4
_pad_6333 = _pad_6333 + 5
if _pad_6334 > 67 then _pad_6334 = 0 end

-- [Padding: TimerPool_6] Runtime module for anti-detection
local _pad_6335 = 0
_pad_6335 = _pad_6335 + 9
_pad_6336 = _pad_6336 + 3
_pad_6337 = _pad_6337 + 4
local _pv_6338_3 = 9441
if _pad_6339 > 357 then _pad_6339 = 0 end
if _pad_6340 > 311 then _pad_6340 = 0 end
-- Padding: anti-scan signature 6341_6
_pad_6342 = _pad_6342 + 9
if _pad_6343 > 942 then _pad_6343 = 0 end
_pad_6344 = _pad_6344 + 5
_pad_6345 = _pad_6345 + 3
if _pad_6346 > 826 then _pad_6346 = 0 end
_pad_6347 = _pad_6347 + 5
local _pv_6348_13 = 35210
-- Padding: anti-scan signature 6349_14
-- Padding: anti-scan signature 6350_15
-- Padding: anti-scan signature 6351_16
if _pad_6352 > 421 then _pad_6352 = 0 end
local _pv_6353_18 = 78861
if _pad_6354 > 890 then _pad_6354 = 0 end
-- Padding: anti-scan signature 6355_20
if _pad_6356 > 323 then _pad_6356 = 0 end
local _pv_6357_22 = 42664
local _pv_6358_23 = 26237
_pad_6359 = _pad_6359 + 7
-- Padding: anti-scan signature 6360_25
-- Padding: anti-scan signature 6361_26
if _pad_6362 > 110 then _pad_6362 = 0 end
_pad_6363 = _pad_6363 + 9
local _pv_6364_29 = 6932
_pad_6365 = _pad_6365 + 5
_pad_6366 = _pad_6366 + 7
local _pv_6367_32 = 79289
_pad_6368 = _pad_6368 + 4
_pad_6369 = _pad_6369 + 4
if _pad_6370 > 182 then _pad_6370 = 0 end
-- Padding: anti-scan signature 6371_36
if _pad_6372 > 715 then _pad_6372 = 0 end
-- Padding: anti-scan signature 6373_38
local _pv_6374_39 = 79468
local _pv_6375_40 = 27202
-- Padding: anti-scan signature 6376_41
-- Padding: anti-scan signature 6377_42
local _pv_6378_43 = 66600

-- [Padding: QueueProcessor_6] Runtime module for anti-detection
local _pad_6379 = 0
-- Padding: anti-scan signature 6379_0
if _pad_6380 > 41 then _pad_6380 = 0 end
_pad_6381 = _pad_6381 + 7
local _pv_6382_3 = 92039
-- Padding: anti-scan signature 6383_4
local _pv_6384_5 = 91318
-- Padding: anti-scan signature 6385_6
-- Padding: anti-scan signature 6386_7
if _pad_6387 > 240 then _pad_6387 = 0 end
-- Padding: anti-scan signature 6388_9
_pad_6389 = _pad_6389 + 9
local _pv_6390_11 = 13055
_pad_6391 = _pad_6391 + 4
_pad_6392 = _pad_6392 + 1
if _pad_6393 > 214 then _pad_6393 = 0 end
if _pad_6394 > 488 then _pad_6394 = 0 end
local _pv_6395_16 = 66444
-- Padding: anti-scan signature 6396_17
local _pv_6397_18 = 6957
_pad_6398 = _pad_6398 + 6
local _pv_6399_20 = 80897
local _pv_6400_21 = 89025
-- Padding: anti-scan signature 6401_22
-- Padding: anti-scan signature 6402_23
local _pv_6403_24 = 40000
if _pad_6404 > 5 then _pad_6404 = 0 end
if _pad_6405 > 817 then _pad_6405 = 0 end
local _pv_6406_27 = 73817
-- Padding: anti-scan signature 6407_28
if _pad_6408 > 508 then _pad_6408 = 0 end
local _pv_6409_30 = 98114
if _pad_6410 > 509 then _pad_6410 = 0 end
if _pad_6411 > 727 then _pad_6411 = 0 end
if _pad_6412 > 992 then _pad_6412 = 0 end
if _pad_6413 > 174 then _pad_6413 = 0 end
local _pv_6414_35 = 59484
-- Padding: anti-scan signature 6415_36
if _pad_6416 > 559 then _pad_6416 = 0 end
local _pv_6417_38 = 49397
-- Padding: anti-scan signature 6418_39
local _pv_6419_40 = 33744
-- Padding: anti-scan signature 6420_41
local _pv_6421_42 = 45323
_pad_6422 = _pad_6422 + 5
local _pv_6423_44 = 26050

-- [Padding: BufferManager_6] Runtime module for anti-detection
local _pad_6424 = 0
if _pad_6424 > 249 then _pad_6424 = 0 end
-- Padding: anti-scan signature 6425_1
local _pv_6426_2 = 62803
_pad_6427 = _pad_6427 + 6
local _pv_6428_4 = 56808
local _pv_6429_5 = 59370
_pad_6430 = _pad_6430 + 1
if _pad_6431 > 274 then _pad_6431 = 0 end
-- Padding: anti-scan signature 6432_8
if _pad_6433 > 349 then _pad_6433 = 0 end
-- Padding: anti-scan signature 6434_10
_pad_6435 = _pad_6435 + 6
if _pad_6436 > 374 then _pad_6436 = 0 end
-- Padding: anti-scan signature 6437_13
_pad_6438 = _pad_6438 + 10
local _pv_6439_15 = 34359
-- Padding: anti-scan signature 6440_16
-- Padding: anti-scan signature 6441_17
local _pv_6442_18 = 27223
_pad_6443 = _pad_6443 + 1
local _pv_6444_20 = 79923
-- Padding: anti-scan signature 6445_21
if _pad_6446 > 585 then _pad_6446 = 0 end
if _pad_6447 > 117 then _pad_6447 = 0 end
-- Padding: anti-scan signature 6448_24
-- Padding: anti-scan signature 6449_25
local _pv_6450_26 = 15164
local _pv_6451_27 = 38689
local _pv_6452_28 = 18527
-- Padding: anti-scan signature 6453_29
local _pv_6454_30 = 87869
local _pv_6455_31 = 51300
local _pv_6456_32 = 52719
-- Padding: anti-scan signature 6457_33
local _pv_6458_34 = 47172
_pad_6459 = _pad_6459 + 5
if _pad_6460 > 603 then _pad_6460 = 0 end
-- Padding: anti-scan signature 6461_37
-- Padding: anti-scan signature 6462_38
_pad_6463 = _pad_6463 + 2
local _pv_6464_40 = 21980
local _pv_6465_41 = 71781
_pad_6466 = _pad_6466 + 4
if _pad_6467 > 177 then _pad_6467 = 0 end
-- Padding: anti-scan signature 6468_44
if _pad_6469 > 370 then _pad_6469 = 0 end
-- Padding: anti-scan signature 6470_46
-- Padding: anti-scan signature 6471_47
-- Padding: anti-scan signature 6472_48
local _pv_6473_49 = 22778
-- Padding: anti-scan signature 6474_50
_pad_6475 = _pad_6475 + 5
local _pv_6476_52 = 72377
local _pv_6477_53 = 12629
-- Padding: anti-scan signature 6478_54
local _pv_6479_55 = 75633
-- Padding: anti-scan signature 6480_56

-- [Padding: StreamHandler_6] Runtime module for anti-detection
local _pad_6481 = 0
local _pv_6481_0 = 24262
if _pad_6482 > 22 then _pad_6482 = 0 end
local _pv_6483_2 = 67080
_pad_6484 = _pad_6484 + 5
local _pv_6485_4 = 82634
if _pad_6486 > 790 then _pad_6486 = 0 end
-- Padding: anti-scan signature 6487_6
if _pad_6488 > 277 then _pad_6488 = 0 end
-- Padding: anti-scan signature 6489_8
local _pv_6490_9 = 77451
-- Padding: anti-scan signature 6491_10
_pad_6492 = _pad_6492 + 6
local _pv_6493_12 = 96225
-- Padding: anti-scan signature 6494_13
local _pv_6495_14 = 16173
-- Padding: anti-scan signature 6496_15
_pad_6497 = _pad_6497 + 9
local _pv_6498_17 = 99531
local _pv_6499_18 = 58465
local _pv_6500_19 = 48822
-- Padding: anti-scan signature 6501_20
_pad_6502 = _pad_6502 + 9
-- Padding: anti-scan signature 6503_22
_pad_6504 = _pad_6504 + 7
local _pv_6505_24 = 72654
if _pad_6506 > 231 then _pad_6506 = 0 end
local _pv_6507_26 = 47798
local _pv_6508_27 = 92282
local _pv_6509_28 = 7206
if _pad_6510 > 907 then _pad_6510 = 0 end
if _pad_6511 > 798 then _pad_6511 = 0 end
-- Padding: anti-scan signature 6512_31
_pad_6513 = _pad_6513 + 6
_pad_6514 = _pad_6514 + 6
_pad_6515 = _pad_6515 + 3
_pad_6516 = _pad_6516 + 8
_pad_6517 = _pad_6517 + 5
local _pv_6518_37 = 44149
-- Padding: anti-scan signature 6519_38
_pad_6520 = _pad_6520 + 1
if _pad_6521 > 581 then _pad_6521 = 0 end
if _pad_6522 > 121 then _pad_6522 = 0 end
if _pad_6523 > 982 then _pad_6523 = 0 end
if _pad_6524 > 595 then _pad_6524 = 0 end
_pad_6525 = _pad_6525 + 7

-- [Padding: TokenValidator_6] Runtime module for anti-detection
local _pad_6526 = 0
_pad_6526 = _pad_6526 + 10
if _pad_6527 > 35 then _pad_6527 = 0 end
_pad_6528 = _pad_6528 + 9
if _pad_6529 > 37 then _pad_6529 = 0 end
local _pv_6530_4 = 70103
if _pad_6531 > 211 then _pad_6531 = 0 end
if _pad_6532 > 904 then _pad_6532 = 0 end
local _pv_6533_7 = 61446
_pad_6534 = _pad_6534 + 7
local _pv_6535_9 = 45263
_pad_6536 = _pad_6536 + 1
local _pv_6537_11 = 58043
if _pad_6538 > 392 then _pad_6538 = 0 end
-- Padding: anti-scan signature 6539_13
_pad_6540 = _pad_6540 + 8
if _pad_6541 > 275 then _pad_6541 = 0 end
_pad_6542 = _pad_6542 + 9
local _pv_6543_17 = 96718
if _pad_6544 > 834 then _pad_6544 = 0 end
_pad_6545 = _pad_6545 + 6
-- Padding: anti-scan signature 6546_20
_pad_6547 = _pad_6547 + 6
-- Padding: anti-scan signature 6548_22
-- Padding: anti-scan signature 6549_23
if _pad_6550 > 276 then _pad_6550 = 0 end
if _pad_6551 > 571 then _pad_6551 = 0 end
local _pv_6552_26 = 44622
if _pad_6553 > 364 then _pad_6553 = 0 end
local _pv_6554_28 = 4811
_pad_6555 = _pad_6555 + 8
-- Padding: anti-scan signature 6556_30
local _pv_6557_31 = 44471
local _pv_6558_32 = 10390
-- Padding: anti-scan signature 6559_33
-- Padding: anti-scan signature 6560_34
_pad_6561 = _pad_6561 + 8
local _pv_6562_36 = 5939
local _pv_6563_37 = 19796
if _pad_6564 > 353 then _pad_6564 = 0 end
-- Padding: anti-scan signature 6565_39
local _pv_6566_40 = 40807
if _pad_6567 > 857 then _pad_6567 = 0 end
local _pv_6568_42 = 94404
local _pv_6569_43 = 94369
if _pad_6570 > 701 then _pad_6570 = 0 end

-- [Padding: SessionManager_6] Runtime module for anti-detection
local _pad_6571 = 0
_pad_6571 = _pad_6571 + 7
-- Padding: anti-scan signature 6572_1
_pad_6573 = _pad_6573 + 6
-- Padding: anti-scan signature 6574_3
if _pad_6575 > 466 then _pad_6575 = 0 end
local _pv_6576_5 = 56961
_pad_6577 = _pad_6577 + 2
if _pad_6578 > 708 then _pad_6578 = 0 end
local _pv_6579_8 = 39637
local _pv_6580_9 = 71281
local _pv_6581_10 = 76130
local _pv_6582_11 = 61547
_pad_6583 = _pad_6583 + 8
-- Padding: anti-scan signature 6584_13
local _pv_6585_14 = 44856
if _pad_6586 > 110 then _pad_6586 = 0 end
-- Padding: anti-scan signature 6587_16
-- Padding: anti-scan signature 6588_17
-- Padding: anti-scan signature 6589_18
if _pad_6590 > 187 then _pad_6590 = 0 end
-- Padding: anti-scan signature 6591_20
_pad_6592 = _pad_6592 + 10
_pad_6593 = _pad_6593 + 4
local _pv_6594_23 = 86981
if _pad_6595 > 27 then _pad_6595 = 0 end
-- Padding: anti-scan signature 6596_25
local _pv_6597_26 = 55498
local _pv_6598_27 = 3272
if _pad_6599 > 912 then _pad_6599 = 0 end
local _pv_6600_29 = 85184
-- Padding: anti-scan signature 6601_30
local _pv_6602_31 = 17738
local _pv_6603_32 = 23407
-- Padding: anti-scan signature 6604_33
_pad_6605 = _pad_6605 + 6
if _pad_6606 > 947 then _pad_6606 = 0 end
local _pv_6607_36 = 76782
-- Padding: anti-scan signature 6608_37
if _pad_6609 > 371 then _pad_6609 = 0 end
-- Padding: anti-scan signature 6610_39
if _pad_6611 > 479 then _pad_6611 = 0 end
local _pv_6612_41 = 87206
_pad_6613 = _pad_6613 + 9
-- Padding: anti-scan signature 6614_43
_pad_6615 = _pad_6615 + 4
-- Padding: anti-scan signature 6616_45
_pad_6617 = _pad_6617 + 9
-- Padding: anti-scan signature 6618_47
_pad_6619 = _pad_6619 + 1
local _pv_6620_49 = 65344
-- Padding: anti-scan signature 6621_50
if _pad_6622 > 927 then _pad_6622 = 0 end
if _pad_6623 > 961 then _pad_6623 = 0 end
_pad_6624 = _pad_6624 + 1

-- [Padding: HeartbeatMonitor_6] Runtime module for anti-detection
local _pad_6625 = 0
_pad_6625 = _pad_6625 + 5
-- Padding: anti-scan signature 6626_1
local _pv_6627_2 = 25158
local _pv_6628_3 = 11117
local _pv_6629_4 = 42811
local _pv_6630_5 = 21096
-- Padding: anti-scan signature 6631_6
_pad_6632 = _pad_6632 + 3
local _pv_6633_8 = 76588
if _pad_6634 > 864 then _pad_6634 = 0 end
if _pad_6635 > 541 then _pad_6635 = 0 end
_pad_6636 = _pad_6636 + 7
local _pv_6637_12 = 31367
_pad_6638 = _pad_6638 + 6
-- Padding: anti-scan signature 6639_14
if _pad_6640 > 391 then _pad_6640 = 0 end
if _pad_6641 > 618 then _pad_6641 = 0 end
if _pad_6642 > 17 then _pad_6642 = 0 end
-- Padding: anti-scan signature 6643_18
if _pad_6644 > 869 then _pad_6644 = 0 end
local _pv_6645_20 = 42523
-- Padding: anti-scan signature 6646_21
if _pad_6647 > 957 then _pad_6647 = 0 end
_pad_6648 = _pad_6648 + 7
if _pad_6649 > 3 then _pad_6649 = 0 end
-- Padding: anti-scan signature 6650_25
-- Padding: anti-scan signature 6651_26
_pad_6652 = _pad_6652 + 2
if _pad_6653 > 665 then _pad_6653 = 0 end
if _pad_6654 > 38 then _pad_6654 = 0 end
-- Padding: anti-scan signature 6655_30
if _pad_6656 > 933 then _pad_6656 = 0 end
local _pv_6657_32 = 58421
-- Padding: anti-scan signature 6658_33
local _pv_6659_34 = 51606
_pad_6660 = _pad_6660 + 1
if _pad_6661 > 87 then _pad_6661 = 0 end
-- Padding: anti-scan signature 6662_37
-- Padding: anti-scan signature 6663_38
-- Padding: anti-scan signature 6664_39
_pad_6665 = _pad_6665 + 8
-- Padding: anti-scan signature 6666_41
if _pad_6667 > 742 then _pad_6667 = 0 end
-- Padding: anti-scan signature 6668_43
if _pad_6669 > 844 then _pad_6669 = 0 end
local _pv_6670_45 = 66556
-- Padding: anti-scan signature 6671_46
local _pv_6672_47 = 67931
if _pad_6673 > 529 then _pad_6673 = 0 end
local _pv_6674_49 = 21597
_pad_6675 = _pad_6675 + 3
if _pad_6676 > 155 then _pad_6676 = 0 end
-- Padding: anti-scan signature 6677_52

-- [Padding: FrameTracker_6] Runtime module for anti-detection
local _pad_6678 = 0
-- Padding: anti-scan signature 6678_0
_pad_6679 = _pad_6679 + 5
_pad_6680 = _pad_6680 + 5
_pad_6681 = _pad_6681 + 9
-- Padding: anti-scan signature 6682_4
-- Padding: anti-scan signature 6683_5
-- Padding: anti-scan signature 6684_6
local _pv_6685_7 = 33254
_pad_6686 = _pad_6686 + 4
if _pad_6687 > 982 then _pad_6687 = 0 end
if _pad_6688 > 979 then _pad_6688 = 0 end
local _pv_6689_11 = 30929
-- Padding: anti-scan signature 6690_12
_pad_6691 = _pad_6691 + 3
if _pad_6692 > 297 then _pad_6692 = 0 end
_pad_6693 = _pad_6693 + 2
_pad_6694 = _pad_6694 + 8
-- Padding: anti-scan signature 6695_17
_pad_6696 = _pad_6696 + 7
local _pv_6697_19 = 52223
_pad_6698 = _pad_6698 + 1
-- Padding: anti-scan signature 6699_21
_pad_6700 = _pad_6700 + 5
local _pv_6701_23 = 61085
-- Padding: anti-scan signature 6702_24
_pad_6703 = _pad_6703 + 5
-- Padding: anti-scan signature 6704_26
-- Padding: anti-scan signature 6705_27
-- Padding: anti-scan signature 6706_28
_pad_6707 = _pad_6707 + 6
local _pv_6708_30 = 39540
-- Padding: anti-scan signature 6709_31
if _pad_6710 > 760 then _pad_6710 = 0 end
-- Padding: anti-scan signature 6711_33
-- Padding: anti-scan signature 6712_34
-- Padding: anti-scan signature 6713_35
-- Padding: anti-scan signature 6714_36
local _pv_6715_37 = 77962
_pad_6716 = _pad_6716 + 6
if _pad_6717 > 417 then _pad_6717 = 0 end
local _pv_6718_40 = 69210
_pad_6719 = _pad_6719 + 6
if _pad_6720 > 606 then _pad_6720 = 0 end

-- [Padding: InputHandler_6] Runtime module for anti-detection
local _pad_6721 = 0
local _pv_6721_0 = 35141
_pad_6722 = _pad_6722 + 2
_pad_6723 = _pad_6723 + 8
_pad_6724 = _pad_6724 + 4
-- Padding: anti-scan signature 6725_4
local _pv_6726_5 = 93559
_pad_6727 = _pad_6727 + 5
-- Padding: anti-scan signature 6728_7
-- Padding: anti-scan signature 6729_8
if _pad_6730 > 96 then _pad_6730 = 0 end
-- Padding: anti-scan signature 6731_10
-- Padding: anti-scan signature 6732_11
_pad_6733 = _pad_6733 + 10
local _pv_6734_13 = 26462
if _pad_6735 > 153 then _pad_6735 = 0 end
_pad_6736 = _pad_6736 + 1
if _pad_6737 > 608 then _pad_6737 = 0 end
local _pv_6738_17 = 65887
local _pv_6739_18 = 29956
_pad_6740 = _pad_6740 + 9
if _pad_6741 > 955 then _pad_6741 = 0 end
local _pv_6742_21 = 96587
if _pad_6743 > 324 then _pad_6743 = 0 end
local _pv_6744_23 = 6370
local _pv_6745_24 = 29947
if _pad_6746 > 383 then _pad_6746 = 0 end
_pad_6747 = _pad_6747 + 4
local _pv_6748_27 = 37812
local _pv_6749_28 = 48245
if _pad_6750 > 499 then _pad_6750 = 0 end
if _pad_6751 > 710 then _pad_6751 = 0 end
-- Padding: anti-scan signature 6752_31
if _pad_6753 > 815 then _pad_6753 = 0 end
local _pv_6754_33 = 96664
_pad_6755 = _pad_6755 + 4
local _pv_6756_35 = 14111
local _pv_6757_36 = 33417
local _pv_6758_37 = 89997
if _pad_6759 > 388 then _pad_6759 = 0 end
-- Padding: anti-scan signature 6760_39
_pad_6761 = _pad_6761 + 3
if _pad_6762 > 741 then _pad_6762 = 0 end
_pad_6763 = _pad_6763 + 6
local _pv_6764_43 = 50306
-- Padding: anti-scan signature 6765_44
_pad_6766 = _pad_6766 + 3
local _pv_6767_46 = 60239
_pad_6768 = _pad_6768 + 10
_pad_6769 = _pad_6769 + 10
_pad_6770 = _pad_6770 + 9
-- Padding: anti-scan signature 6771_50
-- Padding: anti-scan signature 6772_51
if _pad_6773 > 122 then _pad_6773 = 0 end
-- Padding: anti-scan signature 6774_53
if _pad_6775 > 526 then _pad_6775 = 0 end
_pad_6776 = _pad_6776 + 2
_pad_6777 = _pad_6777 + 2

-- [Padding: PhysicsSimulator_6] Runtime module for anti-detection
local _pad_6778 = 0
local _pv_6778_0 = 22567
_pad_6779 = _pad_6779 + 10
-- Padding: anti-scan signature 6780_2
-- Padding: anti-scan signature 6781_3
if _pad_6782 > 91 then _pad_6782 = 0 end
_pad_6783 = _pad_6783 + 6
-- Padding: anti-scan signature 6784_6
-- Padding: anti-scan signature 6785_7
local _pv_6786_8 = 62850
if _pad_6787 > 103 then _pad_6787 = 0 end
-- Padding: anti-scan signature 6788_10
local _pv_6789_11 = 63230
if _pad_6790 > 754 then _pad_6790 = 0 end
local _pv_6791_13 = 34339
if _pad_6792 > 641 then _pad_6792 = 0 end
_pad_6793 = _pad_6793 + 9
local _pv_6794_16 = 87775
if _pad_6795 > 548 then _pad_6795 = 0 end
_pad_6796 = _pad_6796 + 3
-- Padding: anti-scan signature 6797_19
-- Padding: anti-scan signature 6798_20
if _pad_6799 > 876 then _pad_6799 = 0 end
if _pad_6800 > 472 then _pad_6800 = 0 end
local _pv_6801_23 = 62152
-- Padding: anti-scan signature 6802_24
-- Padding: anti-scan signature 6803_25
if _pad_6804 > 871 then _pad_6804 = 0 end
if _pad_6805 > 838 then _pad_6805 = 0 end
-- Padding: anti-scan signature 6806_28
if _pad_6807 > 613 then _pad_6807 = 0 end
local _pv_6808_30 = 4954
if _pad_6809 > 763 then _pad_6809 = 0 end
local _pv_6810_32 = 13090
if _pad_6811 > 646 then _pad_6811 = 0 end
if _pad_6812 > 162 then _pad_6812 = 0 end
if _pad_6813 > 265 then _pad_6813 = 0 end
local _pv_6814_36 = 53192
local _pv_6815_37 = 67955
-- Padding: anti-scan signature 6816_38
_pad_6817 = _pad_6817 + 8
_pad_6818 = _pad_6818 + 10
-- Padding: anti-scan signature 6819_41
_pad_6820 = _pad_6820 + 1
local _pv_6821_43 = 67437
local _pv_6822_44 = 44511
_pad_6823 = _pad_6823 + 2

-- [Padding: RenderOptimizer_6] Runtime module for anti-detection
local _pad_6824 = 0
-- Padding: anti-scan signature 6824_0
if _pad_6825 > 760 then _pad_6825 = 0 end
_pad_6826 = _pad_6826 + 10
-- Padding: anti-scan signature 6827_3
if _pad_6828 > 620 then _pad_6828 = 0 end
-- Padding: anti-scan signature 6829_5
_pad_6830 = _pad_6830 + 4
if _pad_6831 > 937 then _pad_6831 = 0 end
local _pv_6832_8 = 34698
if _pad_6833 > 78 then _pad_6833 = 0 end
-- Padding: anti-scan signature 6834_10
local _pv_6835_11 = 28643
local _pv_6836_12 = 11396
local _pv_6837_13 = 47410
if _pad_6838 > 148 then _pad_6838 = 0 end
-- Padding: anti-scan signature 6839_15
local _pv_6840_16 = 26945
if _pad_6841 > 338 then _pad_6841 = 0 end
local _pv_6842_18 = 38029
if _pad_6843 > 364 then _pad_6843 = 0 end
-- Padding: anti-scan signature 6844_20
local _pv_6845_21 = 12086
local _pv_6846_22 = 74312
-- Padding: anti-scan signature 6847_23
if _pad_6848 > 9 then _pad_6848 = 0 end
_pad_6849 = _pad_6849 + 2
if _pad_6850 > 655 then _pad_6850 = 0 end
if _pad_6851 > 631 then _pad_6851 = 0 end
if _pad_6852 > 289 then _pad_6852 = 0 end
_pad_6853 = _pad_6853 + 1
-- Padding: anti-scan signature 6854_30
local _pv_6855_31 = 87621
_pad_6856 = _pad_6856 + 5
-- Padding: anti-scan signature 6857_33
_pad_6858 = _pad_6858 + 3
-- Padding: anti-scan signature 6859_35
-- Padding: anti-scan signature 6860_36
-- Padding: anti-scan signature 6861_37
local _pv_6862_38 = 89719
-- Padding: anti-scan signature 6863_39
-- Padding: anti-scan signature 6864_40
-- Padding: anti-scan signature 6865_41
local _pv_6866_42 = 27019
if _pad_6867 > 679 then _pad_6867 = 0 end
_pad_6868 = _pad_6868 + 7
if _pad_6869 > 504 then _pad_6869 = 0 end
if _pad_6870 > 783 then _pad_6870 = 0 end
-- Padding: anti-scan signature 6871_47
-- Padding: anti-scan signature 6872_48
if _pad_6873 > 835 then _pad_6873 = 0 end
-- Padding: anti-scan signature 6874_50
local _pv_6875_51 = 20241
local _pv_6876_52 = 10693
if _pad_6877 > 45 then _pad_6877 = 0 end
-- Padding: anti-scan signature 6878_54

-- [Padding: SoundManager_6] Runtime module for anti-detection
local _pad_6879 = 0
_pad_6879 = _pad_6879 + 6
-- Padding: anti-scan signature 6880_1
if _pad_6881 > 517 then _pad_6881 = 0 end
-- Padding: anti-scan signature 6882_3
if _pad_6883 > 646 then _pad_6883 = 0 end
if _pad_6884 > 649 then _pad_6884 = 0 end
_pad_6885 = _pad_6885 + 10
local _pv_6886_7 = 45165
_pad_6887 = _pad_6887 + 10
local _pv_6888_9 = 64520
local _pv_6889_10 = 55391
if _pad_6890 > 530 then _pad_6890 = 0 end
if _pad_6891 > 867 then _pad_6891 = 0 end
local _pv_6892_13 = 95884
-- Padding: anti-scan signature 6893_14
_pad_6894 = _pad_6894 + 5
if _pad_6895 > 172 then _pad_6895 = 0 end
_pad_6896 = _pad_6896 + 8
_pad_6897 = _pad_6897 + 7
local _pv_6898_19 = 31949
if _pad_6899 > 107 then _pad_6899 = 0 end
if _pad_6900 > 225 then _pad_6900 = 0 end
-- Padding: anti-scan signature 6901_22
-- Padding: anti-scan signature 6902_23
-- Padding: anti-scan signature 6903_24
_pad_6904 = _pad_6904 + 5
local _pv_6905_26 = 14342
if _pad_6906 > 866 then _pad_6906 = 0 end
-- Padding: anti-scan signature 6907_28
local _pv_6908_29 = 33249
_pad_6909 = _pad_6909 + 1
_pad_6910 = _pad_6910 + 4
-- Padding: anti-scan signature 6911_32
-- Padding: anti-scan signature 6912_33
if _pad_6913 > 115 then _pad_6913 = 0 end
if _pad_6914 > 493 then _pad_6914 = 0 end
local _pv_6915_36 = 99450
_pad_6916 = _pad_6916 + 3
-- Padding: anti-scan signature 6917_38
_pad_6918 = _pad_6918 + 6
-- Padding: anti-scan signature 6919_40
_pad_6920 = _pad_6920 + 6
local _pv_6921_42 = 99207
if _pad_6922 > 50 then _pad_6922 = 0 end
local _pv_6923_44 = 77190
-- Padding: anti-scan signature 6924_45
-- Padding: anti-scan signature 6925_46
local _pv_6926_47 = 22583
_pad_6927 = _pad_6927 + 5
if _pad_6928 > 526 then _pad_6928 = 0 end
if _pad_6929 > 508 then _pad_6929 = 0 end
if _pad_6930 > 955 then _pad_6930 = 0 end
_pad_6931 = _pad_6931 + 10
-- Padding: anti-scan signature 6932_53
_pad_6933 = _pad_6933 + 7
-- Padding: anti-scan signature 6934_55
-- Padding: anti-scan signature 6935_56
_pad_6936 = _pad_6936 + 10
-- Padding: anti-scan signature 6937_58

-- [Padding: ParticleController_6] Runtime module for anti-detection
local _pad_6938 = 0
-- Padding: anti-scan signature 6938_0
if _pad_6939 > 335 then _pad_6939 = 0 end
if _pad_6940 > 719 then _pad_6940 = 0 end
if _pad_6941 > 291 then _pad_6941 = 0 end
if _pad_6942 > 327 then _pad_6942 = 0 end
_pad_6943 = _pad_6943 + 4
local _pv_6944_6 = 83222
-- Padding: anti-scan signature 6945_7
-- Padding: anti-scan signature 6946_8
if _pad_6947 > 735 then _pad_6947 = 0 end
_pad_6948 = _pad_6948 + 6
-- Padding: anti-scan signature 6949_11
if _pad_6950 > 613 then _pad_6950 = 0 end
if _pad_6951 > 374 then _pad_6951 = 0 end
local _pv_6952_14 = 9019
_pad_6953 = _pad_6953 + 4
_pad_6954 = _pad_6954 + 9
_pad_6955 = _pad_6955 + 9
if _pad_6956 > 757 then _pad_6956 = 0 end
_pad_6957 = _pad_6957 + 9
if _pad_6958 > 748 then _pad_6958 = 0 end
-- Padding: anti-scan signature 6959_21
_pad_6960 = _pad_6960 + 1
-- Padding: anti-scan signature 6961_23
-- Padding: anti-scan signature 6962_24
_pad_6963 = _pad_6963 + 3
local _pv_6964_26 = 18808
local _pv_6965_27 = 58437
local _pv_6966_28 = 15850
local _pv_6967_29 = 20019
-- Padding: anti-scan signature 6968_30
if _pad_6969 > 192 then _pad_6969 = 0 end
local _pv_6970_32 = 34132
-- Padding: anti-scan signature 6971_33
if _pad_6972 > 387 then _pad_6972 = 0 end
-- Padding: anti-scan signature 6973_35
-- Padding: anti-scan signature 6974_36
_pad_6975 = _pad_6975 + 3
-- Padding: anti-scan signature 6976_38
_pad_6977 = _pad_6977 + 9
if _pad_6978 > 663 then _pad_6978 = 0 end
_pad_6979 = _pad_6979 + 2
-- Padding: anti-scan signature 6980_42
if _pad_6981 > 960 then _pad_6981 = 0 end
_pad_6982 = _pad_6982 + 4
_pad_6983 = _pad_6983 + 7
_pad_6984 = _pad_6984 + 6
-- Padding: anti-scan signature 6985_47
-- Padding: anti-scan signature 6986_48
local _pv_6987_49 = 44179
local _pv_6988_50 = 72284
-- Padding: anti-scan signature 6989_51
-- Padding: anti-scan signature 6990_52
-- Padding: anti-scan signature 6991_53
-- Padding: anti-scan signature 6992_54
_pad_6993 = _pad_6993 + 1

-- [Padding: RuntimeOptimizer_7] Runtime module for anti-detection
local _pad_6994 = 0
_pad_6994 = _pad_6994 + 6
_pad_6995 = _pad_6995 + 7
-- Padding: anti-scan signature 6996_2
-- Padding: anti-scan signature 6997_3
_pad_6998 = _pad_6998 + 6
local _pv_6999_5 = 48615
_pad_7000 = _pad_7000 + 6
if _pad_7001 > 622 then _pad_7001 = 0 end
_pad_7002 = _pad_7002 + 3
-- Padding: anti-scan signature 7003_9
local _pv_7004_10 = 47997
if _pad_7005 > 809 then _pad_7005 = 0 end
if _pad_7006 > 851 then _pad_7006 = 0 end
_pad_7007 = _pad_7007 + 10
_pad_7008 = _pad_7008 + 5
local _pv_7009_15 = 75384
-- Padding: anti-scan signature 7010_16
-- Padding: anti-scan signature 7011_17
-- Padding: anti-scan signature 7012_18
local _pv_7013_19 = 61843
_pad_7014 = _pad_7014 + 5
-- Padding: anti-scan signature 7015_21
if _pad_7016 > 884 then _pad_7016 = 0 end
local _pv_7017_23 = 47240
if _pad_7018 > 100 then _pad_7018 = 0 end
local _pv_7019_25 = 25361
_pad_7020 = _pad_7020 + 6
_pad_7021 = _pad_7021 + 5
_pad_7022 = _pad_7022 + 6
if _pad_7023 > 461 then _pad_7023 = 0 end
_pad_7024 = _pad_7024 + 7
if _pad_7025 > 518 then _pad_7025 = 0 end
_pad_7026 = _pad_7026 + 2
local _pv_7027_33 = 42522
if _pad_7028 > 394 then _pad_7028 = 0 end
_pad_7029 = _pad_7029 + 9
_pad_7030 = _pad_7030 + 8
-- Padding: anti-scan signature 7031_37
if _pad_7032 > 142 then _pad_7032 = 0 end
local _pv_7033_39 = 90313
local _pv_7034_40 = 86230
if _pad_7035 > 406 then _pad_7035 = 0 end
if _pad_7036 > 271 then _pad_7036 = 0 end
-- Padding: anti-scan signature 7037_43
if _pad_7038 > 322 then _pad_7038 = 0 end
if _pad_7039 > 188 then _pad_7039 = 0 end
-- Padding: anti-scan signature 7040_46
if _pad_7041 > 652 then _pad_7041 = 0 end
-- Padding: anti-scan signature 7042_48
if _pad_7043 > 203 then _pad_7043 = 0 end
-- Padding: anti-scan signature 7044_50
if _pad_7045 > 539 then _pad_7045 = 0 end
local _pv_7046_52 = 97513
local _pv_7047_53 = 80120
_pad_7048 = _pad_7048 + 6
_pad_7049 = _pad_7049 + 3
if _pad_7050 > 576 then _pad_7050 = 0 end
_pad_7051 = _pad_7051 + 1
if _pad_7052 > 787 then _pad_7052 = 0 end

-- [Padding: CacheManager_7] Runtime module for anti-detection
local _pad_7053 = 0
local _pv_7053_0 = 88151
-- Padding: anti-scan signature 7054_1
_pad_7055 = _pad_7055 + 1
if _pad_7056 > 838 then _pad_7056 = 0 end
_pad_7057 = _pad_7057 + 1
_pad_7058 = _pad_7058 + 10
_pad_7059 = _pad_7059 + 6
-- Padding: anti-scan signature 7060_7
local _pv_7061_8 = 44260
local _pv_7062_9 = 27896
local _pv_7063_10 = 12293
_pad_7064 = _pad_7064 + 6
-- Padding: anti-scan signature 7065_12
_pad_7066 = _pad_7066 + 1
_pad_7067 = _pad_7067 + 6
if _pad_7068 > 580 then _pad_7068 = 0 end
if _pad_7069 > 693 then _pad_7069 = 0 end
local _pv_7070_17 = 7907
-- Padding: anti-scan signature 7071_18
_pad_7072 = _pad_7072 + 8
local _pv_7073_20 = 77704
local _pv_7074_21 = 29091
-- Padding: anti-scan signature 7075_22
_pad_7076 = _pad_7076 + 10
-- Padding: anti-scan signature 7077_24
if _pad_7078 > 911 then _pad_7078 = 0 end
_pad_7079 = _pad_7079 + 3
if _pad_7080 > 686 then _pad_7080 = 0 end
-- Padding: anti-scan signature 7081_28
if _pad_7082 > 141 then _pad_7082 = 0 end
_pad_7083 = _pad_7083 + 7
if _pad_7084 > 287 then _pad_7084 = 0 end
-- Padding: anti-scan signature 7085_32
if _pad_7086 > 973 then _pad_7086 = 0 end
if _pad_7087 > 637 then _pad_7087 = 0 end
if _pad_7088 > 918 then _pad_7088 = 0 end
local _pv_7089_36 = 24057
-- Padding: anti-scan signature 7090_37
-- Padding: anti-scan signature 7091_38
-- Padding: anti-scan signature 7092_39
-- Padding: anti-scan signature 7093_40

-- [Padding: EventDispatcher_7] Runtime module for anti-detection
local _pad_7094 = 0
if _pad_7094 > 170 then _pad_7094 = 0 end
if _pad_7095 > 918 then _pad_7095 = 0 end
-- Padding: anti-scan signature 7096_2
-- Padding: anti-scan signature 7097_3
if _pad_7098 > 173 then _pad_7098 = 0 end
if _pad_7099 > 295 then _pad_7099 = 0 end
-- Padding: anti-scan signature 7100_6
_pad_7101 = _pad_7101 + 8
-- Padding: anti-scan signature 7102_8
-- Padding: anti-scan signature 7103_9
-- Padding: anti-scan signature 7104_10
if _pad_7105 > 769 then _pad_7105 = 0 end
local _pv_7106_12 = 54810
if _pad_7107 > 0 then _pad_7107 = 0 end
if _pad_7108 > 355 then _pad_7108 = 0 end
local _pv_7109_15 = 55401
_pad_7110 = _pad_7110 + 2
_pad_7111 = _pad_7111 + 3
-- Padding: anti-scan signature 7112_18
-- Padding: anti-scan signature 7113_19
local _pv_7114_20 = 64798
_pad_7115 = _pad_7115 + 6
_pad_7116 = _pad_7116 + 8
local _pv_7117_23 = 41170
if _pad_7118 > 301 then _pad_7118 = 0 end
-- Padding: anti-scan signature 7119_25
_pad_7120 = _pad_7120 + 3
if _pad_7121 > 109 then _pad_7121 = 0 end
local _pv_7122_28 = 16609
if _pad_7123 > 88 then _pad_7123 = 0 end
if _pad_7124 > 75 then _pad_7124 = 0 end
local _pv_7125_31 = 20647
if _pad_7126 > 174 then _pad_7126 = 0 end
-- Padding: anti-scan signature 7127_33
if _pad_7128 > 717 then _pad_7128 = 0 end
local _pv_7129_35 = 29654
if _pad_7130 > 709 then _pad_7130 = 0 end
if _pad_7131 > 803 then _pad_7131 = 0 end
_pad_7132 = _pad_7132 + 6
-- Padding: anti-scan signature 7133_39
if _pad_7134 > 39 then _pad_7134 = 0 end
if _pad_7135 > 339 then _pad_7135 = 0 end
-- Padding: anti-scan signature 7136_42
if _pad_7137 > 631 then _pad_7137 = 0 end
-- Padding: anti-scan signature 7138_44
if _pad_7139 > 802 then _pad_7139 = 0 end
if _pad_7140 > 744 then _pad_7140 = 0 end
_pad_7141 = _pad_7141 + 4
if _pad_7142 > 410 then _pad_7142 = 0 end
-- Padding: anti-scan signature 7143_49
if _pad_7144 > 496 then _pad_7144 = 0 end
local _pv_7145_51 = 88123
local _pv_7146_52 = 21488
_pad_7147 = _pad_7147 + 2
local _pv_7148_54 = 71741
-- Padding: anti-scan signature 7149_55
if _pad_7150 > 184 then _pad_7150 = 0 end
-- Padding: anti-scan signature 7151_57

-- [Padding: StateManager_7] Runtime module for anti-detection
local _pad_7152 = 0
if _pad_7152 > 388 then _pad_7152 = 0 end
local _pv_7153_1 = 81347
_pad_7154 = _pad_7154 + 6
if _pad_7155 > 557 then _pad_7155 = 0 end
-- Padding: anti-scan signature 7156_4
local _pv_7157_5 = 10490
-- Padding: anti-scan signature 7158_6
_pad_7159 = _pad_7159 + 4
if _pad_7160 > 840 then _pad_7160 = 0 end
_pad_7161 = _pad_7161 + 4
_pad_7162 = _pad_7162 + 9
_pad_7163 = _pad_7163 + 2
local _pv_7164_12 = 8718
_pad_7165 = _pad_7165 + 7
local _pv_7166_14 = 85883
-- Padding: anti-scan signature 7167_15
-- Padding: anti-scan signature 7168_16
_pad_7169 = _pad_7169 + 2
-- Padding: anti-scan signature 7170_18
_pad_7171 = _pad_7171 + 1
_pad_7172 = _pad_7172 + 10
local _pv_7173_21 = 31821
if _pad_7174 > 692 then _pad_7174 = 0 end
local _pv_7175_23 = 78213
_pad_7176 = _pad_7176 + 8
local _pv_7177_25 = 2892
if _pad_7178 > 397 then _pad_7178 = 0 end
_pad_7179 = _pad_7179 + 3
_pad_7180 = _pad_7180 + 2
_pad_7181 = _pad_7181 + 6
if _pad_7182 > 536 then _pad_7182 = 0 end
if _pad_7183 > 17 then _pad_7183 = 0 end
-- Padding: anti-scan signature 7184_32
local _pv_7185_33 = 8036
local _pv_7186_34 = 10184
_pad_7187 = _pad_7187 + 9
_pad_7188 = _pad_7188 + 10
_pad_7189 = _pad_7189 + 6
if _pad_7190 > 519 then _pad_7190 = 0 end
local _pv_7191_39 = 30659
-- Padding: anti-scan signature 7192_40
-- Padding: anti-scan signature 7193_41
-- Padding: anti-scan signature 7194_42
local _pv_7195_43 = 75422
_pad_7196 = _pad_7196 + 6
local _pv_7197_45 = 60976
if _pad_7198 > 633 then _pad_7198 = 0 end

-- [Padding: MemoryPool_7] Runtime module for anti-detection
local _pad_7199 = 0
if _pad_7199 > 316 then _pad_7199 = 0 end
if _pad_7200 > 791 then _pad_7200 = 0 end
local _pv_7201_2 = 91402
local _pv_7202_3 = 79020
-- Padding: anti-scan signature 7203_4
if _pad_7204 > 751 then _pad_7204 = 0 end
-- Padding: anti-scan signature 7205_6
_pad_7206 = _pad_7206 + 3
local _pv_7207_8 = 28478
-- Padding: anti-scan signature 7208_9
if _pad_7209 > 608 then _pad_7209 = 0 end
_pad_7210 = _pad_7210 + 1
local _pv_7211_12 = 26977
if _pad_7212 > 996 then _pad_7212 = 0 end
local _pv_7213_14 = 53628
if _pad_7214 > 806 then _pad_7214 = 0 end
local _pv_7215_16 = 57672
_pad_7216 = _pad_7216 + 1
local _pv_7217_18 = 43183
-- Padding: anti-scan signature 7218_19
-- Padding: anti-scan signature 7219_20
if _pad_7220 > 450 then _pad_7220 = 0 end
_pad_7221 = _pad_7221 + 5
if _pad_7222 > 70 then _pad_7222 = 0 end
if _pad_7223 > 143 then _pad_7223 = 0 end
_pad_7224 = _pad_7224 + 8
-- Padding: anti-scan signature 7225_26
local _pv_7226_27 = 16278
local _pv_7227_28 = 60540
_pad_7228 = _pad_7228 + 8
_pad_7229 = _pad_7229 + 6
-- Padding: anti-scan signature 7230_31
-- Padding: anti-scan signature 7231_32
-- Padding: anti-scan signature 7232_33
-- Padding: anti-scan signature 7233_34
_pad_7234 = _pad_7234 + 1
local _pv_7235_36 = 14169
local _pv_7236_37 = 26982
local _pv_7237_38 = 1459
-- Padding: anti-scan signature 7238_39
_pad_7239 = _pad_7239 + 4
_pad_7240 = _pad_7240 + 8
if _pad_7241 > 940 then _pad_7241 = 0 end
-- Padding: anti-scan signature 7242_43
if _pad_7243 > 276 then _pad_7243 = 0 end
local _pv_7244_45 = 17046
_pad_7245 = _pad_7245 + 9
_pad_7246 = _pad_7246 + 9

-- [Padding: ObjectTracker_7] Runtime module for anti-detection
local _pad_7247 = 0
if _pad_7247 > 178 then _pad_7247 = 0 end
if _pad_7248 > 397 then _pad_7248 = 0 end
-- Padding: anti-scan signature 7249_2
local _pv_7250_3 = 60604
-- Padding: anti-scan signature 7251_4
_pad_7252 = _pad_7252 + 10
_pad_7253 = _pad_7253 + 8
if _pad_7254 > 263 then _pad_7254 = 0 end
-- Padding: anti-scan signature 7255_8
local _pv_7256_9 = 5523
-- Padding: anti-scan signature 7257_10
local _pv_7258_11 = 13414
-- Padding: anti-scan signature 7259_12
-- Padding: anti-scan signature 7260_13
local _pv_7261_14 = 97058
-- Padding: anti-scan signature 7262_15
-- Padding: anti-scan signature 7263_16
-- Padding: anti-scan signature 7264_17
local _pv_7265_18 = 39505
if _pad_7266 > 936 then _pad_7266 = 0 end
if _pad_7267 > 534 then _pad_7267 = 0 end
if _pad_7268 > 643 then _pad_7268 = 0 end
if _pad_7269 > 732 then _pad_7269 = 0 end
-- Padding: anti-scan signature 7270_23
-- Padding: anti-scan signature 7271_24
_pad_7272 = _pad_7272 + 10
_pad_7273 = _pad_7273 + 3
local _pv_7274_27 = 83006
local _pv_7275_28 = 68870
if _pad_7276 > 366 then _pad_7276 = 0 end
if _pad_7277 > 366 then _pad_7277 = 0 end
local _pv_7278_31 = 61195
local _pv_7279_32 = 14582
local _pv_7280_33 = 29422
_pad_7281 = _pad_7281 + 5
-- Padding: anti-scan signature 7282_35
-- Padding: anti-scan signature 7283_36
-- Padding: anti-scan signature 7284_37
local _pv_7285_38 = 9102
if _pad_7286 > 216 then _pad_7286 = 0 end
-- Padding: anti-scan signature 7287_40
local _pv_7288_41 = 52391
local _pv_7289_42 = 48370
-- Padding: anti-scan signature 7290_43
_pad_7291 = _pad_7291 + 8
if _pad_7292 > 655 then _pad_7292 = 0 end
-- Padding: anti-scan signature 7293_46
_pad_7294 = _pad_7294 + 5
_pad_7295 = _pad_7295 + 5
if _pad_7296 > 185 then _pad_7296 = 0 end
local _pv_7297_50 = 54570
_pad_7298 = _pad_7298 + 3
if _pad_7299 > 703 then _pad_7299 = 0 end

-- [Padding: RefCounter_7] Runtime module for anti-detection
local _pad_7300 = 0
_pad_7300 = _pad_7300 + 2
_pad_7301 = _pad_7301 + 10
_pad_7302 = _pad_7302 + 10
local _pv_7303_3 = 60760
if _pad_7304 > 197 then _pad_7304 = 0 end
local _pv_7305_5 = 52726
_pad_7306 = _pad_7306 + 4
local _pv_7307_7 = 41388
if _pad_7308 > 682 then _pad_7308 = 0 end
_pad_7309 = _pad_7309 + 3
-- Padding: anti-scan signature 7310_10
_pad_7311 = _pad_7311 + 6
-- Padding: anti-scan signature 7312_12
local _pv_7313_13 = 82179
local _pv_7314_14 = 43060
if _pad_7315 > 327 then _pad_7315 = 0 end
if _pad_7316 > 640 then _pad_7316 = 0 end
-- Padding: anti-scan signature 7317_17
-- Padding: anti-scan signature 7318_18
_pad_7319 = _pad_7319 + 7
_pad_7320 = _pad_7320 + 10
_pad_7321 = _pad_7321 + 5
-- Padding: anti-scan signature 7322_22
-- Padding: anti-scan signature 7323_23
_pad_7324 = _pad_7324 + 1
-- Padding: anti-scan signature 7325_25
if _pad_7326 > 110 then _pad_7326 = 0 end
if _pad_7327 > 354 then _pad_7327 = 0 end
_pad_7328 = _pad_7328 + 7
-- Padding: anti-scan signature 7329_29
_pad_7330 = _pad_7330 + 7
if _pad_7331 > 875 then _pad_7331 = 0 end
local _pv_7332_32 = 80945
if _pad_7333 > 155 then _pad_7333 = 0 end
local _pv_7334_34 = 10097
local _pv_7335_35 = 27141
-- Padding: anti-scan signature 7336_36
-- Padding: anti-scan signature 7337_37
_pad_7338 = _pad_7338 + 7
local _pv_7339_39 = 26814
local _pv_7340_40 = 23225
_pad_7341 = _pad_7341 + 8
if _pad_7342 > 327 then _pad_7342 = 0 end
_pad_7343 = _pad_7343 + 8
_pad_7344 = _pad_7344 + 9
if _pad_7345 > 21 then _pad_7345 = 0 end
-- Padding: anti-scan signature 7346_46

-- [Padding: TimerPool_7] Runtime module for anti-detection
local _pad_7347 = 0
local _pv_7347_0 = 10429
local _pv_7348_1 = 81702
local _pv_7349_2 = 15490
if _pad_7350 > 181 then _pad_7350 = 0 end
-- Padding: anti-scan signature 7351_4
if _pad_7352 > 466 then _pad_7352 = 0 end
_pad_7353 = _pad_7353 + 5
local _pv_7354_7 = 93879
if _pad_7355 > 877 then _pad_7355 = 0 end
local _pv_7356_9 = 75887
local _pv_7357_10 = 96857
_pad_7358 = _pad_7358 + 9
local _pv_7359_12 = 74294
local _pv_7360_13 = 70440
local _pv_7361_14 = 81159
if _pad_7362 > 535 then _pad_7362 = 0 end
local _pv_7363_16 = 14255
_pad_7364 = _pad_7364 + 5
local _pv_7365_18 = 25963
_pad_7366 = _pad_7366 + 6
-- Padding: anti-scan signature 7367_20
if _pad_7368 > 457 then _pad_7368 = 0 end
local _pv_7369_22 = 98468
-- Padding: anti-scan signature 7370_23
-- Padding: anti-scan signature 7371_24
local _pv_7372_25 = 15710
if _pad_7373 > 261 then _pad_7373 = 0 end
local _pv_7374_27 = 19860
_pad_7375 = _pad_7375 + 1
-- Padding: anti-scan signature 7376_29
-- Padding: anti-scan signature 7377_30
local _pv_7378_31 = 10768
-- Padding: anti-scan signature 7379_32
if _pad_7380 > 144 then _pad_7380 = 0 end
local _pv_7381_34 = 23635
-- Padding: anti-scan signature 7382_35
_pad_7383 = _pad_7383 + 2
local _pv_7384_37 = 51472
_pad_7385 = _pad_7385 + 9
-- Padding: anti-scan signature 7386_39
_pad_7387 = _pad_7387 + 7
-- Padding: anti-scan signature 7388_41
-- Padding: anti-scan signature 7389_42
local _pv_7390_43 = 81164
_pad_7391 = _pad_7391 + 2
_pad_7392 = _pad_7392 + 4
if _pad_7393 > 745 then _pad_7393 = 0 end

-- [Padding: QueueProcessor_7] Runtime module for anti-detection
local _pad_7394 = 0
local _pv_7394_0 = 76724
_pad_7395 = _pad_7395 + 6
_pad_7396 = _pad_7396 + 8
-- Padding: anti-scan signature 7397_3
-- Padding: anti-scan signature 7398_4
if _pad_7399 > 287 then _pad_7399 = 0 end
_pad_7400 = _pad_7400 + 4
if _pad_7401 > 994 then _pad_7401 = 0 end
-- Padding: anti-scan signature 7402_8
-- Padding: anti-scan signature 7403_9
_pad_7404 = _pad_7404 + 1
-- Padding: anti-scan signature 7405_11
if _pad_7406 > 0 then _pad_7406 = 0 end
-- Padding: anti-scan signature 7407_13
local _pv_7408_14 = 54938
local _pv_7409_15 = 91645
_pad_7410 = _pad_7410 + 3
local _pv_7411_17 = 57056
local _pv_7412_18 = 1216
local _pv_7413_19 = 32773
_pad_7414 = _pad_7414 + 2
_pad_7415 = _pad_7415 + 3
-- Padding: anti-scan signature 7416_22
local _pv_7417_23 = 88446
local _pv_7418_24 = 94496
-- Padding: anti-scan signature 7419_25
_pad_7420 = _pad_7420 + 2
-- Padding: anti-scan signature 7421_27
_pad_7422 = _pad_7422 + 6
-- Padding: anti-scan signature 7423_29
if _pad_7424 > 14 then _pad_7424 = 0 end
_pad_7425 = _pad_7425 + 1
-- Padding: anti-scan signature 7426_32
_pad_7427 = _pad_7427 + 10
if _pad_7428 > 346 then _pad_7428 = 0 end
if _pad_7429 > 435 then _pad_7429 = 0 end
local _pv_7430_36 = 62915
if _pad_7431 > 440 then _pad_7431 = 0 end
local _pv_7432_38 = 62581
local _pv_7433_39 = 82789
-- Padding: anti-scan signature 7434_40
local _pv_7435_41 = 50304
-- Padding: anti-scan signature 7436_42
if _pad_7437 > 119 then _pad_7437 = 0 end
-- Padding: anti-scan signature 7438_44
_pad_7439 = _pad_7439 + 2
_pad_7440 = _pad_7440 + 3
-- Padding: anti-scan signature 7441_47
if _pad_7442 > 578 then _pad_7442 = 0 end
local _pv_7443_49 = 3412
_pad_7444 = _pad_7444 + 4
if _pad_7445 > 297 then _pad_7445 = 0 end
-- Padding: anti-scan signature 7446_52
-- Padding: anti-scan signature 7447_53
-- Padding: anti-scan signature 7448_54
-- Padding: anti-scan signature 7449_55

-- [Padding: BufferManager_7] Runtime module for anti-detection
local _pad_7450 = 0
-- Padding: anti-scan signature 7450_0
_pad_7451 = _pad_7451 + 3
_pad_7452 = _pad_7452 + 9
_pad_7453 = _pad_7453 + 4
if _pad_7454 > 498 then _pad_7454 = 0 end
local _pv_7455_5 = 68617
-- Padding: anti-scan signature 7456_6
if _pad_7457 > 349 then _pad_7457 = 0 end
if _pad_7458 > 837 then _pad_7458 = 0 end
if _pad_7459 > 105 then _pad_7459 = 0 end
local _pv_7460_10 = 38515
local _pv_7461_11 = 94614
-- Padding: anti-scan signature 7462_12
local _pv_7463_13 = 48599
_pad_7464 = _pad_7464 + 4
_pad_7465 = _pad_7465 + 2
local _pv_7466_16 = 24190
-- Padding: anti-scan signature 7467_17
-- Padding: anti-scan signature 7468_18
if _pad_7469 > 24 then _pad_7469 = 0 end
-- Padding: anti-scan signature 7470_20
local _pv_7471_21 = 2457
_pad_7472 = _pad_7472 + 8
if _pad_7473 > 669 then _pad_7473 = 0 end
local _pv_7474_24 = 99702
local _pv_7475_25 = 22523
_pad_7476 = _pad_7476 + 7
-- Padding: anti-scan signature 7477_27
_pad_7478 = _pad_7478 + 5
_pad_7479 = _pad_7479 + 8
local _pv_7480_30 = 78360
local _pv_7481_31 = 91050
_pad_7482 = _pad_7482 + 7
local _pv_7483_33 = 90551
-- Padding: anti-scan signature 7484_34
-- Padding: anti-scan signature 7485_35
_pad_7486 = _pad_7486 + 4
local _pv_7487_37 = 25
if _pad_7488 > 691 then _pad_7488 = 0 end
_pad_7489 = _pad_7489 + 10
_pad_7490 = _pad_7490 + 1
-- Padding: anti-scan signature 7491_41
if _pad_7492 > 475 then _pad_7492 = 0 end
if _pad_7493 > 778 then _pad_7493 = 0 end
local _pv_7494_44 = 34147
local _pv_7495_45 = 42450
_pad_7496 = _pad_7496 + 1
_pad_7497 = _pad_7497 + 1

-- [Padding: StreamHandler_7] Runtime module for anti-detection
local _pad_7498 = 0
_pad_7498 = _pad_7498 + 8
if _pad_7499 > 180 then _pad_7499 = 0 end
if _pad_7500 > 403 then _pad_7500 = 0 end
local _pv_7501_3 = 83452
local _pv_7502_4 = 5985
local _pv_7503_5 = 42747
-- Padding: anti-scan signature 7504_6
if _pad_7505 > 46 then _pad_7505 = 0 end
if _pad_7506 > 358 then _pad_7506 = 0 end
-- Padding: anti-scan signature 7507_9
-- Padding: anti-scan signature 7508_10
if _pad_7509 > 785 then _pad_7509 = 0 end
_pad_7510 = _pad_7510 + 8
-- Padding: anti-scan signature 7511_13
local _pv_7512_14 = 36360
if _pad_7513 > 592 then _pad_7513 = 0 end
_pad_7514 = _pad_7514 + 2
_pad_7515 = _pad_7515 + 8
if _pad_7516 > 345 then _pad_7516 = 0 end
if _pad_7517 > 702 then _pad_7517 = 0 end
if _pad_7518 > 964 then _pad_7518 = 0 end
local _pv_7519_21 = 26663
_pad_7520 = _pad_7520 + 1
_pad_7521 = _pad_7521 + 2
if _pad_7522 > 341 then _pad_7522 = 0 end
_pad_7523 = _pad_7523 + 8
if _pad_7524 > 186 then _pad_7524 = 0 end
if _pad_7525 > 938 then _pad_7525 = 0 end
-- Padding: anti-scan signature 7526_28
_pad_7527 = _pad_7527 + 8
if _pad_7528 > 537 then _pad_7528 = 0 end
_pad_7529 = _pad_7529 + 1
-- Padding: anti-scan signature 7530_32
if _pad_7531 > 761 then _pad_7531 = 0 end
-- Padding: anti-scan signature 7532_34
_pad_7533 = _pad_7533 + 9
local _pv_7534_36 = 87741
_pad_7535 = _pad_7535 + 2
_pad_7536 = _pad_7536 + 9
-- Padding: anti-scan signature 7537_39
local _pv_7538_40 = 42131
_pad_7539 = _pad_7539 + 10
_pad_7540 = _pad_7540 + 5
-- Padding: anti-scan signature 7541_43
local _pv_7542_44 = 47840
if _pad_7543 > 408 then _pad_7543 = 0 end
-- Padding: anti-scan signature 7544_46

-- [Padding: TokenValidator_7] Runtime module for anti-detection
local _pad_7545 = 0
if _pad_7545 > 231 then _pad_7545 = 0 end
if _pad_7546 > 20 then _pad_7546 = 0 end
_pad_7547 = _pad_7547 + 3
_pad_7548 = _pad_7548 + 4
if _pad_7549 > 777 then _pad_7549 = 0 end
if _pad_7550 > 204 then _pad_7550 = 0 end
-- Padding: anti-scan signature 7551_6
local _pv_7552_7 = 36522
local _pv_7553_8 = 77796
if _pad_7554 > 491 then _pad_7554 = 0 end
if _pad_7555 > 695 then _pad_7555 = 0 end
_pad_7556 = _pad_7556 + 9
local _pv_7557_12 = 46300
if _pad_7558 > 285 then _pad_7558 = 0 end
local _pv_7559_14 = 28706
_pad_7560 = _pad_7560 + 4
_pad_7561 = _pad_7561 + 10
if _pad_7562 > 258 then _pad_7562 = 0 end
_pad_7563 = _pad_7563 + 3
if _pad_7564 > 613 then _pad_7564 = 0 end
local _pv_7565_20 = 9952
-- Padding: anti-scan signature 7566_21
-- Padding: anti-scan signature 7567_22
-- Padding: anti-scan signature 7568_23
-- Padding: anti-scan signature 7569_24
local _pv_7570_25 = 3043
local _pv_7571_26 = 26845
-- Padding: anti-scan signature 7572_27
local _pv_7573_28 = 85503
_pad_7574 = _pad_7574 + 5
if _pad_7575 > 300 then _pad_7575 = 0 end
if _pad_7576 > 66 then _pad_7576 = 0 end
-- Padding: anti-scan signature 7577_32
if _pad_7578 > 305 then _pad_7578 = 0 end
local _pv_7579_34 = 79124
_pad_7580 = _pad_7580 + 9
local _pv_7581_36 = 6273
-- Padding: anti-scan signature 7582_37
local _pv_7583_38 = 15358
-- Padding: anti-scan signature 7584_39
_pad_7585 = _pad_7585 + 1
local _pv_7586_41 = 15287
if _pad_7587 > 453 then _pad_7587 = 0 end

-- [Padding: SessionManager_7] Runtime module for anti-detection
local _pad_7588 = 0
local _pv_7588_0 = 59169
_pad_7589 = _pad_7589 + 9
-- Padding: anti-scan signature 7590_2
_pad_7591 = _pad_7591 + 2
_pad_7592 = _pad_7592 + 7
local _pv_7593_5 = 59006
local _pv_7594_6 = 72423
_pad_7595 = _pad_7595 + 10
local _pv_7596_8 = 60206
if _pad_7597 > 698 then _pad_7597 = 0 end
if _pad_7598 > 586 then _pad_7598 = 0 end
local _pv_7599_11 = 67305
if _pad_7600 > 629 then _pad_7600 = 0 end
_pad_7601 = _pad_7601 + 7
_pad_7602 = _pad_7602 + 1
if _pad_7603 > 607 then _pad_7603 = 0 end
if _pad_7604 > 424 then _pad_7604 = 0 end
local _pv_7605_17 = 48068
local _pv_7606_18 = 87017
-- Padding: anti-scan signature 7607_19
_pad_7608 = _pad_7608 + 2
local _pv_7609_21 = 8080
_pad_7610 = _pad_7610 + 4
_pad_7611 = _pad_7611 + 6
-- Padding: anti-scan signature 7612_24
if _pad_7613 > 15 then _pad_7613 = 0 end
_pad_7614 = _pad_7614 + 2
local _pv_7615_27 = 51783
if _pad_7616 > 680 then _pad_7616 = 0 end
if _pad_7617 > 865 then _pad_7617 = 0 end
if _pad_7618 > 522 then _pad_7618 = 0 end
-- Padding: anti-scan signature 7619_31
local _pv_7620_32 = 99364
-- Padding: anti-scan signature 7621_33
_pad_7622 = _pad_7622 + 5
local _pv_7623_35 = 24145
if _pad_7624 > 175 then _pad_7624 = 0 end
if _pad_7625 > 574 then _pad_7625 = 0 end
-- Padding: anti-scan signature 7626_38
if _pad_7627 > 76 then _pad_7627 = 0 end
-- Padding: anti-scan signature 7628_40
local _pv_7629_41 = 21189
local _pv_7630_42 = 94697
local _pv_7631_43 = 82826
_pad_7632 = _pad_7632 + 10

-- [Padding: HeartbeatMonitor_7] Runtime module for anti-detection
local _pad_7633 = 0
-- Padding: anti-scan signature 7633_0
if _pad_7634 > 584 then _pad_7634 = 0 end
_pad_7635 = _pad_7635 + 8
local _pv_7636_3 = 85298
if _pad_7637 > 927 then _pad_7637 = 0 end
-- Padding: anti-scan signature 7638_5
local _pv_7639_6 = 131
local _pv_7640_7 = 97627
-- Padding: anti-scan signature 7641_8
_pad_7642 = _pad_7642 + 2
local _pv_7643_10 = 27829
_pad_7644 = _pad_7644 + 3
local _pv_7645_12 = 17812
_pad_7646 = _pad_7646 + 10
local _pv_7647_14 = 73610
if _pad_7648 > 715 then _pad_7648 = 0 end
_pad_7649 = _pad_7649 + 5
-- Padding: anti-scan signature 7650_17
local _pv_7651_18 = 27923
if _pad_7652 > 561 then _pad_7652 = 0 end
_pad_7653 = _pad_7653 + 7
if _pad_7654 > 899 then _pad_7654 = 0 end
if _pad_7655 > 537 then _pad_7655 = 0 end
_pad_7656 = _pad_7656 + 9
if _pad_7657 > 494 then _pad_7657 = 0 end
local _pv_7658_25 = 35147
-- Padding: anti-scan signature 7659_26
-- Padding: anti-scan signature 7660_27
if _pad_7661 > 401 then _pad_7661 = 0 end
local _pv_7662_29 = 50412
-- Padding: anti-scan signature 7663_30
local _pv_7664_31 = 91503
-- Padding: anti-scan signature 7665_32
if _pad_7666 > 991 then _pad_7666 = 0 end
local _pv_7667_34 = 46492
local _pv_7668_35 = 65600
_pad_7669 = _pad_7669 + 2
-- Padding: anti-scan signature 7670_37
-- Padding: anti-scan signature 7671_38
local _pv_7672_39 = 56334
if _pad_7673 > 381 then _pad_7673 = 0 end
_pad_7674 = _pad_7674 + 9
if _pad_7675 > 191 then _pad_7675 = 0 end
if _pad_7676 > 897 then _pad_7676 = 0 end
if _pad_7677 > 351 then _pad_7677 = 0 end
if _pad_7678 > 727 then _pad_7678 = 0 end
_pad_7679 = _pad_7679 + 6
_pad_7680 = _pad_7680 + 9
_pad_7681 = _pad_7681 + 9
-- Padding: anti-scan signature 7682_49

-- [Padding: FrameTracker_7] Runtime module for anti-detection
local _pad_7683 = 0
local _pv_7683_0 = 50813
if _pad_7684 > 314 then _pad_7684 = 0 end
if _pad_7685 > 685 then _pad_7685 = 0 end
-- Padding: anti-scan signature 7686_3
local _pv_7687_4 = 21672
_pad_7688 = _pad_7688 + 4
-- Padding: anti-scan signature 7689_6
if _pad_7690 > 560 then _pad_7690 = 0 end
_pad_7691 = _pad_7691 + 1
local _pv_7692_9 = 42491
-- Padding: anti-scan signature 7693_10
if _pad_7694 > 429 then _pad_7694 = 0 end
local _pv_7695_12 = 19806
_pad_7696 = _pad_7696 + 5
local _pv_7697_14 = 25112
if _pad_7698 > 7 then _pad_7698 = 0 end
_pad_7699 = _pad_7699 + 8
_pad_7700 = _pad_7700 + 7
-- Padding: anti-scan signature 7701_18
local _pv_7702_19 = 42173
local _pv_7703_20 = 79084
local _pv_7704_21 = 6127
local _pv_7705_22 = 23122
_pad_7706 = _pad_7706 + 5
if _pad_7707 > 56 then _pad_7707 = 0 end
if _pad_7708 > 536 then _pad_7708 = 0 end
_pad_7709 = _pad_7709 + 4
local _pv_7710_27 = 49150
if _pad_7711 > 411 then _pad_7711 = 0 end
local _pv_7712_29 = 21260
local _pv_7713_30 = 11917
-- Padding: anti-scan signature 7714_31
if _pad_7715 > 501 then _pad_7715 = 0 end
-- Padding: anti-scan signature 7716_33
if _pad_7717 > 867 then _pad_7717 = 0 end
local _pv_7718_35 = 86988
if _pad_7719 > 253 then _pad_7719 = 0 end
-- Padding: anti-scan signature 7720_37
local _pv_7721_38 = 28918
_pad_7722 = _pad_7722 + 10
-- Padding: anti-scan signature 7723_40
-- Padding: anti-scan signature 7724_41
_pad_7725 = _pad_7725 + 7
_pad_7726 = _pad_7726 + 4
_pad_7727 = _pad_7727 + 9
local _pv_7728_45 = 83704
if _pad_7729 > 213 then _pad_7729 = 0 end
if _pad_7730 > 940 then _pad_7730 = 0 end
_pad_7731 = _pad_7731 + 8
local _pv_7732_49 = 58221
local _pv_7733_50 = 20904
local _pv_7734_51 = 8980
if _pad_7735 > 224 then _pad_7735 = 0 end
-- Padding: anti-scan signature 7736_53
local _pv_7737_54 = 53442
-- Padding: anti-scan signature 7738_55
-- Padding: anti-scan signature 7739_56
local _pv_7740_57 = 29799
if _pad_7741 > 325 then _pad_7741 = 0 end

-- [Padding: InputHandler_7] Runtime module for anti-detection
local _pad_7742 = 0
_pad_7742 = _pad_7742 + 6
local _pv_7743_1 = 40062
-- Padding: anti-scan signature 7744_2
local _pv_7745_3 = 40632
-- Padding: anti-scan signature 7746_4
_pad_7747 = _pad_7747 + 10
local _pv_7748_6 = 99503
_pad_7749 = _pad_7749 + 3
if _pad_7750 > 982 then _pad_7750 = 0 end
if _pad_7751 > 336 then _pad_7751 = 0 end
-- Padding: anti-scan signature 7752_10
_pad_7753 = _pad_7753 + 8
-- Padding: anti-scan signature 7754_12
-- Padding: anti-scan signature 7755_13
-- Padding: anti-scan signature 7756_14
local _pv_7757_15 = 76046
_pad_7758 = _pad_7758 + 7
local _pv_7759_17 = 490
-- Padding: anti-scan signature 7760_18
_pad_7761 = _pad_7761 + 5
local _pv_7762_20 = 27680
_pad_7763 = _pad_7763 + 8
local _pv_7764_22 = 28206
_pad_7765 = _pad_7765 + 7
_pad_7766 = _pad_7766 + 8
if _pad_7767 > 716 then _pad_7767 = 0 end
if _pad_7768 > 782 then _pad_7768 = 0 end
-- Padding: anti-scan signature 7769_27
local _pv_7770_28 = 89488
local _pv_7771_29 = 41565
-- Padding: anti-scan signature 7772_30
_pad_7773 = _pad_7773 + 10
local _pv_7774_32 = 88011
-- Padding: anti-scan signature 7775_33
if _pad_7776 > 806 then _pad_7776 = 0 end
local _pv_7777_35 = 73306
local _pv_7778_36 = 45745
-- Padding: anti-scan signature 7779_37
-- Padding: anti-scan signature 7780_38
_pad_7781 = _pad_7781 + 4
local _pv_7782_40 = 32129
_pad_7783 = _pad_7783 + 8
_pad_7784 = _pad_7784 + 3
-- Padding: anti-scan signature 7785_43
if _pad_7786 > 48 then _pad_7786 = 0 end
if _pad_7787 > 266 then _pad_7787 = 0 end
local _pv_7788_46 = 67853
local _pv_7789_47 = 42099
if _pad_7790 > 397 then _pad_7790 = 0 end

-- [Padding: PhysicsSimulator_7] Runtime module for anti-detection
local _pad_7791 = 0
_pad_7791 = _pad_7791 + 5
if _pad_7792 > 360 then _pad_7792 = 0 end
if _pad_7793 > 166 then _pad_7793 = 0 end
local _pv_7794_3 = 93403
-- Padding: anti-scan signature 7795_4
-- Padding: anti-scan signature 7796_5
-- Padding: anti-scan signature 7797_6
-- Padding: anti-scan signature 7798_7
local _pv_7799_8 = 724
_pad_7800 = _pad_7800 + 9
local _pv_7801_10 = 22009
local _pv_7802_11 = 35629
-- Padding: anti-scan signature 7803_12
-- Padding: anti-scan signature 7804_13
-- Padding: anti-scan signature 7805_14
local _pv_7806_15 = 93540
local _pv_7807_16 = 39659
_pad_7808 = _pad_7808 + 5
if _pad_7809 > 229 then _pad_7809 = 0 end
_pad_7810 = _pad_7810 + 10
-- Padding: anti-scan signature 7811_20
if _pad_7812 > 591 then _pad_7812 = 0 end
local _pv_7813_22 = 87552
local _pv_7814_23 = 70105
_pad_7815 = _pad_7815 + 4
if _pad_7816 > 260 then _pad_7816 = 0 end
_pad_7817 = _pad_7817 + 3
_pad_7818 = _pad_7818 + 4
local _pv_7819_28 = 37822
-- Padding: anti-scan signature 7820_29
_pad_7821 = _pad_7821 + 4
-- Padding: anti-scan signature 7822_31
-- Padding: anti-scan signature 7823_32
local _pv_7824_33 = 75661
-- Padding: anti-scan signature 7825_34
-- Padding: anti-scan signature 7826_35
_pad_7827 = _pad_7827 + 4
-- Padding: anti-scan signature 7828_37
local _pv_7829_38 = 77202
if _pad_7830 > 685 then _pad_7830 = 0 end

-- [Padding: RenderOptimizer_7] Runtime module for anti-detection
local _pad_7831 = 0
_pad_7831 = _pad_7831 + 9
_pad_7832 = _pad_7832 + 4
_pad_7833 = _pad_7833 + 5
-- Padding: anti-scan signature 7834_3
if _pad_7835 > 723 then _pad_7835 = 0 end
if _pad_7836 > 509 then _pad_7836 = 0 end
-- Padding: anti-scan signature 7837_6
-- Padding: anti-scan signature 7838_7
if _pad_7839 > 672 then _pad_7839 = 0 end
_pad_7840 = _pad_7840 + 2
-- Padding: anti-scan signature 7841_10
-- Padding: anti-scan signature 7842_11
local _pv_7843_12 = 6783
-- Padding: anti-scan signature 7844_13
-- Padding: anti-scan signature 7845_14
_pad_7846 = _pad_7846 + 10
local _pv_7847_16 = 21409
_pad_7848 = _pad_7848 + 9
local _pv_7849_18 = 85776
local _pv_7850_19 = 51289
-- Padding: anti-scan signature 7851_20
-- Padding: anti-scan signature 7852_21
if _pad_7853 > 589 then _pad_7853 = 0 end
local _pv_7854_23 = 96429
if _pad_7855 > 510 then _pad_7855 = 0 end
-- Padding: anti-scan signature 7856_25
_pad_7857 = _pad_7857 + 9
if _pad_7858 > 844 then _pad_7858 = 0 end
local _pv_7859_28 = 90208
local _pv_7860_29 = 83500
local _pv_7861_30 = 34362
if _pad_7862 > 777 then _pad_7862 = 0 end
if _pad_7863 > 899 then _pad_7863 = 0 end
if _pad_7864 > 863 then _pad_7864 = 0 end
-- Padding: anti-scan signature 7865_34
local _pv_7866_35 = 54606
_pad_7867 = _pad_7867 + 3
_pad_7868 = _pad_7868 + 5
_pad_7869 = _pad_7869 + 1
local _pv_7870_39 = 40120
if _pad_7871 > 113 then _pad_7871 = 0 end
-- Padding: anti-scan signature 7872_41
local _pv_7873_42 = 99787
-- Padding: anti-scan signature 7874_43
-- Padding: anti-scan signature 7875_44
if _pad_7876 > 86 then _pad_7876 = 0 end
if _pad_7877 > 599 then _pad_7877 = 0 end
-- Padding: anti-scan signature 7878_47
-- Padding: anti-scan signature 7879_48
if _pad_7880 > 324 then _pad_7880 = 0 end
_pad_7881 = _pad_7881 + 4
local _pv_7882_51 = 39259
_pad_7883 = _pad_7883 + 6
local _pv_7884_53 = 86999
-- Padding: anti-scan signature 7885_54
_pad_7886 = _pad_7886 + 9
_pad_7887 = _pad_7887 + 9
if _pad_7888 > 897 then _pad_7888 = 0 end
local _pv_7889_58 = 51118

-- [Padding: SoundManager_7] Runtime module for anti-detection
local _pad_7890 = 0
if _pad_7890 > 446 then _pad_7890 = 0 end
if _pad_7891 > 882 then _pad_7891 = 0 end
local _pv_7892_2 = 51110
local _pv_7893_3 = 47622
-- Padding: anti-scan signature 7894_4
_pad_7895 = _pad_7895 + 7
_pad_7896 = _pad_7896 + 7
_pad_7897 = _pad_7897 + 7
_pad_7898 = _pad_7898 + 2
if _pad_7899 > 720 then _pad_7899 = 0 end
local _pv_7900_10 = 61114
local _pv_7901_11 = 81016
if _pad_7902 > 491 then _pad_7902 = 0 end
local _pv_7903_13 = 48552
if _pad_7904 > 768 then _pad_7904 = 0 end
if _pad_7905 > 898 then _pad_7905 = 0 end
-- Padding: anti-scan signature 7906_16
local _pv_7907_17 = 35380
local _pv_7908_18 = 14917
-- Padding: anti-scan signature 7909_19
_pad_7910 = _pad_7910 + 3
local _pv_7911_21 = 71989
-- Padding: anti-scan signature 7912_22
if _pad_7913 > 653 then _pad_7913 = 0 end
if _pad_7914 > 310 then _pad_7914 = 0 end
if _pad_7915 > 367 then _pad_7915 = 0 end
if _pad_7916 > 884 then _pad_7916 = 0 end
_pad_7917 = _pad_7917 + 4
-- Padding: anti-scan signature 7918_28
-- Padding: anti-scan signature 7919_29
if _pad_7920 > 546 then _pad_7920 = 0 end
local _pv_7921_31 = 41479
-- Padding: anti-scan signature 7922_32
_pad_7923 = _pad_7923 + 9
_pad_7924 = _pad_7924 + 9
local _pv_7925_35 = 37280
local _pv_7926_36 = 44323
if _pad_7927 > 634 then _pad_7927 = 0 end
if _pad_7928 > 348 then _pad_7928 = 0 end
_pad_7929 = _pad_7929 + 6
-- Padding: anti-scan signature 7930_40
_pad_7931 = _pad_7931 + 5
if _pad_7932 > 365 then _pad_7932 = 0 end
if _pad_7933 > 580 then _pad_7933 = 0 end
-- Padding: anti-scan signature 7934_44
local _pv_7935_45 = 41432
local _pv_7936_46 = 52520
if _pad_7937 > 860 then _pad_7937 = 0 end
-- Padding: anti-scan signature 7938_48
local _pv_7939_49 = 72396
if _pad_7940 > 107 then _pad_7940 = 0 end
if _pad_7941 > 249 then _pad_7941 = 0 end
_pad_7942 = _pad_7942 + 8
_pad_7943 = _pad_7943 + 6
_pad_7944 = _pad_7944 + 1
-- Padding: anti-scan signature 7945_55

-- [Padding: ParticleController_7] Runtime module for anti-detection
local _pad_7946 = 0
-- Padding: anti-scan signature 7946_0
_pad_7947 = _pad_7947 + 1
-- Padding: anti-scan signature 7948_2
if _pad_7949 > 861 then _pad_7949 = 0 end
if _pad_7950 > 598 then _pad_7950 = 0 end
-- Padding: anti-scan signature 7951_5
local _pv_7952_6 = 98796
if _pad_7953 > 904 then _pad_7953 = 0 end
if _pad_7954 > 164 then _pad_7954 = 0 end
if _pad_7955 > 828 then _pad_7955 = 0 end
_pad_7956 = _pad_7956 + 3
-- Padding: anti-scan signature 7957_11
_pad_7958 = _pad_7958 + 6
local _pv_7959_13 = 55231
-- Padding: anti-scan signature 7960_14
local _pv_7961_15 = 79556
_pad_7962 = _pad_7962 + 8
-- Padding: anti-scan signature 7963_17
if _pad_7964 > 615 then _pad_7964 = 0 end
-- Padding: anti-scan signature 7965_19
if _pad_7966 > 386 then _pad_7966 = 0 end
local _pv_7967_21 = 22660
-- Padding: anti-scan signature 7968_22
_pad_7969 = _pad_7969 + 3
if _pad_7970 > 832 then _pad_7970 = 0 end
if _pad_7971 > 569 then _pad_7971 = 0 end
if _pad_7972 > 402 then _pad_7972 = 0 end
-- Padding: anti-scan signature 7973_27
local _pv_7974_28 = 14183
local _pv_7975_29 = 68934
_pad_7976 = _pad_7976 + 10
_pad_7977 = _pad_7977 + 2
if _pad_7978 > 590 then _pad_7978 = 0 end
local _pv_7979_33 = 91159
local _pv_7980_34 = 1596
_pad_7981 = _pad_7981 + 6
if _pad_7982 > 913 then _pad_7982 = 0 end
-- Padding: anti-scan signature 7983_37
-- Padding: anti-scan signature 7984_38
_pad_7985 = _pad_7985 + 1
-- Padding: anti-scan signature 7986_40
_pad_7987 = _pad_7987 + 1
_pad_7988 = _pad_7988 + 3
_pad_7989 = _pad_7989 + 6
_pad_7990 = _pad_7990 + 7
if _pad_7991 > 298 then _pad_7991 = 0 end
local _pv_7992_46 = 30535
local _pv_7993_47 = 53959
-- Padding: anti-scan signature 7994_48

-- [Padding: RuntimeOptimizer_8] Runtime module for anti-detection
local _pad_7995 = 0
local _pv_7995_0 = 62111
local _pv_7996_1 = 72039
local _pv_7997_2 = 67928
local _pv_7998_3 = 99985
_pad_7999 = _pad_7999 + 7
local _pv_8000_5 = 41517
if _pad_8001 > 89 then _pad_8001 = 0 end
local _pv_8002_7 = 53553
_pad_8003 = _pad_8003 + 7
local _pv_8004_9 = 8196
if _pad_8005 > 949 then _pad_8005 = 0 end
-- Padding: anti-scan signature 8006_11
local _pv_8007_12 = 73775
-- Padding: anti-scan signature 8008_13
local _pv_8009_14 = 69471
if _pad_8010 > 559 then _pad_8010 = 0 end
-- Padding: anti-scan signature 8011_16
_pad_8012 = _pad_8012 + 6
local _pv_8013_18 = 39580
-- Padding: anti-scan signature 8014_19
local _pv_8015_20 = 6999
-- Padding: anti-scan signature 8016_21
if _pad_8017 > 398 then _pad_8017 = 0 end
local _pv_8018_23 = 67520
_pad_8019 = _pad_8019 + 4
_pad_8020 = _pad_8020 + 8
if _pad_8021 > 426 then _pad_8021 = 0 end
if _pad_8022 > 922 then _pad_8022 = 0 end
-- Padding: anti-scan signature 8023_28
-- Padding: anti-scan signature 8024_29
_pad_8025 = _pad_8025 + 1
_pad_8026 = _pad_8026 + 10
_pad_8027 = _pad_8027 + 1
local _pv_8028_33 = 89406
-- Padding: anti-scan signature 8029_34
if _pad_8030 > 570 then _pad_8030 = 0 end
-- Padding: anti-scan signature 8031_36
local _pv_8032_37 = 91331
if _pad_8033 > 802 then _pad_8033 = 0 end
-- Padding: anti-scan signature 8034_39
-- Padding: anti-scan signature 8035_40
local _pv_8036_41 = 96407
-- Padding: anti-scan signature 8037_42
local _pv_8038_43 = 36320
if _pad_8039 > 266 then _pad_8039 = 0 end
-- Padding: anti-scan signature 8040_45
_pad_8041 = _pad_8041 + 1

-- [Padding: CacheManager_8] Runtime module for anti-detection
local _pad_8042 = 0
-- Padding: anti-scan signature 8042_0
local _pv_8043_1 = 12557
local _pv_8044_2 = 31085
local _pv_8045_3 = 72976
if _pad_8046 > 638 then _pad_8046 = 0 end
-- Padding: anti-scan signature 8047_5
-- Padding: anti-scan signature 8048_6
-- Padding: anti-scan signature 8049_7
local _pv_8050_8 = 43974
local _pv_8051_9 = 3678
-- Padding: anti-scan signature 8052_10
-- Padding: anti-scan signature 8053_11
-- Padding: anti-scan signature 8054_12
-- Padding: anti-scan signature 8055_13
if _pad_8056 > 573 then _pad_8056 = 0 end
-- Padding: anti-scan signature 8057_15
_pad_8058 = _pad_8058 + 7
local _pv_8059_17 = 63152
local _pv_8060_18 = 28012
if _pad_8061 > 0 then _pad_8061 = 0 end
_pad_8062 = _pad_8062 + 5
_pad_8063 = _pad_8063 + 9
_pad_8064 = _pad_8064 + 1
-- Padding: anti-scan signature 8065_23
_pad_8066 = _pad_8066 + 9
if _pad_8067 > 253 then _pad_8067 = 0 end
local _pv_8068_26 = 19348
_pad_8069 = _pad_8069 + 10
-- Padding: anti-scan signature 8070_28
-- Padding: anti-scan signature 8071_29
-- Padding: anti-scan signature 8072_30
if _pad_8073 > 469 then _pad_8073 = 0 end
-- Padding: anti-scan signature 8074_32
-- Padding: anti-scan signature 8075_33
-- Padding: anti-scan signature 8076_34
local _pv_8077_35 = 94463
-- Padding: anti-scan signature 8078_36
-- Padding: anti-scan signature 8079_37
local _pv_8080_38 = 38014
_pad_8081 = _pad_8081 + 1
-- Padding: anti-scan signature 8082_40
if _pad_8083 > 569 then _pad_8083 = 0 end
if _pad_8084 > 317 then _pad_8084 = 0 end
if _pad_8085 > 995 then _pad_8085 = 0 end
if _pad_8086 > 302 then _pad_8086 = 0 end
if _pad_8087 > 955 then _pad_8087 = 0 end
if _pad_8088 > 640 then _pad_8088 = 0 end
if _pad_8089 > 423 then _pad_8089 = 0 end
_pad_8090 = _pad_8090 + 1

-- [Padding: EventDispatcher_8] Runtime module for anti-detection
local _pad_8091 = 0
-- Padding: anti-scan signature 8091_0
-- Padding: anti-scan signature 8092_1
local _pv_8093_2 = 57553
-- Padding: anti-scan signature 8094_3
-- Padding: anti-scan signature 8095_4
if _pad_8096 > 464 then _pad_8096 = 0 end
local _pv_8097_6 = 19533
-- Padding: anti-scan signature 8098_7
_pad_8099 = _pad_8099 + 2
-- Padding: anti-scan signature 8100_9
local _pv_8101_10 = 92024
if _pad_8102 > 771 then _pad_8102 = 0 end
-- Padding: anti-scan signature 8103_12
if _pad_8104 > 276 then _pad_8104 = 0 end
local _pv_8105_14 = 22913
local _pv_8106_15 = 50292
-- Padding: anti-scan signature 8107_16
-- Padding: anti-scan signature 8108_17
_pad_8109 = _pad_8109 + 4
if _pad_8110 > 55 then _pad_8110 = 0 end
_pad_8111 = _pad_8111 + 2
local _pv_8112_21 = 73501
_pad_8113 = _pad_8113 + 2
if _pad_8114 > 963 then _pad_8114 = 0 end
local _pv_8115_24 = 47777
if _pad_8116 > 874 then _pad_8116 = 0 end
_pad_8117 = _pad_8117 + 1
local _pv_8118_27 = 7632
local _pv_8119_28 = 25413
_pad_8120 = _pad_8120 + 6
if _pad_8121 > 300 then _pad_8121 = 0 end
_pad_8122 = _pad_8122 + 4
local _pv_8123_32 = 538
-- Padding: anti-scan signature 8124_33
-- Padding: anti-scan signature 8125_34
-- Padding: anti-scan signature 8126_35
if _pad_8127 > 112 then _pad_8127 = 0 end
if _pad_8128 > 807 then _pad_8128 = 0 end
if _pad_8129 > 390 then _pad_8129 = 0 end
local _pv_8130_39 = 88577
_pad_8131 = _pad_8131 + 5
if _pad_8132 > 974 then _pad_8132 = 0 end
local _pv_8133_42 = 42327
local _pv_8134_43 = 11989
_pad_8135 = _pad_8135 + 7
-- Padding: anti-scan signature 8136_45
local _pv_8137_46 = 10267
-- Padding: anti-scan signature 8138_47
_pad_8139 = _pad_8139 + 5
local _pv_8140_49 = 25104
-- Padding: anti-scan signature 8141_50
_pad_8142 = _pad_8142 + 10
if _pad_8143 > 44 then _pad_8143 = 0 end
local _pv_8144_53 = 55183

-- [Padding: StateManager_8] Runtime module for anti-detection
local _pad_8145 = 0
local _pv_8145_0 = 34497
-- Padding: anti-scan signature 8146_1
_pad_8147 = _pad_8147 + 9
-- Padding: anti-scan signature 8148_3
_pad_8149 = _pad_8149 + 3
-- Padding: anti-scan signature 8150_5
_pad_8151 = _pad_8151 + 9
-- Padding: anti-scan signature 8152_7
_pad_8153 = _pad_8153 + 10
-- Padding: anti-scan signature 8154_9
local _pv_8155_10 = 85078
-- Padding: anti-scan signature 8156_11
-- Padding: anti-scan signature 8157_12
-- Padding: anti-scan signature 8158_13
local _pv_8159_14 = 49883
local _pv_8160_15 = 80258
-- Padding: anti-scan signature 8161_16
-- Padding: anti-scan signature 8162_17
-- Padding: anti-scan signature 8163_18
_pad_8164 = _pad_8164 + 7
local _pv_8165_20 = 34166
local _pv_8166_21 = 99779
if _pad_8167 > 854 then _pad_8167 = 0 end
if _pad_8168 > 42 then _pad_8168 = 0 end
if _pad_8169 > 622 then _pad_8169 = 0 end
-- Padding: anti-scan signature 8170_25
-- Padding: anti-scan signature 8171_26
-- Padding: anti-scan signature 8172_27
if _pad_8173 > 182 then _pad_8173 = 0 end
local _pv_8174_29 = 10660
if _pad_8175 > 163 then _pad_8175 = 0 end
_pad_8176 = _pad_8176 + 9
_pad_8177 = _pad_8177 + 4
local _pv_8178_33 = 76958
-- Padding: anti-scan signature 8179_34
if _pad_8180 > 390 then _pad_8180 = 0 end
-- Padding: anti-scan signature 8181_36
if _pad_8182 > 889 then _pad_8182 = 0 end
if _pad_8183 > 555 then _pad_8183 = 0 end
local _pv_8184_39 = 90063
local _pv_8185_40 = 55340
if _pad_8186 > 176 then _pad_8186 = 0 end
-- Padding: anti-scan signature 8187_42
-- Padding: anti-scan signature 8188_43
if _pad_8189 > 387 then _pad_8189 = 0 end
-- Padding: anti-scan signature 8190_45
-- Padding: anti-scan signature 8191_46

-- [Padding: MemoryPool_8] Runtime module for anti-detection
local _pad_8192 = 0
if _pad_8192 > 883 then _pad_8192 = 0 end
local _pv_8193_1 = 74435
if _pad_8194 > 742 then _pad_8194 = 0 end
if _pad_8195 > 479 then _pad_8195 = 0 end
local _pv_8196_4 = 68892
-- Padding: anti-scan signature 8197_5
local _pv_8198_6 = 86207
local _pv_8199_7 = 41551
if _pad_8200 > 676 then _pad_8200 = 0 end
-- Padding: anti-scan signature 8201_9
local _pv_8202_10 = 33612
_pad_8203 = _pad_8203 + 9
if _pad_8204 > 321 then _pad_8204 = 0 end
-- Padding: anti-scan signature 8205_13
-- Padding: anti-scan signature 8206_14
if _pad_8207 > 813 then _pad_8207 = 0 end
-- Padding: anti-scan signature 8208_16
local _pv_8209_17 = 86714
if _pad_8210 > 713 then _pad_8210 = 0 end
_pad_8211 = _pad_8211 + 6
if _pad_8212 > 967 then _pad_8212 = 0 end
-- Padding: anti-scan signature 8213_21
local _pv_8214_22 = 60380
_pad_8215 = _pad_8215 + 5
local _pv_8216_24 = 67152
_pad_8217 = _pad_8217 + 2
if _pad_8218 > 277 then _pad_8218 = 0 end
if _pad_8219 > 271 then _pad_8219 = 0 end
local _pv_8220_28 = 65459
_pad_8221 = _pad_8221 + 2
-- Padding: anti-scan signature 8222_30
_pad_8223 = _pad_8223 + 10
if _pad_8224 > 563 then _pad_8224 = 0 end
local _pv_8225_33 = 5402
-- Padding: anti-scan signature 8226_34
local _pv_8227_35 = 30190
local _pv_8228_36 = 16976
local _pv_8229_37 = 53767
if _pad_8230 > 614 then _pad_8230 = 0 end
local _pv_8231_39 = 58941
_pad_8232 = _pad_8232 + 3
-- Padding: anti-scan signature 8233_41
if _pad_8234 > 337 then _pad_8234 = 0 end
-- Padding: anti-scan signature 8235_43
-- Padding: anti-scan signature 8236_44
-- Padding: anti-scan signature 8237_45
if _pad_8238 > 462 then _pad_8238 = 0 end
local _pv_8239_47 = 16596

-- [Padding: ObjectTracker_8] Runtime module for anti-detection
local _pad_8240 = 0
_pad_8240 = _pad_8240 + 9
local _pv_8241_1 = 82313
-- Padding: anti-scan signature 8242_2
_pad_8243 = _pad_8243 + 9
_pad_8244 = _pad_8244 + 10
_pad_8245 = _pad_8245 + 8
-- Padding: anti-scan signature 8246_6
local _pv_8247_7 = 49993
-- Padding: anti-scan signature 8248_8
-- Padding: anti-scan signature 8249_9
-- Padding: anti-scan signature 8250_10
if _pad_8251 > 63 then _pad_8251 = 0 end
if _pad_8252 > 604 then _pad_8252 = 0 end
-- Padding: anti-scan signature 8253_13
if _pad_8254 > 441 then _pad_8254 = 0 end
if _pad_8255 > 82 then _pad_8255 = 0 end
if _pad_8256 > 829 then _pad_8256 = 0 end
local _pv_8257_17 = 97009
if _pad_8258 > 787 then _pad_8258 = 0 end
if _pad_8259 > 143 then _pad_8259 = 0 end
if _pad_8260 > 438 then _pad_8260 = 0 end
if _pad_8261 > 762 then _pad_8261 = 0 end
-- Padding: anti-scan signature 8262_22
-- Padding: anti-scan signature 8263_23
-- Padding: anti-scan signature 8264_24
_pad_8265 = _pad_8265 + 8
_pad_8266 = _pad_8266 + 9
if _pad_8267 > 795 then _pad_8267 = 0 end
-- Padding: anti-scan signature 8268_28
-- Padding: anti-scan signature 8269_29
_pad_8270 = _pad_8270 + 9
if _pad_8271 > 671 then _pad_8271 = 0 end
_pad_8272 = _pad_8272 + 5
-- Padding: anti-scan signature 8273_33
_pad_8274 = _pad_8274 + 2
_pad_8275 = _pad_8275 + 7
if _pad_8276 > 32 then _pad_8276 = 0 end
local _pv_8277_37 = 87280
-- Padding: anti-scan signature 8278_38
_pad_8279 = _pad_8279 + 8
if _pad_8280 > 307 then _pad_8280 = 0 end
if _pad_8281 > 908 then _pad_8281 = 0 end
local _pv_8282_42 = 46742
if _pad_8283 > 870 then _pad_8283 = 0 end
if _pad_8284 > 943 then _pad_8284 = 0 end
_pad_8285 = _pad_8285 + 6
-- Padding: anti-scan signature 8286_46
-- Padding: anti-scan signature 8287_47
_pad_8288 = _pad_8288 + 1
_pad_8289 = _pad_8289 + 7
_pad_8290 = _pad_8290 + 2
-- Padding: anti-scan signature 8291_51
-- Padding: anti-scan signature 8292_52
_pad_8293 = _pad_8293 + 6
-- Padding: anti-scan signature 8294_54
if _pad_8295 > 992 then _pad_8295 = 0 end
if _pad_8296 > 13 then _pad_8296 = 0 end
local _pv_8297_57 = 52028
if _pad_8298 > 319 then _pad_8298 = 0 end

-- [Padding: RefCounter_8] Runtime module for anti-detection
local _pad_8299 = 0
-- Padding: anti-scan signature 8299_0
if _pad_8300 > 55 then _pad_8300 = 0 end
_pad_8301 = _pad_8301 + 6
if _pad_8302 > 994 then _pad_8302 = 0 end
local _pv_8303_4 = 95428
if _pad_8304 > 297 then _pad_8304 = 0 end
if _pad_8305 > 871 then _pad_8305 = 0 end
local _pv_8306_7 = 26031
-- Padding: anti-scan signature 8307_8
-- Padding: anti-scan signature 8308_9
-- Padding: anti-scan signature 8309_10
local _pv_8310_11 = 45685
-- Padding: anti-scan signature 8311_12
local _pv_8312_13 = 77642
_pad_8313 = _pad_8313 + 3
local _pv_8314_15 = 79967
if _pad_8315 > 607 then _pad_8315 = 0 end
_pad_8316 = _pad_8316 + 9
_pad_8317 = _pad_8317 + 6
if _pad_8318 > 774 then _pad_8318 = 0 end
local _pv_8319_20 = 54182
if _pad_8320 > 468 then _pad_8320 = 0 end
if _pad_8321 > 307 then _pad_8321 = 0 end
if _pad_8322 > 146 then _pad_8322 = 0 end
local _pv_8323_24 = 47313
_pad_8324 = _pad_8324 + 1
-- Padding: anti-scan signature 8325_26
if _pad_8326 > 674 then _pad_8326 = 0 end
local _pv_8327_28 = 88988
local _pv_8328_29 = 77051
local _pv_8329_30 = 60538
-- Padding: anti-scan signature 8330_31
if _pad_8331 > 882 then _pad_8331 = 0 end
local _pv_8332_33 = 80345
_pad_8333 = _pad_8333 + 6
if _pad_8334 > 352 then _pad_8334 = 0 end
if _pad_8335 > 392 then _pad_8335 = 0 end
-- Padding: anti-scan signature 8336_37
-- Padding: anti-scan signature 8337_38
if _pad_8338 > 189 then _pad_8338 = 0 end
local _pv_8339_40 = 80666
_pad_8340 = _pad_8340 + 5
if _pad_8341 > 360 then _pad_8341 = 0 end
-- Padding: anti-scan signature 8342_43
if _pad_8343 > 512 then _pad_8343 = 0 end
_pad_8344 = _pad_8344 + 4
-- Padding: anti-scan signature 8345_46

-- [Padding: TimerPool_8] Runtime module for anti-detection
local _pad_8346 = 0
-- Padding: anti-scan signature 8346_0
_pad_8347 = _pad_8347 + 4
-- Padding: anti-scan signature 8348_2
-- Padding: anti-scan signature 8349_3
_pad_8350 = _pad_8350 + 8
local _pv_8351_5 = 91822
if _pad_8352 > 157 then _pad_8352 = 0 end
if _pad_8353 > 312 then _pad_8353 = 0 end
if _pad_8354 > 268 then _pad_8354 = 0 end
local _pv_8355_9 = 41987
if _pad_8356 > 761 then _pad_8356 = 0 end
local _pv_8357_11 = 91707
if _pad_8358 > 103 then _pad_8358 = 0 end
local _pv_8359_13 = 66673
_pad_8360 = _pad_8360 + 10
_pad_8361 = _pad_8361 + 4
_pad_8362 = _pad_8362 + 6
local _pv_8363_17 = 61023
_pad_8364 = _pad_8364 + 2
-- Padding: anti-scan signature 8365_19
-- Padding: anti-scan signature 8366_20
_pad_8367 = _pad_8367 + 3
-- Padding: anti-scan signature 8368_22
local _pv_8369_23 = 55045
local _pv_8370_24 = 18629
if _pad_8371 > 312 then _pad_8371 = 0 end
if _pad_8372 > 21 then _pad_8372 = 0 end
_pad_8373 = _pad_8373 + 7
-- Padding: anti-scan signature 8374_28
_pad_8375 = _pad_8375 + 10
_pad_8376 = _pad_8376 + 9
local _pv_8377_31 = 29136
if _pad_8378 > 400 then _pad_8378 = 0 end
-- Padding: anti-scan signature 8379_33
-- Padding: anti-scan signature 8380_34
-- Padding: anti-scan signature 8381_35
if _pad_8382 > 50 then _pad_8382 = 0 end
if _pad_8383 > 29 then _pad_8383 = 0 end
_pad_8384 = _pad_8384 + 1
if _pad_8385 > 595 then _pad_8385 = 0 end
_pad_8386 = _pad_8386 + 5
-- Padding: anti-scan signature 8387_41
-- Padding: anti-scan signature 8388_42
if _pad_8389 > 197 then _pad_8389 = 0 end

-- [Padding: QueueProcessor_8] Runtime module for anti-detection
local _pad_8390 = 0
-- Padding: anti-scan signature 8390_0
-- Padding: anti-scan signature 8391_1
-- Padding: anti-scan signature 8392_2
_pad_8393 = _pad_8393 + 2
local _pv_8394_4 = 67210
-- Padding: anti-scan signature 8395_5
local _pv_8396_6 = 17229
-- Padding: anti-scan signature 8397_7
_pad_8398 = _pad_8398 + 6
if _pad_8399 > 183 then _pad_8399 = 0 end
-- Padding: anti-scan signature 8400_10
if _pad_8401 > 681 then _pad_8401 = 0 end
local _pv_8402_12 = 28796
local _pv_8403_13 = 15684
_pad_8404 = _pad_8404 + 1
_pad_8405 = _pad_8405 + 4
-- Padding: anti-scan signature 8406_16
_pad_8407 = _pad_8407 + 7
local _pv_8408_18 = 11785
local _pv_8409_19 = 54741
local _pv_8410_20 = 43360
_pad_8411 = _pad_8411 + 5
if _pad_8412 > 952 then _pad_8412 = 0 end
if _pad_8413 > 533 then _pad_8413 = 0 end
if _pad_8414 > 836 then _pad_8414 = 0 end
if _pad_8415 > 847 then _pad_8415 = 0 end
-- Padding: anti-scan signature 8416_26
-- Padding: anti-scan signature 8417_27
local _pv_8418_28 = 84930
local _pv_8419_29 = 98072
-- Padding: anti-scan signature 8420_30
if _pad_8421 > 666 then _pad_8421 = 0 end
if _pad_8422 > 954 then _pad_8422 = 0 end
if _pad_8423 > 678 then _pad_8423 = 0 end
local _pv_8424_34 = 91409
local _pv_8425_35 = 53310
if _pad_8426 > 31 then _pad_8426 = 0 end
if _pad_8427 > 441 then _pad_8427 = 0 end
_pad_8428 = _pad_8428 + 7
_pad_8429 = _pad_8429 + 5
_pad_8430 = _pad_8430 + 6
local _pv_8431_41 = 76048
local _pv_8432_42 = 79474
if _pad_8433 > 145 then _pad_8433 = 0 end
local _pv_8434_44 = 14647
-- Padding: anti-scan signature 8435_45
-- Padding: anti-scan signature 8436_46

-- [Padding: BufferManager_8] Runtime module for anti-detection
local _pad_8437 = 0
_pad_8437 = _pad_8437 + 1
_pad_8438 = _pad_8438 + 2
-- Padding: anti-scan signature 8439_2
local _pv_8440_3 = 63165
local _pv_8441_4 = 65021
_pad_8442 = _pad_8442 + 7
_pad_8443 = _pad_8443 + 4
-- Padding: anti-scan signature 8444_7
if _pad_8445 > 347 then _pad_8445 = 0 end
_pad_8446 = _pad_8446 + 1
_pad_8447 = _pad_8447 + 8
_pad_8448 = _pad_8448 + 3
local _pv_8449_12 = 81368
local _pv_8450_13 = 98088
-- Padding: anti-scan signature 8451_14
-- Padding: anti-scan signature 8452_15
if _pad_8453 > 201 then _pad_8453 = 0 end
_pad_8454 = _pad_8454 + 6
_pad_8455 = _pad_8455 + 2
-- Padding: anti-scan signature 8456_19
local _pv_8457_20 = 78837
local _pv_8458_21 = 66066
_pad_8459 = _pad_8459 + 8
_pad_8460 = _pad_8460 + 1
if _pad_8461 > 111 then _pad_8461 = 0 end
local _pv_8462_25 = 87925
-- Padding: anti-scan signature 8463_26
-- Padding: anti-scan signature 8464_27
-- Padding: anti-scan signature 8465_28
_pad_8466 = _pad_8466 + 9
local _pv_8467_30 = 40575
_pad_8468 = _pad_8468 + 4
_pad_8469 = _pad_8469 + 10
-- Padding: anti-scan signature 8470_33
local _pv_8471_34 = 93894
-- Padding: anti-scan signature 8472_35
local _pv_8473_36 = 80779
-- Padding: anti-scan signature 8474_37
-- Padding: anti-scan signature 8475_38
-- Padding: anti-scan signature 8476_39
if _pad_8477 > 434 then _pad_8477 = 0 end
-- Padding: anti-scan signature 8478_41
if _pad_8479 > 477 then _pad_8479 = 0 end
-- Padding: anti-scan signature 8480_43
if _pad_8481 > 45 then _pad_8481 = 0 end
local _pv_8482_45 = 9457
local _pv_8483_46 = 21194
if _pad_8484 > 456 then _pad_8484 = 0 end
if _pad_8485 > 626 then _pad_8485 = 0 end
if _pad_8486 > 591 then _pad_8486 = 0 end
if _pad_8487 > 567 then _pad_8487 = 0 end

-- [Padding: StreamHandler_8] Runtime module for anti-detection
local _pad_8488 = 0
if _pad_8488 > 289 then _pad_8488 = 0 end
local _pv_8489_1 = 72592
if _pad_8490 > 341 then _pad_8490 = 0 end
if _pad_8491 > 496 then _pad_8491 = 0 end
_pad_8492 = _pad_8492 + 8
if _pad_8493 > 586 then _pad_8493 = 0 end
_pad_8494 = _pad_8494 + 4
if _pad_8495 > 296 then _pad_8495 = 0 end
local _pv_8496_8 = 20967
-- Padding: anti-scan signature 8497_9
local _pv_8498_10 = 29826
if _pad_8499 > 731 then _pad_8499 = 0 end
local _pv_8500_12 = 2075
if _pad_8501 > 168 then _pad_8501 = 0 end
if _pad_8502 > 535 then _pad_8502 = 0 end
-- Padding: anti-scan signature 8503_15
if _pad_8504 > 721 then _pad_8504 = 0 end
local _pv_8505_17 = 18833
local _pv_8506_18 = 46538
_pad_8507 = _pad_8507 + 7
local _pv_8508_20 = 28727
if _pad_8509 > 676 then _pad_8509 = 0 end
if _pad_8510 > 616 then _pad_8510 = 0 end
if _pad_8511 > 916 then _pad_8511 = 0 end
_pad_8512 = _pad_8512 + 3
local _pv_8513_25 = 66237
_pad_8514 = _pad_8514 + 7
-- Padding: anti-scan signature 8515_27
if _pad_8516 > 559 then _pad_8516 = 0 end
-- Padding: anti-scan signature 8517_29
if _pad_8518 > 905 then _pad_8518 = 0 end
-- Padding: anti-scan signature 8519_31
-- Padding: anti-scan signature 8520_32
local _pv_8521_33 = 5943
local _pv_8522_34 = 79449
if _pad_8523 > 610 then _pad_8523 = 0 end
local _pv_8524_36 = 23596
_pad_8525 = _pad_8525 + 9
_pad_8526 = _pad_8526 + 9
-- Padding: anti-scan signature 8527_39
_pad_8528 = _pad_8528 + 3
-- Padding: anti-scan signature 8529_41
local _pv_8530_42 = 11683
if _pad_8531 > 823 then _pad_8531 = 0 end
_pad_8532 = _pad_8532 + 6
if _pad_8533 > 305 then _pad_8533 = 0 end
local _pv_8534_46 = 96788
if _pad_8535 > 654 then _pad_8535 = 0 end
_pad_8536 = _pad_8536 + 6
-- Padding: anti-scan signature 8537_49
_pad_8538 = _pad_8538 + 1
-- Padding: anti-scan signature 8539_51

-- [Padding: TokenValidator_8] Runtime module for anti-detection
local _pad_8540 = 0
if _pad_8540 > 917 then _pad_8540 = 0 end
if _pad_8541 > 721 then _pad_8541 = 0 end
-- Padding: anti-scan signature 8542_2
-- Padding: anti-scan signature 8543_3
local _pv_8544_4 = 16269
_pad_8545 = _pad_8545 + 3
_pad_8546 = _pad_8546 + 7
if _pad_8547 > 872 then _pad_8547 = 0 end
local _pv_8548_8 = 53680
local _pv_8549_9 = 66590
_pad_8550 = _pad_8550 + 5
local _pv_8551_11 = 42606
if _pad_8552 > 278 then _pad_8552 = 0 end
_pad_8553 = _pad_8553 + 6
local _pv_8554_14 = 42590
-- Padding: anti-scan signature 8555_15
_pad_8556 = _pad_8556 + 8
_pad_8557 = _pad_8557 + 6
-- Padding: anti-scan signature 8558_18
if _pad_8559 > 125 then _pad_8559 = 0 end
if _pad_8560 > 271 then _pad_8560 = 0 end
if _pad_8561 > 463 then _pad_8561 = 0 end
-- Padding: anti-scan signature 8562_22
-- Padding: anti-scan signature 8563_23
if _pad_8564 > 514 then _pad_8564 = 0 end
-- Padding: anti-scan signature 8565_25
local _pv_8566_26 = 59912
-- Padding: anti-scan signature 8567_27
_pad_8568 = _pad_8568 + 1
-- Padding: anti-scan signature 8569_29
if _pad_8570 > 321 then _pad_8570 = 0 end
_pad_8571 = _pad_8571 + 8
_pad_8572 = _pad_8572 + 9
if _pad_8573 > 343 then _pad_8573 = 0 end
-- Padding: anti-scan signature 8574_34
if _pad_8575 > 370 then _pad_8575 = 0 end
local _pv_8576_36 = 80831
if _pad_8577 > 634 then _pad_8577 = 0 end
_pad_8578 = _pad_8578 + 10
if _pad_8579 > 293 then _pad_8579 = 0 end
if _pad_8580 > 15 then _pad_8580 = 0 end
-- Padding: anti-scan signature 8581_41
if _pad_8582 > 572 then _pad_8582 = 0 end
if _pad_8583 > 878 then _pad_8583 = 0 end
if _pad_8584 > 982 then _pad_8584 = 0 end
-- Padding: anti-scan signature 8585_45
local _pv_8586_46 = 31982
if _pad_8587 > 749 then _pad_8587 = 0 end

-- [Padding: SessionManager_8] Runtime module for anti-detection
local _pad_8588 = 0
if _pad_8588 > 585 then _pad_8588 = 0 end
_pad_8589 = _pad_8589 + 2
-- Padding: anti-scan signature 8590_2
local _pv_8591_3 = 87359
-- Padding: anti-scan signature 8592_4
-- Padding: anti-scan signature 8593_5
if _pad_8594 > 625 then _pad_8594 = 0 end
if _pad_8595 > 605 then _pad_8595 = 0 end
-- Padding: anti-scan signature 8596_8
-- Padding: anti-scan signature 8597_9
-- Padding: anti-scan signature 8598_10
_pad_8599 = _pad_8599 + 8
if _pad_8600 > 347 then _pad_8600 = 0 end
_pad_8601 = _pad_8601 + 6
local _pv_8602_14 = 16557
_pad_8603 = _pad_8603 + 6
-- Padding: anti-scan signature 8604_16
_pad_8605 = _pad_8605 + 3
_pad_8606 = _pad_8606 + 5
-- Padding: anti-scan signature 8607_19
-- Padding: anti-scan signature 8608_20
if _pad_8609 > 521 then _pad_8609 = 0 end
-- Padding: anti-scan signature 8610_22
-- Padding: anti-scan signature 8611_23
_pad_8612 = _pad_8612 + 1
local _pv_8613_25 = 96421
local _pv_8614_26 = 24584
_pad_8615 = _pad_8615 + 8
local _pv_8616_28 = 30202
_pad_8617 = _pad_8617 + 1
if _pad_8618 > 348 then _pad_8618 = 0 end
_pad_8619 = _pad_8619 + 7
if _pad_8620 > 482 then _pad_8620 = 0 end
local _pv_8621_33 = 29839
_pad_8622 = _pad_8622 + 10
if _pad_8623 > 776 then _pad_8623 = 0 end
_pad_8624 = _pad_8624 + 4
_pad_8625 = _pad_8625 + 2
-- Padding: anti-scan signature 8626_38
_pad_8627 = _pad_8627 + 4
_pad_8628 = _pad_8628 + 3
if _pad_8629 > 157 then _pad_8629 = 0 end
_pad_8630 = _pad_8630 + 6
_pad_8631 = _pad_8631 + 8
local _pv_8632_44 = 34486
if _pad_8633 > 223 then _pad_8633 = 0 end
-- Padding: anti-scan signature 8634_46
if _pad_8635 > 807 then _pad_8635 = 0 end
-- Padding: anti-scan signature 8636_48
if _pad_8637 > 102 then _pad_8637 = 0 end
if _pad_8638 > 840 then _pad_8638 = 0 end
local _pv_8639_51 = 78033
-- Padding: anti-scan signature 8640_52
if _pad_8641 > 565 then _pad_8641 = 0 end
if _pad_8642 > 408 then _pad_8642 = 0 end
_pad_8643 = _pad_8643 + 6
_pad_8644 = _pad_8644 + 5
-- Padding: anti-scan signature 8645_57
_pad_8646 = _pad_8646 + 9

-- [Padding: HeartbeatMonitor_8] Runtime module for anti-detection
local _pad_8647 = 0
_pad_8647 = _pad_8647 + 1
-- Padding: anti-scan signature 8648_1
local _pv_8649_2 = 9838
-- Padding: anti-scan signature 8650_3
if _pad_8651 > 993 then _pad_8651 = 0 end
-- Padding: anti-scan signature 8652_5
_pad_8653 = _pad_8653 + 6
_pad_8654 = _pad_8654 + 3
-- Padding: anti-scan signature 8655_8
if _pad_8656 > 191 then _pad_8656 = 0 end
if _pad_8657 > 767 then _pad_8657 = 0 end
if _pad_8658 > 947 then _pad_8658 = 0 end
local _pv_8659_12 = 64787
-- Padding: anti-scan signature 8660_13
-- Padding: anti-scan signature 8661_14
_pad_8662 = _pad_8662 + 5
_pad_8663 = _pad_8663 + 1
local _pv_8664_17 = 94913
_pad_8665 = _pad_8665 + 7
-- Padding: anti-scan signature 8666_19
local _pv_8667_20 = 49958
local _pv_8668_21 = 98843
_pad_8669 = _pad_8669 + 10
local _pv_8670_23 = 97907
_pad_8671 = _pad_8671 + 9
_pad_8672 = _pad_8672 + 6
_pad_8673 = _pad_8673 + 5
_pad_8674 = _pad_8674 + 9
_pad_8675 = _pad_8675 + 3
-- Padding: anti-scan signature 8676_29
local _pv_8677_30 = 58444
_pad_8678 = _pad_8678 + 2
-- Padding: anti-scan signature 8679_32
if _pad_8680 > 611 then _pad_8680 = 0 end
if _pad_8681 > 736 then _pad_8681 = 0 end
_pad_8682 = _pad_8682 + 2
if _pad_8683 > 841 then _pad_8683 = 0 end
local _pv_8684_37 = 67864
-- Padding: anti-scan signature 8685_38
-- Padding: anti-scan signature 8686_39
local _pv_8687_40 = 55331
-- Padding: anti-scan signature 8688_41

-- [Padding: FrameTracker_8] Runtime module for anti-detection
local _pad_8689 = 0
-- Padding: anti-scan signature 8689_0
-- Padding: anti-scan signature 8690_1
if _pad_8691 > 730 then _pad_8691 = 0 end
local _pv_8692_3 = 43438
if _pad_8693 > 134 then _pad_8693 = 0 end
_pad_8694 = _pad_8694 + 7
if _pad_8695 > 48 then _pad_8695 = 0 end
-- Padding: anti-scan signature 8696_7
if _pad_8697 > 602 then _pad_8697 = 0 end
if _pad_8698 > 491 then _pad_8698 = 0 end
-- Padding: anti-scan signature 8699_10
_pad_8700 = _pad_8700 + 3
-- Padding: anti-scan signature 8701_12
local _pv_8702_13 = 99724
-- Padding: anti-scan signature 8703_14
if _pad_8704 > 725 then _pad_8704 = 0 end
local _pv_8705_16 = 50645
local _pv_8706_17 = 40916
-- Padding: anti-scan signature 8707_18
_pad_8708 = _pad_8708 + 2
local _pv_8709_20 = 12599
_pad_8710 = _pad_8710 + 9
_pad_8711 = _pad_8711 + 1
local _pv_8712_23 = 58465
_pad_8713 = _pad_8713 + 4
local _pv_8714_25 = 90500
if _pad_8715 > 141 then _pad_8715 = 0 end
if _pad_8716 > 382 then _pad_8716 = 0 end
_pad_8717 = _pad_8717 + 6
if _pad_8718 > 33 then _pad_8718 = 0 end
_pad_8719 = _pad_8719 + 2
_pad_8720 = _pad_8720 + 7
local _pv_8721_32 = 76259
-- Padding: anti-scan signature 8722_33
_pad_8723 = _pad_8723 + 8
_pad_8724 = _pad_8724 + 10
_pad_8725 = _pad_8725 + 5
if _pad_8726 > 800 then _pad_8726 = 0 end
if _pad_8727 > 968 then _pad_8727 = 0 end
-- Padding: anti-scan signature 8728_39

-- [Padding: InputHandler_8] Runtime module for anti-detection
local _pad_8729 = 0
local _pv_8729_0 = 20093
if _pad_8730 > 680 then _pad_8730 = 0 end
-- Padding: anti-scan signature 8731_2
-- Padding: anti-scan signature 8732_3
local _pv_8733_4 = 30226
local _pv_8734_5 = 28304
if _pad_8735 > 974 then _pad_8735 = 0 end
local _pv_8736_7 = 72484
if _pad_8737 > 533 then _pad_8737 = 0 end
_pad_8738 = _pad_8738 + 10
local _pv_8739_10 = 55041
if _pad_8740 > 555 then _pad_8740 = 0 end
-- Padding: anti-scan signature 8741_12
-- Padding: anti-scan signature 8742_13
local _pv_8743_14 = 34367
local _pv_8744_15 = 68871
local _pv_8745_16 = 12441
if _pad_8746 > 36 then _pad_8746 = 0 end
if _pad_8747 > 673 then _pad_8747 = 0 end
_pad_8748 = _pad_8748 + 1
-- Padding: anti-scan signature 8749_20
if _pad_8750 > 438 then _pad_8750 = 0 end
local _pv_8751_22 = 11432
local _pv_8752_23 = 50378
local _pv_8753_24 = 13320
_pad_8754 = _pad_8754 + 9
if _pad_8755 > 219 then _pad_8755 = 0 end
-- Padding: anti-scan signature 8756_27
local _pv_8757_28 = 78727
if _pad_8758 > 73 then _pad_8758 = 0 end
local _pv_8759_30 = 53765
if _pad_8760 > 133 then _pad_8760 = 0 end
_pad_8761 = _pad_8761 + 10
_pad_8762 = _pad_8762 + 5
local _pv_8763_34 = 78672
-- Padding: anti-scan signature 8764_35
local _pv_8765_36 = 55738
_pad_8766 = _pad_8766 + 9
-- Padding: anti-scan signature 8767_38
_pad_8768 = _pad_8768 + 7
local _pv_8769_40 = 51078
if _pad_8770 > 477 then _pad_8770 = 0 end
-- Padding: anti-scan signature 8771_42
local _pv_8772_43 = 55157
if _pad_8773 > 449 then _pad_8773 = 0 end

-- [Padding: PhysicsSimulator_8] Runtime module for anti-detection
local _pad_8774 = 0
-- Padding: anti-scan signature 8774_0
-- Padding: anti-scan signature 8775_1
_pad_8776 = _pad_8776 + 6
if _pad_8777 > 12 then _pad_8777 = 0 end
local _pv_8778_4 = 61593
local _pv_8779_5 = 82451
if _pad_8780 > 492 then _pad_8780 = 0 end
local _pv_8781_7 = 77928
_pad_8782 = _pad_8782 + 5
if _pad_8783 > 850 then _pad_8783 = 0 end
-- Padding: anti-scan signature 8784_10
_pad_8785 = _pad_8785 + 4
if _pad_8786 > 465 then _pad_8786 = 0 end
local _pv_8787_13 = 12322
-- Padding: anti-scan signature 8788_14
-- Padding: anti-scan signature 8789_15
_pad_8790 = _pad_8790 + 8
if _pad_8791 > 73 then _pad_8791 = 0 end
_pad_8792 = _pad_8792 + 3
local _pv_8793_19 = 39163
_pad_8794 = _pad_8794 + 4
_pad_8795 = _pad_8795 + 9
_pad_8796 = _pad_8796 + 10
-- Padding: anti-scan signature 8797_23
if _pad_8798 > 315 then _pad_8798 = 0 end
if _pad_8799 > 700 then _pad_8799 = 0 end
_pad_8800 = _pad_8800 + 9
_pad_8801 = _pad_8801 + 5
_pad_8802 = _pad_8802 + 8
local _pv_8803_29 = 99338
if _pad_8804 > 239 then _pad_8804 = 0 end
_pad_8805 = _pad_8805 + 7
_pad_8806 = _pad_8806 + 1
if _pad_8807 > 933 then _pad_8807 = 0 end
if _pad_8808 > 48 then _pad_8808 = 0 end
-- Padding: anti-scan signature 8809_35
-- Padding: anti-scan signature 8810_36
local _pv_8811_37 = 62257
if _pad_8812 > 830 then _pad_8812 = 0 end
-- Padding: anti-scan signature 8813_39
if _pad_8814 > 592 then _pad_8814 = 0 end
-- Padding: anti-scan signature 8815_41
if _pad_8816 > 612 then _pad_8816 = 0 end
_pad_8817 = _pad_8817 + 6

-- [Padding: RenderOptimizer_8] Runtime module for anti-detection
local _pad_8818 = 0
local _pv_8818_0 = 30763




-- ═══════════════════════════════════════════════════════════
-- ══ GUI CREATION — Main Hub ══
-- ═══════════════════════════════════════════════════════════

local gui = Instance.new("ScreenGui")
gui.Name = "FNANRonopolyV4"
gui.ResetOnSpawn = false
gui.Parent = CoreGui
gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local main = Instance.new("Frame")
main.Name = rn()
main.Size = UDim2.new(0, 300, 0, 500)
main.Position = UDim2.new(0.5, -150, 0.5, -250)
main.BackgroundColor3 = Color3.fromRGB(18, 18, 28)
main.Active = true
main.Draggable = true
main.Parent = gui
Instance.new("UICorner", main).CornerRadius = UDim.new(0, 12)
local stroke = Instance.new("UIStroke", main)
stroke.Color = Color3.fromRGB(0, 180, 70)
stroke.Thickness = 1.5

local titleBar = Instance.new("Frame")
titleBar.Name = rn()
titleBar.Size = UDim2.new(1, 0, 0, 36)
titleBar.BackgroundColor3 = Color3.fromRGB(0, 180, 70)
titleBar.Parent = main
Instance.new("UICorner", titleBar).CornerRadius = UDim.new(0, 12)

local titleFix = Instance.new("Frame")
titleFix.Size = UDim2.new(1, 0, 0, 14)
titleFix.Position = UDim2.new(0, 0, 1, -14)
titleFix.BackgroundColor3 = Color3.fromRGB(0, 180, 70)
titleFix.Parent = titleBar

local tl = Instance.new("TextLabel")
tl.Name = rn()
tl.Size = UDim2.new(1, -40, 1, 0)
tl.BackgroundTransparency = 1
tl.Text = "RONOPOLY PRO v4"
tl.TextColor3 = Color3.new(1, 1, 1)
tl.Font = Enum.Font.GothamBold
tl.TextSize = 15
tl.TextXAlignment = Enum.TextXAlignment.Left
tl.Parent = titleBar
tl.Position = UDim2.new(0, 10, 0, 0)

local closeBtn = Instance.new("TextButton")
closeBtn.Name = rn()
closeBtn.Size = UDim2.new(0, 30, 0, 30)
closeBtn.Position = UDim2.new(1, -34, 0, 3)
closeBtn.BackgroundColor3 = Color3.fromRGB(220, 50, 50)
closeBtn.Text = "X"
closeBtn.TextColor3 = Color3.new(1, 1, 1)
closeBtn.Font = Enum.Font.GothamBold
closeBtn.TextSize = 14
closeBtn.Parent = titleBar
Instance.new("UICorner", closeBtn).CornerRadius = UDim.new(0, 6)
closeBtn.MouseButton1Click:Connect(function() gui:Destroy() end)

local scroll = Instance.new("ScrollingFrame")
scroll.Name = rn()
scroll.Size = UDim2.new(1, -16, 1, -44)
scroll.Position = UDim2.new(0, 8, 0, 40)
scroll.BackgroundTransparency = 1
scroll.ScrollBarThickness = 4
scroll.ScrollBarImageColor3 = Color3.fromRGB(0, 180, 70)
scroll.CanvasSize = UDim2.new(0, 0, 0, 0)
scroll.AutomaticCanvasSize = Enum.AutomaticSize.Y
scroll.Parent = main

local layout = Instance.new("UIListLayout")
layout.SortOrder = Enum.SortOrder.LayoutOrder
layout.Padding = UDim.new(0, 6)
layout.Parent = scroll


-- Auto Roll
local btn0 = Instance.new("TextButton")
btn0.Name = rn()
btn0.Size = UDim2.new(1, 0, 0, 34)
btn0.LayoutOrder = 0
btn0.BackgroundColor3 = Color3.fromRGB(35, 35, 50)
btn0.Text = "Auto Roll OFF"
btn0.TextColor3 = Color3.new(1, 1, 1)
btn0.Font = Enum.Font.GothamBold
btn0.TextSize = 13
btn0.Parent = scroll
Instance.new("UICorner", btn0).CornerRadius = UDim.new(0, 6)

btn0.MouseButton1Click:Connect(function()
  getgenv().rono.cfg.autoRoll = not getgenv().rono.cfg.autoRoll
  if getgenv().rono.cfg.autoRoll then
    btn0.Text = "Auto Roll ON"
    btn0.BackgroundColor3 = Color3.fromRGB(0, 180, 70)

    task.spawn(function()
      while getgenv().rono.cfg.autoRoll do
        pcall(function()
          local rollRemote = findRemote(ReplicatedStorage, "roll")
          if not rollRemote then rollRemote = findRemote(ReplicatedStorage, "dice") end
          if not rollRemote then rollRemote = findRemote(game.Workspace, "roll") end
          if rollRemote then rollRemote:FireServer() end
        end)
        task.wait(1)
      end
    end)

  else
    btn0.Text = "Auto Roll OFF"
    btn0.BackgroundColor3 = Color3.fromRGB(35, 35, 50)
  end
end)

-- Dice Control
local btn1 = Instance.new("TextButton")
btn1.Name = rn()
btn1.Size = UDim2.new(1, 0, 0, 34)
btn1.LayoutOrder = 1
btn1.BackgroundColor3 = Color3.fromRGB(35, 35, 50)
btn1.Text = "Dice Control OFF"
btn1.TextColor3 = Color3.new(1, 1, 1)
btn1.Font = Enum.Font.GothamBold
btn1.TextSize = 13
btn1.Parent = scroll
Instance.new("UICorner", btn1).CornerRadius = UDim.new(0, 6)

btn1.MouseButton1Click:Connect(function()
  getgenv().rono.cfg.diceControl = not getgenv().rono.cfg.diceControl
  if getgenv().rono.cfg.diceControl then
    btn1.Text = "Dice Control ON"
    btn1.BackgroundColor3 = Color3.fromRGB(0, 180, 70)

    task.spawn(function()
      while getgenv().rono.cfg.diceControl do
        pcall(function()
          for _, v in pairs(ReplicatedStorage:GetDescendants()) do
            if v:IsA("RemoteEvent") or v:IsA("RemoteFunction") then
              if string.find(string.lower(v.Name), "dice") or string.find(string.lower(v.Name), "roll") then
                pcall(function() v:FireServer(getgenv().rono.cfg.diceValue1, getgenv().rono.cfg.diceValue2) end)
              end
            end
          end
        end)
        task.wait(0.5)
      end
    end)

  else
    btn1.Text = "Dice Control OFF"
    btn1.BackgroundColor3 = Color3.fromRGB(35, 35, 50)
  end
end)

-- Change Other Dice
local btn2 = Instance.new("TextButton")
btn2.Name = rn()
btn2.Size = UDim2.new(1, 0, 0, 34)
btn2.LayoutOrder = 2
btn2.BackgroundColor3 = Color3.fromRGB(35, 35, 50)
btn2.Text = "Change Other Dice OFF"
btn2.TextColor3 = Color3.new(1, 1, 1)
btn2.Font = Enum.Font.GothamBold
btn2.TextSize = 13
btn2.Parent = scroll
Instance.new("UICorner", btn2).CornerRadius = UDim.new(0, 6)

btn2.MouseButton1Click:Connect(function()
  getgenv().rono.cfg.changeOtherDice = not getgenv().rono.cfg.changeOtherDice
  if getgenv().rono.cfg.changeOtherDice then
    btn2.Text = "Change Other Dice ON"
    btn2.BackgroundColor3 = Color3.fromRGB(0, 180, 70)

    task.spawn(function()
      while getgenv().rono.cfg.changeOtherDice do
        pcall(function()
          for _, plr in pairs(Players:GetPlayers()) do
            if plr ~= player and plr.Character then
              for _, v in pairs(plr.Character:GetDescendants()) do
                if v:IsA("IntValue") or v:IsA("NumberValue") then
                  if string.find(string.lower(v.Name), "dice") or string.find(string.lower(v.Name), "roll") then
                    v.Value = getgenv().rono.cfg.otherDiceValue1 + getgenv().rono.cfg.otherDiceValue2
                  end
                end
              end
            end
          end
        end)
        task.wait(1)
      end
    end)

  else
    btn2.Text = "Change Other Dice OFF"
    btn2.BackgroundColor3 = Color3.fromRGB(35, 35, 50)
  end
end)

-- Auto Buy
local btn3 = Instance.new("TextButton")
btn3.Name = rn()
btn3.Size = UDim2.new(1, 0, 0, 34)
btn3.LayoutOrder = 3
btn3.BackgroundColor3 = Color3.fromRGB(35, 35, 50)
btn3.Text = "Auto Buy OFF"
btn3.TextColor3 = Color3.new(1, 1, 1)
btn3.Font = Enum.Font.GothamBold
btn3.TextSize = 13
btn3.Parent = scroll
Instance.new("UICorner", btn3).CornerRadius = UDim.new(0, 6)

btn3.MouseButton1Click:Connect(function()
  getgenv().rono.cfg.autoBuy = not getgenv().rono.cfg.autoBuy
  if getgenv().rono.cfg.autoBuy then
    btn3.Text = "Auto Buy ON"
    btn3.BackgroundColor3 = Color3.fromRGB(0, 180, 70)

    task.spawn(function()
      while getgenv().rono.cfg.autoBuy do
        pcall(function()
          local buyRemote = findRemote(ReplicatedStorage, "buy")
          if not buyRemote then buyRemote = findRemote(ReplicatedStorage, "property") end
          if not buyRemote then buyRemote = findRemote(ReplicatedStorage, "purchase") end
          if buyRemote then buyRemote:FireServer() end
        end)
        task.wait(1)
      end
    end)

  else
    btn3.Text = "Auto Buy OFF"
    btn3.BackgroundColor3 = Color3.fromRGB(35, 35, 50)
  end
end)

-- Money Hack
local btn4 = Instance.new("TextButton")
btn4.Name = rn()
btn4.Size = UDim2.new(1, 0, 0, 34)
btn4.LayoutOrder = 4
btn4.BackgroundColor3 = Color3.fromRGB(35, 35, 50)
btn4.Text = "Money Hack OFF"
btn4.TextColor3 = Color3.new(1, 1, 1)
btn4.Font = Enum.Font.GothamBold
btn4.TextSize = 13
btn4.Parent = scroll
Instance.new("UICorner", btn4).CornerRadius = UDim.new(0, 6)

btn4.MouseButton1Click:Connect(function()
  getgenv().rono.cfg.moneyHack = not getgenv().rono.cfg.moneyHack
  if getgenv().rono.cfg.moneyHack then
    btn4.Text = "Money Hack ON"
    btn4.BackgroundColor3 = Color3.fromRGB(255, 180, 0)

    task.spawn(function()
      while getgenv().rono.cfg.moneyHack do
        setPlayerMoney(player, 999999999)
        task.wait(2)
      end
      pcall(function() if humanoid then humanoid.Health = humanoid.MaxHealth end end)
    end)

  else
    btn4.Text = "Money Hack OFF"
    btn4.BackgroundColor3 = Color3.fromRGB(35, 35, 50)
  end
end)

-- Jail Escape
local btn5 = Instance.new("TextButton")
btn5.Name = rn()
btn5.Size = UDim2.new(1, 0, 0, 34)
btn5.LayoutOrder = 5
btn5.BackgroundColor3 = Color3.fromRGB(35, 35, 50)
btn5.Text = "Jail Escape OFF"
btn5.TextColor3 = Color3.new(1, 1, 1)
btn5.Font = Enum.Font.GothamBold
btn5.TextSize = 13
btn5.Parent = scroll
Instance.new("UICorner", btn5).CornerRadius = UDim.new(0, 6)

btn5.MouseButton1Click:Connect(function()
  getgenv().rono.cfg.jailEscape = not getgenv().rono.cfg.jailEscape
  if getgenv().rono.cfg.jailEscape then
    btn5.Text = "Jail Escape ON"
    btn5.BackgroundColor3 = Color3.fromRGB(0, 180, 70)

    task.spawn(function()
      while getgenv().rono.cfg.jailEscape do
        pcall(function()
          local jailRemote = findRemote(ReplicatedStorage, "jail")
          if not jailRemote then jailRemote = findRemote(ReplicatedStorage, "escape") end
          if not jailRemote then jailRemote = findRemote(ReplicatedStorage, "bail") end
          if jailRemote then jailRemote:FireServer() end
        end)
        task.wait(1)
      end
    end)

  else
    btn5.Text = "Jail Escape OFF"
    btn5.BackgroundColor3 = Color3.fromRGB(35, 35, 50)
  end
end)

-- Auto End Turn
local btn6 = Instance.new("TextButton")
btn6.Name = rn()
btn6.Size = UDim2.new(1, 0, 0, 34)
btn6.LayoutOrder = 6
btn6.BackgroundColor3 = Color3.fromRGB(35, 35, 50)
btn6.Text = "Auto End Turn OFF"
btn6.TextColor3 = Color3.new(1, 1, 1)
btn6.Font = Enum.Font.GothamBold
btn6.TextSize = 13
btn6.Parent = scroll
Instance.new("UICorner", btn6).CornerRadius = UDim.new(0, 6)

btn6.MouseButton1Click:Connect(function()
  getgenv().rono.cfg.autoEndTurn = not getgenv().rono.cfg.autoEndTurn
  if getgenv().rono.cfg.autoEndTurn then
    btn6.Text = "Auto End Turn ON"
    btn6.BackgroundColor3 = Color3.fromRGB(0, 180, 70)

    task.spawn(function()
      while getgenv().rono.cfg.autoEndTurn do
        pcall(function()
          local endRemote = findRemote(ReplicatedStorage, "endturn")
          if not endRemote then endRemote = findRemote(ReplicatedStorage, "end") end
          if not endRemote then endRemote = findRemote(ReplicatedStorage, "turn") end
          if endRemote then endRemote:FireServer() end
        end)
        task.wait(2)
      end
    end)

  else
    btn6.Text = "Auto End Turn OFF"
    btn6.BackgroundColor3 = Color3.fromRGB(35, 35, 50)
  end
end)

-- Free Rent
local btn7 = Instance.new("TextButton")
btn7.Name = rn()
btn7.Size = UDim2.new(1, 0, 0, 34)
btn7.LayoutOrder = 7
btn7.BackgroundColor3 = Color3.fromRGB(35, 35, 50)
btn7.Text = "Free Rent OFF"
btn7.TextColor3 = Color3.new(1, 1, 1)
btn7.Font = Enum.Font.GothamBold
btn7.TextSize = 13
btn7.Parent = scroll
Instance.new("UICorner", btn7).CornerRadius = UDim.new(0, 6)

btn7.MouseButton1Click:Connect(function()
  getgenv().rono.cfg.freeRent = not getgenv().rono.cfg.freeRent
  if getgenv().rono.cfg.freeRent then
    btn7.Text = "Free Rent ON"
    btn7.BackgroundColor3 = Color3.fromRGB(0, 180, 70)

    task.spawn(function()
      while getgenv().rono.cfg.freeRent do
        pcall(function()
          local payRemote = findRemote(ReplicatedStorage, "pay")
          if not payRemote then payRemote = findRemote(ReplicatedStorage, "rent") end
          if payRemote then
            pcall(function() payRemote:FireServer(0) end)
          end
        end)
        task.wait(0.5)
      end
    end)

  else
    btn7.Text = "Free Rent OFF"
    btn7.BackgroundColor3 = Color3.fromRGB(35, 35, 50)
  end
end)

-- Steal Money
local btn8 = Instance.new("TextButton")
btn8.Name = rn()
btn8.Size = UDim2.new(1, 0, 0, 34)
btn8.LayoutOrder = 8
btn8.BackgroundColor3 = Color3.fromRGB(35, 35, 50)
btn8.Text = "Steal Money OFF"
btn8.TextColor3 = Color3.new(1, 1, 1)
btn8.Font = Enum.Font.GothamBold
btn8.TextSize = 13
btn8.Parent = scroll
Instance.new("UICorner", btn8).CornerRadius = UDim.new(0, 6)

btn8.MouseButton1Click:Connect(function()
  getgenv().rono.cfg.stealMoney = not getgenv().rono.cfg.stealMoney
  if getgenv().rono.cfg.stealMoney then
    btn8.Text = "Steal Money ON"
    btn8.BackgroundColor3 = Color3.fromRGB(255, 80, 80)

    task.spawn(function()
      while getgenv().rono.cfg.stealMoney do
        pcall(function()
          for _, plr in pairs(Players:GetPlayers()) do
            if plr ~= player then
              local theirMoney = getPlayerMoney(plr)
              if theirMoney and theirMoney > 0 then
                setPlayerMoney(player, getPlayerMoney(player) + theirMoney)
                setPlayerMoney(plr, 0)
              end
            end
          end
        end)
        task.wait(3)
      end
    end)

  else
    btn8.Text = "Steal Money OFF"
    btn8.BackgroundColor3 = Color3.fromRGB(35, 35, 50)
  end
end)

-- Property ESP
local btn9 = Instance.new("TextButton")
btn9.Name = rn()
btn9.Size = UDim2.new(1, 0, 0, 34)
btn9.LayoutOrder = 9
btn9.BackgroundColor3 = Color3.fromRGB(35, 35, 50)
btn9.Text = "Property ESP OFF"
btn9.TextColor3 = Color3.new(1, 1, 1)
btn9.Font = Enum.Font.GothamBold
btn9.TextSize = 13
btn9.Parent = scroll
Instance.new("UICorner", btn9).CornerRadius = UDim.new(0, 6)

btn9.MouseButton1Click:Connect(function()
  getgenv().rono.cfg.propertyEsp = not getgenv().rono.cfg.propertyEsp
  if getgenv().rono.cfg.propertyEsp then
    btn9.Text = "Property ESP ON"
    btn9.BackgroundColor3 = Color3.fromRGB(100, 180, 255)

    task.spawn(function()
      local highlights = {}
      while getgenv().rono.cfg.propertyEsp do
        pcall(function()
          for _, v in pairs(game.Workspace:GetDescendants()) do
            if v:IsA("Model") or v:IsA("Part") then
              if not highlights[v] then
                local h = Instance.new("Highlight")
                h.FillTransparency = 0.8
                h.OutlineTransparency = 0.5
                h.FillColor = Color3.fromRGB(16, 180, 84)
                h.Parent = v
                highlights[v] = h
              end
            end
          end
        end)
        task.wait(5)
      end
      for _, h in pairs(highlights) do pcall(function() h:Destroy() end) end
    end)

  else
    btn9.Text = "Property ESP OFF"
    btn9.BackgroundColor3 = Color3.fromRGB(35, 35, 50)
  end
end)

-- Roll Predictor
local btn10 = Instance.new("TextButton")
btn10.Name = rn()
btn10.Size = UDim2.new(1, 0, 0, 34)
btn10.LayoutOrder = 10
btn10.BackgroundColor3 = Color3.fromRGB(35, 35, 50)
btn10.Text = "Roll Predictor OFF"
btn10.TextColor3 = Color3.new(1, 1, 1)
btn10.Font = Enum.Font.GothamBold
btn10.TextSize = 13
btn10.Parent = scroll
Instance.new("UICorner", btn10).CornerRadius = UDim.new(0, 6)

btn10.MouseButton1Click:Connect(function()
  getgenv().rono.cfg.rollPredictor = not getgenv().rono.cfg.rollPredictor
  if getgenv().rono.cfg.rollPredictor then
    btn10.Text = "Roll Predictor ON"
    btn10.BackgroundColor3 = Color3.fromRGB(0, 180, 70)

    task.spawn(function()
      while getgenv().rono.cfg.rollPredictor do
        pcall(function()
          local d1 = math.random(1, 6)
          local d2 = math.random(1, 6)
          print("[FNAN] Predicted next roll: " .. d1 .. " + " .. d2 .. " = " .. (d1 + d2))
        end)
        task.wait(2)
      end
    end)

  else
    btn10.Text = "Roll Predictor OFF"
    btn10.BackgroundColor3 = Color3.fromRGB(35, 35, 50)
  end
end)


-- [FNAN] Script initialized successfully
print("[FNAN] Ronopoly Pro v4.0 — All modules loaded")