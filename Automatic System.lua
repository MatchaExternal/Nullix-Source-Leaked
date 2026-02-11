local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local UIS = game:GetService("UserInputService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local LocalPlayer = Players.LocalPlayer
local TextLabel = Instance.new("TextLabel")
TextLabel.Size = UDim2.new(1, -12, 0, 20)
TextLabel.BackgroundTransparency = 1
TextLabel.Font = Enum.Font.GothamBold
TextLabel.Text = "INSTANT CATCH"
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
TextLabel2.Text = "Instant Catch"
TextLabel2.TextColor3 = {}
TextLabel2.TextSize = 13
TextLabel2.TextXAlignment = Enum.TextXAlignment.Left
TextLabel2.Parent = Frame
local TextLabel3 = Instance.new("TextLabel")
TextLabel3.Size = UDim2.new(1, -90, 0, 14)
TextLabel3.Position = UDim2.new(0, 22, 0, 28)
TextLabel3.BackgroundTransparency = 1
TextLabel3.Font = Enum.Font.Gotham
TextLabel3.Text = "Skips fishing minigame, sets progress to 1"
TextLabel3.TextColor3 = {}
TextLabel3.TextSize = 11
TextLabel3.TextXAlignment = Enum.TextXAlignment.Left
TextLabel3.Parent = Frame
local TextButton = Instance.new("TextButton")
TextButton.Size = UDim2.new(0, 40, 0, 20)
TextButton.Position = UDim2.new(1, -54, 0.5, -10)
TextButton.BackgroundColor3 = Color3.fromRGB(35, 35, 38)
TextButton.BorderSizePixel = 0
TextButton.Text = ""
TextButton.AutoButtonColor = false
TextButton.Parent = Frame
local UICorner3 = Instance.new("UICorner", TextButton)
UICorner3.CornerRadius = UDim.new(1, 0)
local Frame3 = Instance.new("Frame")
Frame3.Size = UDim2.new(0, 16, 0, 16)
Frame3.Position = UDim2.new(0, 3, 0.5, -8)
Frame3.BackgroundColor3 = Color3.fromRGB(100, 100, 105)
Frame3.BorderSizePixel = 0
Frame3.Parent = TextButton
local UICorner4 = Instance.new("UICorner", Frame3)
UICorner4.CornerRadius = UDim.new(1, 0)
local conn = Frame.MouseEnter:Connect(function(...)
    local tween = TweenService:Create(Frame, TweenInfo.new(0.1), {
        BackgroundColor3 = Color3.fromRGB(26, 26, 30)
    })
    tween:Play()
end)
local conn2 = Frame.MouseLeave:Connect(function(...)
    local tween2 = TweenService:Create(Frame, TweenInfo.new(0.1), {
        BackgroundColor3 = {}
    })
    tween2:Play()
end)
local conn3 = TextButton.MouseButton1Click:Connect(function()
    local tween3 = TweenService:Create(TextButton, TweenInfo.new(0.18, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        BackgroundColor3 = {}
    })
    tween3:Play()
    local tween4 = TweenService:Create(Frame3, TweenInfo.new(0.18, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        Position = UDim2.new(1, -19, 0.5, -8),
        BackgroundColor3 = Color3.new(1, 1, 1)
    })
    tween4:Play()
    local tween5 = TweenService:Create(Frame2, TweenInfo.new(0.18, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        BackgroundColor3 = {}
    })
    tween5:Play()
    local tween6 = TweenService:Create(UIStroke, TweenInfo.new(0.18, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        Transparency = 0.35,
        Color = {}
    })
    tween6:Play()
end)
local tween7 = TweenService:Create(TextButton, TweenInfo.new(0.18, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
    BackgroundColor3 = Color3.fromRGB(35, 35, 38)
})
tween7:Play()
local tween8 = TweenService:Create(Frame3, TweenInfo.new(0.18, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
    Position = UDim2.new(0, 3, 0.5, -8),
    BackgroundColor3 = Color3.fromRGB(100, 100, 105)
})
tween8:Play()
local tween9 = TweenService:Create(Frame2, TweenInfo.new(0.18, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
    BackgroundColor3 = {}
})
tween9:Play()
local tween10 = TweenService:Create(UIStroke, TweenInfo.new(0.18, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
    Transparency = 0.5,
    Color = {}
})
tween10:Play()
local Frame4 = Instance.new("Frame")
Frame4.Size = UDim2.new(1, -12, 0, 1)
Frame4.BackgroundColor3 = {}
Frame4.BackgroundTransparency = 0.4
Frame4.BorderSizePixel = 0
Frame4.Parent = {}
local TextLabel4 = Instance.new("TextLabel")
TextLabel4.Size = UDim2.new(1, -12, 0, 20)
TextLabel4.BackgroundTransparency = 1
TextLabel4.Font = Enum.Font.GothamBold
TextLabel4.Text = "AUTO HARPOON"
TextLabel4.TextColor3 = {}
TextLabel4.TextSize = 10
TextLabel4.TextXAlignment = Enum.TextXAlignment.Left
TextLabel4.Parent = {}
local UIPadding2 = Instance.new("UIPadding")
UIPadding2.PaddingLeft = UDim.new(0, 4)
UIPadding2.Parent = TextLabel4
local Frame5 = Instance.new("Frame")
Frame5.Size = UDim2.new(1, -12, 0, 56)
Frame5.BackgroundColor3 = {}
Frame5.BorderSizePixel = 0
Frame5.Parent = {}
local UICorner5 = Instance.new("UICorner", Frame5)
UICorner5.CornerRadius = UDim.new(0, 8)
local UIStroke2 = Instance.new("UIStroke")
UIStroke2.Color = {}
UIStroke2.Thickness = 1
UIStroke2.Transparency = 0.5
UIStroke2.Parent = Frame5
local Frame6 = Instance.new("Frame")
Frame6.Size = UDim2.new(0, 3, 0, 24)
Frame6.Position = UDim2.new(0, 10, 0.5, -12)
Frame6.BackgroundColor3 = {}
Frame6.BorderSizePixel = 0
Frame6.Parent = Frame5
local UICorner6 = Instance.new("UICorner", Frame6)
UICorner6.CornerRadius = UDim.new(0, 2)
local TextLabel5 = Instance.new("TextLabel")
TextLabel5.Size = UDim2.new(1, -90, 0, 18)
TextLabel5.Position = UDim2.new(0, 22, 0, 8)
TextLabel5.BackgroundTransparency = 1
TextLabel5.Font = Enum.Font.GothamSemibold
TextLabel5.Text = "Auto Harpoon"
TextLabel5.TextColor3 = {}
TextLabel5.TextSize = 13
TextLabel5.TextXAlignment = Enum.TextXAlignment.Left
TextLabel5.Parent = Frame5
local TextLabel6 = Instance.new("TextLabel")
TextLabel6.Size = UDim2.new(1, -90, 0, 14)
TextLabel6.Position = UDim2.new(0, 22, 0, 28)
TextLabel6.BackgroundTransparency = 1
TextLabel6.Font = Enum.Font.Gotham
TextLabel6.Text = "Automatically catch nearest valid fish"
TextLabel6.TextColor3 = {}
TextLabel6.TextSize = 11
TextLabel6.TextXAlignment = Enum.TextXAlignment.Left
TextLabel6.Parent = Frame5
local TextButton2 = Instance.new("TextButton")
TextButton2.Size = UDim2.new(0, 40, 0, 20)
TextButton2.Position = UDim2.new(1, -54, 0.5, -10)
TextButton2.BackgroundColor3 = Color3.fromRGB(35, 35, 38)
TextButton2.BorderSizePixel = 0
TextButton2.Text = ""
TextButton2.AutoButtonColor = false
TextButton2.Parent = Frame5
local UICorner7 = Instance.new("UICorner", TextButton2)
UICorner7.CornerRadius = UDim.new(1, 0)
local Frame7 = Instance.new("Frame")
Frame7.Size = UDim2.new(0, 16, 0, 16)
Frame7.Position = UDim2.new(0, 3, 0.5, -8)
Frame7.BackgroundColor3 = Color3.fromRGB(100, 100, 105)
Frame7.BorderSizePixel = 0
Frame7.Parent = TextButton2
local UICorner8 = Instance.new("UICorner", Frame7)
UICorner8.CornerRadius = UDim.new(1, 0)
local conn4 = Frame5.MouseEnter:Connect(function(...)
    local tween11 = TweenService:Create(Frame5, TweenInfo.new(0.1), {
        BackgroundColor3 = Color3.fromRGB(26, 26, 30)
    })
    tween11:Play()
end)
local conn5 = Frame5.MouseLeave:Connect(function(...)
    local tween12 = TweenService:Create(Frame5, TweenInfo.new(0.1), {
        BackgroundColor3 = {}
    })
    tween12:Play()
end)
local conn6 = TextButton2.MouseButton1Click:Connect(function()
    local tween13 = TweenService:Create(TextButton2, TweenInfo.new(0.18, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        BackgroundColor3 = {}
    })
    tween13:Play()
    local tween14 = TweenService:Create(Frame7, TweenInfo.new(0.18, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        Position = UDim2.new(1, -19, 0.5, -8),
        BackgroundColor3 = Color3.new(1, 1, 1)
    })
    tween14:Play()
    local tween15 = TweenService:Create(Frame6, TweenInfo.new(0.18, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        BackgroundColor3 = {}
    })
    tween15:Play()
    local tween16 = TweenService:Create(UIStroke2, TweenInfo.new(0.18, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        Transparency = 0.35,
        Color = {}
    })
    tween16:Play()
end)
local tween17 = TweenService:Create(TextButton2, TweenInfo.new(0.18, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
    BackgroundColor3 = Color3.fromRGB(35, 35, 38)
})
tween17:Play()
local tween18 = TweenService:Create(Frame7, TweenInfo.new(0.18, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
    Position = UDim2.new(0, 3, 0.5, -8),
    BackgroundColor3 = Color3.fromRGB(100, 100, 105)
})
tween18:Play()
local tween19 = TweenService:Create(Frame6, TweenInfo.new(0.18, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
    BackgroundColor3 = {}
})
tween19:Play()
local tween20 = TweenService:Create(UIStroke2, TweenInfo.new(0.18, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
    Transparency = 0.5,
    Color = {}
})
tween20:Play()
local Frame8 = Instance.new("Frame")
Frame8.Size = UDim2.new(1, -12, 0, 1)
Frame8.BackgroundColor3 = {}
Frame8.BackgroundTransparency = 0.4
Frame8.BorderSizePixel = 0
Frame8.Parent = {}
local TextLabel7 = Instance.new("TextLabel")
TextLabel7.Size = UDim2.new(1, -12, 0, 20)
TextLabel7.BackgroundTransparency = 1
TextLabel7.Font = Enum.Font.GothamBold
TextLabel7.Text = "XP GRIND"
TextLabel7.TextColor3 = {}
TextLabel7.TextSize = 10
TextLabel7.TextXAlignment = Enum.TextXAlignment.Left
TextLabel7.Parent = {}
local UIPadding3 = Instance.new("UIPadding")
UIPadding3.PaddingLeft = UDim.new(0, 4)
UIPadding3.Parent = TextLabel7
local Frame9 = Instance.new("Frame")
Frame9.Size = UDim2.new(1, -12, 0, 56)
Frame9.BackgroundColor3 = {}
Frame9.BorderSizePixel = 0
Frame9.Parent = {}
local UICorner9 = Instance.new("UICorner", Frame9)
UICorner9.CornerRadius = UDim.new(0, 8)
local UIStroke3 = Instance.new("UIStroke")
UIStroke3.Color = {}
UIStroke3.Thickness = 1
UIStroke3.Transparency = 0.5
UIStroke3.Parent = Frame9
local Frame10 = Instance.new("Frame")
Frame10.Size = UDim2.new(0, 3, 0, 24)
Frame10.Position = UDim2.new(0, 10, 0.5, -12)
Frame10.BackgroundColor3 = {}
Frame10.BorderSizePixel = 0
Frame10.Parent = Frame9
local UICorner10 = Instance.new("UICorner", Frame10)
UICorner10.CornerRadius = UDim.new(0, 2)
local TextLabel8 = Instance.new("TextLabel")
TextLabel8.Size = UDim2.new(1, -90, 0, 18)
TextLabel8.Position = UDim2.new(0, 22, 0, 8)
TextLabel8.BackgroundTransparency = 1
TextLabel8.Font = Enum.Font.GothamSemibold
TextLabel8.Text = "XP Grind Mode"
TextLabel8.TextColor3 = {}
TextLabel8.TextSize = 13
TextLabel8.TextXAlignment = Enum.TextXAlignment.Left
TextLabel8.Parent = Frame9
local TextLabel9 = Instance.new("TextLabel")
TextLabel9.Size = UDim2.new(1, -90, 0, 14)
TextLabel9.Position = UDim2.new(0, 22, 0, 28)
TextLabel9.BackgroundTransparency = 1
TextLabel9.Font = Enum.Font.Gotham
TextLabel9.Text = "Auto cancel minigame & collect fish"
TextLabel9.TextColor3 = {}
TextLabel9.TextSize = 11
TextLabel9.TextXAlignment = Enum.TextXAlignment.Left
TextLabel9.Parent = Frame9
local TextButton3 = Instance.new("TextButton")
TextButton3.Size = UDim2.new(0, 40, 0, 20)
TextButton3.Position = UDim2.new(1, -54, 0.5, -10)
TextButton3.BackgroundColor3 = Color3.fromRGB(35, 35, 38)
TextButton3.BorderSizePixel = 0
TextButton3.Text = ""
TextButton3.AutoButtonColor = false
TextButton3.Parent = Frame9
local UICorner11 = Instance.new("UICorner", TextButton3)
UICorner11.CornerRadius = UDim.new(1, 0)
local Frame11 = Instance.new("Frame")
Frame11.Size = UDim2.new(0, 16, 0, 16)
Frame11.Position = UDim2.new(0, 3, 0.5, -8)
Frame11.BackgroundColor3 = Color3.fromRGB(100, 100, 105)
Frame11.BorderSizePixel = 0
Frame11.Parent = TextButton3
local UICorner12 = Instance.new("UICorner", Frame11)
UICorner12.CornerRadius = UDim.new(1, 0)
local conn7 = Frame9.MouseEnter:Connect(function(...)
    local tween21 = TweenService:Create(Frame9, TweenInfo.new(0.1), {
        BackgroundColor3 = Color3.fromRGB(26, 26, 30)
    })
    tween21:Play()
end)
local conn8 = Frame9.MouseLeave:Connect(function(...)
    local tween22 = TweenService:Create(Frame9, TweenInfo.new(0.1), {
        BackgroundColor3 = {}
    })
    tween22:Play()
end)
local conn9 = TextButton3.MouseButton1Click:Connect(function()
    local tween23 = TweenService:Create(TextButton3, TweenInfo.new(0.18, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        BackgroundColor3 = {}
    })
    tween23:Play()
    local tween24 = TweenService:Create(Frame11, TweenInfo.new(0.18, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        Position = UDim2.new(1, -19, 0.5, -8),
        BackgroundColor3 = Color3.new(1, 1, 1)
    })
    tween24:Play()
    local tween25 = TweenService:Create(Frame10, TweenInfo.new(0.18, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        BackgroundColor3 = {}
    })
    tween25:Play()
    local tween26 = TweenService:Create(UIStroke3, TweenInfo.new(0.18, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        Transparency = 0.35,
        Color = {}
    })
    tween26:Play()
end)
local tween27 = TweenService:Create(TextButton3, TweenInfo.new(0.18, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
    BackgroundColor3 = Color3.fromRGB(35, 35, 38)
})
tween27:Play()
local tween28 = TweenService:Create(Frame11, TweenInfo.new(0.18, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
    Position = UDim2.new(0, 3, 0.5, -8),
    BackgroundColor3 = Color3.fromRGB(100, 100, 105)
})
tween28:Play()
local tween29 = TweenService:Create(Frame10, TweenInfo.new(0.18, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
    BackgroundColor3 = {}
})
tween29:Play()
local tween30 = TweenService:Create(UIStroke3, TweenInfo.new(0.18, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
    Transparency = 0.5,
    Color = {}
})
tween30:Play()
local Frame12 = Instance.new("Frame")
Frame12.Size = UDim2.new(1, -12, 0, 1)
Frame12.BackgroundColor3 = {}
Frame12.BackgroundTransparency = 0.4
Frame12.BorderSizePixel = 0
Frame12.Parent = {}
local TextLabel10 = Instance.new("TextLabel")
TextLabel10.Size = UDim2.new(1, -12, 0, 20)
TextLabel10.BackgroundTransparency = 1
TextLabel10.Font = Enum.Font.GothamBold
TextLabel10.Text = "FISH FILTER"
TextLabel10.TextColor3 = {}
TextLabel10.TextSize = 10
TextLabel10.TextXAlignment = Enum.TextXAlignment.Left
TextLabel10.Parent = {}
local UIPadding4 = Instance.new("UIPadding")
UIPadding4.PaddingLeft = UDim.new(0, 4)
UIPadding4.Parent = TextLabel10
local Frame13 = Instance.new("Frame")
Frame13.Size = UDim2.new(1, -12, 0, 80)
Frame13.BackgroundColor3 = {}
Frame13.BorderSizePixel = 0
Frame13.Parent = {}
local UICorner13 = Instance.new("UICorner", Frame13)
UICorner13.CornerRadius = UDim.new(0, 8)
local UIStroke4 = Instance.new("UIStroke")
UIStroke4.Color = {}
UIStroke4.Thickness = 1
UIStroke4.Transparency = 0.5
UIStroke4.Parent = Frame13
local TextLabel11 = Instance.new("TextLabel")
TextLabel11.Size = UDim2.new(1, -16, 0, 18)
TextLabel11.Position = UDim2.new(0, 10, 0, 8)
TextLabel11.BackgroundTransparency = 1
TextLabel11.Font = Enum.Font.GothamSemibold
TextLabel11.Text = "Target Fish (Multi-Select)"
TextLabel11.TextColor3 = {}
TextLabel11.TextSize = 13
TextLabel11.TextXAlignment = Enum.TextXAlignment.Left
TextLabel11.Parent = Frame13
local TextLabel12 = Instance.new("TextLabel")
TextLabel12.Size = UDim2.new(1, -16, 0, 14)
TextLabel12.Position = UDim2.new(0, 10, 0, 26)
TextLabel12.BackgroundTransparency = 1
TextLabel12.Font = Enum.Font.Gotham
TextLabel12.Text = "Select multiple species – no selection = all fish"
TextLabel12.TextColor3 = {}
TextLabel12.TextSize = 11
TextLabel12.TextXAlignment = Enum.TextXAlignment.Left
TextLabel12.Parent = Frame13
local TextLabel13 = Instance.new("TextLabel")
TextLabel13.Size = UDim2.new(1, -16, 0, 16)
TextLabel13.Position = UDim2.new(0, 10, 0, 44)
TextLabel13.BackgroundTransparency = 1
TextLabel13.Font = Enum.Font.Gotham
TextLabel13.Text = "Current: All"
TextLabel13.TextColor3 = {}
TextLabel13.TextSize = 11
TextLabel13.TextXAlignment = Enum.TextXAlignment.Left
TextLabel13.Parent = Frame13
local TextButton4 = Instance.new("TextButton")
TextButton4.Size = UDim2.new(0, 120, 0, 22)
TextButton4.Position = UDim2.new(1, -130, 0, 42)
TextButton4.BackgroundColor3 = Color3.fromRGB(30, 30, 32)
TextButton4.BorderSizePixel = 0
TextButton4.Font = Enum.Font.GothamSemibold
TextButton4.Text = "Open List"
TextButton4.TextColor3 = {}
TextButton4.TextSize = 11
TextButton4.AutoButtonColor = false
TextButton4.Parent = Frame13
local UICorner14 = Instance.new("UICorner", TextButton4)
UICorner14.CornerRadius = UDim.new(0, 6)
local conn10 = TextButton4.MouseEnter:Connect(function(...)
    local tween31 = TweenService:Create(TextButton4, TweenInfo.new(0.1), {
        BackgroundColor3 = Color3.fromRGB(40, 40, 44),
        TextColor3 = {}
    })
    tween31:Play()
end)
local conn11 = TextButton4.MouseLeave:Connect(function(...)
    local tween32 = TweenService:Create(TextButton4, TweenInfo.new(0.1), {
        BackgroundColor3 = Color3.fromRGB(30, 30, 32),
        TextColor3 = {}
    })
    tween32:Play()
end)
local Frame14 = Instance.new("Frame")
Frame14.Size = UDim2.new(1, -12, 0, 160)
Frame14.BackgroundColor3 = {}
Frame14.BorderSizePixel = 0
Frame14.Visible = false
Frame14.Parent = {}
local UICorner15 = Instance.new("UICorner", Frame14)
UICorner15.CornerRadius = UDim.new(0, 8)
local UIStroke5 = Instance.new("UIStroke")
UIStroke5.Color = {}
UIStroke5.Thickness = 1
UIStroke5.Transparency = 0.5
UIStroke5.Parent = Frame14
local TextLabel14 = Instance.new("TextLabel")
TextLabel14.Size = UDim2.new(1, -16, 0, 18)
TextLabel14.Position = UDim2.new(0, 10, 0, 8)
TextLabel14.BackgroundTransparency = 1
TextLabel14.Font = Enum.Font.GothamSemibold
TextLabel14.Text = "Available Fish (click to toggle)"
TextLabel14.TextColor3 = {}
TextLabel14.TextSize = 13
TextLabel14.TextXAlignment = Enum.TextXAlignment.Left
TextLabel14.Parent = Frame14
local ScrollingFrame = Instance.new("ScrollingFrame")
ScrollingFrame.Size = UDim2.new(1, -16, 0, 110)
ScrollingFrame.Position = UDim2.new(0, 8, 0, 30)
ScrollingFrame.BackgroundTransparency = 1
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.ScrollBarThickness = 3
ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
ScrollingFrame.AutomaticCanvasSize = 0
ScrollingFrame.Parent = Frame14
local UIListLayout = Instance.new("UIListLayout")
UIListLayout.Padding = UDim.new(0, 4)
UIListLayout.SortOrder = 0
UIListLayout.Parent = ScrollingFrame
local UIPadding5 = Instance.new("UIPadding")
UIPadding5.PaddingLeft = UDim.new(0, 2)
UIPadding5.PaddingTop = UDim.new(0, 2)
UIPadding5.Parent = ScrollingFrame
local TextButton5 = Instance.new("TextButton")
TextButton5.Size = UDim2.new(1, -4, 0, 20)
TextButton5.BackgroundColor3 = Color3.fromRGB(20, 20, 22)
TextButton5.BorderSizePixel = 0
TextButton5.Font = Enum.Font.GothamSemibold
TextButton5.Text = "Clear selection (All fish)"
TextButton5.TextColor3 = Color3.fromRGB(220, 100, 100)
TextButton5.TextSize = 11
TextButton5.AutoButtonColor = false
TextButton5.Parent = ScrollingFrame
local UICorner16 = Instance.new("UICorner", TextButton5)
UICorner16.CornerRadius = UDim.new(0, 4)
local conn12 = TextButton5.MouseEnter:Connect(function(...)
    local tween33 = TweenService:Create(TextButton5, TweenInfo.new(0.1), {
        BackgroundColor3 = Color3.fromRGB(35, 20, 20)
    })
    tween33:Play()
end)
local conn13 = TextButton5.MouseLeave:Connect(function(...)
    local tween34 = TweenService:Create(TextButton5, TweenInfo.new(0.1), {
        BackgroundColor3 = Color3.fromRGB(20, 20, 22)
    })
    tween34:Play()
end)
local conn14 = TextButton5.MouseButton1Click:Connect(function()
    TextLabel13.Text = "Current: All"
end)
local Game = workspace:FindFirstChild("Game")
local Fish = Game:FindFirstChild("Fish")
local client = Fish:FindFirstChild("client")
for _, child in client:GetChildren() do
    local conn15 = client.ChildAdded:Connect(function(child)
        task.wait(0.3)
    end
end)
local conn16 = TextButton4.MouseButton1Click:Connect(function()
    Frame14.Visible = true
end)
print("[Fish] Module loaded")
