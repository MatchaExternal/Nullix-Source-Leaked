local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local UIS = game:GetService("UserInputService")
local LocalPlayer = Players.LocalPlayer
local conn = LocalPlayer.CharacterAdded:Connect(function(character)
end)
local TextLabel = Instance.new("TextLabel")
TextLabel.Size = UDim2.new(1, -12, 0, 22)
TextLabel.BackgroundTransparency = 1
TextLabel.Font = Enum.Font.GothamBold
TextLabel.Text = "MOVEMENT"
TextLabel.TextColor3 = {}
TextLabel.TextSize = 10
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.Parent = {}
local UIPadding = Instance.new("UIPadding")
UIPadding.PaddingLeft = UDim.new(0, 4)
UIPadding.Parent = TextLabel
local Frame = Instance.new("Frame")
Frame.Size = UDim2.new(1, -12, 0, 70)
Frame.BackgroundColor3 = {}
Frame.BorderSizePixel = 0
Frame.Parent = {}
local UICorner = Instance.new("UICorner", Frame)
UICorner.CornerRadius = UDim.new(0, 8)
local UIStroke = Instance.new("UIStroke")
UIStroke.Color = {}
UIStroke.Thickness = 1
UIStroke.Transparency = 0.6
UIStroke.Parent = Frame
local Frame2 = Instance.new("Frame")
Frame2.Size = UDim2.new(0, 3, 0, 28)
Frame2.Position = UDim2.new(0, 10, 0, 12)
Frame2.BackgroundColor3 = {}
Frame2.BorderSizePixel = 0
Frame2.Parent = Frame
local UICorner2 = Instance.new("UICorner", Frame2)
UICorner2.CornerRadius = UDim.new(0, 2)
local TextLabel2 = Instance.new("TextLabel")
TextLabel2.Size = UDim2.new(1, -80, 0, 18)
TextLabel2.Position = UDim2.new(0, 22, 0, 8)
TextLabel2.BackgroundTransparency = 1
TextLabel2.Font = Enum.Font.GothamSemibold
TextLabel2.Text = "Walk Speed"
TextLabel2.TextColor3 = {}
TextLabel2.TextSize = 13
TextLabel2.TextXAlignment = Enum.TextXAlignment.Left
TextLabel2.Parent = Frame
local TextLabel3 = Instance.new("TextLabel")
TextLabel3.Size = UDim2.new(1, -80, 0, 14)
TextLabel3.Position = UDim2.new(0, 22, 0, 26)
TextLabel3.BackgroundTransparency = 1
TextLabel3.Font = Enum.Font.Gotham
TextLabel3.Text = "Default: 16"
TextLabel3.TextColor3 = {}
TextLabel3.TextSize = 11
TextLabel3.TextXAlignment = Enum.TextXAlignment.Left
TextLabel3.Parent = Frame
local TextLabel4 = Instance.new("TextLabel")
TextLabel4.Size = UDim2.new(0, 50, 0, 20)
TextLabel4.Position = UDim2.new(1, -62, 0, 12)
TextLabel4.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
TextLabel4.BorderSizePixel = 0
TextLabel4.Font = Enum.Font.GothamSemibold
TextLabel4.Text = "16"
TextLabel4.TextColor3 = {}
TextLabel4.TextSize = 12
TextLabel4.Parent = Frame
local UICorner3 = Instance.new("UICorner", TextLabel4)
UICorner3.CornerRadius = UDim.new(0, 4)
local Frame3 = Instance.new("Frame")
Frame3.Size = UDim2.new(1, -44, 0, 6)
Frame3.Position = UDim2.new(0, 22, 0, 52)
Frame3.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Frame3.BorderSizePixel = 0
Frame3.Parent = Frame
local UICorner4 = Instance.new("UICorner", Frame3)
UICorner4.CornerRadius = UDim.new(1, 0)
local Frame4 = Instance.new("Frame")
Frame4.Size = UDim2.new(0.08, 0, 1, 0)
Frame4.Position = UDim2.new(0, 0, 0, 0)
Frame4.BackgroundColor3 = {}
Frame4.BorderSizePixel = 0
Frame4.Parent = Frame3
local UICorner5 = Instance.new("UICorner", Frame4)
UICorner5.CornerRadius = UDim.new(1, 0)
local Frame5 = Instance.new("Frame")
Frame5.Size = UDim2.new(0, 14, 0, 14)
Frame5.Position = UDim2.new(0.08, -7, 0.5, -7)
Frame5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame5.BorderSizePixel = 0
Frame5.Parent = Frame3
local UICorner6 = Instance.new("UICorner", Frame5)
UICorner6.CornerRadius = UDim.new(1, 0)
local UIStroke2 = Instance.new("UIStroke")
UIStroke2.Color = {}
UIStroke2.Thickness = 2
UIStroke2.Parent = Frame5
local conn2 = Frame.MouseEnter:Connect(function(...)
    local tween = TweenService:Create(Frame, TweenInfo.new(0.15), {
        BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    })
    tween:Play()
end)
local conn3 = Frame.MouseLeave:Connect(function(...)
    local tween2 = TweenService:Create(Frame, TweenInfo.new(0.15), {
        BackgroundColor3 = {}
    })
    tween2:Play()
end)
local conn4 = Frame3.InputBegan:Connect(function(input, gameProcessed)
end)
local conn5 = Frame5.InputBegan:Connect(function(input, gameProcessed)
end)
local conn6 = UIS.InputChanged:Connect(function(input, gameProcessed)
end)
local conn7 = UIS.InputEnded:Connect(function(input, gameProcessed)
end)
local conn8 = UIS.InputChanged:Connect(function(input, gameProcessed)
end)
local Frame6 = Instance.new("Frame")
Frame6.Size = UDim2.new(1, -12, 0, 70)
Frame6.BackgroundColor3 = {}
Frame6.BorderSizePixel = 0
Frame6.Parent = {}
local UICorner7 = Instance.new("UICorner", Frame6)
UICorner7.CornerRadius = UDim.new(0, 8)
local UIStroke3 = Instance.new("UIStroke")
UIStroke3.Color = {}
UIStroke3.Thickness = 1
UIStroke3.Transparency = 0.6
UIStroke3.Parent = Frame6
local Frame7 = Instance.new("Frame")
Frame7.Size = UDim2.new(0, 3, 0, 28)
Frame7.Position = UDim2.new(0, 10, 0, 12)
Frame7.BackgroundColor3 = {}
Frame7.BorderSizePixel = 0
Frame7.Parent = Frame6
local UICorner8 = Instance.new("UICorner", Frame7)
UICorner8.CornerRadius = UDim.new(0, 2)
local TextLabel5 = Instance.new("TextLabel")
TextLabel5.Size = UDim2.new(1, -80, 0, 18)
TextLabel5.Position = UDim2.new(0, 22, 0, 8)
TextLabel5.BackgroundTransparency = 1
TextLabel5.Font = Enum.Font.GothamSemibold
TextLabel5.Text = "Jump Power"
TextLabel5.TextColor3 = {}
TextLabel5.TextSize = 13
TextLabel5.TextXAlignment = Enum.TextXAlignment.Left
TextLabel5.Parent = Frame6
local TextLabel6 = Instance.new("TextLabel")
TextLabel6.Size = UDim2.new(1, -80, 0, 14)
TextLabel6.Position = UDim2.new(0, 22, 0, 26)
TextLabel6.BackgroundTransparency = 1
TextLabel6.Font = Enum.Font.Gotham
TextLabel6.Text = "Default: 50"
TextLabel6.TextColor3 = {}
TextLabel6.TextSize = 11
TextLabel6.TextXAlignment = Enum.TextXAlignment.Left
TextLabel6.Parent = Frame6
local TextLabel7 = Instance.new("TextLabel")
TextLabel7.Size = UDim2.new(0, 50, 0, 20)
TextLabel7.Position = UDim2.new(1, -62, 0, 12)
TextLabel7.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
TextLabel7.BorderSizePixel = 0
TextLabel7.Font = Enum.Font.GothamSemibold
TextLabel7.Text = "50"
TextLabel7.TextColor3 = {}
TextLabel7.TextSize = 12
TextLabel7.Parent = Frame6
local UICorner9 = Instance.new("UICorner", TextLabel7)
UICorner9.CornerRadius = UDim.new(0, 4)
local Frame8 = Instance.new("Frame")
Frame8.Size = UDim2.new(1, -44, 0, 6)
Frame8.Position = UDim2.new(0, 22, 0, 52)
Frame8.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Frame8.BorderSizePixel = 0
Frame8.Parent = Frame6
local UICorner10 = Instance.new("UICorner", Frame8)
UICorner10.CornerRadius = UDim.new(1, 0)
local Frame9 = Instance.new("Frame")
Frame9.Size = UDim2.new(0.25, 0, 1, 0)
Frame9.Position = UDim2.new(0, 0, 0, 0)
Frame9.BackgroundColor3 = {}
Frame9.BorderSizePixel = 0
Frame9.Parent = Frame8
local UICorner11 = Instance.new("UICorner", Frame9)
UICorner11.CornerRadius = UDim.new(1, 0)
local Frame10 = Instance.new("Frame")
Frame10.Size = UDim2.new(0, 14, 0, 14)
Frame10.Position = UDim2.new(0.25, -7, 0.5, -7)
Frame10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame10.BorderSizePixel = 0
Frame10.Parent = Frame8
local UICorner12 = Instance.new("UICorner", Frame10)
UICorner12.CornerRadius = UDim.new(1, 0)
local UIStroke4 = Instance.new("UIStroke")
UIStroke4.Color = {}
UIStroke4.Thickness = 2
UIStroke4.Parent = Frame10
local conn9 = Frame6.MouseEnter:Connect(function(...)
    local tween3 = TweenService:Create(Frame6, TweenInfo.new(0.15), {
        BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    })
    tween3:Play()
end)
local conn10 = Frame6.MouseLeave:Connect(function(...)
    local tween4 = TweenService:Create(Frame6, TweenInfo.new(0.15), {
        BackgroundColor3 = {}
    })
    tween4:Play()
end)
local conn11 = Frame8.InputBegan:Connect(function(input, gameProcessed)
end)
local conn12 = Frame10.InputBegan:Connect(function(input, gameProcessed)
end)
local conn13 = UIS.InputChanged:Connect(function(input, gameProcessed)
end)
local conn14 = UIS.InputEnded:Connect(function(input, gameProcessed)
end)
local conn15 = UIS.InputChanged:Connect(function(input, gameProcessed)
end)
local Frame11 = Instance.new("Frame")
Frame11.Size = UDim2.new(1, -12, 0, 1)
Frame11.BackgroundColor3 = {}
Frame11.BackgroundTransparency = 0.5
Frame11.BorderSizePixel = 0
Frame11.Parent = {}
local TextLabel8 = Instance.new("TextLabel")
TextLabel8.Size = UDim2.new(1, -12, 0, 22)
TextLabel8.BackgroundTransparency = 1
TextLabel8.Font = Enum.Font.GothamBold
TextLabel8.Text = "PHYSICS"
TextLabel8.TextColor3 = {}
TextLabel8.TextSize = 10
TextLabel8.TextXAlignment = Enum.TextXAlignment.Left
TextLabel8.Parent = {}
local UIPadding2 = Instance.new("UIPadding")
UIPadding2.PaddingLeft = UDim.new(0, 4)
UIPadding2.Parent = TextLabel8
local Frame12 = Instance.new("Frame")
Frame12.Size = UDim2.new(1, -12, 0, 56)
Frame12.BackgroundColor3 = {}
Frame12.BorderSizePixel = 0
Frame12.Parent = {}
local UICorner13 = Instance.new("UICorner", Frame12)
UICorner13.CornerRadius = UDim.new(0, 8)
local UIStroke5 = Instance.new("UIStroke")
UIStroke5.Color = {}
UIStroke5.Thickness = 1
UIStroke5.Transparency = 0.6
UIStroke5.Parent = Frame12
local Frame13 = Instance.new("Frame")
Frame13.Size = UDim2.new(0, 3, 0, 28)
Frame13.Position = UDim2.new(0, 10, 0.5, -14)
Frame13.BackgroundColor3 = {}
Frame13.BorderSizePixel = 0
Frame13.Parent = Frame12
local UICorner14 = Instance.new("UICorner", Frame13)
UICorner14.CornerRadius = UDim.new(0, 2)
local TextLabel9 = Instance.new("TextLabel")
TextLabel9.Size = UDim2.new(1, -150, 0, 18)
TextLabel9.Position = UDim2.new(0, 22, 0, 10)
TextLabel9.BackgroundTransparency = 1
TextLabel9.Font = Enum.Font.GothamSemibold
TextLabel9.Text = "Noclip"
TextLabel9.TextColor3 = {}
TextLabel9.TextSize = 13
TextLabel9.TextXAlignment = Enum.TextXAlignment.Left
TextLabel9.Parent = Frame12
local TextLabel10 = Instance.new("TextLabel")
TextLabel10.Size = UDim2.new(1, -150, 0, 14)
TextLabel10.Position = UDim2.new(0, 22, 0, 30)
TextLabel10.BackgroundTransparency = 1
TextLabel10.Font = Enum.Font.Gotham
TextLabel10.Text = "Walk through walls and objects"
TextLabel10.TextColor3 = {}
TextLabel10.TextSize = 11
TextLabel10.TextXAlignment = Enum.TextXAlignment.Left
TextLabel10.Parent = Frame12
local TextButton = Instance.new("TextButton")
TextButton.Size = UDim2.new(0, 42, 0, 22)
TextButton.Position = UDim2.new(1, -110, 0.5, -11)
TextButton.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
TextButton.BorderSizePixel = 0
TextButton.Text = ""
TextButton.AutoButtonColor = false
TextButton.Parent = Frame12
local UICorner15 = Instance.new("UICorner", TextButton)
UICorner15.CornerRadius = UDim.new(1, 0)
local UIStroke6 = Instance.new("UIStroke")
UIStroke6.Color = Color3.fromRGB(50, 50, 50)
UIStroke6.Thickness = 1
UIStroke6.Parent = TextButton
local Frame14 = Instance.new("Frame")
Frame14.Size = UDim2.new(0, 16, 0, 16)
Frame14.Position = UDim2.new(0, 3, 0.5, -8)
Frame14.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
Frame14.BorderSizePixel = 0
Frame14.Parent = TextButton
local UICorner16 = Instance.new("UICorner", Frame14)
UICorner16.CornerRadius = UDim.new(1, 0)
local TextButton2 = Instance.new("TextButton")
TextButton2.Size = UDim2.new(0, 50, 0, 20)
TextButton2.Position = UDim2.new(1, -55, 0.5, -10)
TextButton2.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
TextButton2.BorderSizePixel = 0
TextButton2.Font = Enum.Font.GothamSemibold
TextButton2.Text = "[   ]"
TextButton2.TextColor3 = {}
TextButton2.TextSize = 10
TextButton2.AutoButtonColor = false
TextButton2.Parent = Frame12
local UICorner17 = Instance.new("UICorner", TextButton2)
UICorner17.CornerRadius = UDim.new(0, 4)
local UIStroke7 = Instance.new("UIStroke")
UIStroke7.Color = Color3.fromRGB(60, 60, 60)
UIStroke7.Thickness = 1
UIStroke7.Parent = TextButton2
local conn16 = Frame12.MouseEnter:Connect(function(...)
    local tween5 = TweenService:Create(Frame12, TweenInfo.new(0.15), {
        BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    })
    tween5:Play()
end)
local conn17 = Frame12.MouseLeave:Connect(function(...)
    local tween6 = TweenService:Create(Frame12, TweenInfo.new(0.15), {
        BackgroundColor3 = {}
    })
    tween6:Play()
end)
local Frame15 = Instance.new("Frame")
Frame15.Size = UDim2.new(1, -12, 0, 56)
Frame15.BackgroundColor3 = {}
Frame15.BorderSizePixel = 0
Frame15.Parent = {}
local UICorner18 = Instance.new("UICorner", Frame15)
UICorner18.CornerRadius = UDim.new(0, 8)
local UIStroke8 = Instance.new("UIStroke")
UIStroke8.Color = {}
UIStroke8.Thickness = 1
UIStroke8.Transparency = 0.6
UIStroke8.Parent = Frame15
local Frame16 = Instance.new("Frame")
Frame16.Size = UDim2.new(0, 3, 0, 28)
Frame16.Position = UDim2.new(0, 10, 0.5, -14)
Frame16.BackgroundColor3 = {}
Frame16.BorderSizePixel = 0
Frame16.Parent = Frame15
local UICorner19 = Instance.new("UICorner", Frame16)
UICorner19.CornerRadius = UDim.new(0, 2)
local TextLabel11 = Instance.new("TextLabel")
TextLabel11.Size = UDim2.new(1, -150, 0, 18)
TextLabel11.Position = UDim2.new(0, 22, 0, 10)
TextLabel11.BackgroundTransparency = 1
TextLabel11.Font = Enum.Font.GothamSemibold
TextLabel11.Text = "Fly"
TextLabel11.TextColor3 = {}
TextLabel11.TextSize = 13
TextLabel11.TextXAlignment = Enum.TextXAlignment.Left
TextLabel11.Parent = Frame15
local TextLabel12 = Instance.new("TextLabel")
TextLabel12.Size = UDim2.new(1, -150, 0, 14)
TextLabel12.Position = UDim2.new(0, 22, 0, 30)
TextLabel12.BackgroundTransparency = 1
TextLabel12.Font = Enum.Font.Gotham
TextLabel12.Text = "WASD to move, Space/Shift up/down"
TextLabel12.TextColor3 = {}
TextLabel12.TextSize = 11
TextLabel12.TextXAlignment = Enum.TextXAlignment.Left
TextLabel12.Parent = Frame15
local TextButton3 = Instance.new("TextButton")
TextButton3.Size = UDim2.new(0, 42, 0, 22)
TextButton3.Position = UDim2.new(1, -110, 0.5, -11)
TextButton3.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
TextButton3.BorderSizePixel = 0
TextButton3.Text = ""
TextButton3.AutoButtonColor = false
TextButton3.Parent = Frame15
local UICorner20 = Instance.new("UICorner", TextButton3)
UICorner20.CornerRadius = UDim.new(1, 0)
local UIStroke9 = Instance.new("UIStroke")
UIStroke9.Color = Color3.fromRGB(50, 50, 50)
UIStroke9.Thickness = 1
UIStroke9.Parent = TextButton3
local Frame17 = Instance.new("Frame")
Frame17.Size = UDim2.new(0, 16, 0, 16)
Frame17.Position = UDim2.new(0, 3, 0.5, -8)
Frame17.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
Frame17.BorderSizePixel = 0
Frame17.Parent = TextButton3
local UICorner21 = Instance.new("UICorner", Frame17)
UICorner21.CornerRadius = UDim.new(1, 0)
local TextButton4 = Instance.new("TextButton")
TextButton4.Size = UDim2.new(0, 50, 0, 20)
TextButton4.Position = UDim2.new(1, -55, 0.5, -10)
TextButton4.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
TextButton4.BorderSizePixel = 0
TextButton4.Font = Enum.Font.GothamSemibold
TextButton4.Text = "[   ]"
TextButton4.TextColor3 = {}
TextButton4.TextSize = 10
TextButton4.AutoButtonColor = false
TextButton4.Parent = Frame15
local UICorner22 = Instance.new("UICorner", TextButton4)
UICorner22.CornerRadius = UDim.new(0, 4)
local UIStroke10 = Instance.new("UIStroke")
UIStroke10.Color = Color3.fromRGB(60, 60, 60)
UIStroke10.Thickness = 1
UIStroke10.Parent = TextButton4
local conn18 = Frame15.MouseEnter:Connect(function(...)
    local tween7 = TweenService:Create(Frame15, TweenInfo.new(0.15), {
        BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    })
    tween7:Play()
end)
local conn19 = Frame15.MouseLeave:Connect(function(...)
    local tween8 = TweenService:Create(Frame15, TweenInfo.new(0.15), {
        BackgroundColor3 = {}
    })
    tween8:Play()
end)
local Frame18 = Instance.new("Frame")
Frame18.Size = UDim2.new(1, -12, 0, 70)
Frame18.BackgroundColor3 = {}
Frame18.BorderSizePixel = 0
Frame18.Parent = {}
local UICorner23 = Instance.new("UICorner", Frame18)
UICorner23.CornerRadius = UDim.new(0, 8)
local UIStroke11 = Instance.new("UIStroke")
UIStroke11.Color = {}
UIStroke11.Thickness = 1
UIStroke11.Transparency = 0.6
UIStroke11.Parent = Frame18
local Frame19 = Instance.new("Frame")
Frame19.Size = UDim2.new(0, 3, 0, 28)
Frame19.Position = UDim2.new(0, 10, 0, 12)
Frame19.BackgroundColor3 = {}
Frame19.BorderSizePixel = 0
Frame19.Parent = Frame18
local UICorner24 = Instance.new("UICorner", Frame19)
UICorner24.CornerRadius = UDim.new(0, 2)
local TextLabel13 = Instance.new("TextLabel")
TextLabel13.Size = UDim2.new(1, -80, 0, 18)
TextLabel13.Position = UDim2.new(0, 22, 0, 8)
TextLabel13.BackgroundTransparency = 1
TextLabel13.Font = Enum.Font.GothamSemibold
TextLabel13.Text = "Fly Speed"
TextLabel13.TextColor3 = {}
TextLabel13.TextSize = 13
TextLabel13.TextXAlignment = Enum.TextXAlignment.Left
TextLabel13.Parent = Frame18
local TextLabel14 = Instance.new("TextLabel")
TextLabel14.Size = UDim2.new(1, -80, 0, 14)
TextLabel14.Position = UDim2.new(0, 22, 0, 26)
TextLabel14.BackgroundTransparency = 1
TextLabel14.Font = Enum.Font.Gotham
TextLabel14.Text = "Default: 60"
TextLabel14.TextColor3 = {}
TextLabel14.TextSize = 11
TextLabel14.TextXAlignment = Enum.TextXAlignment.Left
TextLabel14.Parent = Frame18
local TextLabel15 = Instance.new("TextLabel")
TextLabel15.Size = UDim2.new(0, 50, 0, 20)
TextLabel15.Position = UDim2.new(1, -62, 0, 12)
TextLabel15.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
TextLabel15.BorderSizePixel = 0
TextLabel15.Font = Enum.Font.GothamSemibold
TextLabel15.Text = "60"
TextLabel15.TextColor3 = {}
TextLabel15.TextSize = 12
TextLabel15.Parent = Frame18
local UICorner25 = Instance.new("UICorner", TextLabel15)
UICorner25.CornerRadius = UDim.new(0, 4)
local Frame20 = Instance.new("Frame")
Frame20.Size = UDim2.new(1, -44, 0, 6)
Frame20.Position = UDim2.new(0, 22, 0, 52)
Frame20.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Frame20.BorderSizePixel = 0
Frame20.Parent = Frame18
local UICorner26 = Instance.new("UICorner", Frame20)
UICorner26.CornerRadius = UDim.new(1, 0)
local Frame21 = Instance.new("Frame")
Frame21.Size = UDim2.new(0.172414, 0, 1, 0)
Frame21.Position = UDim2.new(0, 0, 0, 0)
Frame21.BackgroundColor3 = {}
Frame21.BorderSizePixel = 0
Frame21.Parent = Frame20
local UICorner27 = Instance.new("UICorner", Frame21)
UICorner27.CornerRadius = UDim.new(1, 0)
local Frame22 = Instance.new("Frame")
Frame22.Size = UDim2.new(0, 14, 0, 14)
Frame22.Position = UDim2.new(0.172414, -7, 0.5, -7)
Frame22.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame22.BorderSizePixel = 0
Frame22.Parent = Frame20
local UICorner28 = Instance.new("UICorner", Frame22)
UICorner28.CornerRadius = UDim.new(1, 0)
local UIStroke12 = Instance.new("UIStroke")
UIStroke12.Color = {}
UIStroke12.Thickness = 2
UIStroke12.Parent = Frame22
local conn20 = Frame18.MouseEnter:Connect(function(...)
    local tween9 = TweenService:Create(Frame18, TweenInfo.new(0.15), {
        BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    })
    tween9:Play()
end)
local conn21 = Frame18.MouseLeave:Connect(function(...)
    local tween10 = TweenService:Create(Frame18, TweenInfo.new(0.15), {
        BackgroundColor3 = {}
    })
    tween10:Play()
end)
local conn22 = Frame20.InputBegan:Connect(function(input, gameProcessed)
end)
local conn23 = Frame22.InputBegan:Connect(function(input, gameProcessed)
end)
local conn24 = UIS.InputChanged:Connect(function(input, gameProcessed)
end)
local conn25 = UIS.InputEnded:Connect(function(input, gameProcessed)
end)
local conn26 = UIS.InputChanged:Connect(function(input, gameProcessed)
end)
local Frame23 = Instance.new("Frame")
Frame23.Size = UDim2.new(1, -12, 0, 1)
Frame23.BackgroundColor3 = {}
Frame23.BackgroundTransparency = 0.5
Frame23.BorderSizePixel = 0
Frame23.Parent = {}
local TextLabel16 = Instance.new("TextLabel")
TextLabel16.Size = UDim2.new(1, -12, 0, 22)
TextLabel16.BackgroundTransparency = 1
TextLabel16.Font = Enum.Font.GothamBold
TextLabel16.Text = "ACTIONS"
TextLabel16.TextColor3 = {}
TextLabel16.TextSize = 10
TextLabel16.TextXAlignment = Enum.TextXAlignment.Left
TextLabel16.Parent = {}
local UIPadding3 = Instance.new("UIPadding")
UIPadding3.PaddingLeft = UDim.new(0, 4)
UIPadding3.Parent = TextLabel16
local Frame24 = Instance.new("Frame")
Frame24.Size = UDim2.new(1, -12, 0, 42)
Frame24.BackgroundColor3 = {}
Frame24.BorderSizePixel = 0
Frame24.Parent = {}
local UICorner29 = Instance.new("UICorner", Frame24)
UICorner29.CornerRadius = UDim.new(0, 8)
local UIStroke13 = Instance.new("UIStroke")
UIStroke13.Color = {}
UIStroke13.Thickness = 1
UIStroke13.Transparency = 0.6
UIStroke13.Parent = Frame24
local TextButton5 = Instance.new("TextButton")
TextButton5.Size = UDim2.new(1, -24, 0, 30)
TextButton5.Position = UDim2.new(0, 12, 0.5, -15)
TextButton5.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
TextButton5.BorderSizePixel = 0
TextButton5.Font = Enum.Font.GothamSemibold
TextButton5.Text = "Reset All to Default"
TextButton5.TextColor3 = {}
TextButton5.TextSize = 12
TextButton5.AutoButtonColor = false
TextButton5.Parent = Frame24
local UICorner30 = Instance.new("UICorner", TextButton5)
UICorner30.CornerRadius = UDim.new(0, 6)
local UIStroke14 = Instance.new("UIStroke")
UIStroke14.Color = Color3.fromRGB(50, 50, 50)
UIStroke14.Thickness = 1
UIStroke14.Parent = TextButton5
local conn27 = TextButton.MouseButton1Click:Connect(function()
    local conn28 = RunService.Stepped:Connect(function(time, deltaTime)
        for _, obj in object:GetDescendants() do
        end)
        local tween11 = TweenService:Create(Frame14, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
            Position = UDim2.new(1, -19, 0.5, -8),
            BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        })
        tween11:Play()
        local tween12 = TweenService:Create(TextButton, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
            BackgroundColor3 = {}
        })
        tween12:Play()
        local tween13 = TweenService:Create(Frame13, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
            BackgroundColor3 = {}
        })
        tween13:Play()
        local tween14 = TweenService:Create(UIStroke5, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
            Color = Color3.fromRGB(0, 120, 180),
            Transparency = 0.4
        })
        tween14:Play()
    end)
    local conn29 = TextButton3.MouseButton1Click:Connect(function()
        local HumanoidRootPart = object:FindFirstChild("HumanoidRootPart")
        local Humanoid = object:FindFirstChildOfClass("Humanoid")
        Humanoid.PlatformStand = true
        local BodyVelocity = Instance.new("BodyVelocity")
        BodyVelocity.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
        BodyVelocity.Velocity = function() end
        BodyVelocity.Parent = HumanoidRootPart
        local BodyGyro = Instance.new("BodyGyro")
        BodyGyro.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
        BodyGyro.D = 200
        BodyGyro.P = 10000
        BodyGyro.Parent = HumanoidRootPart
        local conn30 = RunService.Heartbeat:Connect(function(deltaTime)
            local IsKeyDown = UIS:IsKeyDown(Enum.KeyCode.W)
            local IsKeyDown2 = UIS:IsKeyDown(Enum.KeyCode.S)
            local IsKeyDown3 = UIS:IsKeyDown(Enum.KeyCode.A)
            local IsKeyDown4 = UIS:IsKeyDown(Enum.KeyCode.D)
            local IsKeyDown5 = UIS:IsKeyDown(Enum.KeyCode.Space)
            local IsKeyDown6 = UIS:IsKeyDown(Enum.KeyCode.LeftShift)
            BodyVelocity.Velocity = (((((((function() end + CFrame.new(0, 10, 0)) - CFrame.new(0, 10, 0)) - CFrame.new(0, 10, 0)) + CFrame.new(0, 10, 0)) + Vector3.new(0, 1, 0)) - Vector3.new(0, 1, 0)) * 60)
            BodyGyro.CFrame = CFrame.new(0, 10, 0)
        end)
        local tween15 = TweenService:Create(Frame17, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
            Position = UDim2.new(1, -19, 0.5, -8),
            BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        })
        tween15:Play()
        local tween16 = TweenService:Create(TextButton3, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
            BackgroundColor3 = {}
        })
        tween16:Play()
        local tween17 = TweenService:Create(Frame16, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
            BackgroundColor3 = {}
        })
        tween17:Play()
        local tween18 = TweenService:Create(UIStroke8, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
            Color = Color3.fromRGB(0, 120, 180),
            Transparency = 0.4
        })
        tween18:Play()
    end)
    local conn31 = TextButton2.MouseButton1Click:Connect(function()
        TextButton2.Text = "Press..."
        local conn32 = UIS.InputBegan:Connect(function(input, gameProcessed)
        end)
    end)
    TextButton2.Text = "[  ]"
    local conn33 = TextButton4.MouseButton1Click:Connect(function()
        TextButton4.Text = "[  ]"
    end)
    TextButton4.Text = "[  ]"
    local conn34 = UIS.InputBegan:Connect(function(input, gameProcessed)
    end)
    local conn35 = TextButton5.MouseButton1Click:Connect(function()
    end)
    print("[Player] Module with Noclip/Fly keybinds loaded")
