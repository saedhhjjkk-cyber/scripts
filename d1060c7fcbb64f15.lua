-- Made by FNAN AI SCRIPTS

local rn = function() return math.random(100000, 999999) end
local S = setmetatable({}, {__index = function(_, k) return game:GetService(k) end})
getgenv().fn_state = {}
getgenv().fn_config = {
    walkSpeed = 25,
    jumpPower = 50,
    flySpeed = 60,
    autoBlockDelay = 0.2,
    hitboxRange = 15,
    autoParryDelay = 0.1,
    fovRange = 100
}

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local CoreGui = game:GetService("CoreGui")

local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local hrp = character:WaitForChild("HumanoidRootPart")
local humanoid = character:WaitForChild("Humanoid")

player.CharacterAdded:Connect(function(char)
    character = char
    hrp = char:WaitForChild("HumanoidRootPart")
    humanoid = char:WaitForChild("Humanoid")
end)

local function findRemote(parent, keyword)
    for _,v in pairs(parent:GetDescendants()) do
        if v:IsA("RemoteEvent") and string.find(string.lower(v.Name), string.lower(keyword)) then
            return v
        end
    end
    return nil
end

local function notify(text, dur)
    dur = dur or 3
    local n = Instance.new("TextLabel")
    n.Size = UDim2.new(0, 250, 0, 40)
    n.Position = UDim2.new(0.5, -125, 0, 10)
    n.BackgroundColor3 = Color3.fromRGB(0, 160, 60)
    n.TextColor3 = Color3.new(1, 1, 1)
    n.Font = Enum.Font.GothamBold
    n.TextSize = 13
    n.Text = text
    n.Name = tostring(rn())
    n.Parent = S.CoreGui:InsertGuiForPlayer(player, n)
    Instance.new("UICorner").Parent = n
    game:GetService("TweenService"):Create(n, TweenInfo.new(0.5), {Position = UDim2.new(0.5, -125, 0, 50)}):Play()
    task.wait(dur)
    game:GetService("TweenService"):Create(n, TweenInfo.new(0.5), {Position = UDim2.new(0.5, -125, 0, -40)}):Play()
    task.wait(0.5)
    n:Destroy()
end

local function createESP(c)
    if c:FindFirstChild("FNAN_ESP") then return end
    local h = Instance.new("Highlight")
    h.Name = "FNAN_ESP"
    h.FillTransparency = 0.5
    h.OutlineColor = Color3.fromRGB(0, 255, 100)
    h.FillColor = Color3.fromRGB(0, 255, 100)
    h.Parent = c
end

local function removeESP(c)
    if c:FindFirstChild("FNAN_ESP") then
        c.FNAN_ESP:Destroy()
    end
end

local function createHitboxVisual()
    if workspace:FindFirstChild("FNAN_HitboxVisual") then return end
    local part = Instance.new("Part")
    part.Name = "FNAN_HitboxVisual"
    part.Size = Vector3.new(1, 1, 1)
    part.Material = Enum.Material.Neon
    part.BrickColor = BrickColor.new("Bright green")
    part.Anchored = true
    part.CanCollide = false
    part.Parent = Workspace
end

local function updateHitboxVisual()
    local hitbox = workspace:FindFirstChild("FNAN_HitboxVisual")
    if hitbox and hrp then
        hitbox.CFrame = hrp.CFrame
        hitbox.Size = Vector3.new(getgenv().fn_config.hitboxRange*2, getgenv().fn_config.hitboxRange*2, getgenv().fn_config.hitboxRange*2)
    end
end

local function findBall()
    for _,v in pairs(Workspace:GetDescendants()) do
        if v:IsA("MeshPart") and v.Name:lower():find("ball") and v:FindFirstChild("Ball") then
            return v
        end
    end
    return nil
end

local function findNearestBall()
    local ball = findBall()
    if not ball then return nil end
    
    local distance = (hrp.Position - ball.Position).Magnitude
    if distance <= getgenv().fn_config.hitboxRange then
        return ball
    end
    return nil
end

local function findNearestPlayer()
    local nearest = nil
    local minDist = math.huge
    
    for _,p in pairs(Players:GetPlayers()) do
        if p ~= player and p.Character and p.Character:FindFirstChild("HumanoidRootPart") then
            local dist = (hrp.Position - p.Character.HumanoidRootPart.Position).Magnitude
            if dist < minDist and dist <= getgenv().fn_config.hitboxRange then
                minDist = dist
                nearest = p
            end
        end
    end
    return nearest
end

local function isBallComing()
    for _,v in pairs(Workspace:GetDescendants()) do
        if v:IsA("MeshPart") and v.Name:lower():find("ball") and v:FindFirstChild("Ball") then
            local dist = (hrp.Position - v.Position).Magnitude
            if dist <= getgenv().fn_config.hitboxRange then
                local direction = (v.Position - hrp.Position).Unit
                local lookVector = hrp.CFrame.LookVector
                local dot = direction:Dot(lookVector)
                if dot > 0.5 then
                    return true
                end
            end
        end
    end
    return false
end

local function getBallVelocity()
    for _,v in pairs(Workspace:GetDescendants()) do
        if v:IsA("MeshPart") and v.Name:lower():find("ball") and v:FindFirstChild("Ball") then
            return v.Velocity
        end
    end
    return Vector3.new(0, 0, 0)
end

local function predictBallPosition()
    local ball = findBall()
    if not ball then return nil end
    
    local velocity = getBallVelocity()
    local predictionTime = 0.5
    local predictedPos = ball.Position + velocity * predictionTime
    return predictedPos
end

local gui = Instance.new("ScreenGui")
gui.Name = tostring(rn())
gui.ResetOnSpawn = false
gui.Parent = S.CoreGui:InsertGuiForPlayer(player, gui)

local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 280, 0, 420)
mainFrame.Position = UDim2.new(0.5, -140, 0.5, -210)
mainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 30)
mainFrame.Name = tostring(rn())
mainFrame.Parent = gui
Instance.new("UICorner").Parent = mainFrame

local titleBar = Instance.new("Frame")
titleBar.Size = UDim2.new(1, 0, 0, 30)
titleBar.Position = UDim2.new(0, 0, 0, 0)
titleBar.BackgroundColor3 = Color3.fromRGB(0, 160, 60)
titleBar.Name = tostring(rn())
titleBar.Parent = mainFrame
Instance.new("UICorner").Parent = titleBar

local titleText = Instance.new("TextLabel")
titleText.Size = UDim2.new(1, 0, 1, 0)
titleText.Position = UDim2.new(0, 0, 0, 0)
titleText.BackgroundTransparency = 1
titleText.Text = "FNAN Hub"
titleText.TextColor3 = Color3.new(1, 1, 1)
titleText.Font = Enum.Font.GothamBold
titleText.TextSize = 14
titleText.Name = tostring(rn())
titleText.Parent = titleBar

local closeBtn = Instance.new("TextButton")
closeBtn.Size = UDim2.new(0, 20, 0, 20)
closeBtn.Position = UDim2.new(1, -25, 0, 5)
closeBtn.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
closeBtn.Text = "X"
closeBtn.TextColor3 = Color3.new(1, 1, 1)
closeBtn.Font = Enum.Font.GothamBold
closeBtn.TextSize = 12
closeBtn.Name = tostring(rn())
closeBtn.Parent = titleBar

local dragStart, dragInput, dragConnection, startPos

local function inputBegan(input, processed)
    if processed then return end
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragStart = input.Position
        startPos = mainFrame.Position
        dragInput = input
        dragConnection = UserInputService.InputChanged:Connect(inputChanged)
    end
end

local function inputChanged(input, processed)
    if processed then return end
    if input.UserInputType == Enum.UserInputType.MouseMovement then
        dragInput = input
    end
end

local function inputEnded(input, processed)
    if processed then return end
    if input == dragInput then
        dragInput = nil
        dragConnection:Disconnect()
        dragConnection = nil
    end
end

UserInputService.InputBegan:Connect(inputBegan)
UserInputService.InputEnded:Connect(inputEnded)

local function updateDrag(input)
    if dragInput and dragStart then
        local delta = input.Position - dragStart
        mainFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end
end

UserInputService.InputChanged:Connect(function(input, processed)
    if processed then return end
    if input.UserInputType == Enum.UserInputType.MouseMovement then
        updateDrag(input)
    end
end)

closeBtn.MouseButton1Click:Connect(function()
    gui:Destroy()
end)

local tabBar = Instance.new("Frame")
tabBar.Size = UDim2.new(1, 0, 0, 34)
tabBar.Position = UDim2.new(0, 0, 0, 30)
tabBar.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
tabBar.Name = tostring(rn())
tabBar.Parent = mainFrame

local mainTab = Instance.new("TextButton")
mainTab.Size = UDim2.new(0.5, 0, 1, 0)
mainTab.Position = UDim2.new(0, 0, 0, 0)
mainTab.BackgroundColor3 = Color3.fromRGB(40, 40, 55)
mainTab.Text = "Main"
mainTab.TextColor3 = Color3.new(1, 1, 1)
mainTab.Font = Enum.Font.GothamBold
mainTab.TextSize = 12
mainTab.Name = tostring(rn())
mainTab.Parent = tabBar

local settingsTab = Instance.new("TextButton")
settingsTab.Size = UDim2.new(0.5, 0, 1, 0)
settingsTab.Position = UDim2.new(0.5, 0, 0, 0)
settingsTab.BackgroundColor3 = Color3.fromRGB(40, 40, 55)
settingsTab.Text = "Settings"
settingsTab.TextColor3 = Color3.new(1, 1, 1)
settingsTab.Font = Enum.Font.GothamBold
settingsTab.TextSize = 12
settingsTab.Name = tostring(rn())
settingsTab.Parent = tabBar

local mainContent = Instance.new("ScrollingFrame")
mainContent.Size = UDim2.new(1, 0, 1, -34)
mainContent.Position = UDim2.new(0, 0, 0, 64)
mainContent.BackgroundTransparency = 1
mainContent.ScrollBarThickness = 6
mainContent.ScrollBarImageColor3 = Color3.fromRGB(0, 160, 60)
mainContent.Name = tostring(rn())
mainContent.Parent = mainFrame

local settingsContent = Instance.new("ScrollingFrame")
settingsContent.Size = UDim2.new(1, 0, 1, -34)
settingsContent.Position = UDim2.new(0, 0, 0, 64)
settingsContent.BackgroundTransparency = 1
settingsContent.ScrollBarThickness = 6
settingsContent.ScrollBarImageColor3 = Color3.fromRGB(0, 160, 60)
settingsContent.Visible = false
settingsContent.Name = tostring(rn())
settingsContent.Parent = mainFrame

local function toggleTab(tab)
    if tab == mainTab then
        mainContent.Visible = true
        settingsContent.Visible = false
        mainTab.BackgroundColor3 = Color3.fromRGB(0, 160, 60)
        settingsTab.BackgroundColor3 = Color3.fromRGB(40, 40, 55)
    else
        mainContent.Visible = false
        settingsContent.Visible = true
        settingsTab.BackgroundColor3 = Color3.fromRGB(0, 160, 60)
        mainTab.BackgroundColor3 = Color3.fromRGB(40, 40, 55)
    end
end

mainTab.MouseButton1Click:Connect(function()
    toggleTab(mainTab)
end)

settingsTab.MouseButton1Click:Connect(function()
    toggleTab(settingsTab)
end)

local function createButton(parent, text, yPos)
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(1, -20, 0, 30)
    btn.Position = UDim2.new(0, 10, 0, yPos)
    btn.BackgroundColor3 = Color3.fromRGB(40, 40, 55)
    btn.Text = text
    btn.TextColor3 = Color3.new(1, 1, 1)
    btn.Font = Enum.Font.GothamBold
    btn.TextSize = 11
    btn.Name = tostring(rn())
    btn.Parent = parent
    Instance.new("UICorner").Parent = btn
    return btn
end

local function createLabel(parent, text, yPos)
    local lbl = Instance.new("TextLabel")
    lbl.Size = UDim2.new(1, -20, 0, 25)
    lbl.Position = UDim2.new(0, 10, 0, yPos)
    lbl.BackgroundTransparency = 1
    lbl.Text = text
    lbl.TextColor3 = Color3.new(1, 1, 1)
    lbl.Font = Enum.Font.GothamBold
    lbl.TextSize = 11
    lbl.Name = tostring(rn())
    lbl.Parent = parent
    return lbl
end

local function createTextBox(parent, text, yPos, configKey)
    local lbl = createLabel(parent, text, yPos)
    
    local txtBox = Instance.new("TextBox")
    txtBox.Size = UDim2.new(0.5, -10, 0, 25)
    txtBox.Position = UDim2.new(0.5, 5, 0, yPos)
    txtBox.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
    txtBox.Text = tostring(getgenv().fn_config[configKey])
    txtBox.TextColor3 = Color3.new(1, 1, 1)
    txtBox.Font = Enum.Font.GothamBold
    txtBox.TextSize = 11
    txtBox.Name = tostring(rn())
    txtBox.Parent = parent
    Instance.new("UICorner").Parent = txtBox
    
    txtBox.FocusLost:Connect(function()
        local value = tonumber(txtBox.Text)
        if value then
            getgenv().fn_config[configKey] = value
            notify(text .. " set to " .. value)
        else
            txtBox.Text = tostring(getgenv().fn_config[configKey])
        end
    end)
    
    return txtBox
end

-- Main Features
getgenv().fn_state["Speed"] = false
local speedBtn = createButton(mainContent, "Speed: OFF", 10)
speedBtn.MouseButton1Click:Connect(function()
    getgenv().fn_state["Speed"] = not getgenv().fn_state["Speed"]
    if getgenv().fn_state["Speed"] then
        speedBtn.Text = "Speed: ON"
        speedBtn.BackgroundColor3 = Color3.fromRGB(0, 160, 60)
        spawn(function()
            while getgenv().fn_state["Speed"] and character and humanoid do
                pcall(function()
                    humanoid.WalkSpeed = getgenv().fn_config.walkSpeed
                end)
                task.wait(0.1)
            end
        end)
    else
        speedBtn.Text = "Speed: OFF"
        speedBtn.BackgroundColor3 = Color3.fromRGB(40, 40, 55)
        pcall(function()
            if humanoid then
                humanoid.WalkSpeed = 16
            end
        end)
    end
end)

getgenv().fn_state["AutoBlock"] = false
local autoBlockBtn = createButton(mainContent, "Auto Block: OFF", 45)
autoBlockBtn.MouseButton1Click:Connect(function()
    getgenv().fn_state["AutoBlock"] = not getgenv().fn_state["AutoBlock"]
    if getgenv().fn_state["AutoBlock"] then
        autoBlockBtn.Text = "Auto Block: ON"
        autoBlockBtn.BackgroundColor3 = Color3.fromRGB(0, 160, 60)
        notify("Auto Block activated")
    else
        autoBlockBtn.Text = "Auto Block: OFF"
        autoBlockBtn.BackgroundColor3 = Color3.fromRGB(40, 40, 55)
        notify("Auto Block deactivated")
    end
end)

getgenv().fn_state["AutoParry"] = false
local autoParryBtn = createButton(mainContent, "Auto Parry: OFF", 80)
autoParryBtn.MouseButton1Click:Connect(function()
    getgenv().fn_state["AutoParry"] = not getgenv().fn_state["AutoParry"]
    if getgenv().fn_state["AutoParry"] then
        autoParryBtn.Text = "Auto Parry: ON"
        autoParryBtn.BackgroundColor3 = Color3.fromRGB(0, 160, 60)
        notify("Auto Parry activated")
    else
        autoParryBtn.Text = "Auto Parry: OFF"
        autoParryBtn.BackgroundColor3 = Color3.fromRGB(40, 40, 