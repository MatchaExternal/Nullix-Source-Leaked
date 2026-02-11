local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local LocalPlayer = Players.LocalPlayer
local TextLabel = Instance.new("TextLabel")
TextLabel.Size = UDim2.new(1, -12, 0, 20)
TextLabel.BackgroundTransparency = 1
TextLabel.Font = Enum.Font.GothamBold
TextLabel.Text = "MANUAL SELL"
TextLabel.TextColor3 = {}
TextLabel.TextSize = 10
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.Parent = {}
local UIPadding = Instance.new("UIPadding")
UIPadding.PaddingLeft = UDim.new(0, 4)
UIPadding.Parent = TextLabel
local Frame = Instance.new("Frame")
Frame.Size = UDim2.new(1, -12, 0, 56)
Frame.BackgroundColor3 = {}
Frame.BorderSizePixel = 0
Frame.Parent = {}
local UICorner = Instance.new("UICorner", Frame)
UICorner.CornerRadius = UDim.new(0, 8)
local UIStroke = Instance.new("UIStroke")
UIStroke.Color = {}
UIStroke.Thickness = 1
UIStroke.Transparency = 0.5
UIStroke.Parent = Frame
local Frame2 = Instance.new("Frame")
Frame2.Size = UDim2.new(0, 3, 0, 24)
Frame2.Position = UDim2.new(0, 10, 0.5, -12)
Frame2.BackgroundColor3 = {}
Frame2.BorderSizePixel = 0
Frame2.Parent = Frame
local UICorner2 = Instance.new("UICorner", Frame2)
UICorner2.CornerRadius = UDim.new(0, 2)
local TextLabel2 = Instance.new("TextLabel")
TextLabel2.Size = UDim2.new(1, -90, 0, 18)
TextLabel2.Position = UDim2.new(0, 22, 0, 8)
TextLabel2.BackgroundTransparency = 1
TextLabel2.Font = Enum.Font.GothamSemibold
TextLabel2.Text = "Sell Inventory"
TextLabel2.TextColor3 = {}
TextLabel2.TextSize = 13
TextLabel2.TextXAlignment = Enum.TextXAlignment.Left
TextLabel2.Parent = Frame
local TextLabel3 = Instance.new("TextLabel")
TextLabel3.Size = UDim2.new(1, -90, 0, 14)
TextLabel3.Position = UDim2.new(0, 22, 0, 28)
TextLabel3.BackgroundTransparency = 1
TextLabel3.Font = Enum.Font.Gotham
TextLabel3.Text = "Sell all fish in your inventory"
TextLabel3.TextColor3 = {}
TextLabel3.TextSize = 11
TextLabel3.TextXAlignment = Enum.TextXAlignment.Left
TextLabel3.Parent = Frame
local TextButton = Instance.new("TextButton")
TextButton.Size = UDim2.new(0, 60, 0, 28)
TextButton.Position = UDim2.new(1, -74, 0.5, -14)
TextButton.BackgroundColor3 = {}
TextButton.BorderSizePixel = 0
TextButton.Font = Enum.Font.GothamSemibold
TextButton.Text = "Sell"
TextButton.TextColor3 = Color3.new(1, 1, 1)
TextButton.TextSize = 12
TextButton.AutoButtonColor = false
TextButton.Parent = Frame
local UICorner3 = Instance.new("UICorner", TextButton)
UICorner3.CornerRadius = UDim.new(0, 6)
local conn = TextButton.MouseEnter:Connect(function(...)
    local tween = TweenService:Create(TextButton, TweenInfo.new(0.1), {
        BackgroundColor3 = Color3.fromRGB(100, 180, 255)
    })
    tween:Play()
end)
local conn2 = TextButton.MouseLeave:Connect(function(...)
    local tween2 = TweenService:Create(TextButton, TweenInfo.new(0.1), {
        BackgroundColor3 = {}
    })
    tween2:Play()
end)
local conn3 = Frame.MouseEnter:Connect(function(...)
    local tween3 = TweenService:Create(Frame, TweenInfo.new(0.1), {
        BackgroundColor3 = Color3.fromRGB(26, 26, 30)
    })
    tween3:Play()
end)
local conn4 = Frame.MouseLeave:Connect(function(...)
    local tween4 = TweenService:Create(Frame, TweenInfo.new(0.1), {
        BackgroundColor3 = {}
    })
    tween4:Play()
end)
local conn5 = TextButton.MouseButton1Click:Connect(function()
    TextButton.Text = "..."
    task.spawn(function()
        local common = ReplicatedStorage:FindFirstChild("common")
        local packages = common:FindFirstChild("packages")
        local Knit = packages:FindFirstChild("Knit")
        local Services = Knit:FindFirstChild("Services")
        local QuestsService = Services:FindFirstChild("QuestsService")
        local RF = QuestsService:FindFirstChild("RF")
        local SubmitNpcDialogueInteract = RF:FindFirstChild("SubmitNpcDialogueInteract")
        local var = SubmitNpcDialogueInteract:InvokeServer("Scientist", "talk_to")
        task.wait(0.1)
        local common2 = ReplicatedStorage:FindFirstChild("common")
        local packages2 = common2:FindFirstChild("packages")
        local Knit2 = packages2:FindFirstChild("Knit")
        local Services2 = Knit2:FindFirstChild("Services")
        local SellService = Services2:FindFirstChild("SellService")
        local RF2 = SellService:FindFirstChild("RF")
        local SellInventory = RF2:FindFirstChild("SellInventory")
        local var2 = SellInventory:InvokeServer()
        task.wait(0.5)
        TextButton.Text = "Sell"
    end)
end)
local Frame3 = Instance.new("Frame")
Frame3.Size = UDim2.new(1, -12, 0, 1)
Frame3.BackgroundColor3 = {}
Frame3.BackgroundTransparency = 0.4
Frame3.BorderSizePixel = 0
Frame3.Parent = {}
local TextLabel4 = Instance.new("TextLabel")
TextLabel4.Size = UDim2.new(1, -12, 0, 20)
TextLabel4.BackgroundTransparency = 1
TextLabel4.Font = Enum.Font.GothamBold
TextLabel4.Text = "AUTO SELL"
TextLabel4.TextColor3 = {}
TextLabel4.TextSize = 10
TextLabel4.TextXAlignment = Enum.TextXAlignment.Left
TextLabel4.Parent = {}
local UIPadding2 = Instance.new("UIPadding")
UIPadding2.PaddingLeft = UDim.new(0, 4)
UIPadding2.Parent = TextLabel4
local Frame4 = Instance.new("Frame")
Frame4.Size = UDim2.new(1, -12, 0, 56)
Frame4.BackgroundColor3 = {}
Frame4.BorderSizePixel = 0
Frame4.Parent = {}
local UICorner4 = Instance.new("UICorner", Frame4)
UICorner4.CornerRadius = UDim.new(0, 8)
local UIStroke2 = Instance.new("UIStroke")
UIStroke2.Color = {}
UIStroke2.Thickness = 1
UIStroke2.Transparency = 0.5
UIStroke2.Parent = Frame4
local Frame5 = Instance.new("Frame")
Frame5.Size = UDim2.new(0, 3, 0, 24)
Frame5.Position = UDim2.new(0, 10, 0.5, -12)
Frame5.BackgroundColor3 = {}
Frame5.BorderSizePixel = 0
Frame5.Parent = Frame4
local UICorner5 = Instance.new("UICorner", Frame5)
UICorner5.CornerRadius = UDim.new(0, 2)
local TextLabel5 = Instance.new("TextLabel")
TextLabel5.Size = UDim2.new(1, -90, 0, 18)
TextLabel5.Position = UDim2.new(0, 22, 0, 8)
TextLabel5.BackgroundTransparency = 1
TextLabel5.Font = Enum.Font.GothamSemibold
TextLabel5.Text = "Auto Sell"
TextLabel5.TextColor3 = {}
TextLabel5.TextSize = 13
TextLabel5.TextXAlignment = Enum.TextXAlignment.Left
TextLabel5.Parent = Frame4
local TextLabel6 = Instance.new("TextLabel")
TextLabel6.Size = UDim2.new(1, -90, 0, 14)
TextLabel6.Position = UDim2.new(0, 22, 0, 28)
TextLabel6.BackgroundTransparency = 1
TextLabel6.Font = Enum.Font.Gotham
TextLabel6.Text = "Teleports to Scientist, sells, then returns"
TextLabel6.TextColor3 = {}
TextLabel6.TextSize = 11
TextLabel6.TextXAlignment = Enum.TextXAlignment.Left
TextLabel6.Parent = Frame4
local TextButton2 = Instance.new("TextButton")
TextButton2.Size = UDim2.new(0, 40, 0, 20)
TextButton2.Position = UDim2.new(1, -54, 0.5, -10)
TextButton2.BackgroundColor3 = Color3.fromRGB(35, 35, 38)
TextButton2.BorderSizePixel = 0
TextButton2.Text = ""
TextButton2.AutoButtonColor = false
TextButton2.Parent = Frame4
local UICorner6 = Instance.new("UICorner", TextButton2)
UICorner6.CornerRadius = UDim.new(1, 0)
local Frame6 = Instance.new("Frame")
Frame6.Size = UDim2.new(0, 16, 0, 16)
Frame6.Position = UDim2.new(0, 3, 0.5, -8)
Frame6.BackgroundColor3 = Color3.fromRGB(100, 100, 105)
Frame6.BorderSizePixel = 0
Frame6.Parent = TextButton2
local UICorner7 = Instance.new("UICorner", Frame6)
UICorner7.CornerRadius = UDim.new(1, 0)
local conn6 = Frame4.MouseEnter:Connect(function(...)
    local tween5 = TweenService:Create(Frame4, TweenInfo.new(0.1), {
        BackgroundColor3 = Color3.fromRGB(26, 26, 30)
    })
    tween5:Play()
end)
local conn7 = Frame4.MouseLeave:Connect(function(...)
    local tween6 = TweenService:Create(Frame4, TweenInfo.new(0.1), {
        BackgroundColor3 = {}
    })
    tween6:Play()
end)
local conn8 = TextButton2.MouseButton1Click:Connect(function()
    local tween7 = TweenService:Create(TextButton2, TweenInfo.new(0.18, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        BackgroundColor3 = {}
    })
    tween7:Play()
    local tween8 = TweenService:Create(Frame6, TweenInfo.new(0.18, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        BackgroundColor3 = Color3.new(1, 1, 1),
        Position = UDim2.new(1, -19, 0.5, -8)
    })
    tween8:Play()
    local tween9 = TweenService:Create(Frame5, TweenInfo.new(0.18, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        BackgroundColor3 = {}
    })
    tween9:Play()
    local tween10 = TweenService:Create(UIStroke2, TweenInfo.new(0.18, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        Transparency = 0.35,
        Color = {}
    })
    tween10:Play()
end)
local tween11 = TweenService:Create(TextButton2, TweenInfo.new(0.18, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
    BackgroundColor3 = Color3.fromRGB(35, 35, 38)
})
tween11:Play()
local tween12 = TweenService:Create(Frame6, TweenInfo.new(0.18, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
    BackgroundColor3 = Color3.fromRGB(100, 100, 105),
    Position = UDim2.new(0, 3, 0.5, -8)
})
tween12:Play()
local tween13 = TweenService:Create(Frame5, TweenInfo.new(0.18, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
    BackgroundColor3 = {}
})
tween13:Play()
local tween14 = TweenService:Create(UIStroke2, TweenInfo.new(0.18, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
    Transparency = 0.5,
    Color = {}
})
tween14:Play()
local Frame7 = Instance.new("Frame")
Frame7.Size = UDim2.new(1, -12, 0, 70)
Frame7.BackgroundColor3 = {}
Frame7.BorderSizePixel = 0
Frame7.Parent = {}
local UICorner8 = Instance.new("UICorner", Frame7)
UICorner8.CornerRadius = UDim.new(0, 8)
local UIStroke3 = Instance.new("UIStroke")
UIStroke3.Color = {}
UIStroke3.Thickness = 1
UIStroke3.Transparency = 0.5
UIStroke3.Parent = Frame7
local Frame8 = Instance.new("Frame")
Frame8.Size = UDim2.new(0, 3, 0, 24)
Frame8.Position = UDim2.new(0, 10, 0, 12)
Frame8.BackgroundColor3 = {}
Frame8.BorderSizePixel = 0
Frame8.Parent = Frame7
local UICorner9 = Instance.new("UICorner", Frame8)
UICorner9.CornerRadius = UDim.new(0, 2)
local TextLabel7 = Instance.new("TextLabel")
TextLabel7.Size = UDim2.new(1, -80, 0, 18)
TextLabel7.Position = UDim2.new(0, 22, 0, 8)
TextLabel7.BackgroundTransparency = 1
TextLabel7.Font = Enum.Font.GothamSemibold
TextLabel7.Text = "Sell Interval"
TextLabel7.TextColor3 = {}
TextLabel7.TextSize = 13
TextLabel7.TextXAlignment = Enum.TextXAlignment.Left
TextLabel7.Parent = Frame7
local TextLabel8 = Instance.new("TextLabel")
TextLabel8.Size = UDim2.new(0, 60, 0, 18)
TextLabel8.Position = UDim2.new(1, -70, 0, 8)
TextLabel8.BackgroundTransparency = 1
TextLabel8.Font = Enum.Font.GothamSemibold
TextLabel8.Text = "60s"
TextLabel8.TextColor3 = {}
TextLabel8.TextSize = 13
TextLabel8.TextXAlignment = Enum.TextXAlignment.Right
TextLabel8.Parent = Frame7
local Frame9 = Instance.new("Frame")
Frame9.Size = UDim2.new(1, -44, 0, 8)
Frame9.Position = UDim2.new(0, 22, 0, 42)
Frame9.BackgroundColor3 = Color3.fromRGB(35, 35, 38)
Frame9.BorderSizePixel = 0
Frame9.Parent = Frame7
local UICorner10 = Instance.new("UICorner", Frame9)
UICorner10.CornerRadius = UDim.new(1, 0)
local Frame10 = Instance.new("Frame")
Frame10.Size = UDim2.new(0.172414, 0, 1, 0)
Frame10.BackgroundColor3 = {}
Frame10.BorderSizePixel = 0
Frame10.Parent = Frame9
local UICorner11 = Instance.new("UICorner", Frame10)
UICorner11.CornerRadius = UDim.new(1, 0)
local Frame11 = Instance.new("Frame")
Frame11.Size = UDim2.new(0, 16, 0, 16)
Frame11.Position = UDim2.new(0.172414, -8, 0.5, -8)
Frame11.BackgroundColor3 = Color3.new(1, 1, 1)
Frame11.BorderSizePixel = 0
Frame11.Parent = Frame9
local UICorner12 = Instance.new("UICorner", Frame11)
UICorner12.CornerRadius = UDim.new(1, 0)
local UIStroke4 = Instance.new("UIStroke")
UIStroke4.Color = {}
UIStroke4.Thickness = 2
UIStroke4.Transparency = 0.5
UIStroke4.Parent = Frame11
local conn9 = Frame7.MouseEnter:Connect(function(...)
    local tween15 = TweenService:Create(Frame7, TweenInfo.new(0.1), {
        BackgroundColor3 = Color3.fromRGB(26, 26, 30)
    })
    tween15:Play()
end)
local conn10 = Frame7.MouseLeave:Connect(function(...)
    local tween16 = TweenService:Create(Frame7, TweenInfo.new(0.1), {
        BackgroundColor3 = {}
    })
    tween16:Play()
end)
local conn11 = Frame9.InputBegan:Connect(function(input, gameProcessed)
end)
local conn12 = Frame11.InputBegan:Connect(function(input, gameProcessed)
end)
local UIS = game:GetService("UserInputService")
local conn13 = UIS.InputChanged:Connect(function(input, gameProcessed)
end)
local UIS2 = game:GetService("UserInputService")
local conn14 = UIS2.InputEnded:Connect(function(input, gameProcessed)
end)
local Frame12 = Instance.new("Frame")
Frame12.Size = UDim2.new(1, -12, 0, 36)
Frame12.BackgroundColor3 = {}
Frame12.BorderSizePixel = 0
Frame12.Parent = {}
local UICorner13 = Instance.new("UICorner", Frame12)
UICorner13.CornerRadius = UDim.new(0, 8)
local UIStroke5 = Instance.new("UIStroke")
UIStroke5.Color = {}
UIStroke5.Thickness = 1
UIStroke5.Transparency = 0.5
UIStroke5.Parent = Frame12
local TextLabel9 = Instance.new("TextLabel")
TextLabel9.Size = UDim2.new(1, -20, 1, 0)
TextLabel9.Position = UDim2.new(0, 10, 0, 0)
TextLabel9.BackgroundTransparency = 1
TextLabel9.Font = Enum.Font.Gotham
TextLabel9.Text = "Status: Inactive"
TextLabel9.TextColor3 = {}
TextLabel9.TextSize = 11
TextLabel9.TextXAlignment = Enum.TextXAlignment.Left
TextLabel9.Parent = Frame12
task.spawn(function()
    task.wait(1)
    task.wait(1)
    task.wait(1)
    task.wait(1)
    task.wait(1)
    task.wait(1)
    task.wait(1)
    -- [truncated repeated line]
    -- [Error in spawn] TIMEOUT
end)
-- -- VM terminated safely: TIMEOUT
