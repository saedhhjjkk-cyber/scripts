
task.spawn(function()
  local _g = Instance.new("ScreenGui")
  _g.ResetOnSpawn = false
  _g.Parent = game:GetService("CoreGui")
  local _l = Instance.new("TextLabel")
  _l.Size = UDim2.new(0, 240, 0, 38)
  _l.Position = UDim2.new(0.5, -120, 0, 10)
  _l.BackgroundColor3 = Color3.fromRGB(0, 180, 70)
  _l.TextColor3 = Color3.new(1, 1, 1)
  _l.Font = Enum.Font.GothamBold
  _l.TextSize = 15
  _l.Text = "FNAN Script Loaded!"
  _l.Parent = _g
  local _c = Instance.new("UICorner")
  _c.CornerRadius = UDim.new(0, 10)
  _c.Parent = _l
  task.wait(3)
  _l:Destroy()
  if _g.Parent then _g:Destroy() end
end)

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local hrp = character:WaitForChild("HumanoidRootPart")
local humanoid = character:WaitForChild("Humanoid")
player.CharacterAdded:Connect(function(c)
  character = c
  hrp = c:WaitForChild("HumanoidRootPart")
  humanoid = c:WaitForChild("Humanoid")
end)

getgenv().fn = {}
getgenv().fn.cfg = {speed = 80, jumpPower = 100, flySpeed = 50}

local screenGui = Instance.new("ScreenGui")
screenGui.ResetOnSpawn = false
screenGui.Name = "JailbreakScript"
screenGui.Parent = game:GetService("CoreGui")

local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 280, 0, 400)
mainFrame.Position = UDim2.new(0.5, -140, 0.5, -200)
mainFrame.BackgroundColor3 = Color3.fromRGB(18, 18, 28)
mainFrame.Parent = screenGui
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 12)
corner.Parent = mainFrame

local titleBar = Instance.new("Frame")
titleBar.Size = UDim2.new(1, 0, 0, 40)
titleBar.Position = UDim2.new(0, 0, 0, 0)
titleBar.BackgroundColor3 = Color3.fromRGB(0, 170, 60)
titleBar.Parent = mainFrame
local titleCorner = Instance.new("UICorner")
titleCorner.CornerRadius = UDim.new(0, 12)
titleCorner.Parent = titleBar

local titleText = Instance.new("TextLabel")
titleText.Size = UDim2.new(1, 0, 1, 0)
titleText.Position = UDim2.new(0, 10, 0, 0)
titleText.BackgroundTransparency = 1
titleText.Text = "Jailbreak Hub"
titleText.TextColor3 = Color3.new(1, 1, 1)
titleText.Font = Enum.Font.GothamBold
titleText.TextSize = 18
titleText.Parent = titleBar

local closeBtn = Instance.new("TextButton")
closeBtn.Size = UDim2.new(0, 30, 0, 30)
closeBtn.Position = UDim2.new(1, -40, 0, 5)
closeBtn.BackgroundTransparency = 1
closeBtn.Text = "X"
closeBtn.TextColor3 = Color3.new(1, 1, 1)
closeBtn.Font = Enum.Font.GothamBold
closeBtn.TextSize = 20
closeBtn.Parent = titleBar
closeBtn.MouseButton1Click:Connect(function()
  screenGui:Destroy()
end)

local scrollFrame = Instance.new("ScrollingFrame")
scrollFrame.Size = UDim2.new(1, -16, 1, -50)
scrollFrame.Position = UDim2.new(0, 8, 0, 45)
scrollFrame.BackgroundTransparency = 1
scrollFrame.ScrollBarThickness = 4
scrollFrame.ScrollBarImageColor3 = Color3.fromRGB(0, 170, 60)
scrollFrame.Parent = mainFrame

local yOffset = 0

local function createFeatureButton(name)
  local btn = Instance.new("TextButton")
  btn.Size = UDim2.new(1, -16, 0, 32)
  btn.Position = UDim2.new(0, 8, 0, yOffset)
  btn.BackgroundColor3 = Color3.fromRGB(35, 35, 50)
  btn.TextColor3 = Color3.new(1, 1, 1)
  btn.Font = Enum.Font.GothamBold
  btn.TextSize = 13
  btn.Text = name .. " OFF"
  btn.Parent = scrollFrame
  Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 6)
  yOffset = yOffset + 36
  return btn
end

local speedBtn = createFeatureButton("Speed")
getgenv().fn["Speed"] = false
speedBtn.MouseButton1Click:Connect(function()
  getgenv().fn["Speed"] = not getgenv().fn["Speed"]
  if getgenv().fn["Speed"] then
    speedBtn.Text = "Speed ON"
    speedBtn.BackgroundColor3 = Color3.fromRGB(0, 170, 60)
    task.spawn(function()
      while getgenv().fn["Speed"] do
        if character and humanoid then
          pcall(function() humanoid.WalkSpeed = getgenv().fn.cfg.speed end)
        end
        task.wait(0.1)
      end
    end)
  else
    speedBtn.Text = "Speed OFF"
    speedBtn.BackgroundColor3 = Color3.fromRGB(35, 35, 50)
    pcall(function() if humanoid then humanoid.WalkSpeed = 16 end end)
  end
end)

local jumpBtn = createFeatureButton("Infinite Jump")
getgenv().fn["InfiniteJump"] = false
jumpBtn.MouseButton1Click:Connect(function()
  getgenv().fn["InfiniteJump"] = not getgenv().fn["InfiniteJump"]
  if getgenv().fn["InfiniteJump"] then
    jumpBtn.Text = "Infinite Jump ON"
    jumpBtn.BackgroundColor3 = Color3.fromRGB(0, 170, 60)
    UserInputService.JumpRequest:Connect(function()
      if getgenv().fn["InfiniteJump"] and character and humanoid then
        pcall(function() humanoid:ChangeState(Enum.HumanoidStateType.Jumping) end)
      end
    end)
  else
    jumpBtn.Text = "Infinite Jump OFF"
    jumpBtn.BackgroundColor3 = Color3.fromRGB(35, 35, 50)
  end
end)

local noclipBtn = createFeatureButton("Noclip")
getgenv().fn["Noclip"] = false
noclipBtn.MouseButton1Click:Connect(function()
  getgenv().fn["Noclip"] = not getgenv().fn["Noclip"]
  if getgenv().fn["Noclip"] then
    noclipBtn.Text = "Noclip ON"
    noclipBtn.BackgroundColor3 = Color3.fromRGB(0, 170, 60)
    task.spawn(function()
      while getgenv().fn["Noclip"] do
        if character then
          pcall(function()
            for _, v in pairs(character:GetDescendants()) do
              if v:IsA("BasePart") then
                v.CanCollide = false
              end
            end
          end)
        end
        task.wait(0.1)
      end
    end)
  else
    noclipBtn.Text = "Noclip OFF"
    noclipBtn.BackgroundColor3 = Color3.fromRGB(35, 35, 50)
  end
end)

local flyBtn = createFeatureButton("Fly")
getgenv().fn["Fly"] = false
flyBtn.MouseButton1Click:Connect(function()
  getgenv().fn["Fly"] = not getgenv().fn["Fly"]
  if getgenv().fn["Fly"] then
    flyBtn.Text = "Fly ON"
    flyBtn.BackgroundColor3 = Color3.fromRGB(0, 170, 60)
    local bv = Instance.new("BodyVelocity")
    bv.MaxForce = Vector3.new(0, 0, 0)
    bv.P = 5000
    bv.Parent = hrp
    local bg = Instance.new("BodyGyro")
    bg.MaxTorque = Vector3.new(0, 0, 0)
    bg.P = 1000
    bg.Parent = hrp
    
    local connection
    connection = RunService.Stepped:Connect(function()
      if not getgenv().fn["Fly"] then
        connection:Disconnect()
        bv:Destroy()
        bg:Destroy()
        return
      end
      
      local direction = Vector3.new(0, 0, 0)
      if UserInputService:IsKeyDown(Enum.KeyCode.W) then direction = direction + Vector3.new(0, 0, -1) end
      if UserInputService:IsKeyDown(Enum.KeyCode.S) then direction = direction + Vector3.new(0, 0, 1) end
      if UserInputService:IsKeyDown(Enum.KeyCode.A) then direction = direction + Vector3.new(-1, 0, 0) end
      if UserInputService:IsKeyDown(Enum.KeyCode.D) then direction = direction + Vector3.new(1, 0, 0) end
      if UserInputService:IsKeyDown(Enum.KeyCode.Space) then direction = direction + Vector3.new(0, 1, 0) end
      if UserInputService:IsKeyDown(Enum.KeyCode.LeftShift) then direction = direction + Vector3.new(0, -1, 0) end
      
      direction = direction.Unit * getgenv().fn.cfg.flySpeed
      bv.Velocity = direction
      bg.CFrame = CFrame.new(hrp.Position, hrp.Position + direction)
    end)
  else
    flyBtn.Text = "Fly OFF"
    flyBtn.BackgroundColor3 = Color3.fromRGB(35, 35, 50)
  end
end)

local godBtn = createFeatureButton("Godmode")
getgenv().fn["Godmode"] = false
godBtn.MouseButton1Click:Connect(function()
  getgenv().fn["Godmode"] = not getgenv().fn["Godmode"]
  if getgenv().fn["Godmode"] then
    godBtn.Text = "Godmode ON"
    godBtn.BackgroundColor3 = Color3.fromRGB(0, 170, 60)
    task.spawn(function()
      while getgenv().fn["Godmode"] do
        if character and humanoid then
          pcall(function() humanoid.Health = humanoid.MaxHealth end)
        end
        task.wait(0.1)
      end
    end)
  else
    godBtn.Text = "Godmode OFF"
    godBtn.BackgroundColor3 = Color3.fromRGB(35, 35, 50)
  end
end)

local espBtn = createFeatureButton("ESP")
getgenv().fn["ESP"] = false
espBtn.MouseButton1Click:Connect(function()
  getgenv().fn["ESP"] = not getgenv().fn["ESP"]
  if getgenv().fn["ESP"] then
    espBtn.Text = "ESP ON"
    espBtn.BackgroundColor3 = Color3.fromRGB(0, 170, 60)
    task.spawn(function()
      while getgenv().fn["ESP"] do
        pcall(function()
          for _, p in pairs(Players:GetPlayers()) do
            if p ~= player and p.Character then
              for _, v in pairs(p.Character:GetDescendants()) do
                if v:IsA("BasePart") and not v:FindFirstChild("ESPHighlight") then
                  local highlight = Instance.new("Highlight")
                  highlight.Name = "ESPHighlight"
                  highlight.FillColor = p.Team and p.Team.TeamColor.Color or Color3.new(1, 0, 0)
                  highlight.Parent = v
                end
              end
            end
          end
        end)
        task.wait(1)
      end
    end)
  else
    espBtn.Text = "ESP OFF"
    espBtn.BackgroundColor3 = Color3.fromRGB(35, 35, 50)
    pcall(function()
      for _, p in pairs(Players:GetPlayers()) do
        if p.Character then
          for _, v in pairs(p.Character:GetDescendants()) do
            if v:FindFirstChild("ESPHighlight") then
              v.ESPHighlight:Destroy()
            end
          end
        end
      end
    end)
  end
end)

local vehicleBtn = createFeatureButton("Vehicle Teleport")
getgenv().fn["VehicleTeleport"] = false
vehicleBtn.MouseButton1Click:Connect(function()
  getgenv().fn["VehicleTeleport"] = not getgenv().fn["VehicleTeleport"]
  if getgenv().fn["VehicleTeleport"] then
    vehicleBtn.Text = "Vehicle Teleport ON"
    vehicleBtn.BackgroundColor3 = Color3.fromRGB(0, 170, 60)
    task.spawn(function()
      while getgenv().fn["VehicleTeleport"] do
        pcall(function()
          for _, v in pairs(workspace.Vehicles:GetChildren()) do
            if v:FindFirstChild("DriverSeat") and v.DriverSeat:FindFirstChild("Occupant") then
              if v.DriverSeat.Occupant.Parent ~= player then
                hrp.CFrame = v.DriverSeat.CFrame
              end
            end
          end
        end)
        task.wait(0.5)
      end
    end)
  else
    vehicleBtn.Text = "Vehicle Teleport OFF"
    vehicleBtn.BackgroundColor3 = Color3.fromRGB(35, 35, 50)
  end
end)