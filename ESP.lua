local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local UIS = game:GetService("UserInputService")
local LocalPlayer = Players.LocalPlayer
getgenv().toggleChests = {}
getgenv().toggleFish = {}
getgenv().ESP_Table = {}
local Game = workspace:FindFirstChild("Game")
local Chests = Game:FindFirstChild("Chests")
local Fish = Game:FindFirstChild("Fish")
local FindFirstChild = Game.Fish:FindFirstChild("client")
local TextLabel = Instance.new("TextLabel")
TextLabel.Size = UDim2.new(1, -12, 0, 22)
TextLabel.BackgroundTransparency = 1
TextLabel.Font = Enum.Font.GothamBold
TextLabel.Text = "WORLD ESP"
TextLabel.TextColor3 = {}
TextLabel.TextSize = 10
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.Parent = {}
local UIPadding = Instance.new("UIPadding")
UIPadding.PaddingLeft = UDim.new(0, 4)
UIPadding.Parent = TextLabel
local Frame = Instance.new("Frame", {})
Frame.Size = UDim2.new(1, -12, 0, 52)
Frame.BackgroundColor3 = {}
Frame.BorderSizePixel = 0
local UICorner = Instance.new("UICorner", Frame)
UICorner.CornerRadius = UDim.new(0, 8)
local UIStroke = Instance.new("UIStroke", Frame)
UIStroke.Color = {}
UIStroke.Transparency = 0.5
local Frame2 = Instance.new("Frame", Frame)
Frame2.Size = UDim2.new(0, 3, 0, 18)
Frame2.Position = UDim2.new(0, 8, 0.5, -9)
Frame2.BackgroundColor3 = {}
Frame2.BorderSizePixel = 0
local UICorner2 = Instance.new("UICorner", Frame2)
UICorner2.CornerRadius = UDim.new(0, 2)
local TextLabel2 = Instance.new("TextLabel", Frame)
TextLabel2.Size = UDim2.new(1, -80, 0, 14)
TextLabel2.Position = UDim2.new(0, 18, 0, 8)
TextLabel2.BackgroundTransparency = 1
TextLabel2.Text = "Fish ESP"
TextLabel2.Font = Enum.Font.GothamSemibold
TextLabel2.TextSize = 12
TextLabel2.TextColor3 = {}
TextLabel2.TextXAlignment = Enum.TextXAlignment.Left
local TextLabel3 = Instance.new("TextLabel", Frame)
TextLabel3.Size = UDim2.new(1, -80, 0, 12)
TextLabel3.Position = UDim2.new(0, 18, 0, 24)
TextLabel3.BackgroundTransparency = 1
TextLabel3.Text = "Show fish names above fish"
TextLabel3.Font = Enum.Font.Gotham
TextLabel3.TextSize = 10
TextLabel3.TextColor3 = {}
TextLabel3.TextXAlignment = Enum.TextXAlignment.Left
local TextButton = Instance.new("TextButton", Frame)
TextButton.Size = UDim2.new(0, 40, 0, 20)
TextButton.Position = UDim2.new(1, -52, 0.5, -10)
TextButton.BackgroundColor3 = Color3.fromRGB(40, 40, 45)
TextButton.BorderSizePixel = 0
TextButton.Text = ""
TextButton.AutoButtonColor = false
local UICorner3 = Instance.new("UICorner", TextButton)
UICorner3.CornerRadius = UDim.new(1, 0)
local Frame3 = Instance.new("Frame", TextButton)
Frame3.Size = UDim2.new(0, 16, 0, 16)
Frame3.Position = UDim2.new(0, 2, 0.5, -8)
Frame3.BackgroundColor3 = Color3.fromRGB(100, 100, 105)
Frame3.BorderSizePixel = 0
local UICorner4 = Instance.new("UICorner", Frame3)
UICorner4.CornerRadius = UDim.new(1, 0)
local conn = TextButton.MouseButton1Click:Connect(function()
    local tween = TweenService:Create(TextButton, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
        BackgroundColor3 = Color3.fromRGB(40, 40, 45)
    })
    tween:Play()
    local tween2 = TweenService:Create(Frame3, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
        BackgroundColor3 = Color3.fromRGB(100, 100, 105),
        Position = UDim2.new(0, 2, 0.5, -8)
    })
    tween2:Play()
    local tween3 = TweenService:Create(Frame2, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
        BackgroundColor3 = {}
    })
    tween3:Play()
end)
local conn2 = Frame.MouseEnter:Connect(function(...)
    local tween4 = TweenService:Create(Frame, TweenInfo.new(0.15, Enum.EasingStyle.Quart), {
        BackgroundColor3 = Color3.fromRGB(28, 28, 32)
    })
    tween4:Play()
end)
local conn3 = Frame.MouseLeave:Connect(function(...)
    local tween5 = TweenService:Create(Frame, TweenInfo.new(0.15, Enum.EasingStyle.Quart), {
        BackgroundColor3 = {}
    })
    tween5:Play()
end)
local tween6 = TweenService:Create(TextButton, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
    BackgroundColor3 = Color3.fromRGB(40, 40, 45)
})
tween6:Play()
local tween7 = TweenService:Create(Frame3, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
    BackgroundColor3 = Color3.fromRGB(100, 100, 105),
    Position = UDim2.new(0, 2, 0.5, -8)
})
tween7:Play()
local tween8 = TweenService:Create(Frame2, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
    BackgroundColor3 = {}
})
tween8:Play()
local Frame4 = Instance.new("Frame", {})
Frame4.Size = UDim2.new(1, -12, 0, 52)
Frame4.BackgroundColor3 = {}
Frame4.BorderSizePixel = 0
local UICorner5 = Instance.new("UICorner", Frame4)
UICorner5.CornerRadius = UDim.new(0, 8)
local UIStroke2 = Instance.new("UIStroke", Frame4)
UIStroke2.Color = {}
UIStroke2.Transparency = 0.5
local Frame5 = Instance.new("Frame", Frame4)
Frame5.Size = UDim2.new(0, 3, 0, 18)
Frame5.Position = UDim2.new(0, 8, 0.5, -9)
Frame5.BackgroundColor3 = {}
Frame5.BorderSizePixel = 0
local UICorner6 = Instance.new("UICorner", Frame5)
UICorner6.CornerRadius = UDim.new(0, 2)
local TextLabel4 = Instance.new("TextLabel", Frame4)
TextLabel4.Size = UDim2.new(1, -80, 0, 14)
TextLabel4.Position = UDim2.new(0, 18, 0, 8)
TextLabel4.BackgroundTransparency = 1
TextLabel4.Text = "Chest ESP"
TextLabel4.Font = Enum.Font.GothamSemibold
TextLabel4.TextSize = 12
TextLabel4.TextColor3 = {}
TextLabel4.TextXAlignment = Enum.TextXAlignment.Left
local TextLabel5 = Instance.new("TextLabel", Frame4)
TextLabel5.Size = UDim2.new(1, -80, 0, 12)
TextLabel5.Position = UDim2.new(0, 18, 0, 24)
TextLabel5.BackgroundTransparency = 1
TextLabel5.Text = "Show all chests with tier"
TextLabel5.Font = Enum.Font.Gotham
TextLabel5.TextSize = 10
TextLabel5.TextColor3 = {}
TextLabel5.TextXAlignment = Enum.TextXAlignment.Left
local TextButton2 = Instance.new("TextButton", Frame4)
TextButton2.Size = UDim2.new(0, 40, 0, 20)
TextButton2.Position = UDim2.new(1, -52, 0.5, -10)
TextButton2.BackgroundColor3 = Color3.fromRGB(40, 40, 45)
TextButton2.BorderSizePixel = 0
TextButton2.Text = ""
TextButton2.AutoButtonColor = false
local UICorner7 = Instance.new("UICorner", TextButton2)
UICorner7.CornerRadius = UDim.new(1, 0)
local Frame6 = Instance.new("Frame", TextButton2)
Frame6.Size = UDim2.new(0, 16, 0, 16)
Frame6.Position = UDim2.new(0, 2, 0.5, -8)
Frame6.BackgroundColor3 = Color3.fromRGB(100, 100, 105)
Frame6.BorderSizePixel = 0
local UICorner8 = Instance.new("UICorner", Frame6)
UICorner8.CornerRadius = UDim.new(1, 0)
local conn4 = TextButton2.MouseButton1Click:Connect(function()
    local tween9 = TweenService:Create(TextButton2, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
        BackgroundColor3 = Color3.fromRGB(40, 40, 45)
    })
    tween9:Play()
    local tween10 = TweenService:Create(Frame6, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
        BackgroundColor3 = Color3.fromRGB(100, 100, 105),
        Position = UDim2.new(0, 2, 0.5, -8)
    })
    tween10:Play()
    local tween11 = TweenService:Create(Frame5, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
        BackgroundColor3 = {}
    })
    tween11:Play()
end)
local conn5 = Frame4.MouseEnter:Connect(function(...)
    local tween12 = TweenService:Create(Frame4, TweenInfo.new(0.15, Enum.EasingStyle.Quart), {
        BackgroundColor3 = Color3.fromRGB(28, 28, 32)
    })
    tween12:Play()
end)
local conn6 = Frame4.MouseLeave:Connect(function(...)
    local tween13 = TweenService:Create(Frame4, TweenInfo.new(0.15, Enum.EasingStyle.Quart), {
        BackgroundColor3 = {}
    })
    tween13:Play()
end)
local tween14 = TweenService:Create(TextButton2, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
    BackgroundColor3 = Color3.fromRGB(40, 40, 45)
})
tween14:Play()
local tween15 = TweenService:Create(Frame6, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
    BackgroundColor3 = Color3.fromRGB(100, 100, 105),
    Position = UDim2.new(0, 2, 0.5, -8)
})
tween15:Play()
local tween16 = TweenService:Create(Frame5, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
    BackgroundColor3 = {}
})
tween16:Play()
local Frame7 = Instance.new("Frame")
Frame7.Size = UDim2.new(1, -12, 0, 1)
Frame7.BackgroundColor3 = {}
Frame7.BackgroundTransparency = 0.5
Frame7.BorderSizePixel = 0
Frame7.Parent = {}
local TextLabel6 = Instance.new("TextLabel")
TextLabel6.Size = UDim2.new(1, -12, 0, 22)
TextLabel6.BackgroundTransparency = 1
TextLabel6.Font = Enum.Font.GothamBold
TextLabel6.Text = "PLAYER ESP"
TextLabel6.TextColor3 = {}
TextLabel6.TextSize = 10
TextLabel6.TextXAlignment = Enum.TextXAlignment.Left
TextLabel6.Parent = {}
local UIPadding2 = Instance.new("UIPadding")
UIPadding2.PaddingLeft = UDim.new(0, 4)
UIPadding2.Parent = TextLabel6
local Frame8 = Instance.new("Frame", {})
Frame8.Size = UDim2.new(1, -12, 0, 52)
Frame8.BackgroundColor3 = {}
Frame8.BorderSizePixel = 0
local UICorner9 = Instance.new("UICorner", Frame8)
UICorner9.CornerRadius = UDim.new(0, 8)
local UIStroke3 = Instance.new("UIStroke", Frame8)
UIStroke3.Color = {}
UIStroke3.Transparency = 0.5
local Frame9 = Instance.new("Frame", Frame8)
Frame9.Size = UDim2.new(0, 3, 0, 18)
Frame9.Position = UDim2.new(0, 8, 0.5, -9)
Frame9.BackgroundColor3 = {}
Frame9.BorderSizePixel = 0
local UICorner10 = Instance.new("UICorner", Frame9)
UICorner10.CornerRadius = UDim.new(0, 2)
local TextLabel7 = Instance.new("TextLabel", Frame8)
TextLabel7.Size = UDim2.new(1, -80, 0, 14)
TextLabel7.Position = UDim2.new(0, 18, 0, 8)
TextLabel7.BackgroundTransparency = 1
TextLabel7.Text = "Enable Player ESP"
TextLabel7.Font = Enum.Font.GothamSemibold
TextLabel7.TextSize = 12
TextLabel7.TextColor3 = {}
TextLabel7.TextXAlignment = Enum.TextXAlignment.Left
local TextLabel8 = Instance.new("TextLabel", Frame8)
TextLabel8.Size = UDim2.new(1, -80, 0, 12)
TextLabel8.Position = UDim2.new(0, 18, 0, 24)
TextLabel8.BackgroundTransparency = 1
TextLabel8.Text = "Master toggle for all player visuals"
TextLabel8.Font = Enum.Font.Gotham
TextLabel8.TextSize = 10
TextLabel8.TextColor3 = {}
TextLabel8.TextXAlignment = Enum.TextXAlignment.Left
local TextButton3 = Instance.new("TextButton", Frame8)
TextButton3.Size = UDim2.new(0, 40, 0, 20)
TextButton3.Position = UDim2.new(1, -52, 0.5, -10)
TextButton3.BackgroundColor3 = Color3.fromRGB(40, 40, 45)
TextButton3.BorderSizePixel = 0
TextButton3.Text = ""
TextButton3.AutoButtonColor = false
local UICorner11 = Instance.new("UICorner", TextButton3)
UICorner11.CornerRadius = UDim.new(1, 0)
local Frame10 = Instance.new("Frame", TextButton3)
Frame10.Size = UDim2.new(0, 16, 0, 16)
Frame10.Position = UDim2.new(0, 2, 0.5, -8)
Frame10.BackgroundColor3 = Color3.fromRGB(100, 100, 105)
Frame10.BorderSizePixel = 0
local UICorner12 = Instance.new("UICorner", Frame10)
UICorner12.CornerRadius = UDim.new(1, 0)
local conn7 = TextButton3.MouseButton1Click:Connect(function()
    local tween17 = TweenService:Create(TextButton3, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
        BackgroundColor3 = {}
    })
    tween17:Play()
    local tween18 = TweenService:Create(Frame10, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
        BackgroundColor3 = Color3.new(1, 1, 1),
        Position = UDim2.new(1, -18, 0.5, -8)
    })
    tween18:Play()
    local tween19 = TweenService:Create(Frame9, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
        BackgroundColor3 = {}
    })
    tween19:Play()
end)
local conn8 = Frame8.MouseEnter:Connect(function(...)
    local tween20 = TweenService:Create(Frame8, TweenInfo.new(0.15, Enum.EasingStyle.Quart), {
        BackgroundColor3 = Color3.fromRGB(28, 28, 32)
    })
    tween20:Play()
end)
local conn9 = Frame8.MouseLeave:Connect(function(...)
    local tween21 = TweenService:Create(Frame8, TweenInfo.new(0.15, Enum.EasingStyle.Quart), {
        BackgroundColor3 = {}
    })
    tween21:Play()
end)
local tween22 = TweenService:Create(TextButton3, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
    BackgroundColor3 = {}
})
tween22:Play()
local tween23 = TweenService:Create(Frame10, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
    BackgroundColor3 = Color3.new(1, 1, 1),
    Position = UDim2.new(1, -18, 0.5, -8)
})
tween23:Play()
local tween24 = TweenService:Create(Frame9, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
    BackgroundColor3 = {}
})
tween24:Play()
local Frame11 = Instance.new("Frame", {})
Frame11.Size = UDim2.new(1, -12, 0, 52)
Frame11.BackgroundColor3 = {}
Frame11.BorderSizePixel = 0
local UICorner13 = Instance.new("UICorner", Frame11)
UICorner13.CornerRadius = UDim.new(0, 8)
local UIStroke4 = Instance.new("UIStroke", Frame11)
UIStroke4.Color = {}
UIStroke4.Transparency = 0.5
local Frame12 = Instance.new("Frame", Frame11)
Frame12.Size = UDim2.new(0, 3, 0, 18)
Frame12.Position = UDim2.new(0, 8, 0.5, -9)
Frame12.BackgroundColor3 = {}
Frame12.BorderSizePixel = 0
local UICorner14 = Instance.new("UICorner", Frame12)
UICorner14.CornerRadius = UDim.new(0, 2)
local TextLabel9 = Instance.new("TextLabel", Frame11)
TextLabel9.Size = UDim2.new(1, -80, 0, 14)
TextLabel9.Position = UDim2.new(0, 18, 0, 8)
TextLabel9.BackgroundTransparency = 1
TextLabel9.Text = "Box"
TextLabel9.Font = Enum.Font.GothamSemibold
TextLabel9.TextSize = 12
TextLabel9.TextColor3 = {}
TextLabel9.TextXAlignment = Enum.TextXAlignment.Left
local TextLabel10 = Instance.new("TextLabel", Frame11)
TextLabel10.Size = UDim2.new(1, -80, 0, 12)
TextLabel10.Position = UDim2.new(0, 18, 0, 24)
TextLabel10.BackgroundTransparency = 1
TextLabel10.Text = "Draw box around players"
TextLabel10.Font = Enum.Font.Gotham
TextLabel10.TextSize = 10
TextLabel10.TextColor3 = {}
TextLabel10.TextXAlignment = Enum.TextXAlignment.Left
local TextButton4 = Instance.new("TextButton", Frame11)
TextButton4.Size = UDim2.new(0, 40, 0, 20)
TextButton4.Position = UDim2.new(1, -52, 0.5, -10)
TextButton4.BackgroundColor3 = Color3.fromRGB(40, 40, 45)
TextButton4.BorderSizePixel = 0
TextButton4.Text = ""
TextButton4.AutoButtonColor = false
local UICorner15 = Instance.new("UICorner", TextButton4)
UICorner15.CornerRadius = UDim.new(1, 0)
local Frame13 = Instance.new("Frame", TextButton4)
Frame13.Size = UDim2.new(0, 16, 0, 16)
Frame13.Position = UDim2.new(0, 2, 0.5, -8)
Frame13.BackgroundColor3 = Color3.fromRGB(100, 100, 105)
Frame13.BorderSizePixel = 0
local UICorner16 = Instance.new("UICorner", Frame13)
UICorner16.CornerRadius = UDim.new(1, 0)
local conn10 = TextButton4.MouseButton1Click:Connect(function()
    local tween25 = TweenService:Create(TextButton4, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
        BackgroundColor3 = Color3.fromRGB(40, 40, 45)
    })
    tween25:Play()
    local tween26 = TweenService:Create(Frame13, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
        BackgroundColor3 = Color3.fromRGB(100, 100, 105),
        Position = UDim2.new(0, 2, 0.5, -8)
    })
    tween26:Play()
    local tween27 = TweenService:Create(Frame12, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
        BackgroundColor3 = {}
    })
    tween27:Play()
end)
local conn11 = Frame11.MouseEnter:Connect(function(...)
    local tween28 = TweenService:Create(Frame11, TweenInfo.new(0.15, Enum.EasingStyle.Quart), {
        BackgroundColor3 = Color3.fromRGB(28, 28, 32)
    })
    tween28:Play()
end)
local conn12 = Frame11.MouseLeave:Connect(function(...)
    local tween29 = TweenService:Create(Frame11, TweenInfo.new(0.15, Enum.EasingStyle.Quart), {
        BackgroundColor3 = {}
    })
    tween29:Play()
end)
local tween30 = TweenService:Create(TextButton4, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
    BackgroundColor3 = Color3.fromRGB(40, 40, 45)
})
tween30:Play()
local tween31 = TweenService:Create(Frame13, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
    BackgroundColor3 = Color3.fromRGB(100, 100, 105),
    Position = UDim2.new(0, 2, 0.5, -8)
})
tween31:Play()
local tween32 = TweenService:Create(Frame12, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
    BackgroundColor3 = {}
})
tween32:Play()
local Frame14 = Instance.new("Frame", {})
Frame14.Size = UDim2.new(1, -12, 0, 40)
Frame14.BackgroundColor3 = {}
Frame14.BorderSizePixel = 0
Frame14.ClipsDescendants = false
local UICorner17 = Instance.new("UICorner", Frame14)
UICorner17.CornerRadius = UDim.new(0, 8)
local UIStroke5 = Instance.new("UIStroke", Frame14)
UIStroke5.Color = {}
local TextLabel11 = Instance.new("TextLabel", Frame14)
TextLabel11.Size = UDim2.new(0.5, 0, 1, 0)
TextLabel11.Position = UDim2.new(0, 12, 0, 0)
TextLabel11.BackgroundTransparency = 1
TextLabel11.Text = "Box Style"
TextLabel11.Font = Enum.Font.GothamSemibold
TextLabel11.TextSize = 11
TextLabel11.TextColor3 = {}
TextLabel11.TextXAlignment = Enum.TextXAlignment.Left
local TextButton5 = Instance.new("TextButton", Frame14)
TextButton5.Size = UDim2.new(0.4, 0, 0, 26)
TextButton5.Position = UDim2.new(0.55, 0, 0.5, -13)
TextButton5.BackgroundColor3 = Color3.fromRGB(35, 35, 40)
TextButton5.BorderSizePixel = 0
TextButton5.Text = ""
TextButton5.AutoButtonColor = false
local UICorner18 = Instance.new("UICorner", TextButton5)
UICorner18.CornerRadius = UDim.new(0, 6)
local TextLabel12 = Instance.new("TextLabel", TextButton5)
TextLabel12.Size = UDim2.new(1, -20, 1, 0)
TextLabel12.Position = UDim2.new(0, 8, 0, 0)
TextLabel12.BackgroundTransparency = 1
TextLabel12.Text = "Corner"
TextLabel12.Font = Enum.Font.Gotham
TextLabel12.TextSize = 10
TextLabel12.TextColor3 = {}
TextLabel12.TextXAlignment = Enum.TextXAlignment.Left
local TextLabel13 = Instance.new("TextLabel", TextButton5)
TextLabel13.Size = UDim2.new(0, 12, 1, 0)
TextLabel13.Position = UDim2.new(1, -16, 0, 0)
TextLabel13.BackgroundTransparency = 1
TextLabel13.Text = "v"
TextLabel13.TextSize = 10
TextLabel13.TextColor3 = {}
TextLabel13.Font = Enum.Font.GothamBold
local Frame15 = Instance.new("Frame", TextButton5)
Frame15.Size = UDim2.new(1, 0, 0, 60)
Frame15.Position = UDim2.new(0, 0, 1, 4)
Frame15.BackgroundColor3 = Color3.fromRGB(30, 30, 35)
Frame15.BorderSizePixel = 0
Frame15.Visible = false
Frame15.ZIndex = 10
local UICorner19 = Instance.new("UICorner", Frame15)
UICorner19.CornerRadius = UDim.new(0, 6)
local UIStroke6 = Instance.new("UIStroke", Frame15)
UIStroke6.Color = {}
local UIListLayout = Instance.new("UIListLayout", Frame15)
UIListLayout.Padding = UDim.new(0, 2)
local UIPadding3 = Instance.new("UIPadding", Frame15)
UIPadding3.PaddingTop = UDim.new(0, 4)
UIPadding3.PaddingLeft = UDim.new(0, 4)
local TextButton6 = Instance.new("TextButton", Frame15)
TextButton6.Size = UDim2.new(1, -8, 0, 24)
TextButton6.BackgroundColor3 = Color3.fromRGB(40, 40, 45)
TextButton6.BackgroundTransparency = 1
TextButton6.BorderSizePixel = 0
TextButton6.Text = ""
TextButton6.AutoButtonColor = false
TextButton6.ZIndex = 11
local UICorner20 = Instance.new("UICorner", TextButton6)
UICorner20.CornerRadius = UDim.new(0, 4)
local TextLabel14 = Instance.new("TextLabel", TextButton6)
TextLabel14.Size = UDim2.new(1, -8, 1, 0)
TextLabel14.Position = UDim2.new(0, 6, 0, 0)
TextLabel14.BackgroundTransparency = 1
TextLabel14.Text = "Corner"
TextLabel14.Font = Enum.Font.Gotham
TextLabel14.TextSize = 10
TextLabel14.TextColor3 = {}
TextLabel14.TextXAlignment = Enum.TextXAlignment.Left
TextLabel14.ZIndex = 11
local conn13 = TextButton6.MouseEnter:Connect(function(...)
    local tween33 = TweenService:Create(TextButton6, TweenInfo.new(0.1, Enum.EasingStyle.Quart), {
        BackgroundTransparency = 0
    })
    tween33:Play()
end)
local conn14 = TextButton6.MouseLeave:Connect(function(...)
    local tween34 = TweenService:Create(TextButton6, TweenInfo.new(0.1, Enum.EasingStyle.Quart), {
        BackgroundTransparency = 1
    })
    tween34:Play()
end)
local conn15 = TextButton6.MouseButton1Click:Connect(function()
    TextLabel12.Text = "Corner"
    Frame15.Visible = false
    local tween35 = TweenService:Create(TextLabel13, TweenInfo.new(0.15, Enum.EasingStyle.Quart), {
        Rotation = 0
    })
    tween35:Play()
end)
local TextButton7 = Instance.new("TextButton", Frame15)
TextButton7.Size = UDim2.new(1, -8, 0, 24)
TextButton7.BackgroundColor3 = Color3.fromRGB(40, 40, 45)
TextButton7.BackgroundTransparency = 1
TextButton7.BorderSizePixel = 0
TextButton7.Text = ""
TextButton7.AutoButtonColor = false
TextButton7.ZIndex = 11
local UICorner21 = Instance.new("UICorner", TextButton7)
UICorner21.CornerRadius = UDim.new(0, 4)
local TextLabel15 = Instance.new("TextLabel", TextButton7)
TextLabel15.Size = UDim2.new(1, -8, 1, 0)
TextLabel15.Position = UDim2.new(0, 6, 0, 0)
TextLabel15.BackgroundTransparency = 1
TextLabel15.Text = "Full"
TextLabel15.Font = Enum.Font.Gotham
TextLabel15.TextSize = 10
TextLabel15.TextColor3 = {}
TextLabel15.TextXAlignment = Enum.TextXAlignment.Left
TextLabel15.ZIndex = 11
local conn16 = TextButton7.MouseEnter:Connect(function(...)
    local tween36 = TweenService:Create(TextButton7, TweenInfo.new(0.1, Enum.EasingStyle.Quart), {
        BackgroundTransparency = 0
    })
    tween36:Play()
end)
local conn17 = TextButton7.MouseLeave:Connect(function(...)
    local tween37 = TweenService:Create(TextButton7, TweenInfo.new(0.1, Enum.EasingStyle.Quart), {
        BackgroundTransparency = 1
    })
    tween37:Play()
end)
local conn18 = TextButton7.MouseButton1Click:Connect(function()
    TextLabel12.Text = "Full"
    Frame15.Visible = false
    local tween38 = TweenService:Create(TextLabel13, TweenInfo.new(0.15, Enum.EasingStyle.Quart), {
        Rotation = 0
    })
    tween38:Play()
end)
local conn19 = TextButton5.MouseButton1Click:Connect(function()
    Frame15.Visible = true
    local tween39 = TweenService:Create(TextLabel13, TweenInfo.new(0.15, Enum.EasingStyle.Quart), {
        Rotation = 180
    })
    tween39:Play()
end)
local Frame16 = Instance.new("Frame", {})
Frame16.Size = UDim2.new(1, -12, 0, 52)
Frame16.BackgroundColor3 = {}
Frame16.BorderSizePixel = 0
local UICorner22 = Instance.new("UICorner", Frame16)
UICorner22.CornerRadius = UDim.new(0, 8)
local UIStroke7 = Instance.new("UIStroke", Frame16)
UIStroke7.Color = {}
UIStroke7.Transparency = 0.5
local Frame17 = Instance.new("Frame", Frame16)
Frame17.Size = UDim2.new(0, 3, 0, 18)
Frame17.Position = UDim2.new(0, 8, 0.5, -9)
Frame17.BackgroundColor3 = {}
Frame17.BorderSizePixel = 0
local UICorner23 = Instance.new("UICorner", Frame17)
UICorner23.CornerRadius = UDim.new(0, 2)
local TextLabel16 = Instance.new("TextLabel", Frame16)
TextLabel16.Size = UDim2.new(1, -80, 0, 14)
TextLabel16.Position = UDim2.new(0, 18, 0, 8)
TextLabel16.BackgroundTransparency = 1
TextLabel16.Text = "Filled Box"
TextLabel16.Font = Enum.Font.GothamSemibold
TextLabel16.TextSize = 12
TextLabel16.TextColor3 = {}
TextLabel16.TextXAlignment = Enum.TextXAlignment.Left
local TextLabel17 = Instance.new("TextLabel", Frame16)
TextLabel17.Size = UDim2.new(1, -80, 0, 12)
TextLabel17.Position = UDim2.new(0, 18, 0, 24)
TextLabel17.BackgroundTransparency = 1
TextLabel17.Text = "Fill box with color"
TextLabel17.Font = Enum.Font.Gotham
TextLabel17.TextSize = 10
TextLabel17.TextColor3 = {}
TextLabel17.TextXAlignment = Enum.TextXAlignment.Left
local TextButton8 = Instance.new("TextButton", Frame16)
TextButton8.Size = UDim2.new(0, 40, 0, 20)
TextButton8.Position = UDim2.new(1, -52, 0.5, -10)
TextButton8.BackgroundColor3 = Color3.fromRGB(40, 40, 45)
TextButton8.BorderSizePixel = 0
TextButton8.Text = ""
TextButton8.AutoButtonColor = false
local UICorner24 = Instance.new("UICorner", TextButton8)
UICorner24.CornerRadius = UDim.new(1, 0)
local Frame18 = Instance.new("Frame", TextButton8)
Frame18.Size = UDim2.new(0, 16, 0, 16)
Frame18.Position = UDim2.new(0, 2, 0.5, -8)
Frame18.BackgroundColor3 = Color3.fromRGB(100, 100, 105)
Frame18.BorderSizePixel = 0
local UICorner25 = Instance.new("UICorner", Frame18)
UICorner25.CornerRadius = UDim.new(1, 0)
local conn20 = TextButton8.MouseButton1Click:Connect(function()
    local tween40 = TweenService:Create(TextButton8, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
        BackgroundColor3 = {}
    })
    tween40:Play()
    local tween41 = TweenService:Create(Frame18, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
        BackgroundColor3 = Color3.new(1, 1, 1),
        Position = UDim2.new(1, -18, 0.5, -8)
    })
    tween41:Play()
    local tween42 = TweenService:Create(Frame17, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
        BackgroundColor3 = {}
    })
    tween42:Play()
end)
local conn21 = Frame16.MouseEnter:Connect(function(...)
    local tween43 = TweenService:Create(Frame16, TweenInfo.new(0.15, Enum.EasingStyle.Quart), {
        BackgroundColor3 = Color3.fromRGB(28, 28, 32)
    })
    tween43:Play()
end)
local conn22 = Frame16.MouseLeave:Connect(function(...)
    local tween44 = TweenService:Create(Frame16, TweenInfo.new(0.15, Enum.EasingStyle.Quart), {
        BackgroundColor3 = {}
    })
    tween44:Play()
end)
local tween45 = TweenService:Create(TextButton8, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
    BackgroundColor3 = {}
})
tween45:Play()
local tween46 = TweenService:Create(Frame18, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
    BackgroundColor3 = Color3.new(1, 1, 1),
    Position = UDim2.new(1, -18, 0.5, -8)
})
tween46:Play()
local tween47 = TweenService:Create(Frame17, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
    BackgroundColor3 = {}
})
tween47:Play()
local Frame19 = Instance.new("Frame", {})
Frame19.Size = UDim2.new(1, -12, 0, 52)
Frame19.BackgroundColor3 = {}
Frame19.BorderSizePixel = 0
local UICorner26 = Instance.new("UICorner", Frame19)
UICorner26.CornerRadius = UDim.new(0, 8)
local UIStroke8 = Instance.new("UIStroke", Frame19)
UIStroke8.Color = {}
UIStroke8.Transparency = 0.5
local Frame20 = Instance.new("Frame", Frame19)
Frame20.Size = UDim2.new(0, 3, 0, 18)
Frame20.Position = UDim2.new(0, 8, 0.5, -9)
Frame20.BackgroundColor3 = {}
Frame20.BorderSizePixel = 0
local UICorner27 = Instance.new("UICorner", Frame20)
UICorner27.CornerRadius = UDim.new(0, 2)
local TextLabel18 = Instance.new("TextLabel", Frame19)
TextLabel18.Size = UDim2.new(1, -80, 0, 14)
TextLabel18.Position = UDim2.new(0, 18, 0, 8)
TextLabel18.BackgroundTransparency = 1
TextLabel18.Text = "Name"
TextLabel18.Font = Enum.Font.GothamSemibold
TextLabel18.TextSize = 12
TextLabel18.TextColor3 = {}
TextLabel18.TextXAlignment = Enum.TextXAlignment.Left
local TextLabel19 = Instance.new("TextLabel", Frame19)
TextLabel19.Size = UDim2.new(1, -80, 0, 12)
TextLabel19.Position = UDim2.new(0, 18, 0, 24)
TextLabel19.BackgroundTransparency = 1
TextLabel19.Text = "Show player names"
TextLabel19.Font = Enum.Font.Gotham
TextLabel19.TextSize = 10
TextLabel19.TextColor3 = {}
TextLabel19.TextXAlignment = Enum.TextXAlignment.Left
local TextButton9 = Instance.new("TextButton", Frame19)
TextButton9.Size = UDim2.new(0, 40, 0, 20)
TextButton9.Position = UDim2.new(1, -52, 0.5, -10)
TextButton9.BackgroundColor3 = Color3.fromRGB(40, 40, 45)
TextButton9.BorderSizePixel = 0
TextButton9.Text = ""
TextButton9.AutoButtonColor = false
local UICorner28 = Instance.new("UICorner", TextButton9)
UICorner28.CornerRadius = UDim.new(1, 0)
local Frame21 = Instance.new("Frame", TextButton9)
Frame21.Size = UDim2.new(0, 16, 0, 16)
Frame21.Position = UDim2.new(0, 2, 0.5, -8)
Frame21.BackgroundColor3 = Color3.fromRGB(100, 100, 105)
Frame21.BorderSizePixel = 0
local UICorner29 = Instance.new("UICorner", Frame21)
UICorner29.CornerRadius = UDim.new(1, 0)
local conn23 = TextButton9.MouseButton1Click:Connect(function()
    local tween48 = TweenService:Create(TextButton9, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
        BackgroundColor3 = Color3.fromRGB(40, 40, 45)
    })
    tween48:Play()
    local tween49 = TweenService:Create(Frame21, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
        BackgroundColor3 = Color3.fromRGB(100, 100, 105),
        Position = UDim2.new(0, 2, 0.5, -8)
    })
    tween49:Play()
    local tween50 = TweenService:Create(Frame20, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
        BackgroundColor3 = {}
    })
    tween50:Play()
end)
local conn24 = Frame19.MouseEnter:Connect(function(...)
    local tween51 = TweenService:Create(Frame19, TweenInfo.new(0.15, Enum.EasingStyle.Quart), {
        BackgroundColor3 = Color3.fromRGB(28, 28, 32)
    })
    tween51:Play()
end)
local conn25 = Frame19.MouseLeave:Connect(function(...)
    local tween52 = TweenService:Create(Frame19, TweenInfo.new(0.15, Enum.EasingStyle.Quart), {
        BackgroundColor3 = {}
    })
    tween52:Play()
end)
local tween53 = TweenService:Create(TextButton9, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
    BackgroundColor3 = Color3.fromRGB(40, 40, 45)
})
tween53:Play()
local tween54 = TweenService:Create(Frame21, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
    BackgroundColor3 = Color3.fromRGB(100, 100, 105),
    Position = UDim2.new(0, 2, 0.5, -8)
})
tween54:Play()
local tween55 = TweenService:Create(Frame20, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
    BackgroundColor3 = {}
})
tween55:Play()
local Frame22 = Instance.new("Frame", {})
Frame22.Size = UDim2.new(1, -12, 0, 52)
Frame22.BackgroundColor3 = {}
Frame22.BorderSizePixel = 0
local UICorner30 = Instance.new("UICorner", Frame22)
UICorner30.CornerRadius = UDim.new(0, 8)
local UIStroke9 = Instance.new("UIStroke", Frame22)
UIStroke9.Color = {}
UIStroke9.Transparency = 0.5
local Frame23 = Instance.new("Frame", Frame22)
Frame23.Size = UDim2.new(0, 3, 0, 18)
Frame23.Position = UDim2.new(0, 8, 0.5, -9)
Frame23.BackgroundColor3 = {}
Frame23.BorderSizePixel = 0
local UICorner31 = Instance.new("UICorner", Frame23)
UICorner31.CornerRadius = UDim.new(0, 2)
local TextLabel20 = Instance.new("TextLabel", Frame22)
TextLabel20.Size = UDim2.new(1, -80, 0, 14)
TextLabel20.Position = UDim2.new(0, 18, 0, 8)
TextLabel20.BackgroundTransparency = 1
TextLabel20.Text = "Display Name"
TextLabel20.Font = Enum.Font.GothamSemibold
TextLabel20.TextSize = 12
TextLabel20.TextColor3 = {}
TextLabel20.TextXAlignment = Enum.TextXAlignment.Left
local TextLabel21 = Instance.new("TextLabel", Frame22)
TextLabel21.Size = UDim2.new(1, -80, 0, 12)
TextLabel21.Position = UDim2.new(0, 18, 0, 24)
TextLabel21.BackgroundTransparency = 1
TextLabel21.Text = "Show display name + username"
TextLabel21.Font = Enum.Font.Gotham
TextLabel21.TextSize = 10
TextLabel21.TextColor3 = {}
TextLabel21.TextXAlignment = Enum.TextXAlignment.Left
local TextButton10 = Instance.new("TextButton", Frame22)
TextButton10.Size = UDim2.new(0, 40, 0, 20)
TextButton10.Position = UDim2.new(1, -52, 0.5, -10)
TextButton10.BackgroundColor3 = Color3.fromRGB(40, 40, 45)
TextButton10.BorderSizePixel = 0
TextButton10.Text = ""
TextButton10.AutoButtonColor = false
local UICorner32 = Instance.new("UICorner", TextButton10)
UICorner32.CornerRadius = UDim.new(1, 0)
local Frame24 = Instance.new("Frame", TextButton10)
Frame24.Size = UDim2.new(0, 16, 0, 16)
Frame24.Position = UDim2.new(0, 2, 0.5, -8)
Frame24.BackgroundColor3 = Color3.fromRGB(100, 100, 105)
Frame24.BorderSizePixel = 0
local UICorner33 = Instance.new("UICorner", Frame24)
UICorner33.CornerRadius = UDim.new(1, 0)
local conn26 = TextButton10.MouseButton1Click:Connect(function()
    local tween56 = TweenService:Create(TextButton10, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
        BackgroundColor3 = Color3.fromRGB(40, 40, 45)
    })
    tween56:Play()
    local tween57 = TweenService:Create(Frame24, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
        BackgroundColor3 = Color3.fromRGB(100, 100, 105),
        Position = UDim2.new(0, 2, 0.5, -8)
    })
    tween57:Play()
    local tween58 = TweenService:Create(Frame23, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
        BackgroundColor3 = {}
    })
    tween58:Play()
end)
local conn27 = Frame22.MouseEnter:Connect(function(...)
    local tween59 = TweenService:Create(Frame22, TweenInfo.new(0.15, Enum.EasingStyle.Quart), {
        BackgroundColor3 = Color3.fromRGB(28, 28, 32)
    })
    tween59:Play()
end)
local conn28 = Frame22.MouseLeave:Connect(function(...)
    local tween60 = TweenService:Create(Frame22, TweenInfo.new(0.15, Enum.EasingStyle.Quart), {
        BackgroundColor3 = {}
    })
    tween60:Play()
end)
local tween61 = TweenService:Create(TextButton10, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
    BackgroundColor3 = Color3.fromRGB(40, 40, 45)
})
tween61:Play()
local tween62 = TweenService:Create(Frame24, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
    BackgroundColor3 = Color3.fromRGB(100, 100, 105),
    Position = UDim2.new(0, 2, 0.5, -8)
})
tween62:Play()
local tween63 = TweenService:Create(Frame23, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
    BackgroundColor3 = {}
})
tween63:Play()
local Frame25 = Instance.new("Frame", {})
Frame25.Size = UDim2.new(1, -12, 0, 52)
Frame25.BackgroundColor3 = {}
Frame25.BorderSizePixel = 0
local UICorner34 = Instance.new("UICorner", Frame25)
UICorner34.CornerRadius = UDim.new(0, 8)
local UIStroke10 = Instance.new("UIStroke", Frame25)
UIStroke10.Color = {}
UIStroke10.Transparency = 0.5
local Frame26 = Instance.new("Frame", Frame25)
Frame26.Size = UDim2.new(0, 3, 0, 18)
Frame26.Position = UDim2.new(0, 8, 0.5, -9)
Frame26.BackgroundColor3 = {}
Frame26.BorderSizePixel = 0
local UICorner35 = Instance.new("UICorner", Frame26)
UICorner35.CornerRadius = UDim.new(0, 2)
local TextLabel22 = Instance.new("TextLabel", Frame25)
TextLabel22.Size = UDim2.new(1, -80, 0, 14)
TextLabel22.Position = UDim2.new(0, 18, 0, 8)
TextLabel22.BackgroundTransparency = 1
TextLabel22.Text = "Distance"
TextLabel22.Font = Enum.Font.GothamSemibold
TextLabel22.TextSize = 12
TextLabel22.TextColor3 = {}
TextLabel22.TextXAlignment = Enum.TextXAlignment.Left
local TextLabel23 = Instance.new("TextLabel", Frame25)
TextLabel23.Size = UDim2.new(1, -80, 0, 12)
TextLabel23.Position = UDim2.new(0, 18, 0, 24)
TextLabel23.BackgroundTransparency = 1
TextLabel23.Text = "Show distance in meters"
TextLabel23.Font = Enum.Font.Gotham
TextLabel23.TextSize = 10
TextLabel23.TextColor3 = {}
TextLabel23.TextXAlignment = Enum.TextXAlignment.Left
local TextButton11 = Instance.new("TextButton", Frame25)
TextButton11.Size = UDim2.new(0, 40, 0, 20)
TextButton11.Position = UDim2.new(1, -52, 0.5, -10)
TextButton11.BackgroundColor3 = Color3.fromRGB(40, 40, 45)
TextButton11.BorderSizePixel = 0
TextButton11.Text = ""
TextButton11.AutoButtonColor = false
local UICorner36 = Instance.new("UICorner", TextButton11)
UICorner36.CornerRadius = UDim.new(1, 0)
local Frame27 = Instance.new("Frame", TextButton11)
Frame27.Size = UDim2.new(0, 16, 0, 16)
Frame27.Position = UDim2.new(0, 2, 0.5, -8)
Frame27.BackgroundColor3 = Color3.fromRGB(100, 100, 105)
Frame27.BorderSizePixel = 0
local UICorner37 = Instance.new("UICorner", Frame27)
UICorner37.CornerRadius = UDim.new(1, 0)
local conn29 = TextButton11.MouseButton1Click:Connect(function()
    local tween64 = TweenService:Create(TextButton11, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
        BackgroundColor3 = Color3.fromRGB(40, 40, 45)
    })
    tween64:Play()
    local tween65 = TweenService:Create(Frame27, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
        BackgroundColor3 = Color3.fromRGB(100, 100, 105),
        Position = UDim2.new(0, 2, 0.5, -8)
    })
    tween65:Play()
    local tween66 = TweenService:Create(Frame26, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
        BackgroundColor3 = {}
    })
    tween66:Play()
end)
local conn30 = Frame25.MouseEnter:Connect(function(...)
    local tween67 = TweenService:Create(Frame25, TweenInfo.new(0.15, Enum.EasingStyle.Quart), {
        BackgroundColor3 = Color3.fromRGB(28, 28, 32)
    })
    tween67:Play()
end)
local conn31 = Frame25.MouseLeave:Connect(function(...)
    local tween68 = TweenService:Create(Frame25, TweenInfo.new(0.15, Enum.EasingStyle.Quart), {
        BackgroundColor3 = {}
    })
    tween68:Play()
end)
local tween69 = TweenService:Create(TextButton11, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
    BackgroundColor3 = Color3.fromRGB(40, 40, 45)
})
tween69:Play()
local tween70 = TweenService:Create(Frame27, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
    BackgroundColor3 = Color3.fromRGB(100, 100, 105),
    Position = UDim2.new(0, 2, 0.5, -8)
})
tween70:Play()
local tween71 = TweenService:Create(Frame26, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
    BackgroundColor3 = {}
})
tween71:Play()
local Frame28 = Instance.new("Frame", {})
Frame28.Size = UDim2.new(1, -12, 0, 52)
Frame28.BackgroundColor3 = {}
Frame28.BorderSizePixel = 0
local UICorner38 = Instance.new("UICorner", Frame28)
UICorner38.CornerRadius = UDim.new(0, 8)
local UIStroke11 = Instance.new("UIStroke", Frame28)
UIStroke11.Color = {}
UIStroke11.Transparency = 0.5
local Frame29 = Instance.new("Frame", Frame28)
Frame29.Size = UDim2.new(0, 3, 0, 18)
Frame29.Position = UDim2.new(0, 8, 0.5, -9)
Frame29.BackgroundColor3 = {}
Frame29.BorderSizePixel = 0
local UICorner39 = Instance.new("UICorner", Frame29)
UICorner39.CornerRadius = UDim.new(0, 2)
local TextLabel24 = Instance.new("TextLabel", Frame28)
TextLabel24.Size = UDim2.new(1, -80, 0, 14)
TextLabel24.Position = UDim2.new(0, 18, 0, 8)
TextLabel24.BackgroundTransparency = 1
TextLabel24.Text = "Health Bar"
TextLabel24.Font = Enum.Font.GothamSemibold
TextLabel24.TextSize = 12
TextLabel24.TextColor3 = {}
TextLabel24.TextXAlignment = Enum.TextXAlignment.Left
local TextLabel25 = Instance.new("TextLabel", Frame28)
TextLabel25.Size = UDim2.new(1, -80, 0, 12)
TextLabel25.Position = UDim2.new(0, 18, 0, 24)
TextLabel25.BackgroundTransparency = 1
TextLabel25.Text = "Show health bar on left"
TextLabel25.Font = Enum.Font.Gotham
TextLabel25.TextSize = 10
TextLabel25.TextColor3 = {}
TextLabel25.TextXAlignment = Enum.TextXAlignment.Left
local TextButton12 = Instance.new("TextButton", Frame28)
TextButton12.Size = UDim2.new(0, 40, 0, 20)
TextButton12.Position = UDim2.new(1, -52, 0.5, -10)
TextButton12.BackgroundColor3 = Color3.fromRGB(40, 40, 45)
TextButton12.BorderSizePixel = 0
TextButton12.Text = ""
TextButton12.AutoButtonColor = false
local UICorner40 = Instance.new("UICorner", TextButton12)
UICorner40.CornerRadius = UDim.new(1, 0)
local Frame30 = Instance.new("Frame", TextButton12)
Frame30.Size = UDim2.new(0, 16, 0, 16)
Frame30.Position = UDim2.new(0, 2, 0.5, -8)
Frame30.BackgroundColor3 = Color3.fromRGB(100, 100, 105)
Frame30.BorderSizePixel = 0
local UICorner41 = Instance.new("UICorner", Frame30)
UICorner41.CornerRadius = UDim.new(1, 0)
local conn32 = TextButton12.MouseButton1Click:Connect(function()
    local tween72 = TweenService:Create(TextButton12, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
        BackgroundColor3 = Color3.fromRGB(40, 40, 45)
    })
    tween72:Play()
    local tween73 = TweenService:Create(Frame30, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
        BackgroundColor3 = Color3.fromRGB(100, 100, 105),
        Position = UDim2.new(0, 2, 0.5, -8)
    })
    tween73:Play()
    local tween74 = TweenService:Create(Frame29, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
        BackgroundColor3 = {}
    })
    tween74:Play()
end)
local conn33 = Frame28.MouseEnter:Connect(function(...)
    local tween75 = TweenService:Create(Frame28, TweenInfo.new(0.15, Enum.EasingStyle.Quart), {
        BackgroundColor3 = Color3.fromRGB(28, 28, 32)
    })
    tween75:Play()
end)
local conn34 = Frame28.MouseLeave:Connect(function(...)
    local tween76 = TweenService:Create(Frame28, TweenInfo.new(0.15, Enum.EasingStyle.Quart), {
        BackgroundColor3 = {}
    })
    tween76:Play()
end)
local tween77 = TweenService:Create(TextButton12, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
    BackgroundColor3 = Color3.fromRGB(40, 40, 45)
})
tween77:Play()
local tween78 = TweenService:Create(Frame30, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
    BackgroundColor3 = Color3.fromRGB(100, 100, 105),
    Position = UDim2.new(0, 2, 0.5, -8)
})
tween78:Play()
local tween79 = TweenService:Create(Frame29, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
    BackgroundColor3 = {}
})
tween79:Play()
local Frame31 = Instance.new("Frame", {})
Frame31.Size = UDim2.new(1, -12, 0, 52)
Frame31.BackgroundColor3 = {}
Frame31.BorderSizePixel = 0
local UICorner42 = Instance.new("UICorner", Frame31)
UICorner42.CornerRadius = UDim.new(0, 8)
local UIStroke12 = Instance.new("UIStroke", Frame31)
UIStroke12.Color = {}
UIStroke12.Transparency = 0.5
local Frame32 = Instance.new("Frame", Frame31)
Frame32.Size = UDim2.new(0, 3, 0, 18)
Frame32.Position = UDim2.new(0, 8, 0.5, -9)
Frame32.BackgroundColor3 = {}
Frame32.BorderSizePixel = 0
local UICorner43 = Instance.new("UICorner", Frame32)
UICorner43.CornerRadius = UDim.new(0, 2)
local TextLabel26 = Instance.new("TextLabel", Frame31)
TextLabel26.Size = UDim2.new(1, -80, 0, 14)
TextLabel26.Position = UDim2.new(0, 18, 0, 8)
TextLabel26.BackgroundTransparency = 1
TextLabel26.Text = "Health Text"
TextLabel26.Font = Enum.Font.GothamSemibold
TextLabel26.TextSize = 12
TextLabel26.TextColor3 = {}
TextLabel26.TextXAlignment = Enum.TextXAlignment.Left
local TextLabel27 = Instance.new("TextLabel", Frame31)
TextLabel27.Size = UDim2.new(1, -80, 0, 12)
TextLabel27.Position = UDim2.new(0, 18, 0, 24)
TextLabel27.BackgroundTransparency = 1
TextLabel27.Text = "Show numeric health"
TextLabel27.Font = Enum.Font.Gotham
TextLabel27.TextSize = 10
TextLabel27.TextColor3 = {}
TextLabel27.TextXAlignment = Enum.TextXAlignment.Left
local TextButton13 = Instance.new("TextButton", Frame31)
TextButton13.Size = UDim2.new(0, 40, 0, 20)
TextButton13.Position = UDim2.new(1, -52, 0.5, -10)
TextButton13.BackgroundColor3 = Color3.fromRGB(40, 40, 45)
TextButton13.BorderSizePixel = 0
TextButton13.Text = ""
TextButton13.AutoButtonColor = false
local UICorner44 = Instance.new("UICorner", TextButton13)
UICorner44.CornerRadius = UDim.new(1, 0)
local Frame33 = Instance.new("Frame", TextButton13)
Frame33.Size = UDim2.new(0, 16, 0, 16)
Frame33.Position = UDim2.new(0, 2, 0.5, -8)
Frame33.BackgroundColor3 = Color3.fromRGB(100, 100, 105)
Frame33.BorderSizePixel = 0
local UICorner45 = Instance.new("UICorner", Frame33)
UICorner45.CornerRadius = UDim.new(1, 0)
local conn35 = TextButton13.MouseButton1Click:Connect(function()
    local tween80 = TweenService:Create(TextButton13, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
        BackgroundColor3 = {}
    })
    tween80:Play()
    local tween81 = TweenService:Create(Frame33, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
        BackgroundColor3 = Color3.new(1, 1, 1),
        Position = UDim2.new(1, -18, 0.5, -8)
    })
    tween81:Play()
    local tween82 = TweenService:Create(Frame32, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
        BackgroundColor3 = {}
    })
    tween82:Play()
end)
local conn36 = Frame31.MouseEnter:Connect(function(...)
    local tween83 = TweenService:Create(Frame31, TweenInfo.new(0.15, Enum.EasingStyle.Quart), {
        BackgroundColor3 = Color3.fromRGB(28, 28, 32)
    })
    tween83:Play()
end)
local conn37 = Frame31.MouseLeave:Connect(function(...)
    local tween84 = TweenService:Create(Frame31, TweenInfo.new(0.15, Enum.EasingStyle.Quart), {
        BackgroundColor3 = {}
    })
    tween84:Play()
end)
local tween85 = TweenService:Create(TextButton13, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
    BackgroundColor3 = {}
})
tween85:Play()
local tween86 = TweenService:Create(Frame33, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
    BackgroundColor3 = Color3.new(1, 1, 1),
    Position = UDim2.new(1, -18, 0.5, -8)
})
tween86:Play()
local tween87 = TweenService:Create(Frame32, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
    BackgroundColor3 = {}
})
tween87:Play()
local Frame34 = Instance.new("Frame", {})
Frame34.Size = UDim2.new(1, -12, 0, 52)
Frame34.BackgroundColor3 = {}
Frame34.BorderSizePixel = 0
local UICorner46 = Instance.new("UICorner", Frame34)
UICorner46.CornerRadius = UDim.new(0, 8)
local UIStroke13 = Instance.new("UIStroke", Frame34)
UIStroke13.Color = {}
UIStroke13.Transparency = 0.5
local Frame35 = Instance.new("Frame", Frame34)
Frame35.Size = UDim2.new(0, 3, 0, 18)
Frame35.Position = UDim2.new(0, 8, 0.5, -9)
Frame35.BackgroundColor3 = {}
Frame35.BorderSizePixel = 0
local UICorner47 = Instance.new("UICorner", Frame35)
UICorner47.CornerRadius = UDim.new(0, 2)
local TextLabel28 = Instance.new("TextLabel", Frame34)
TextLabel28.Size = UDim2.new(1, -80, 0, 14)
TextLabel28.Position = UDim2.new(0, 18, 0, 8)
TextLabel28.BackgroundTransparency = 1
TextLabel28.Text = "Tool/Weapon"
TextLabel28.Font = Enum.Font.GothamSemibold
TextLabel28.TextSize = 12
TextLabel28.TextColor3 = {}
TextLabel28.TextXAlignment = Enum.TextXAlignment.Left
local TextLabel29 = Instance.new("TextLabel", Frame34)
TextLabel29.Size = UDim2.new(1, -80, 0, 12)
TextLabel29.Position = UDim2.new(0, 18, 0, 24)
TextLabel29.BackgroundTransparency = 1
TextLabel29.Text = "Show equipped tool name"
TextLabel29.Font = Enum.Font.Gotham
TextLabel29.TextSize = 10
TextLabel29.TextColor3 = {}
TextLabel29.TextXAlignment = Enum.TextXAlignment.Left
local TextButton14 = Instance.new("TextButton", Frame34)
TextButton14.Size = UDim2.new(0, 40, 0, 20)
TextButton14.Position = UDim2.new(1, -52, 0.5, -10)
TextButton14.BackgroundColor3 = Color3.fromRGB(40, 40, 45)
TextButton14.BorderSizePixel = 0
TextButton14.Text = ""
TextButton14.AutoButtonColor = false
local UICorner48 = Instance.new("UICorner", TextButton14)
UICorner48.CornerRadius = UDim.new(1, 0)
local Frame36 = Instance.new("Frame", TextButton14)
Frame36.Size = UDim2.new(0, 16, 0, 16)
Frame36.Position = UDim2.new(0, 2, 0.5, -8)
Frame36.BackgroundColor3 = Color3.fromRGB(100, 100, 105)
Frame36.BorderSizePixel = 0
local UICorner49 = Instance.new("UICorner", Frame36)
UICorner49.CornerRadius = UDim.new(1, 0)
local conn38 = TextButton14.MouseButton1Click:Connect(function()
    local tween88 = TweenService:Create(TextButton14, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
        BackgroundColor3 = Color3.fromRGB(40, 40, 45)
    })
    tween88:Play()
    local tween89 = TweenService:Create(Frame36, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
        BackgroundColor3 = Color3.fromRGB(100, 100, 105),
        Position = UDim2.new(0, 2, 0.5, -8)
    })
    tween89:Play()
    local tween90 = TweenService:Create(Frame35, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
        BackgroundColor3 = {}
    })
    tween90:Play()
end)
local conn39 = Frame34.MouseEnter:Connect(function(...)
    local tween91 = TweenService:Create(Frame34, TweenInfo.new(0.15, Enum.EasingStyle.Quart), {
        BackgroundColor3 = Color3.fromRGB(28, 28, 32)
    })
    tween91:Play()
end)
local conn40 = Frame34.MouseLeave:Connect(function(...)
    local tween92 = TweenService:Create(Frame34, TweenInfo.new(0.15, Enum.EasingStyle.Quart), {
        BackgroundColor3 = {}
    })
    tween92:Play()
end)
local tween93 = TweenService:Create(TextButton14, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
    BackgroundColor3 = Color3.fromRGB(40, 40, 45)
})
tween93:Play()
local tween94 = TweenService:Create(Frame36, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
    BackgroundColor3 = Color3.fromRGB(100, 100, 105),
    Position = UDim2.new(0, 2, 0.5, -8)
})
tween94:Play()
local tween95 = TweenService:Create(Frame35, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
    BackgroundColor3 = {}
})
tween95:Play()
local Frame37 = Instance.new("Frame", {})
Frame37.Size = UDim2.new(1, -12, 0, 52)
Frame37.BackgroundColor3 = {}
Frame37.BorderSizePixel = 0
local UICorner50 = Instance.new("UICorner", Frame37)
UICorner50.CornerRadius = UDim.new(0, 8)
local UIStroke14 = Instance.new("UIStroke", Frame37)
UIStroke14.Color = {}
UIStroke14.Transparency = 0.5
local Frame38 = Instance.new("Frame", Frame37)
Frame38.Size = UDim2.new(0, 3, 0, 18)
Frame38.Position = UDim2.new(0, 8, 0.5, -9)
Frame38.BackgroundColor3 = {}
Frame38.BorderSizePixel = 0
local UICorner51 = Instance.new("UICorner", Frame38)
UICorner51.CornerRadius = UDim.new(0, 2)
local TextLabel30 = Instance.new("TextLabel", Frame37)
TextLabel30.Size = UDim2.new(1, -80, 0, 14)
TextLabel30.Position = UDim2.new(0, 18, 0, 8)
TextLabel30.BackgroundTransparency = 1
TextLabel30.Text = "Skeleton"
TextLabel30.Font = Enum.Font.GothamSemibold
TextLabel30.TextSize = 12
TextLabel30.TextColor3 = {}
TextLabel30.TextXAlignment = Enum.TextXAlignment.Left
local TextLabel31 = Instance.new("TextLabel", Frame37)
TextLabel31.Size = UDim2.new(1, -80, 0, 12)
TextLabel31.Position = UDim2.new(0, 18, 0, 24)
TextLabel31.BackgroundTransparency = 1
TextLabel31.Text = "Draw bone structure"
TextLabel31.Font = Enum.Font.Gotham
TextLabel31.TextSize = 10
TextLabel31.TextColor3 = {}
TextLabel31.TextXAlignment = Enum.TextXAlignment.Left
local TextButton15 = Instance.new("TextButton", Frame37)
TextButton15.Size = UDim2.new(0, 40, 0, 20)
TextButton15.Position = UDim2.new(1, -52, 0.5, -10)
TextButton15.BackgroundColor3 = Color3.fromRGB(40, 40, 45)
TextButton15.BorderSizePixel = 0
TextButton15.Text = ""
TextButton15.AutoButtonColor = false
local UICorner52 = Instance.new("UICorner", TextButton15)
UICorner52.CornerRadius = UDim.new(1, 0)
local Frame39 = Instance.new("Frame", TextButton15)
Frame39.Size = UDim2.new(0, 16, 0, 16)
Frame39.Position = UDim2.new(0, 2, 0.5, -8)
Frame39.BackgroundColor3 = Color3.fromRGB(100, 100, 105)
Frame39.BorderSizePixel = 0
local UICorner53 = Instance.new("UICorner", Frame39)
UICorner53.CornerRadius = UDim.new(1, 0)
local conn41 = TextButton15.MouseButton1Click:Connect(function()
    local tween96 = TweenService:Create(TextButton15, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
        BackgroundColor3 = {}
    })
    tween96:Play()
    local tween97 = TweenService:Create(Frame39, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
        BackgroundColor3 = Color3.new(1, 1, 1),
        Position = UDim2.new(1, -18, 0.5, -8)
    })
    tween97:Play()
    local tween98 = TweenService:Create(Frame38, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
        BackgroundColor3 = {}
    })
    tween98:Play()
end)
local conn42 = Frame37.MouseEnter:Connect(function(...)
    local tween99 = TweenService:Create(Frame37, TweenInfo.new(0.15, Enum.EasingStyle.Quart), {
        BackgroundColor3 = Color3.fromRGB(28, 28, 32)
    })
    tween99:Play()
end)
local conn43 = Frame37.MouseLeave:Connect(function(...)
    local tween100 = TweenService:Create(Frame37, TweenInfo.new(0.15, Enum.EasingStyle.Quart), {
        BackgroundColor3 = {}
    })
    tween100:Play()
end)
local tween101 = TweenService:Create(TextButton15, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
    BackgroundColor3 = {}
})
tween101:Play()
local tween102 = TweenService:Create(Frame39, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
    BackgroundColor3 = Color3.new(1, 1, 1),
    Position = UDim2.new(1, -18, 0.5, -8)
})
tween102:Play()
local tween103 = TweenService:Create(Frame38, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
    BackgroundColor3 = {}
})
tween103:Play()
local Frame40 = Instance.new("Frame", {})
Frame40.Size = UDim2.new(1, -12, 0, 52)
Frame40.BackgroundColor3 = {}
Frame40.BorderSizePixel = 0
local UICorner54 = Instance.new("UICorner", Frame40)
UICorner54.CornerRadius = UDim.new(0, 8)
local UIStroke15 = Instance.new("UIStroke", Frame40)
UIStroke15.Color = {}
UIStroke15.Transparency = 0.5
local Frame41 = Instance.new("Frame", Frame40)
Frame41.Size = UDim2.new(0, 3, 0, 18)
Frame41.Position = UDim2.new(0, 8, 0.5, -9)
Frame41.BackgroundColor3 = {}
Frame41.BorderSizePixel = 0
local UICorner55 = Instance.new("UICorner", Frame41)
UICorner55.CornerRadius = UDim.new(0, 2)
local TextLabel32 = Instance.new("TextLabel", Frame40)
TextLabel32.Size = UDim2.new(1, -80, 0, 14)
TextLabel32.Position = UDim2.new(0, 18, 0, 8)
TextLabel32.BackgroundTransparency = 1
TextLabel32.Text = "Tracers"
TextLabel32.Font = Enum.Font.GothamSemibold
TextLabel32.TextSize = 12
TextLabel32.TextColor3 = {}
TextLabel32.TextXAlignment = Enum.TextXAlignment.Left
local TextLabel33 = Instance.new("TextLabel", Frame40)
TextLabel33.Size = UDim2.new(1, -80, 0, 12)
TextLabel33.Position = UDim2.new(0, 18, 0, 24)
TextLabel33.BackgroundTransparency = 1
TextLabel33.Text = "Draw lines to players"
TextLabel33.Font = Enum.Font.Gotham
TextLabel33.TextSize = 10
TextLabel33.TextColor3 = {}
TextLabel33.TextXAlignment = Enum.TextXAlignment.Left
local TextButton16 = Instance.new("TextButton", Frame40)
TextButton16.Size = UDim2.new(0, 40, 0, 20)
TextButton16.Position = UDim2.new(1, -52, 0.5, -10)
TextButton16.BackgroundColor3 = Color3.fromRGB(40, 40, 45)
TextButton16.BorderSizePixel = 0
TextButton16.Text = ""
TextButton16.AutoButtonColor = false
local UICorner56 = Instance.new("UICorner", TextButton16)
UICorner56.CornerRadius = UDim.new(1, 0)
local Frame42 = Instance.new("Frame", TextButton16)
Frame42.Size = UDim2.new(0, 16, 0, 16)
Frame42.Position = UDim2.new(0, 2, 0.5, -8)
Frame42.BackgroundColor3 = Color3.fromRGB(100, 100, 105)
Frame42.BorderSizePixel = 0
local UICorner57 = Instance.new("UICorner", Frame42)
UICorner57.CornerRadius = UDim.new(1, 0)
local conn44 = TextButton16.MouseButton1Click:Connect(function()
    local tween104 = TweenService:Create(TextButton16, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
        BackgroundColor3 = {}
    })
    tween104:Play()
    local tween105 = TweenService:Create(Frame42, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
        BackgroundColor3 = Color3.new(1, 1, 1),
        Position = UDim2.new(1, -18, 0.5, -8)
    })
    tween105:Play()
    local tween106 = TweenService:Create(Frame41, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
        BackgroundColor3 = {}
    })
    tween106:Play()
end)
local conn45 = Frame40.MouseEnter:Connect(function(...)
    local tween107 = TweenService:Create(Frame40, TweenInfo.new(0.15, Enum.EasingStyle.Quart), {
        BackgroundColor3 = Color3.fromRGB(28, 28, 32)
    })
    tween107:Play()
end)
local conn46 = Frame40.MouseLeave:Connect(function(...)
    local tween108 = TweenService:Create(Frame40, TweenInfo.new(0.15, Enum.EasingStyle.Quart), {
        BackgroundColor3 = {}
    })
    tween108:Play()
end)
local tween109 = TweenService:Create(TextButton16, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
    BackgroundColor3 = {}
})
tween109:Play()
local tween110 = TweenService:Create(Frame42, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
    BackgroundColor3 = Color3.new(1, 1, 1),
    Position = UDim2.new(1, -18, 0.5, -8)
})
tween110:Play()
local tween111 = TweenService:Create(Frame41, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
    BackgroundColor3 = {}
})
tween111:Play()
local Frame43 = Instance.new("Frame", {})
Frame43.Size = UDim2.new(1, -12, 0, 40)
Frame43.BackgroundColor3 = {}
Frame43.BorderSizePixel = 0
Frame43.ClipsDescendants = false
local UICorner58 = Instance.new("UICorner", Frame43)
UICorner58.CornerRadius = UDim.new(0, 8)
local UIStroke16 = Instance.new("UIStroke", Frame43)
UIStroke16.Color = {}
local TextLabel34 = Instance.new("TextLabel", Frame43)
TextLabel34.Size = UDim2.new(0.5, 0, 1, 0)
TextLabel34.Position = UDim2.new(0, 12, 0, 0)
TextLabel34.BackgroundTransparency = 1
TextLabel34.Text = "Tracer Origin"
TextLabel34.Font = Enum.Font.GothamSemibold
TextLabel34.TextSize = 11
TextLabel34.TextColor3 = {}
TextLabel34.TextXAlignment = Enum.TextXAlignment.Left
local TextButton17 = Instance.new("TextButton", Frame43)
TextButton17.Size = UDim2.new(0.4, 0, 0, 26)
TextButton17.Position = UDim2.new(0.55, 0, 0.5, -13)
TextButton17.BackgroundColor3 = Color3.fromRGB(35, 35, 40)
TextButton17.BorderSizePixel = 0
TextButton17.Text = ""
TextButton17.AutoButtonColor = false
local UICorner59 = Instance.new("UICorner", TextButton17)
UICorner59.CornerRadius = UDim.new(0, 6)
local TextLabel35 = Instance.new("TextLabel", TextButton17)
TextLabel35.Size = UDim2.new(1, -20, 1, 0)
TextLabel35.Position = UDim2.new(0, 8, 0, 0)
TextLabel35.BackgroundTransparency = 1
TextLabel35.Text = "Bottom"
TextLabel35.Font = Enum.Font.Gotham
TextLabel35.TextSize = 10
TextLabel35.TextColor3 = {}
TextLabel35.TextXAlignment = Enum.TextXAlignment.Left
local TextLabel36 = Instance.new("TextLabel", TextButton17)
TextLabel36.Size = UDim2.new(0, 12, 1, 0)
TextLabel36.Position = UDim2.new(1, -16, 0, 0)
TextLabel36.BackgroundTransparency = 1
TextLabel36.Text = "v"
TextLabel36.TextSize = 10
TextLabel36.TextColor3 = {}
TextLabel36.Font = Enum.Font.GothamBold
local Frame44 = Instance.new("Frame", TextButton17)
Frame44.Size = UDim2.new(1, 0, 0, 86)
Frame44.Position = UDim2.new(0, 0, 1, 4)
Frame44.BackgroundColor3 = Color3.fromRGB(30, 30, 35)
Frame44.BorderSizePixel = 0
Frame44.Visible = false
Frame44.ZIndex = 10
local UICorner60 = Instance.new("UICorner", Frame44)
UICorner60.CornerRadius = UDim.new(0, 6)
local UIStroke17 = Instance.new("UIStroke", Frame44)
UIStroke17.Color = {}
local UIListLayout2 = Instance.new("UIListLayout", Frame44)
UIListLayout2.Padding = UDim.new(0, 2)
local UIPadding4 = Instance.new("UIPadding", Frame44)
UIPadding4.PaddingTop = UDim.new(0, 4)
UIPadding4.PaddingLeft = UDim.new(0, 4)
local TextButton18 = Instance.new("TextButton", Frame44)
TextButton18.Size = UDim2.new(1, -8, 0, 24)
TextButton18.BackgroundColor3 = Color3.fromRGB(40, 40, 45)
TextButton18.BackgroundTransparency = 1
TextButton18.BorderSizePixel = 0
TextButton18.Text = ""
TextButton18.AutoButtonColor = false
TextButton18.ZIndex = 11
local UICorner61 = Instance.new("UICorner", TextButton18)
UICorner61.CornerRadius = UDim.new(0, 4)
local TextLabel37 = Instance.new("TextLabel", TextButton18)
TextLabel37.Size = UDim2.new(1, -8, 1, 0)
TextLabel37.Position = UDim2.new(0, 6, 0, 0)
TextLabel37.BackgroundTransparency = 1
TextLabel37.Text = "Bottom"
TextLabel37.Font = Enum.Font.Gotham
TextLabel37.TextSize = 10
TextLabel37.TextColor3 = {}
TextLabel37.TextXAlignment = Enum.TextXAlignment.Left
TextLabel37.ZIndex = 11
local conn47 = TextButton18.MouseEnter:Connect(function(...)
    local tween112 = TweenService:Create(TextButton18, TweenInfo.new(0.1, Enum.EasingStyle.Quart), {
        BackgroundTransparency = 0
    })
    tween112:Play()
end)
local conn48 = TextButton18.MouseLeave:Connect(function(...)
    local tween113 = TweenService:Create(TextButton18, TweenInfo.new(0.1, Enum.EasingStyle.Quart), {
        BackgroundTransparency = 1
    })
    tween113:Play()
end)
local conn49 = TextButton18.MouseButton1Click:Connect(function()
    TextLabel35.Text = "Bottom"
    Frame44.Visible = false
    local tween114 = TweenService:Create(TextLabel36, TweenInfo.new(0.15, Enum.EasingStyle.Quart), {
        Rotation = 0
    })
    tween114:Play()
end)
local TextButton19 = Instance.new("TextButton", Frame44)
TextButton19.Size = UDim2.new(1, -8, 0, 24)
TextButton19.BackgroundColor3 = Color3.fromRGB(40, 40, 45)
TextButton19.BackgroundTransparency = 1
TextButton19.BorderSizePixel = 0
TextButton19.Text = ""
TextButton19.AutoButtonColor = false
TextButton19.ZIndex = 11
local UICorner62 = Instance.new("UICorner", TextButton19)
UICorner62.CornerRadius = UDim.new(0, 4)
local TextLabel38 = Instance.new("TextLabel", TextButton19)
TextLabel38.Size = UDim2.new(1, -8, 1, 0)
TextLabel38.Position = UDim2.new(0, 6, 0, 0)
TextLabel38.BackgroundTransparency = 1
TextLabel38.Text = "Center"
TextLabel38.Font = Enum.Font.Gotham
TextLabel38.TextSize = 10
TextLabel38.TextColor3 = {}
TextLabel38.TextXAlignment = Enum.TextXAlignment.Left
TextLabel38.ZIndex = 11
local conn50 = TextButton19.MouseEnter:Connect(function(...)
    local tween115 = TweenService:Create(TextButton19, TweenInfo.new(0.1, Enum.EasingStyle.Quart), {
        BackgroundTransparency = 0
    })
    tween115:Play()
end)
local conn51 = TextButton19.MouseLeave:Connect(function(...)
    local tween116 = TweenService:Create(TextButton19, TweenInfo.new(0.1, Enum.EasingStyle.Quart), {
        BackgroundTransparency = 1
    })
    tween116:Play()
end)
local conn52 = TextButton19.MouseButton1Click:Connect(function()
    TextLabel35.Text = "Center"
    Frame44.Visible = false
    local tween117 = TweenService:Create(TextLabel36, TweenInfo.new(0.15, Enum.EasingStyle.Quart), {
        Rotation = 0
    })
    tween117:Play()
end)
local TextButton20 = Instance.new("TextButton", Frame44)
TextButton20.Size = UDim2.new(1, -8, 0, 24)
TextButton20.BackgroundColor3 = Color3.fromRGB(40, 40, 45)
TextButton20.BackgroundTransparency = 1
TextButton20.BorderSizePixel = 0
TextButton20.Text = ""
TextButton20.AutoButtonColor = false
TextButton20.ZIndex = 11
local UICorner63 = Instance.new("UICorner", TextButton20)
UICorner63.CornerRadius = UDim.new(0, 4)
local TextLabel39 = Instance.new("TextLabel", TextButton20)
TextLabel39.Size = UDim2.new(1, -8, 1, 0)
TextLabel39.Position = UDim2.new(0, 6, 0, 0)
TextLabel39.BackgroundTransparency = 1
TextLabel39.Text = "Mouse"
TextLabel39.Font = Enum.Font.Gotham
TextLabel39.TextSize = 10
TextLabel39.TextColor3 = {}
TextLabel39.TextXAlignment = Enum.TextXAlignment.Left
TextLabel39.ZIndex = 11
local conn53 = TextButton20.MouseEnter:Connect(function(...)
    local tween118 = TweenService:Create(TextButton20, TweenInfo.new(0.1, Enum.EasingStyle.Quart), {
        BackgroundTransparency = 0
    })
    tween118:Play()
end)
local conn54 = TextButton20.MouseLeave:Connect(function(...)
    local tween119 = TweenService:Create(TextButton20, TweenInfo.new(0.1, Enum.EasingStyle.Quart), {
        BackgroundTransparency = 1
    })
    tween119:Play()
end)
local conn55 = TextButton20.MouseButton1Click:Connect(function()
    TextLabel35.Text = "Mouse"
    Frame44.Visible = false
    local tween120 = TweenService:Create(TextLabel36, TweenInfo.new(0.15, Enum.EasingStyle.Quart), {
        Rotation = 0
    })
    tween120:Play()
end)
local conn56 = TextButton17.MouseButton1Click:Connect(function()
    Frame44.Visible = true
    local tween121 = TweenService:Create(TextLabel36, TweenInfo.new(0.15, Enum.EasingStyle.Quart), {
        Rotation = 180
    })
    tween121:Play()
end)
local Frame45 = Instance.new("Frame", {})
Frame45.Size = UDim2.new(1, -12, 0, 52)
Frame45.BackgroundColor3 = {}
Frame45.BorderSizePixel = 0
local UICorner64 = Instance.new("UICorner", Frame45)
UICorner64.CornerRadius = UDim.new(0, 8)
local UIStroke18 = Instance.new("UIStroke", Frame45)
UIStroke18.Color = {}
UIStroke18.Transparency = 0.5
local Frame46 = Instance.new("Frame", Frame45)
Frame46.Size = UDim2.new(0, 3, 0, 18)
Frame46.Position = UDim2.new(0, 8, 0.5, -9)
Frame46.BackgroundColor3 = {}
Frame46.BorderSizePixel = 0
local UICorner65 = Instance.new("UICorner", Frame46)
UICorner65.CornerRadius = UDim.new(0, 2)
local TextLabel40 = Instance.new("TextLabel", Frame45)
TextLabel40.Size = UDim2.new(1, -80, 0, 14)
TextLabel40.Position = UDim2.new(0, 18, 0, 8)
TextLabel40.BackgroundTransparency = 1
TextLabel40.Text = "Head Dot"
TextLabel40.Font = Enum.Font.GothamSemibold
TextLabel40.TextSize = 12
TextLabel40.TextColor3 = {}
TextLabel40.TextXAlignment = Enum.TextXAlignment.Left
local TextLabel41 = Instance.new("TextLabel", Frame45)
TextLabel41.Size = UDim2.new(1, -80, 0, 12)
TextLabel41.Position = UDim2.new(0, 18, 0, 24)
TextLabel41.BackgroundTransparency = 1
TextLabel41.Text = "Circle on player heads"
TextLabel41.Font = Enum.Font.Gotham
TextLabel41.TextSize = 10
TextLabel41.TextColor3 = {}
TextLabel41.TextXAlignment = Enum.TextXAlignment.Left
local TextButton21 = Instance.new("TextButton", Frame45)
TextButton21.Size = UDim2.new(0, 40, 0, 20)
TextButton21.Position = UDim2.new(1, -52, 0.5, -10)
TextButton21.BackgroundColor3 = Color3.fromRGB(40, 40, 45)
TextButton21.BorderSizePixel = 0
TextButton21.Text = ""
TextButton21.AutoButtonColor = false
local UICorner66 = Instance.new("UICorner", TextButton21)
UICorner66.CornerRadius = UDim.new(1, 0)
local Frame47 = Instance.new("Frame", TextButton21)
Frame47.Size = UDim2.new(0, 16, 0, 16)
Frame47.Position = UDim2.new(0, 2, 0.5, -8)
Frame47.BackgroundColor3 = Color3.fromRGB(100, 100, 105)
Frame47.BorderSizePixel = 0
local UICorner67 = Instance.new("UICorner", Frame47)
UICorner67.CornerRadius = UDim.new(1, 0)
local conn57 = TextButton21.MouseButton1Click:Connect(function()
    local tween122 = TweenService:Create(TextButton21, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
        BackgroundColor3 = {}
    })
    tween122:Play()
    local tween123 = TweenService:Create(Frame47, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
        BackgroundColor3 = Color3.new(1, 1, 1),
        Position = UDim2.new(1, -18, 0.5, -8)
    })
    tween123:Play()
    local tween124 = TweenService:Create(Frame46, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
        BackgroundColor3 = {}
    })
    tween124:Play()
end)
local conn58 = Frame45.MouseEnter:Connect(function(...)
    local tween125 = TweenService:Create(Frame45, TweenInfo.new(0.15, Enum.EasingStyle.Quart), {
        BackgroundColor3 = Color3.fromRGB(28, 28, 32)
    })
    tween125:Play()
end)
local conn59 = Frame45.MouseLeave:Connect(function(...)
    local tween126 = TweenService:Create(Frame45, TweenInfo.new(0.15, Enum.EasingStyle.Quart), {
        BackgroundColor3 = {}
    })
    tween126:Play()
end)
local tween127 = TweenService:Create(TextButton21, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
    BackgroundColor3 = {}
})
tween127:Play()
local tween128 = TweenService:Create(Frame47, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
    BackgroundColor3 = Color3.new(1, 1, 1),
    Position = UDim2.new(1, -18, 0.5, -8)
})
tween128:Play()
local tween129 = TweenService:Create(Frame46, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
    BackgroundColor3 = {}
})
tween129:Play()
local Frame48 = Instance.new("Frame")
Frame48.Size = UDim2.new(1, -12, 0, 1)
Frame48.BackgroundColor3 = {}
Frame48.BackgroundTransparency = 0.5
Frame48.BorderSizePixel = 0
Frame48.Parent = {}
local TextLabel42 = Instance.new("TextLabel")
TextLabel42.Size = UDim2.new(1, -12, 0, 22)
TextLabel42.BackgroundTransparency = 1
TextLabel42.Font = Enum.Font.GothamBold
TextLabel42.Text = "SETTINGS"
TextLabel42.TextColor3 = {}
TextLabel42.TextSize = 10
TextLabel42.TextXAlignment = Enum.TextXAlignment.Left
TextLabel42.Parent = {}
local UIPadding5 = Instance.new("UIPadding")
UIPadding5.PaddingLeft = UDim.new(0, 4)
UIPadding5.Parent = TextLabel42
local Frame49 = Instance.new("Frame", {})
Frame49.Size = UDim2.new(1, -12, 0, 48)
Frame49.BackgroundColor3 = {}
Frame49.BorderSizePixel = 0
local UICorner68 = Instance.new("UICorner", Frame49)
UICorner68.CornerRadius = UDim.new(0, 8)
local UIStroke19 = Instance.new("UIStroke", Frame49)
UIStroke19.Color = {}
local TextLabel43 = Instance.new("TextLabel", Frame49)
TextLabel43.Size = UDim2.new(0.6, 0, 0, 18)
TextLabel43.Position = UDim2.new(0, 12, 0, 6)
TextLabel43.BackgroundTransparency = 1
TextLabel43.Text = "Max Distance"
TextLabel43.Font = Enum.Font.GothamSemibold
TextLabel43.TextSize = 11
TextLabel43.TextColor3 = {}
TextLabel43.TextXAlignment = Enum.TextXAlignment.Left
local TextLabel44 = Instance.new("TextLabel", Frame49)
TextLabel44.Size = UDim2.new(0.35, -12, 0, 18)
TextLabel44.Position = UDim2.new(0.65, 0, 0, 6)
TextLabel44.BackgroundTransparency = 1
TextLabel44.Text = "2000m"
TextLabel44.Font = Enum.Font.GothamBold
TextLabel44.TextSize = 11
TextLabel44.TextColor3 = {}
TextLabel44.TextXAlignment = Enum.TextXAlignment.Right
local Frame50 = Instance.new("Frame", Frame49)
Frame50.Size = UDim2.new(1, -24, 0, 6)
Frame50.Position = UDim2.new(0, 12, 0, 30)
Frame50.BackgroundColor3 = Color3.fromRGB(35, 35, 40)
Frame50.BorderSizePixel = 0
local UICorner69 = Instance.new("UICorner", Frame50)
UICorner69.CornerRadius = UDim.new(1, 0)
local Frame51 = Instance.new("Frame", Frame50)
Frame51.Size = UDim2.new(0.387755, 0, 1, 0)
Frame51.BackgroundColor3 = {}
Frame51.BorderSizePixel = 0
local UICorner70 = Instance.new("UICorner", Frame51)
UICorner70.CornerRadius = UDim.new(1, 0)
local Frame52 = Instance.new("Frame", Frame51)
Frame52.Size = UDim2.new(0, 12, 0, 12)
Frame52.Position = UDim2.new(1, -6, 0.5, -6)
Frame52.BackgroundColor3 = Color3.new(1, 1, 1)
Frame52.BorderSizePixel = 0
local UICorner71 = Instance.new("UICorner", Frame52)
UICorner71.CornerRadius = UDim.new(1, 0)
local conn60 = Frame50.InputBegan:Connect(function(input, gameProcessed)
end)
local conn61 = UIS.InputChanged:Connect(function(input, gameProcessed)
end)
local conn62 = UIS.InputEnded:Connect(function(input, gameProcessed)
end)
local Frame53 = Instance.new("Frame", {})
Frame53.Size = UDim2.new(1, -12, 0, 52)
Frame53.BackgroundColor3 = {}
Frame53.BorderSizePixel = 0
local UICorner72 = Instance.new("UICorner", Frame53)
UICorner72.CornerRadius = UDim.new(0, 8)
local UIStroke20 = Instance.new("UIStroke", Frame53)
UIStroke20.Color = {}
UIStroke20.Transparency = 0.5
local Frame54 = Instance.new("Frame", Frame53)
Frame54.Size = UDim2.new(0, 3, 0, 18)
Frame54.Position = UDim2.new(0, 8, 0.5, -9)
Frame54.BackgroundColor3 = {}
Frame54.BorderSizePixel = 0
local UICorner73 = Instance.new("UICorner", Frame54)
UICorner73.CornerRadius = UDim.new(0, 2)
local TextLabel45 = Instance.new("TextLabel", Frame53)
TextLabel45.Size = UDim2.new(1, -80, 0, 14)
TextLabel45.Position = UDim2.new(0, 18, 0, 8)
TextLabel45.BackgroundTransparency = 1
TextLabel45.Text = "Rainbow Mode"
TextLabel45.Font = Enum.Font.GothamSemibold
TextLabel45.TextSize = 12
TextLabel45.TextColor3 = {}
TextLabel45.TextXAlignment = Enum.TextXAlignment.Left
local TextLabel46 = Instance.new("TextLabel", Frame53)
TextLabel46.Size = UDim2.new(1, -80, 0, 12)
TextLabel46.Position = UDim2.new(0, 18, 0, 24)
TextLabel46.BackgroundTransparency = 1
TextLabel46.Text = "Cycle through colors"
TextLabel46.Font = Enum.Font.Gotham
TextLabel46.TextSize = 10
TextLabel46.TextColor3 = {}
TextLabel46.TextXAlignment = Enum.TextXAlignment.Left
local TextButton22 = Instance.new("TextButton", Frame53)
TextButton22.Size = UDim2.new(0, 40, 0, 20)
TextButton22.Position = UDim2.new(1, -52, 0.5, -10)
TextButton22.BackgroundColor3 = Color3.fromRGB(40, 40, 45)
TextButton22.BorderSizePixel = 0
TextButton22.Text = ""
TextButton22.AutoButtonColor = false
local UICorner74 = Instance.new("UICorner", TextButton22)
UICorner74.CornerRadius = UDim.new(1, 0)
local Frame55 = Instance.new("Frame", TextButton22)
Frame55.Size = UDim2.new(0, 16, 0, 16)
Frame55.Position = UDim2.new(0, 2, 0.5, -8)
Frame55.BackgroundColor3 = Color3.fromRGB(100, 100, 105)
Frame55.BorderSizePixel = 0
local UICorner75 = Instance.new("UICorner", Frame55)
UICorner75.CornerRadius = UDim.new(1, 0)
local conn63 = TextButton22.MouseButton1Click:Connect(function()
    local tween130 = TweenService:Create(TextButton22, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
        BackgroundColor3 = {}
    })
    tween130:Play()
    local tween131 = TweenService:Create(Frame55, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
        BackgroundColor3 = Color3.new(1, 1, 1),
        Position = UDim2.new(1, -18, 0.5, -8)
    })
    tween131:Play()
    local tween132 = TweenService:Create(Frame54, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
        BackgroundColor3 = {}
    })
    tween132:Play()
end)
local conn64 = Frame53.MouseEnter:Connect(function(...)
    local tween133 = TweenService:Create(Frame53, TweenInfo.new(0.15, Enum.EasingStyle.Quart), {
        BackgroundColor3 = Color3.fromRGB(28, 28, 32)
    })
    tween133:Play()
end)
local conn65 = Frame53.MouseLeave:Connect(function(...)
    local tween134 = TweenService:Create(Frame53, TweenInfo.new(0.15, Enum.EasingStyle.Quart), {
        BackgroundColor3 = {}
    })
    tween134:Play()
end)
local tween135 = TweenService:Create(TextButton22, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
    BackgroundColor3 = {}
})
tween135:Play()
local tween136 = TweenService:Create(Frame55, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
    BackgroundColor3 = Color3.new(1, 1, 1),
    Position = UDim2.new(1, -18, 0.5, -8)
})
tween136:Play()
local tween137 = TweenService:Create(Frame54, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
    BackgroundColor3 = {}
})
tween137:Play()
local Frame56 = Instance.new("Frame", {})
Frame56.Size = UDim2.new(1, -12, 0, 52)
Frame56.BackgroundColor3 = {}
Frame56.BorderSizePixel = 0
local UICorner76 = Instance.new("UICorner", Frame56)
UICorner76.CornerRadius = UDim.new(0, 8)
local UIStroke21 = Instance.new("UIStroke", Frame56)
UIStroke21.Color = {}
UIStroke21.Transparency = 0.5
local Frame57 = Instance.new("Frame", Frame56)
Frame57.Size = UDim2.new(0, 3, 0, 18)
Frame57.Position = UDim2.new(0, 8, 0.5, -9)
Frame57.BackgroundColor3 = {}
Frame57.BorderSizePixel = 0
local UICorner77 = Instance.new("UICorner", Frame57)
UICorner77.CornerRadius = UDim.new(0, 2)
local TextLabel47 = Instance.new("TextLabel", Frame56)
TextLabel47.Size = UDim2.new(1, -80, 0, 14)
TextLabel47.Position = UDim2.new(0, 18, 0, 8)
TextLabel47.BackgroundTransparency = 1
TextLabel47.Text = "Team Colors"
TextLabel47.Font = Enum.Font.GothamSemibold
TextLabel47.TextSize = 12
TextLabel47.TextColor3 = {}
TextLabel47.TextXAlignment = Enum.TextXAlignment.Left
local TextLabel48 = Instance.new("TextLabel", Frame56)
TextLabel48.Size = UDim2.new(1, -80, 0, 12)
TextLabel48.Position = UDim2.new(0, 18, 0, 24)
TextLabel48.BackgroundTransparency = 1
TextLabel48.Text = "Use player team colors"
TextLabel48.Font = Enum.Font.Gotham
TextLabel48.TextSize = 10
TextLabel48.TextColor3 = {}
TextLabel48.TextXAlignment = Enum.TextXAlignment.Left
local TextButton23 = Instance.new("TextButton", Frame56)
TextButton23.Size = UDim2.new(0, 40, 0, 20)
TextButton23.Position = UDim2.new(1, -52, 0.5, -10)
TextButton23.BackgroundColor3 = Color3.fromRGB(40, 40, 45)
TextButton23.BorderSizePixel = 0
TextButton23.Text = ""
TextButton23.AutoButtonColor = false
local UICorner78 = Instance.new("UICorner", TextButton23)
UICorner78.CornerRadius = UDim.new(1, 0)
local Frame58 = Instance.new("Frame", TextButton23)
Frame58.Size = UDim2.new(0, 16, 0, 16)
Frame58.Position = UDim2.new(0, 2, 0.5, -8)
Frame58.BackgroundColor3 = Color3.fromRGB(100, 100, 105)
Frame58.BorderSizePixel = 0
local UICorner79 = Instance.new("UICorner", Frame58)
UICorner79.CornerRadius = UDim.new(1, 0)
local conn66 = TextButton23.MouseButton1Click:Connect(function()
    local tween138 = TweenService:Create(TextButton23, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
        BackgroundColor3 = {}
    })
    tween138:Play()
    local tween139 = TweenService:Create(Frame58, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
        BackgroundColor3 = Color3.new(1, 1, 1),
        Position = UDim2.new(1, -18, 0.5, -8)
    })
    tween139:Play()
    local tween140 = TweenService:Create(Frame57, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
        BackgroundColor3 = {}
    })
    tween140:Play()
end)
local conn67 = Frame56.MouseEnter:Connect(function(...)
    local tween141 = TweenService:Create(Frame56, TweenInfo.new(0.15, Enum.EasingStyle.Quart), {
        BackgroundColor3 = Color3.fromRGB(28, 28, 32)
    })
    tween141:Play()
end)
local conn68 = Frame56.MouseLeave:Connect(function(...)
    local tween142 = TweenService:Create(Frame56, TweenInfo.new(0.15, Enum.EasingStyle.Quart), {
        BackgroundColor3 = {}
    })
    tween142:Play()
end)
local tween143 = TweenService:Create(TextButton23, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
    BackgroundColor3 = {}
})
tween143:Play()
local tween144 = TweenService:Create(Frame58, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
    BackgroundColor3 = Color3.new(1, 1, 1),
    Position = UDim2.new(1, -18, 0.5, -8)
})
tween144:Play()
local tween145 = TweenService:Create(Frame57, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
    BackgroundColor3 = {}
})
tween145:Play()
getgenv().ESP_Table.FishConn = {}
for _, child in FindFirstChild:GetChildren() do
    local conn69 = FindFirstChild.ChildAdded:Connect(function(child)
        task.wait(0.5)
    end
end)
getgenv().ESP_Table.FishConn['1'] = conn69
local conn70 = FindFirstChild.ChildRemoved:Connect(function(child)
    getgenv().ESP_Table.UI.nil = nil
end)
getgenv().ESP_Table.FishConn['1'] = conn70
getgenv().ESP_Table.ChestConn = {}
for _, child in Chests:GetChildren() do
    print("[ESP] Module loaded - Fish/Chest/Player/Skeleton/Tracers")
