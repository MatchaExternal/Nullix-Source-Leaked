local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local LocalPlayer = Players.LocalPlayer
local TextLabel = Instance.new("TextLabel")
TextLabel.Size = UDim2.new(1, -12, 0, 20)
TextLabel.BackgroundTransparency = 1
TextLabel.Font = Enum.Font.GothamBold
TextLabel.Text = "GUNS"
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
TextLabel2.Text = "Guns"
TextLabel2.TextColor3 = {}
TextLabel2.TextSize = 13
TextLabel2.TextXAlignment = Enum.TextXAlignment.Left
TextLabel2.Parent = Frame
local TextLabel3 = Instance.new("TextLabel")
TextLabel3.Size = UDim2.new(1, -90, 0, 14)
TextLabel3.Position = UDim2.new(0, 22, 0, 28)
TextLabel3.BackgroundTransparency = 1
TextLabel3.Font = Enum.Font.Gotham
TextLabel3.Text = "Select a gun to equip"
TextLabel3.TextColor3 = {}
TextLabel3.TextSize = 11
TextLabel3.TextXAlignment = Enum.TextXAlignment.Left
TextLabel3.Parent = Frame
local TextButton = Instance.new("TextButton")
TextButton.Size = UDim2.new(0, 80, 0, 28)
TextButton.Position = UDim2.new(1, -94, 0.5, -14)
TextButton.BackgroundColor3 = Color3.fromRGB(30, 30, 32)
TextButton.BorderSizePixel = 0
TextButton.Font = Enum.Font.GothamSemibold
TextButton.Text = "Open List"
TextButton.TextColor3 = {}
TextButton.TextSize = 11
TextButton.AutoButtonColor = false
TextButton.Parent = Frame
local UICorner3 = Instance.new("UICorner", TextButton)
UICorner3.CornerRadius = UDim.new(0, 6)
local conn = TextButton.MouseEnter:Connect(function(...)
    local tween = TweenService:Create(TextButton, TweenInfo.new(0.1), {
        BackgroundColor3 = Color3.fromRGB(40, 40, 44),
        TextColor3 = {}
    })
    tween:Play()
end)
local conn2 = TextButton.MouseLeave:Connect(function(...)
    local tween2 = TweenService:Create(TextButton, TweenInfo.new(0.1), {
        BackgroundColor3 = Color3.fromRGB(30, 30, 32),
        TextColor3 = {}
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
local Frame3 = Instance.new("Frame")
Frame3.Size = UDim2.new(1, -12, 0, 200)
Frame3.BackgroundColor3 = {}
Frame3.BorderSizePixel = 0
Frame3.Visible = false
Frame3.Parent = {}
local UICorner4 = Instance.new("UICorner", Frame3)
UICorner4.CornerRadius = UDim.new(0, 8)
local UIStroke2 = Instance.new("UIStroke")
UIStroke2.Color = {}
UIStroke2.Thickness = 1
UIStroke2.Transparency = 0.5
UIStroke2.Parent = Frame3
local TextLabel4 = Instance.new("TextLabel")
TextLabel4.Size = UDim2.new(1, -16, 0, 18)
TextLabel4.Position = UDim2.new(0, 10, 0, 8)
TextLabel4.BackgroundTransparency = 1
TextLabel4.Font = Enum.Font.GothamSemibold
TextLabel4.Text = "Select Guns (click to equip)"
TextLabel4.TextColor3 = {}
TextLabel4.TextSize = 13
TextLabel4.TextXAlignment = Enum.TextXAlignment.Left
TextLabel4.Parent = Frame3
local ScrollingFrame = Instance.new("ScrollingFrame")
ScrollingFrame.Size = UDim2.new(1, -16, 0, 155)
ScrollingFrame.Position = UDim2.new(0, 8, 0, 35)
ScrollingFrame.BackgroundTransparency = 1
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.ScrollBarThickness = 3
ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
ScrollingFrame.AutomaticCanvasSize = 0
ScrollingFrame.Parent = Frame3
local UIListLayout = Instance.new("UIListLayout")
UIListLayout.Padding = UDim.new(0, 4)
UIListLayout.SortOrder = 0
UIListLayout.Parent = ScrollingFrame
local UIPadding2 = Instance.new("UIPadding")
UIPadding2.PaddingLeft = UDim.new(0, 2)
UIPadding2.PaddingTop = UDim.new(0, 2)
UIPadding2.Parent = ScrollingFrame
local TextLabel5 = Instance.new("TextLabel")
TextLabel5.Size = UDim2.new(1, -16, 0, 14)
TextLabel5.Position = UDim2.new(0, 10, 0, 20)
TextLabel5.BackgroundTransparency = 1
TextLabel5.Font = Enum.Font.Gotham
TextLabel5.Text = ""
TextLabel5.TextColor3 = Color3.fromRGB(100, 200, 100)
TextLabel5.TextSize = 10
TextLabel5.TextXAlignment = Enum.TextXAlignment.Left
TextLabel5.Parent = Frame3
local conn5 = TextButton.MouseButton1Click:Connect(function()
    for _, child in ScrollingFrame:GetChildren() do
        local common = ReplicatedStorage:FindFirstChild("common")
        for _, obj in common:GetDescendants() do
            local TextLabel6 = Instance.new("TextLabel")
            TextLabel6.Size = UDim2.new(1, -4, 0, 28)
            TextLabel6.BackgroundTransparency = 1
            TextLabel6.Font = Enum.Font.Gotham
            TextLabel6.Text = "No items found - type manually below"
            TextLabel6.TextColor3 = {}
            TextLabel6.TextSize = 11
            TextLabel6.Parent = ScrollingFrame
            local Frame4 = Instance.new("Frame")
            Frame4.Size = UDim2.new(1, -4, 0, 28)
            Frame4.BackgroundColor3 = Color3.fromRGB(20, 20, 22)
            Frame4.BorderSizePixel = 0
            Frame4.Parent = ScrollingFrame
            local UICorner5 = Instance.new("UICorner", Frame4)
            UICorner5.CornerRadius = UDim.new(0, 4)
            local TextBox = Instance.new("TextBox")
            TextBox.Size = UDim2.new(1, -70, 1, 0)
            TextBox.Position = UDim2.new(0, 8, 0, 0)
            TextBox.BackgroundTransparency = 1
            TextBox.Font = Enum.Font.Gotham
            TextBox.Text = ""
            TextBox.PlaceholderText = "Type item name..."
            TextBox.PlaceholderColor3 = {}
            TextBox.TextColor3 = {}
            TextBox.TextSize = 11
            TextBox.TextXAlignment = Enum.TextXAlignment.Left
            TextBox.ClearTextOnFocus = false
            TextBox.Parent = Frame4
            local TextButton2 = Instance.new("TextButton")
            TextButton2.Size = UDim2.new(0, 55, 0, 22)
            TextButton2.Position = UDim2.new(1, -60, 0.5, -11)
            TextButton2.BackgroundColor3 = {}
            TextButton2.BorderSizePixel = 0
            TextButton2.Font = Enum.Font.GothamSemibold
            TextButton2.Text = "Equip"
            TextButton2.TextColor3 = Color3.new(1, 1, 1)
            TextButton2.TextSize = 10
            TextButton2.AutoButtonColor = false
            TextButton2.Parent = Frame4
            local UICorner6 = Instance.new("UICorner", TextButton2)
            UICorner6.CornerRadius = UDim.new(0, 4)
            local conn6 = TextButton2.MouseEnter:Connect(function(...)
                local tween5 = TweenService:Create(TextButton2, TweenInfo.new(0.1), {
                    BackgroundColor3 = Color3.fromRGB(100, 180, 255)
                })
                tween5:Play()
            end
        end)
        local conn7 = TextButton2.MouseLeave:Connect(function(...)
            local tween6 = TweenService:Create(TextButton2, TweenInfo.new(0.1), {
                BackgroundColor3 = {}
            })
            tween6:Play()
        end)
        local conn8 = TextButton2.MouseButton1Click:Connect(function()
        end)
        Frame3.Visible = true
    end)
    local Frame5 = Instance.new("Frame")
    Frame5.Size = UDim2.new(1, -12, 0, 1)
    Frame5.BackgroundColor3 = {}
    Frame5.BackgroundTransparency = 0.4
    Frame5.BorderSizePixel = 0
    Frame5.Parent = {}
    local TextLabel7 = Instance.new("TextLabel")
    TextLabel7.Size = UDim2.new(1, -12, 0, 20)
    TextLabel7.BackgroundTransparency = 1
    TextLabel7.Font = Enum.Font.GothamBold
    TextLabel7.Text = "TUBES"
    TextLabel7.TextColor3 = {}
    TextLabel7.TextSize = 10
    TextLabel7.TextXAlignment = Enum.TextXAlignment.Left
    TextLabel7.Parent = {}
    local UIPadding3 = Instance.new("UIPadding")
    UIPadding3.PaddingLeft = UDim.new(0, 4)
    UIPadding3.Parent = TextLabel7
    local Frame6 = Instance.new("Frame")
    Frame6.Size = UDim2.new(1, -12, 0, 56)
    Frame6.BackgroundColor3 = {}
    Frame6.BorderSizePixel = 0
    Frame6.Parent = {}
    local UICorner7 = Instance.new("UICorner", Frame6)
    UICorner7.CornerRadius = UDim.new(0, 8)
    local UIStroke3 = Instance.new("UIStroke")
    UIStroke3.Color = {}
    UIStroke3.Thickness = 1
    UIStroke3.Transparency = 0.5
    UIStroke3.Parent = Frame6
    local Frame7 = Instance.new("Frame")
    Frame7.Size = UDim2.new(0, 3, 0, 24)
    Frame7.Position = UDim2.new(0, 10, 0.5, -12)
    Frame7.BackgroundColor3 = {}
    Frame7.BorderSizePixel = 0
    Frame7.Parent = Frame6
    local UICorner8 = Instance.new("UICorner", Frame7)
    UICorner8.CornerRadius = UDim.new(0, 2)
    local TextLabel8 = Instance.new("TextLabel")
    TextLabel8.Size = UDim2.new(1, -90, 0, 18)
    TextLabel8.Position = UDim2.new(0, 22, 0, 8)
    TextLabel8.BackgroundTransparency = 1
    TextLabel8.Font = Enum.Font.GothamSemibold
    TextLabel8.Text = "Tubes"
    TextLabel8.TextColor3 = {}
    TextLabel8.TextSize = 13
    TextLabel8.TextXAlignment = Enum.TextXAlignment.Left
    TextLabel8.Parent = Frame6
    local TextLabel9 = Instance.new("TextLabel")
    TextLabel9.Size = UDim2.new(1, -90, 0, 14)
    TextLabel9.Position = UDim2.new(0, 22, 0, 28)
    TextLabel9.BackgroundTransparency = 1
    TextLabel9.Font = Enum.Font.Gotham
    TextLabel9.Text = "Select a tube to equip"
    TextLabel9.TextColor3 = {}
    TextLabel9.TextSize = 11
    TextLabel9.TextXAlignment = Enum.TextXAlignment.Left
    TextLabel9.Parent = Frame6
    local TextButton3 = Instance.new("TextButton")
    TextButton3.Size = UDim2.new(0, 80, 0, 28)
    TextButton3.Position = UDim2.new(1, -94, 0.5, -14)
    TextButton3.BackgroundColor3 = Color3.fromRGB(30, 30, 32)
    TextButton3.BorderSizePixel = 0
    TextButton3.Font = Enum.Font.GothamSemibold
    TextButton3.Text = "Open List"
    TextButton3.TextColor3 = {}
    TextButton3.TextSize = 11
    TextButton3.AutoButtonColor = false
    TextButton3.Parent = Frame6
    local UICorner9 = Instance.new("UICorner", TextButton3)
    UICorner9.CornerRadius = UDim.new(0, 6)
    local conn9 = TextButton3.MouseEnter:Connect(function(...)
        local tween7 = TweenService:Create(TextButton3, TweenInfo.new(0.1), {
            BackgroundColor3 = Color3.fromRGB(40, 40, 44),
            TextColor3 = {}
        })
        tween7:Play()
    end)
    local conn10 = TextButton3.MouseLeave:Connect(function(...)
        local tween8 = TweenService:Create(TextButton3, TweenInfo.new(0.1), {
            BackgroundColor3 = Color3.fromRGB(30, 30, 32),
            TextColor3 = {}
        })
        tween8:Play()
    end)
    local conn11 = Frame6.MouseEnter:Connect(function(...)
        local tween9 = TweenService:Create(Frame6, TweenInfo.new(0.1), {
            BackgroundColor3 = Color3.fromRGB(26, 26, 30)
        })
        tween9:Play()
    end)
    local conn12 = Frame6.MouseLeave:Connect(function(...)
        local tween10 = TweenService:Create(Frame6, TweenInfo.new(0.1), {
            BackgroundColor3 = {}
        })
        tween10:Play()
    end)
    local Frame8 = Instance.new("Frame")
    Frame8.Size = UDim2.new(1, -12, 0, 200)
    Frame8.BackgroundColor3 = {}
    Frame8.BorderSizePixel = 0
    Frame8.Visible = false
    Frame8.Parent = {}
    local UICorner10 = Instance.new("UICorner", Frame8)
    UICorner10.CornerRadius = UDim.new(0, 8)
    local UIStroke4 = Instance.new("UIStroke")
    UIStroke4.Color = {}
    UIStroke4.Thickness = 1
    UIStroke4.Transparency = 0.5
    UIStroke4.Parent = Frame8
    local TextLabel10 = Instance.new("TextLabel")
    TextLabel10.Size = UDim2.new(1, -16, 0, 18)
    TextLabel10.Position = UDim2.new(0, 10, 0, 8)
    TextLabel10.BackgroundTransparency = 1
    TextLabel10.Font = Enum.Font.GothamSemibold
    TextLabel10.Text = "Select Tubes (click to equip)"
    TextLabel10.TextColor3 = {}
    TextLabel10.TextSize = 13
    TextLabel10.TextXAlignment = Enum.TextXAlignment.Left
    TextLabel10.Parent = Frame8
    local ScrollingFrame2 = Instance.new("ScrollingFrame")
    ScrollingFrame2.Size = UDim2.new(1, -16, 0, 155)
    ScrollingFrame2.Position = UDim2.new(0, 8, 0, 35)
    ScrollingFrame2.BackgroundTransparency = 1
    ScrollingFrame2.BorderSizePixel = 0
    ScrollingFrame2.ScrollBarThickness = 3
    ScrollingFrame2.CanvasSize = UDim2.new(0, 0, 0, 0)
    ScrollingFrame2.AutomaticCanvasSize = 0
    ScrollingFrame2.Parent = Frame8
    local UIListLayout2 = Instance.new("UIListLayout")
    UIListLayout2.Padding = UDim.new(0, 4)
    UIListLayout2.SortOrder = 0
    UIListLayout2.Parent = ScrollingFrame2
    local UIPadding4 = Instance.new("UIPadding")
    UIPadding4.PaddingLeft = UDim.new(0, 2)
    UIPadding4.PaddingTop = UDim.new(0, 2)
    UIPadding4.Parent = ScrollingFrame2
    local TextLabel11 = Instance.new("TextLabel")
    TextLabel11.Size = UDim2.new(1, -16, 0, 14)
    TextLabel11.Position = UDim2.new(0, 10, 0, 20)
    TextLabel11.BackgroundTransparency = 1
    TextLabel11.Font = Enum.Font.Gotham
    TextLabel11.Text = ""
    TextLabel11.TextColor3 = Color3.fromRGB(100, 200, 100)
    TextLabel11.TextSize = 10
    TextLabel11.TextXAlignment = Enum.TextXAlignment.Left
    TextLabel11.Parent = Frame8
    local conn13 = TextButton3.MouseButton1Click:Connect(function()
        for _, child in ScrollingFrame2:GetChildren() do
            local common2 = ReplicatedStorage:FindFirstChild("common")
            for _, obj in common2:GetDescendants() do
                local TextLabel12 = Instance.new("TextLabel")
                TextLabel12.Size = UDim2.new(1, -4, 0, 28)
                TextLabel12.BackgroundTransparency = 1
                TextLabel12.Font = Enum.Font.Gotham
                TextLabel12.Text = "No items found - type manually below"
                TextLabel12.TextColor3 = {}
                TextLabel12.TextSize = 11
                TextLabel12.Parent = ScrollingFrame2
                local Frame9 = Instance.new("Frame")
                Frame9.Size = UDim2.new(1, -4, 0, 28)
                Frame9.BackgroundColor3 = Color3.fromRGB(20, 20, 22)
                Frame9.BorderSizePixel = 0
                Frame9.Parent = ScrollingFrame2
                local UICorner11 = Instance.new("UICorner", Frame9)
                UICorner11.CornerRadius = UDim.new(0, 4)
                local TextBox2 = Instance.new("TextBox")
                TextBox2.Size = UDim2.new(1, -70, 1, 0)
                TextBox2.Position = UDim2.new(0, 8, 0, 0)
                TextBox2.BackgroundTransparency = 1
                TextBox2.Font = Enum.Font.Gotham
                TextBox2.Text = ""
                TextBox2.PlaceholderText = "Type item name..."
                TextBox2.PlaceholderColor3 = {}
                TextBox2.TextColor3 = {}
                TextBox2.TextSize = 11
                TextBox2.TextXAlignment = Enum.TextXAlignment.Left
                TextBox2.ClearTextOnFocus = false
                TextBox2.Parent = Frame9
                local TextButton4 = Instance.new("TextButton")
                TextButton4.Size = UDim2.new(0, 55, 0, 22)
                TextButton4.Position = UDim2.new(1, -60, 0.5, -11)
                TextButton4.BackgroundColor3 = {}
                TextButton4.BorderSizePixel = 0
                TextButton4.Font = Enum.Font.GothamSemibold
                TextButton4.Text = "Equip"
                TextButton4.TextColor3 = Color3.new(1, 1, 1)
                TextButton4.TextSize = 10
                TextButton4.AutoButtonColor = false
                TextButton4.Parent = Frame9
                local UICorner12 = Instance.new("UICorner", TextButton4)
                UICorner12.CornerRadius = UDim.new(0, 4)
                local conn14 = TextButton4.MouseEnter:Connect(function(...)
                    local tween11 = TweenService:Create(TextButton4, TweenInfo.new(0.1), {
                        BackgroundColor3 = Color3.fromRGB(100, 180, 255)
                    })
                    tween11:Play()
                end
            end)
            local conn15 = TextButton4.MouseLeave:Connect(function(...)
                local tween12 = TweenService:Create(TextButton4, TweenInfo.new(0.1), {
                    BackgroundColor3 = {}
                })
                tween12:Play()
            end)
            local conn16 = TextButton4.MouseButton1Click:Connect(function()
            end)
            Frame8.Visible = true
        end)
        print("[Giver] Module loaded")
