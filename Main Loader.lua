--[[
═══════════════════════════════════════════════════════════════
NULLIX UI FRAMEWORK LEAKED LOOOOOOOOOOL v4.0
LEAKED BY KAZICS AND KYLO RAWR :3 !
STOP USING CHATGPT DUM MUTT LOL @injectingdlls and @kylosilly on discord :3 uwu!
═══════════════════════════════════════════════════════════════
]]

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local GuiService = game:GetService("GuiService")

local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")

local UIFramework = {}
UIFramework.Tabs = {}
UIFramework.ActiveTab = nil
UIFramework.TabButtons = {}
UIFramework.TabContents = {}
UIFramework.TabOrder = 0

-- ══════════════════════════════════════════════════════════
--  MOBILE DETECTION & SCALING
-- ══════════════════════════════════════════════════════════
local function isMobileDevice()
	return UserInputService.TouchEnabled and not UserInputService.KeyboardEnabled
end

local function getScreenSize()
	local camera = workspace.CurrentCamera
	if camera then
		return camera.ViewportSize
	end
	return Vector2.new(1920, 1080)
end

local function calculateScale()
	local screenSize = getScreenSize()
	local isMobile = isMobileDevice()
	
	local baseWidth = 680
	local baseHeight = 480
	
	-- Account for top bar inset on mobile
	local topInset = 0
	pcall(function()
		topInset = GuiService:GetGuiInset().Y
	end)
	
	local availableWidth = screenSize.X
	local availableHeight = screenSize.Y - topInset
	
	-- Calculate scale factors
	local scaleX = (availableWidth * 0.92) / baseWidth
	local scaleY = (availableHeight * 0.88) / baseHeight
	
	local scale = math.min(scaleX, scaleY)
	
	-- Clamp scale for different devices
	if isMobile then
		scale = math.clamp(scale, 0.45, 0.85)
	else
		scale = math.clamp(scale, 0.6, 1.0)
	end
	
	return scale, isMobile
end

UIFramework.Scale, UIFramework.IsMobile = calculateScale()

UIFramework.Colors = {
	Bg          = Color3.fromRGB(12, 12, 12),
	Panel       = Color3.fromRGB(18, 18, 18),
	Slot        = Color3.fromRGB(24, 24, 24),
	SlotHover   = Color3.fromRGB(32, 32, 32),
	Border      = Color3.fromRGB(38, 38, 38),

	Text        = Color3.fromRGB(240, 240, 240),
	TextDim     = Color3.fromRGB(140, 140, 140),
	TextMuted   = Color3.fromRGB(70, 70, 70),

	Accent      = Color3.fromRGB(255, 255, 255),
	AccentDim   = Color3.fromRGB(120, 120, 120),

	Good        = Color3.fromRGB(90, 200, 150),
	Warn        = Color3.fromRGB(200, 170, 80),
	Danger      = Color3.fromRGB(200, 80, 80),
}

local TWEEN_MICRO  = TweenInfo.new(0.06, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
local TWEEN_FAST   = TweenInfo.new(0.1, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
local TWEEN_SWITCH = TweenInfo.new(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
local TWEEN_MED    = TweenInfo.new(0.32, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
local TWEEN_SLOW   = TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
local TWEEN_INTRO  = TweenInfo.new(0.6, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
local TWEEN_BREATH = TweenInfo.new(3, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, -1, true)

local CORNER_MAIN = UDim.new(0, 10)
local CORNER_SM   = UDim.new(0, 6)
local CORNER_XS   = UDim.new(0, 4)
local CORNER_PILL  = UDim.new(0, 99)

local function tweenObj(obj, info, props)
	TweenService:Create(obj, info, props):Play()
end

local function addCorner(p, r)
	local c = Instance.new("UICorner"); c.CornerRadius = r; c.Parent = p; return c
end

local function addStroke(p, col, th, tr)
	local s = Instance.new("UIStroke"); s.Color = col; s.Thickness = th or 1; s.Transparency = tr or 0; s.Parent = p; return s
end

local function addPadding(p, t, b, l, r)
	local pd = Instance.new("UIPadding")
	pd.PaddingTop = UDim.new(0, t or 0); pd.PaddingBottom = UDim.new(0, b or 0)
	pd.PaddingLeft = UDim.new(0, l or 0); pd.PaddingRight = UDim.new(0, r or 0)
	pd.Parent = p; return pd
end

local function makeFrame(props)
	local f = Instance.new("Frame")
	for k, v in pairs(props) do f[k] = v end
	return f
end

local function makeLabel(props)
	local l = Instance.new("TextLabel")
	l.BackgroundTransparency = 1
	l.BorderSizePixel = 0
	for k, v in pairs(props) do l[k] = v end
	return l
end

local function addGrad(parent, tSeq, rotation)
	local g = Instance.new("UIGradient")
	g.Transparency = tSeq
	g.Rotation = rotation or 90
	g.Parent = parent
	return g
end

function UIFramework:CreateWindow()
	local old = PlayerGui:FindFirstChild("NullixHub")
	if old then old:Destroy() end

	local C = self.Colors
	local scale = self.Scale
	local isMobile = self.IsMobile

	local gui = Instance.new("ScreenGui")
	gui.Name = "NullixHub"
	gui.ResetOnSpawn = false
	gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	gui.IgnoreGuiInset = true -- Better for mobile
	gui.Parent = PlayerGui
	self.Gui = gui

	-- ══════════════════════════════════════════════════════════
	--  MAIN FRAME CONTAINER (for scaling)
	-- ══════════════════════════════════════════════════════════
	local mainContainer = Instance.new("Frame")
	mainContainer.Name = "MainContainer"
	mainContainer.Size = UDim2.new(1, 0, 1, 0)
	mainContainer.Position = UDim2.new(0, 0, 0, 0)
	mainContainer.BackgroundTransparency = 1
	mainContainer.Parent = gui
	self.MainContainer = mainContainer

	-- ══════════════════════════════════════════════════════════
	--  MAIN FRAME
	-- ══════════════════════════════════════════════════════════
	local baseWidth = 680
	local baseHeight = 480
	local scaledWidth = baseWidth * scale
	local scaledHeight = baseHeight * scale

	local main = Instance.new("Frame")
	main.Name = "Main"
	main.Size = UDim2.new(0, scaledWidth, 0, scaledHeight)
	main.Position = UDim2.new(0.5, -scaledWidth/2, 0.5, -scaledHeight/2)
	main.BackgroundColor3 = C.Bg
	main.BorderSizePixel = 0
	main.ClipsDescendants = true
	main.Parent = mainContainer
	self.Main = main
	self.BaseWidth = baseWidth
	self.BaseHeight = baseHeight
	addCorner(main, CORNER_MAIN)

	-- Add UIScale for proportional scaling
	local uiScale = Instance.new("UIScale")
	uiScale.Scale = scale
	uiScale.Parent = main
	self.UIScale = uiScale

	-- Adjust main size to be base size (UIScale will handle the visual scaling)
	main.Size = UDim2.new(0, baseWidth, 0, baseHeight)
	main.Position = UDim2.new(0.5, 0, 0.5, 0)
	main.AnchorPoint = Vector2.new(0.5, 0.5)

	local mainStroke = addStroke(main, Color3.fromRGB(30, 30, 30), 1, 0)

	-- ══════════════════════════════════════════════════════════
	--  MOBILE TOGGLE BUTTON (hamburger menu style)
	-- ══════════════════════════════════════════════════════════
	if isMobile then
		local toggleBtn = Instance.new("TextButton")
		toggleBtn.Name = "MobileToggle"
		toggleBtn.Size = UDim2.new(0, 50, 0, 50)
		toggleBtn.Position = UDim2.new(1, -60, 0, 40)
		toggleBtn.BackgroundColor3 = C.Panel
		toggleBtn.BorderSizePixel = 0
		toggleBtn.AutoButtonColor = false
		toggleBtn.Text = ""
		toggleBtn.ZIndex = 100
		toggleBtn.Parent = gui
		addCorner(toggleBtn, UDim.new(0, 12))
		addStroke(toggleBtn, C.Border, 1, 0.3)
		self.MobileToggle = toggleBtn

		-- Hamburger lines
		for i = 1, 3 do
			local line = Instance.new("Frame")
			line.Size = UDim2.new(0, 22, 0, 2)
			line.Position = UDim2.new(0.5, -11, 0, 14 + (i - 1) * 8)
			line.BackgroundColor3 = C.Text
			line.BorderSizePixel = 0
			line.ZIndex = 101
			line.Parent = toggleBtn
			addCorner(line, UDim.new(0, 1))
		end

		-- Mobile toggle functionality
		local mobileVisible = true
		toggleBtn.MouseButton1Click:Connect(function()
			mobileVisible = not mobileVisible
			tweenObj(main, TWEEN_MED, {
				Position = mobileVisible and UDim2.new(0.5, 0, 0.5, 0) or UDim2.new(0.5, 0, 1.5, 0)
			})
		end)
	end

	-- ══════════════════════════════════════════════════════════
	--  6-LAYER SHADOW CASCADE
	-- ══════════════════════════════════════════════════════════
	for _, d in ipairs({
		{y=0, s=14, t=0.18},
		{y=2, s=28, t=0.30},
		{y=5, s=50, t=0.45},
		{y=10, s=80, t=0.60},
		{y=18, s=120, t=0.75},
		{y=30, s=180, t=0.92},
	}) do
		local s = Instance.new("ImageLabel")
		s.AnchorPoint = Vector2.new(0.5, 0.5)
		s.Position = UDim2.new(0.5, 0, 0.5, d.y)
		s.Size = UDim2.new(1, d.s, 1, d.s)
		s.BackgroundTransparency = 1
		s.Image = "rbxassetid://6014261993"
		s.ScaleType = Enum.ScaleType.Slice
		s.SliceCenter = Rect.new(49, 49, 450, 450)
		s.ImageColor3 = Color3.new(0, 0, 0)
		s.ImageTransparency = d.t
		s.ZIndex = -1
		s.Parent = main
	end

	-- ══════════════════════════════════════════════════════════
	--  ANIMATED ACCENT LINE (shimmer effect)
	-- ══════════════════════════════════════════════════════════
	local accentLineContainer = Instance.new("Frame")
	accentLineContainer.Size = UDim2.new(0.32, 0, 0, 1)
	accentLineContainer.Position = UDim2.new(0.34, 0, 0, 0)
	accentLineContainer.BackgroundTransparency = 1
	accentLineContainer.BorderSizePixel = 0
	accentLineContainer.ClipsDescendants = true
	accentLineContainer.ZIndex = 14
	accentLineContainer.Parent = main

	local accentLine = Instance.new("Frame")
	accentLine.Size = UDim2.new(1, 0, 1, 0)
	accentLine.BackgroundColor3 = C.Accent
	accentLine.BackgroundTransparency = 0.45
	accentLine.BorderSizePixel = 0
	accentLine.ZIndex = 14
	accentLine.Parent = accentLineContainer

	local accentEdgeGrad = Instance.new("UIGradient")
	accentEdgeGrad.Transparency = NumberSequence.new({
		NumberSequenceKeypoint.new(0, 1),
		NumberSequenceKeypoint.new(0.12, 0),
		NumberSequenceKeypoint.new(0.88, 0),
		NumberSequenceKeypoint.new(1, 1),
	})
	accentEdgeGrad.Parent = accentLine

	-- Shimmer overlay that travels across the accent line
	local shimmer = Instance.new("Frame")
	shimmer.Size = UDim2.new(0.15, 0, 1, 0)
	shimmer.Position = UDim2.new(-0.2, 0, 0, 0)
	shimmer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	shimmer.BackgroundTransparency = 0.3
	shimmer.BorderSizePixel = 0
	shimmer.ZIndex = 15
	shimmer.Parent = accentLineContainer

	local shimmerGrad = Instance.new("UIGradient")
	shimmerGrad.Transparency = NumberSequence.new({
		NumberSequenceKeypoint.new(0, 1),
		NumberSequenceKeypoint.new(0.4, 0),
		NumberSequenceKeypoint.new(0.6, 0),
		NumberSequenceKeypoint.new(1, 1),
	})
	shimmerGrad.Parent = shimmer

	task.spawn(function()
		while shimmer and shimmer.Parent do
			shimmer.Position = UDim2.new(-0.2, 0, 0, 0)
			tweenObj(shimmer, TweenInfo.new(2.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
				Position = UDim2.new(1.05, 0, 0, 0),
			})
			task.wait(6)
		end
	end)

	-- Wide ambient glow under accent
	for _, gd in ipairs({
		{w = 0.5, h = 50, t = 0.97},
		{w = 0.35, h = 22, t = 0.93},
	}) do
		local glow = Instance.new("Frame")
		glow.Size = UDim2.new(gd.w, 0, 0, gd.h)
		glow.Position = UDim2.new(0.5 - gd.w/2, 0, 0, 0)
		glow.BackgroundColor3 = C.Accent
		glow.BackgroundTransparency = gd.t
		glow.BorderSizePixel = 0
		glow.ZIndex = 11
		glow.Parent = main
		addGrad(glow, NumberSequence.new(0, 1), 90)
	end

	-- Top edge highlight
	local topEdge = Instance.new("Frame")
	topEdge.Size = UDim2.new(1, -2, 0, 1)
	topEdge.Position = UDim2.new(0, 1, 0, 1)
	topEdge.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
	topEdge.BackgroundTransparency = 0.5
	topEdge.BorderSizePixel = 0
	topEdge.ZIndex = 13
	topEdge.Parent = main

	-- Noise texture
	local noise = Instance.new("ImageLabel")
	noise.Size = UDim2.new(1, 0, 1, 0)
	noise.BackgroundTransparency = 1
	noise.Image = "rbxassetid://8137261362"
	noise.ScaleType = Enum.ScaleType.Tile
	noise.TileSize = UDim2.new(0, 128, 0, 128)
	noise.ImageTransparency = 0.975
	noise.ImageColor3 = Color3.fromRGB(255, 255, 255)
	noise.ZIndex = 2
	noise.Parent = main

	-- Corner vignette (darkened corners)
	for _, corner in ipairs({
		{ax = 0, ay = 0, pos = UDim2.new(0, 0, 0, 0)},
		{ax = 1, ay = 0, pos = UDim2.new(1, 0, 0, 0)},
		{ax = 0, ay = 1, pos = UDim2.new(0, 0, 1, 0)},
		{ax = 1, ay = 1, pos = UDim2.new(1, 0, 1, 0)},
	}) do
		local v = Instance.new("Frame")
		v.Size = UDim2.new(0.4, 0, 0.4, 0)
		v.AnchorPoint = Vector2.new(corner.ax, corner.ay)
		v.Position = corner.pos
		v.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		v.BackgroundTransparency = 0.92
		v.BorderSizePixel = 0
		v.ZIndex = 1
		v.Parent = main

		local vg = Instance.new("UIGradient")
		local cx = corner.ax == 0 and 0 or 1
		local cy = corner.ay == 0 and 0 or 1
		vg.Transparency = NumberSequence.new({
			NumberSequenceKeypoint.new(0, 0),
			NumberSequenceKeypoint.new(1, 1),
		})
		local angle = math.deg(math.atan2(0.5 - cy, 0.5 - cx))
		vg.Rotation = angle + 90
		vg.Parent = v
	end

	-- ══════════════════════════════════════════════════════════
	--  INTRO ANIMATION (staged reveal)
	-- ══════════════════════════════════════════════════════════
	main.BackgroundTransparency = 1
	mainStroke.Transparency = 1
	topEdge.BackgroundTransparency = 1
	accentLineContainer.BackgroundTransparency = 1
	accentLine.BackgroundTransparency = 1

	local introScale = scale * 0.95
	uiScale.Scale = introScale

	tweenObj(main, TWEEN_INTRO, { BackgroundTransparency = 0 })
	tweenObj(uiScale, TWEEN_INTRO, { Scale = scale })
	
	task.delay(0.1, function()
		tweenObj(mainStroke, TWEEN_MED, { Transparency = 0 })
	end)
	task.delay(0.2, function()
		tweenObj(topEdge, TWEEN_SLOW, { BackgroundTransparency = 0.5 })
	end)
	task.delay(0.35, function()
		tweenObj(accentLine, TWEEN_SLOW, { BackgroundTransparency = 0.45 })
	end)

	-- ══════════════════════════════════════════════════════════
	--  HEADER (48px)
	-- ══════════════════════════════════════════════════════════
	local header = Instance.new("Frame")
	header.Name = "Header"
	header.Size = UDim2.new(1, 0, 0, 48)
	header.Position = UDim2.new(0, 0, 0, 0)
	header.BackgroundColor3 = C.Panel
	header.BorderSizePixel = 0
	header.ZIndex = 5
	header.Parent = main
	self.Header = header
	addCorner(header, CORNER_MAIN)

	local headerFix = Instance.new("Frame")
	headerFix.Size = UDim2.new(1, 0, 0, 14)
	headerFix.Position = UDim2.new(0, 0, 1, -14)
	headerFix.BackgroundColor3 = C.Panel
	headerFix.BorderSizePixel = 0
	headerFix.ZIndex = 5
	headerFix.Parent = header

	-- Header top shine
	local headerShine = Instance.new("Frame")
	headerShine.Size = UDim2.new(1, -2, 0, 1)
	headerShine.Position = UDim2.new(0, 1, 0, 1)
	headerShine.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
	headerShine.BackgroundTransparency = 0.2
	headerShine.BorderSizePixel = 0
	headerShine.ZIndex = 7
	headerShine.Parent = header

	-- Header depth gradient
	local headerDepth = Instance.new("Frame")
	headerDepth.Size = UDim2.new(1, 0, 1, 0)
	headerDepth.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	headerDepth.BackgroundTransparency = 0.987
	headerDepth.BorderSizePixel = 0
	headerDepth.ZIndex = 6
	headerDepth.Parent = header
	addCorner(headerDepth, CORNER_MAIN)
	addGrad(headerDepth, NumberSequence.new(0, 1), 90)

	-- Header bottom border
	local headerBorder = Instance.new("Frame")
	headerBorder.Size = UDim2.new(1, 0, 0, 1)
	headerBorder.Position = UDim2.new(0, 0, 1, 0)
	headerBorder.BackgroundColor3 = C.Border
	headerBorder.BorderSizePixel = 0
	headerBorder.ZIndex = 6
	headerBorder.Parent = header

	-- ══════════════════════════════════════════════════════════
	--  WINDOW CONTROLS (with ripple on click)
	-- ══════════════════════════════════════════════════════════
	local controlsWrap = Instance.new("Frame")
	controlsWrap.Size = UDim2.new(0, 76, 0, 48)
	controlsWrap.Position = UDim2.new(0, 16, 0, 0)
	controlsWrap.BackgroundTransparency = 1
	controlsWrap.ZIndex = 7
	controlsWrap.Parent = header

	local controlsLayout = Instance.new("UIListLayout")
	controlsLayout.FillDirection = Enum.FillDirection.Horizontal
	controlsLayout.Padding = UDim.new(0, 8)
	controlsLayout.VerticalAlignment = Enum.VerticalAlignment.Center
	controlsLayout.SortOrder = Enum.SortOrder.LayoutOrder
	controlsLayout.Parent = controlsWrap

	local function makeDot(color, order)
		local wrap = Instance.new("Frame")
		wrap.Size = UDim2.new(0, 12, 0, 12)
		wrap.BackgroundTransparency = 1
		wrap.LayoutOrder = order
		wrap.ZIndex = 8
		wrap.Parent = controlsWrap

		local dot = Instance.new("TextButton")
		dot.Size = UDim2.new(1, 0, 1, 0)
		dot.AnchorPoint = Vector2.new(0.5, 0.5)
		dot.Position = UDim2.new(0.5, 0, 0.5, 0)
		dot.BackgroundColor3 = color
		dot.BorderSizePixel = 0
		dot.AutoButtonColor = false
		dot.Text = ""
		dot.ZIndex = 10
		dot.Parent = wrap
		addCorner(dot, UDim.new(1, 0))

		-- Glow ring
		local glow = Instance.new("Frame")
		glow.Size = UDim2.new(1, 10, 1, 10)
		glow.AnchorPoint = Vector2.new(0.5, 0.5)
		glow.Position = UDim2.new(0.5, 0, 0.5, 0)
		glow.BackgroundColor3 = color
		glow.BackgroundTransparency = 1
		glow.BorderSizePixel = 0
		glow.ZIndex = 9
		glow.Parent = wrap
		addCorner(glow, UDim.new(1, 0))

		-- Inner specular highlight
		local spec = Instance.new("Frame")
		spec.Size = UDim2.new(0, 4, 0, 4)
		spec.Position = UDim2.new(0, 2, 0, 2)
		spec.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		spec.BackgroundTransparency = 0.7
		spec.BorderSizePixel = 0
		spec.ZIndex = 11
		spec.Parent = dot
		addCorner(spec, UDim.new(1, 0))

		return dot, glow, spec
	end

	local closeBtn, closeGlow, closeSpec = makeDot(C.Danger, 1)
	local minBtn, minGlow, minSpec = makeDot(C.Warn, 2)

	closeBtn.BackgroundTransparency = 0.5
	minBtn.BackgroundTransparency = 0.5
	closeSpec.BackgroundTransparency = 1
	minSpec.BackgroundTransparency = 1

	controlsWrap.MouseEnter:Connect(function()
		tweenObj(closeBtn, TWEEN_FAST, { BackgroundTransparency = 0 })
		tweenObj(minBtn, TWEEN_FAST, { BackgroundTransparency = 0 })
		tweenObj(closeGlow, TWEEN_FAST, { BackgroundTransparency = 0.7 })
		tweenObj(minGlow, TWEEN_FAST, { BackgroundTransparency = 0.7 })
		tweenObj(closeSpec, TWEEN_FAST, { BackgroundTransparency = 0.7 })
		tweenObj(minSpec, TWEEN_FAST, { BackgroundTransparency = 0.7 })
	end)
	controlsWrap.MouseLeave:Connect(function()
		tweenObj(closeBtn, TWEEN_FAST, { BackgroundTransparency = 0.5 })
		tweenObj(minBtn, TWEEN_FAST, { BackgroundTransparency = 0.5 })
		tweenObj(closeGlow, TWEEN_FAST, { BackgroundTransparency = 1 })
		tweenObj(minGlow, TWEEN_FAST, { BackgroundTransparency = 1 })
		tweenObj(closeSpec, TWEEN_FAST, { BackgroundTransparency = 1 })
		tweenObj(minSpec, TWEEN_FAST, { BackgroundTransparency = 1 })
	end)

	closeBtn.MouseEnter:Connect(function()
		tweenObj(closeBtn, TWEEN_MICRO, { Size = UDim2.new(1, 2, 1, 2) })
	end)
	closeBtn.MouseLeave:Connect(function()
		tweenObj(closeBtn, TWEEN_MICRO, { Size = UDim2.new(1, 0, 1, 0) })
	end)
	minBtn.MouseEnter:Connect(function()
		tweenObj(minBtn, TWEEN_MICRO, { Size = UDim2.new(1, 2, 1, 2) })
	end)
	minBtn.MouseLeave:Connect(function()
		tweenObj(minBtn, TWEEN_MICRO, { Size = UDim2.new(1, 0, 1, 0) })
	end)

	-- Click ripple effect
	local function clickRipple(btn)
		tweenObj(btn, TweenInfo.new(0.05, Enum.EasingStyle.Quint), { Size = UDim2.new(1, -2, 1, -2) })
		task.delay(0.05, function()
			tweenObj(btn, TweenInfo.new(0.15, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Size = UDim2.new(1, 0, 1, 0) })
		end)
	end

	closeBtn.MouseButton1Click:Connect(function()
		clickRipple(closeBtn)
		task.wait(0.1)
		for _, tab in pairs(self.Tabs) do
			if tab.OnClose then pcall(tab.OnClose) end
		end
		tweenObj(uiScale, TweenInfo.new(0.25, Enum.EasingStyle.Back, Enum.EasingDirection.In), {
			Scale = scale * 0.95,
		})
		tweenObj(main, TweenInfo.new(0.25, Enum.EasingStyle.Back, Enum.EasingDirection.In), {
			BackgroundTransparency = 1,
		})
		tweenObj(mainStroke, TweenInfo.new(0.12), { Transparency = 1 })
		task.wait(0.25)
		gui:Destroy()
	end)

	local minimized = false
	local fullSize = UDim2.new(0, baseWidth, 0, baseHeight)
	local minSize = UDim2.new(0, baseWidth, 0, 48)
	minBtn.MouseButton1Click:Connect(function()
		clickRipple(minBtn)
		minimized = not minimized
		tweenObj(main, TWEEN_MED, { Size = minimized and minSize or fullSize })
	end)

	-- ══════════════════════════════════════════════════════════
	--  TITLE (centered, with animated breathing logo)
	-- ══════════════════════════════════════════════════════════
	local titleWrap = Instance.new("Frame")
	titleWrap.Size = UDim2.new(0, 240, 0, 48)
	titleWrap.AnchorPoint = Vector2.new(0.5, 0)
	titleWrap.Position = UDim2.new(0.5, 0, 0, 0)
	titleWrap.BackgroundTransparency = 1
	titleWrap.ZIndex = 7
	titleWrap.Parent = header

	-- Diamond logo mark (breathing animation)
	local logoDiamond = Instance.new("Frame")
	logoDiamond.Size = UDim2.new(0, 7, 0, 7)
	logoDiamond.AnchorPoint = Vector2.new(0.5, 0.5)
	logoDiamond.Position = UDim2.new(0.5, -56, 0.5, 0)
	logoDiamond.BackgroundColor3 = C.Accent
	logoDiamond.BackgroundTransparency = 0.2
	logoDiamond.Rotation = 45
	logoDiamond.BorderSizePixel = 0
	logoDiamond.ZIndex = 9
	logoDiamond.Parent = titleWrap

	-- Diamond outer glow
	local logoGlow = Instance.new("Frame")
	logoGlow.Size = UDim2.new(0, 14, 0, 14)
	logoGlow.AnchorPoint = Vector2.new(0.5, 0.5)
	logoGlow.Position = UDim2.new(0.5, -56, 0.5, 0)
	logoGlow.BackgroundColor3 = C.Accent
	logoGlow.BackgroundTransparency = 0.9
	logoGlow.Rotation = 45
	logoGlow.BorderSizePixel = 0
	logoGlow.ZIndex = 8
	logoGlow.Parent = titleWrap

	-- Breathing animation
	tweenObj(logoGlow, TWEEN_BREATH, {
		BackgroundTransparency = 0.75,
		Size = UDim2.new(0, 18, 0, 18),
	})
	tweenObj(logoDiamond, TWEEN_BREATH, {
		BackgroundTransparency = 0.05,
	})

	-- Title text
	local titleLabel = makeLabel({
		Size = UDim2.new(1, 0, 1, 0),
		AnchorPoint = Vector2.new(0.5, 0),
		Position = UDim2.new(0.5, 8, 0, 0),
		Font = Enum.Font.GothamBlack,
		Text = "N U L L I X",
		TextColor3 = C.Text,
		TextSize = 13,
		TextTransparency = 0.03,
		ZIndex = 9,
		Parent = titleWrap,
	})

	-- Ghost glow text
	makeLabel({
		Size = UDim2.new(1, 6, 1, 6),
		AnchorPoint = Vector2.new(0.5, 0.5),
		Position = UDim2.new(0.5, 8, 0.5, 0),
		Font = Enum.Font.GothamBlack,
		Text = "N U L L I X",
		TextColor3 = C.Accent,
		TextSize = 13,
		TextTransparency = 0.9,
		ZIndex = 8,
		Parent = titleWrap,
	})

	-- Version pill
	local verPill = Instance.new("Frame")
	verPill.Size = UDim2.new(0, 40, 0, 18)
	verPill.Position = UDim2.new(1, -58, 0.5, -9)
	verPill.BackgroundColor3 = C.Slot
	verPill.BorderSizePixel = 0
	verPill.ZIndex = 7
	verPill.Parent = header
	addCorner(verPill, CORNER_PILL)

	local verStroke = addStroke(verPill, C.Border, 1, 0.3)

	-- Version inner gradient
	local verGrad = Instance.new("UIGradient")
	verGrad.Color = ColorSequence.new(Color3.fromRGB(28, 28, 28), Color3.fromRGB(20, 20, 20))
	verGrad.Rotation = 90
	verGrad.Parent = verPill

	makeLabel({
		Size = UDim2.new(1, 0, 1, 0),
		Font = Enum.Font.GothamBold,
		Text = "v4.0",
		TextColor3 = C.TextMuted,
		TextSize = 9,
		ZIndex = 8,
		Parent = verPill,
	})

	-- ══════════════════════════════════════════════════════════
	--  SIDEBAR (165px wide)
	-- ══════════════════════════════════════════════════════════
	local sidebar = Instance.new("Frame")
	sidebar.Name = "Sidebar"
	sidebar.Size = UDim2.new(0, 165, 1, -49)
	sidebar.Position = UDim2.new(0, 0, 0, 49)
	sidebar.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
	sidebar.BorderSizePixel = 0
	sidebar.ClipsDescendants = true
	sidebar.Parent = main
	self.Sidebar = sidebar

	-- Sidebar gradient
	local sbGrad = Instance.new("UIGradient")
	sbGrad.Color = ColorSequence.new(Color3.fromRGB(20, 20, 20), Color3.fromRGB(13, 13, 13))
	sbGrad.Rotation = 90
	sbGrad.Parent = sidebar

	-- Right divider
	local sbDivider = Instance.new("Frame")
	sbDivider.Size = UDim2.new(0, 1, 1, 0)
	sbDivider.Position = UDim2.new(1, 0, 0, 0)
	sbDivider.BackgroundColor3 = C.Border
	sbDivider.BorderSizePixel = 0
	sbDivider.Parent = sidebar

	-- Right edge inner shadow
	local sbEdgeShadow = Instance.new("Frame")
	sbEdgeShadow.Size = UDim2.new(0, 40, 1, 0)
	sbEdgeShadow.Position = UDim2.new(1, -40, 0, 0)
	sbEdgeShadow.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	sbEdgeShadow.BackgroundTransparency = 0.88
	sbEdgeShadow.BorderSizePixel = 0
	sbEdgeShadow.ZIndex = 1
	sbEdgeShadow.Parent = sidebar
	addGrad(sbEdgeShadow, NumberSequence.new(1, 0), 0)

	-- ═══ User profile area ═══
	local profileArea = Instance.new("Frame")
	profileArea.Size = UDim2.new(1, 0, 0, 55)
	profileArea.Position = UDim2.new(0, 0, 0, 0)
	profileArea.BackgroundTransparency = 1
	profileArea.BorderSizePixel = 0
	profileArea.ZIndex = 3
	profileArea.Parent = sidebar

	-- Profile avatar
	local avatarFrame = Instance.new("Frame")
	avatarFrame.Size = UDim2.new(0, 28, 0, 28)
	avatarFrame.Position = UDim2.new(0, 12, 0, 12)
	avatarFrame.BackgroundColor3 = C.Slot
	avatarFrame.BorderSizePixel = 0
	avatarFrame.ZIndex = 4
	avatarFrame.Parent = profileArea
	addCorner(avatarFrame, UDim.new(1, 0))
	addStroke(avatarFrame, C.Border, 1, 0.3)

	local avatarImg = Instance.new("ImageLabel")
	avatarImg.Size = UDim2.new(1, -2, 1, -2)
	avatarImg.Position = UDim2.new(0, 1, 0, 1)
	avatarImg.BackgroundTransparency = 1
	avatarImg.ZIndex = 5
	avatarImg.Parent = avatarFrame
	addCorner(avatarImg, UDim.new(1, 0))

	pcall(function()
		avatarImg.Image = Players:GetUserThumbnailAsync(
			LocalPlayer.UserId,
			Enum.ThumbnailType.HeadShot,
			Enum.ThumbnailSize.Size48x48
		)
	end)

	-- Online dot on avatar
	local onlineDot = Instance.new("Frame")
	onlineDot.Size = UDim2.new(0, 8, 0, 8)
	onlineDot.Position = UDim2.new(1, -4, 1, -4)
	onlineDot.BackgroundColor3 = C.Good
	onlineDot.BorderSizePixel = 0
	onlineDot.ZIndex = 6
	onlineDot.Parent = avatarFrame
	addCorner(onlineDot, UDim.new(1, 0))
	addStroke(onlineDot, C.Panel, 2, 0)

	-- Username
	local usernameLabel = makeLabel({
		Size = UDim2.new(1, -52, 0, 14),
		Position = UDim2.new(0, 46, 0, 13),
		Font = Enum.Font.GothamBold,
		Text = LocalPlayer.DisplayName or LocalPlayer.Name,
		TextColor3 = C.Text,
		TextSize = 11,
		TextXAlignment = Enum.TextXAlignment.Left,
		TextTruncate = Enum.TextTruncate.AtEnd,
		ZIndex = 4,
		Parent = profileArea,
	})

	-- Handle
	local handleLabel = makeLabel({
		Size = UDim2.new(1, -52, 0, 12),
		Position = UDim2.new(0, 46, 0, 28),
		Font = Enum.Font.Gotham,
		Text = "@" .. LocalPlayer.Name,
		TextColor3 = C.TextMuted,
		TextSize = 9,
		TextXAlignment = Enum.TextXAlignment.Left,
		TextTruncate = Enum.TextTruncate.AtEnd,
		ZIndex = 4,
		Parent = profileArea,
	})

	-- Profile separator
	local profileSep = Instance.new("Frame")
	profileSep.Size = UDim2.new(1, -24, 0, 1)
	profileSep.Position = UDim2.new(0, 12, 1, -1)
	profileSep.BackgroundColor3 = C.Border
	profileSep.BackgroundTransparency = 0.3
	profileSep.BorderSizePixel = 0
	profileSep.ZIndex = 3
	profileSep.Parent = profileArea

	-- ═══ Section label ═══
	local sectionLabel = makeLabel({
		Size = UDim2.new(1, -24, 0, 24),
		Position = UDim2.new(0, 12, 0, 58),
		Font = Enum.Font.GothamBold,
		Text = "— TABS",
		TextColor3 = C.TextMuted,
		TextSize = 9,
		TextXAlignment = Enum.TextXAlignment.Left,
		TextTransparency = 0.15,
		ZIndex = 3,
		Parent = sidebar,
	})

	-- ═══ Tab scroll ═══
	local tabScroll = Instance.new("ScrollingFrame")
	tabScroll.Name = "TabList"
	tabScroll.Size = UDim2.new(1, 0, 1, -134)
	tabScroll.Position = UDim2.new(0, 0, 0, 82)
	tabScroll.BackgroundTransparency = 1
	tabScroll.BorderSizePixel = 0
	tabScroll.ScrollBarThickness = isMobile and 4 or 0 -- Show scrollbar on mobile
	tabScroll.ScrollBarImageColor3 = C.AccentDim
	tabScroll.AutomaticCanvasSize = Enum.AutomaticSize.Y
	tabScroll.CanvasSize = UDim2.new(0, 0, 0, 0)
	tabScroll.ScrollingDirection = Enum.ScrollingDirection.Y
	tabScroll.ZIndex = 3
	tabScroll.Parent = sidebar
	self.TabScroll = tabScroll

	local tabLayout = Instance.new("UIListLayout")
	tabLayout.FillDirection = Enum.FillDirection.Vertical
	tabLayout.SortOrder = Enum.SortOrder.LayoutOrder
	tabLayout.Padding = UDim.new(0, 1)
	tabLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	tabLayout.Parent = tabScroll

	addPadding(tabScroll, 2, 8, 8, 8)

	-- ═══ Sidebar footer ═══
	local sbFooter = Instance.new("Frame")
	sbFooter.Size = UDim2.new(1, 0, 0, 52)
	sbFooter.Position = UDim2.new(0, 0, 1, -52)
	sbFooter.BackgroundTransparency = 1
	sbFooter.BorderSizePixel = 0
	sbFooter.ZIndex = 3
	sbFooter.Parent = sidebar

	-- Footer top line
	local ftLine = Instance.new("Frame")
	ftLine.Size = UDim2.new(1, -24, 0, 1)
	ftLine.Position = UDim2.new(0, 12, 0, 0)
	ftLine.BackgroundColor3 = C.Border
	ftLine.BackgroundTransparency = 0.3
	ftLine.BorderSizePixel = 0
	ftLine.Parent = sbFooter

	-- Status row
	local statusRow = Instance.new("Frame")
	statusRow.Size = UDim2.new(1, -24, 0, 18)
	statusRow.Position = UDim2.new(0, 12, 0, 10)
	statusRow.BackgroundTransparency = 1
	statusRow.ZIndex = 3
	statusRow.Parent = sbFooter

	-- Animated status dot
	local stDotWrap = Instance.new("Frame")
	stDotWrap.Size = UDim2.new(0, 18, 0, 18)
	stDotWrap.Position = UDim2.new(0, 0, 0, 0)
	stDotWrap.BackgroundTransparency = 1
	stDotWrap.ZIndex = 3
	stDotWrap.Parent = statusRow

	local stDot = Instance.new("Frame")
	stDot.Size = UDim2.new(0, 6, 0, 6)
	stDot.AnchorPoint = Vector2.new(0.5, 0.5)
	stDot.Position = UDim2.new(0.5, 0, 0.5, 0)
	stDot.BackgroundColor3 = C.Good
	stDot.BorderSizePixel = 0
	stDot.ZIndex = 5
	stDot.Parent = stDotWrap
	addCorner(stDot, UDim.new(1, 0))

	local stPulse = Instance.new("Frame")
	stPulse.Size = UDim2.new(0, 6, 0, 6)
	stPulse.AnchorPoint = Vector2.new(0.5, 0.5)
	stPulse.Position = UDim2.new(0.5, 0, 0.5, 0)
	stPulse.BackgroundColor3 = C.Good
	stPulse.BackgroundTransparency = 0.4
	stPulse.BorderSizePixel = 0
	stPulse.ZIndex = 4
	stPulse.Parent = stDotWrap
	addCorner(stPulse, UDim.new(1, 0))

	task.spawn(function()
		while stPulse and stPulse.Parent do
			tweenObj(stPulse, TweenInfo.new(1.8, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
				Size = UDim2.new(0, 18, 0, 18),
				BackgroundTransparency = 1,
			})
			task.wait(1.8)
			stPulse.Size = UDim2.new(0, 6, 0, 6)
			stPulse.BackgroundTransparency = 0.4
			task.wait(1)
		end
	end)

	makeLabel({
		Size = UDim2.new(0, 44, 1, 0),
		Position = UDim2.new(0, 18, 0, 0),
		Font = Enum.Font.GothamMedium,
		Text = "Active",
		TextColor3 = C.Good,
		TextSize = 10,
		TextTransparency = 0.25,
		TextXAlignment = Enum.TextXAlignment.Left,
		ZIndex = 3,
		Parent = statusRow,
	})

	makeLabel({
		Size = UDim2.new(0, 8, 1, 0),
		Position = UDim2.new(0, 62, 0, 0),
		Font = Enum.Font.GothamBold,
		Text = "·",
		TextColor3 = C.TextMuted,
		TextSize = 12,
		TextTransparency = 0.3,
		ZIndex = 3,
		Parent = statusRow,
	})

	local pingLabel = makeLabel({
		Size = UDim2.new(0, 50, 1, 0),
		Position = UDim2.new(0, 72, 0, 0),
		Font = Enum.Font.GothamMedium,
		Text = "—ms",
		TextColor3 = C.TextMuted,
		TextSize = 9,
		TextTransparency = 0.15,
		TextXAlignment = Enum.TextXAlignment.Left,
		ZIndex = 3,
		Parent = statusRow,
	})

	task.spawn(function()
		while pingLabel and pingLabel.Parent do
			pcall(function()
				local p = math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
				pingLabel.Text = p .. "ms"
			end)
			task.wait(2)
		end
	end)

	-- Info row 2 (time + FPS)
	local infoRow2 = Instance.new("Frame")
	infoRow2.Size = UDim2.new(1, -24, 0, 14)
	infoRow2.Position = UDim2.new(0, 12, 0, 32)
	infoRow2.BackgroundTransparency = 1
	infoRow2.ZIndex = 3
	infoRow2.Parent = sbFooter

	local timeLabel = makeLabel({
		Size = UDim2.new(0, 40, 1, 0),
		Position = UDim2.new(0, 0, 0, 0),
		Font = Enum.Font.Gotham,
		Text = "",
		TextColor3 = C.TextMuted,
		TextSize = 9,
		TextTransparency = 0.3,
		TextXAlignment = Enum.TextXAlignment.Left,
		ZIndex = 3,
		Parent = infoRow2,
	})

	local fpsLabel = makeLabel({
		Size = UDim2.new(0, 50, 1, 0),
		Position = UDim2.new(1, -50, 0, 0),
		Font = Enum.Font.Gotham,
		Text = "",
		TextColor3 = C.TextMuted,
		TextSize = 9,
		TextTransparency = 0.3,
		TextXAlignment = Enum.TextXAlignment.Right,
		ZIndex = 3,
		Parent = infoRow2,
	})

	task.spawn(function()
		while timeLabel and timeLabel.Parent do
			timeLabel.Text = os.date("%H:%M")
			task.wait(10)
		end
	end)

	-- FPS counter
	local lastTick = tick()
	local frameCount = 0
	RunService.RenderStepped:Connect(function()
		frameCount = frameCount + 1
		if tick() - lastTick >= 1 then
			if fpsLabel and fpsLabel.Parent then
				fpsLabel.Text = frameCount .. " fps"
			end
			frameCount = 0
			lastTick = tick()
		end
	end)

	-- ══════════════════════════════════════════════════════════
	--  CONTENT AREA
	-- ══════════════════════════════════════════════════════════
	local content = Instance.new("Frame")
	content.Name = "ContentContainer"
	content.Size = UDim2.new(1, -166, 1, -49)
	content.Position = UDim2.new(0, 166, 0, 49)
	content.BackgroundColor3 = C.Bg
	content.BorderSizePixel = 0
	content.ClipsDescendants = true
	content.Parent = main
	self.ContentContainer = content

	-- Inner shadow top
	local cst = Instance.new("Frame")
	cst.Size = UDim2.new(1, 0, 0, 40)
	cst.Position = UDim2.new(0, 0, 0, 0)
	cst.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	cst.BackgroundTransparency = 0.86
	cst.BorderSizePixel = 0
	cst.ZIndex = 3
	cst.Parent = content
	addGrad(cst, NumberSequence.new(0, 1), 90)

	-- Inner shadow left
	local csl = Instance.new("Frame")
	csl.Size = UDim2.new(0, 25, 1, 0)
	csl.Position = UDim2.new(0, 0, 0, 0)
	csl.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	csl.BackgroundTransparency = 0.9
	csl.BorderSizePixel = 0
	csl.ZIndex = 3
	csl.Parent = content
	addGrad(csl, NumberSequence.new(0, 1), 0)

	-- ═══ Content header ═══
	local cHeader = Instance.new("Frame")
	cHeader.Size = UDim2.new(1, 0, 0, 48)
	cHeader.Position = UDim2.new(0, 0, 0, 0)
	cHeader.BackgroundTransparency = 1
	cHeader.BorderSizePixel = 0
	cHeader.ZIndex = 4
	cHeader.Parent = content

	-- Breadcrumb: nullix / tabname
	local bcNullixLabel = makeLabel({
		Size = UDim2.new(0, 44, 1, 0),
		Position = UDim2.new(0, 18, 0, 0),
		Font = Enum.Font.Gotham,
		Text = "nullix",
		TextColor3 = C.TextMuted,
		TextSize = 11,
		TextXAlignment = Enum.TextXAlignment.Left,
		TextTransparency = 0.3,
		ZIndex = 5,
		Parent = cHeader,
	})

	local bcSlash = makeLabel({
		Size = UDim2.new(0, 12, 1, 0),
		Position = UDim2.new(0, 60, 0, 0),
		Font = Enum.Font.Gotham,
		Text = "/",
		TextColor3 = C.TextMuted,
		TextSize = 11,
		TextTransparency = 0.5,
		ZIndex = 5,
		Parent = cHeader,
	})

	local contentTitle = makeLabel({
		Name = "ContentTitle",
		Size = UDim2.new(1, -100, 1, 0),
		Position = UDim2.new(0, 74, 0, 0),
		Font = Enum.Font.GothamBold,
		Text = "",
		TextColor3 = C.Text,
		TextSize = 12,
		TextXAlignment = Enum.TextXAlignment.Left,
		TextTransparency = 0.1,
		ZIndex = 5,
		Parent = cHeader,
	})
	self.ContentTitle = contentTitle

	-- Tab counter badge
	local tabBadge = Instance.new("Frame")
	tabBadge.Size = UDim2.new(0, 28, 0, 20)
	tabBadge.AnchorPoint = Vector2.new(1, 0.5)
	tabBadge.Position = UDim2.new(1, -16, 0.5, 0)
	tabBadge.BackgroundColor3 = C.Slot
	tabBadge.BorderSizePixel = 0
	tabBadge.ZIndex = 5
	tabBadge.Parent = cHeader
	addCorner(tabBadge, CORNER_XS)
	addStroke(tabBadge, C.Border, 1, 0.5)

	-- Inner gradient for badge
	local tbGrad = Instance.new("UIGradient")
	tbGrad.Color = ColorSequence.new(Color3.fromRGB(28, 28, 28), Color3.fromRGB(22, 22, 22))
	tbGrad.Rotation = 90
	tbGrad.Parent = tabBadge

	local tabCountLabel = makeLabel({
		Size = UDim2.new(1, 0, 1, 0),
		Font = Enum.Font.GothamBold,
		Text = "0",
		TextColor3 = C.TextMuted,
		TextSize = 9,
		ZIndex = 6,
		Parent = tabBadge,
	})
	self.TabCountLabel = tabCountLabel

	-- Header underline
	local chLine = Instance.new("Frame")
	chLine.Size = UDim2.new(1, -32, 0, 1)
	chLine.Position = UDim2.new(0, 16, 1, -1)
	chLine.BackgroundColor3 = C.Border
	chLine.BorderSizePixel = 0
	chLine.ZIndex = 4
	chLine.Parent = cHeader

	local chlGrad = Instance.new("UIGradient")
	chlGrad.Transparency = NumberSequence.new({
		NumberSequenceKeypoint.new(0, 0),
		NumberSequenceKeypoint.new(0.55, 0),
		NumberSequenceKeypoint.new(1, 1),
	})
	chlGrad.Parent = chLine

	-- ═══ Content body + fade wrapper ═══
	local cBody = Instance.new("Frame")
	cBody.Name = "ContentBody"
	cBody.Size = UDim2.new(1, 0, 1, -49)
	cBody.Position = UDim2.new(0, 0, 0, 49)
	cBody.BackgroundTransparency = 1
	cBody.BorderSizePixel = 0
	cBody.ClipsDescendants = true
	cBody.Parent = content
	self.ContentBody = cBody

	local fadeWrap = Instance.new("CanvasGroup")
	fadeWrap.Name = "FadeWrapper"
	fadeWrap.Size = UDim2.new(1, 0, 1, 0)
	fadeWrap.BackgroundTransparency = 1
	fadeWrap.BorderSizePixel = 0
	fadeWrap.GroupTransparency = 0
	fadeWrap.Parent = cBody
	self.ContentFadeWrapper = fadeWrap

	-- ══════════════════════════════════════════════════════════
	--  RESIZE GRIP (hidden on mobile)
	-- ══════════════════════════════════════════════════════════
	if not isMobile then
		local grip = Instance.new("Frame")
		grip.Size = UDim2.new(0, 12, 0, 12)
		grip.Position = UDim2.new(1, -16, 1, -16)
		grip.BackgroundTransparency = 1
		grip.ZIndex = 10
		grip.Parent = main

		for r = 0, 2 do
			for c = 0, 2 do
				if c + r >= 2 then
					local d = Instance.new("Frame")
					d.Size = UDim2.new(0, 2, 0, 2)
					d.Position = UDim2.new(0, c * 4, 0, r * 4)
					d.BackgroundColor3 = C.TextMuted
					d.BackgroundTransparency = 0.4
					d.BorderSizePixel = 0
					d.ZIndex = 10
					d.Parent = grip
					addCorner(d, UDim.new(1, 0))
				end
			end
		end
	end

	-- ══════════════════════════════════════════════════════════
	--  DRAG (works for both mouse and touch)
	-- ══════════════════════════════════════════════════════════
	local dragging, dragStart, startPos

	header.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = main.Position
		end
	end)
	header.InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = false
		end
	end)
	UserInputService.InputChanged:Connect(function(input)
		if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
			local d = input.Position - dragStart
			-- Account for scale when dragging
			local scaledDelta = d / scale
			main.Position = UDim2.new(
				startPos.X.Scale, 
				startPos.X.Offset + scaledDelta.X * scale, 
				startPos.Y.Scale, 
				startPos.Y.Offset + scaledDelta.Y * scale
			)
		end
	end)

	-- ══════════════════════════════════════════════════════════
	--  F9 TOGGLE (Desktop only)
	-- ══════════════════════════════════════════════════════════
	if not isMobile then
		UserInputService.InputBegan:Connect(function(input, gpe)
			if not gpe and input.KeyCode == Enum.KeyCode.F9 then
				if main.Visible then
					tweenObj(uiScale, TweenInfo.new(0.2, Enum.EasingStyle.Back, Enum.EasingDirection.In), {
						Scale = scale * 0.95,
					})
					tweenObj(main, TweenInfo.new(0.2, Enum.EasingStyle.Back, Enum.EasingDirection.In), {
						BackgroundTransparency = 0.6,
					})
					task.wait(0.2)
					main.Visible = false
					main.BackgroundTransparency = 0
					uiScale.Scale = scale
				else
					main.Visible = true
					main.BackgroundTransparency = 0.6
					uiScale.Scale = scale * 0.95
					tweenObj(uiScale, TweenInfo.new(0.35, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
						Scale = scale,
					})
					tweenObj(main, TweenInfo.new(0.35, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
						BackgroundTransparency = 0,
					})
				end
			end
		end)
	end

	-- ══════════════════════════════════════════════════════════
	--  SCREEN SIZE CHANGE LISTENER (for rotation/resize)
	-- ══════════════════════════════════════════════════════════
	workspace.CurrentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(function()
		local newScale = calculateScale()
		self.Scale = newScale
		tweenObj(uiScale, TWEEN_MED, { Scale = newScale })
	end)

	return self
end

-- ══════════════════════════════════════════════════════════
--  ADD TAB
-- ══════════════════════════════════════════════════════════
function UIFramework:AddTab(name, icon)
	local C = self.Colors
	icon = icon or ""

	if self.Tabs[name] then return self.Tabs[name].Content end

	self.TabOrder = self.TabOrder + 1
	if self.TabCountLabel then
		self.TabCountLabel.Text = tostring(self.TabOrder)
	end

	-- Larger touch targets on mobile
	local tabHeight = self.IsMobile and 44 or 38

	local btn = Instance.new("TextButton")
	btn.Name = name
	btn.Size = UDim2.new(1, 0, 0, tabHeight)
	btn.BackgroundColor3 = C.Slot
	btn.BackgroundTransparency = 1
	btn.BorderSizePixel = 0
	btn.AutoButtonColor = false
	btn.Text = ""
	btn.LayoutOrder = self.TabOrder
	btn.ZIndex = 4
	btn.Parent = self.TabScroll
	addCorner(btn, CORNER_SM)

	-- Active indicator bar
	local indicator = Instance.new("Frame")
	indicator.Size = UDim2.new(0, 2, 0, 0)
	indicator.Position = UDim2.new(0, 0, 0.5, 0)
	indicator.AnchorPoint = Vector2.new(0, 0.5)
	indicator.BackgroundColor3 = C.Accent
	indicator.BackgroundTransparency = 0.3
	indicator.BorderSizePixel = 0
	indicator.ZIndex = 7
	indicator.Parent = btn
	addCorner(indicator, UDim.new(0, 1))

	-- Indicator glow
	local indicatorGlow = Instance.new("Frame")
	indicatorGlow.Size = UDim2.new(0, 10, 0, 0)
	indicatorGlow.Position = UDim2.new(0, 0, 0.5, 0)
	indicatorGlow.AnchorPoint = Vector2.new(0, 0.5)
	indicatorGlow.BackgroundColor3 = C.Accent
	indicatorGlow.BackgroundTransparency = 1
	indicatorGlow.BorderSizePixel = 0
	indicatorGlow.ZIndex = 5
	indicatorGlow.Parent = btn
	addCorner(indicatorGlow, UDim.new(0, 5))

	-- Tab number
	local tabNum = makeLabel({
		Size = UDim2.new(0, 18, 0, 18),
		Position = UDim2.new(0, 10, 0.5, -9),
		Font = Enum.Font.GothamBold,
		Text = string.format("%02d", self.TabOrder),
		TextColor3 = C.TextMuted,
		TextSize = 8,
		TextTransparency = 0.4,
		ZIndex = 6,
		Parent = btn,
	})

	-- Tiny dot separator
	local tDot = Instance.new("Frame")
	tDot.Size = UDim2.new(0, 3, 0, 3)
	tDot.Position = UDim2.new(0, 30, 0.5, -1)
	tDot.BackgroundColor3 = C.TextMuted
	tDot.BackgroundTransparency = 0.5
	tDot.BorderSizePixel = 0
	tDot.ZIndex = 6
	tDot.Parent = btn
	addCorner(tDot, UDim.new(1, 0))

	-- Tab label
	local tabLabel = makeLabel({
		Size = UDim2.new(1, -56, 1, 0),
		Position = UDim2.new(0, 38, 0, 0),
		Font = Enum.Font.GothamMedium,
		Text = name,
		TextColor3 = C.TextMuted,
		TextSize = 11,
		TextXAlignment = Enum.TextXAlignment.Left,
		TextTruncate = Enum.TextTruncate.AtEnd,
		ZIndex = 6,
		Parent = btn,
	})

	-- Arrow
	local tabArrow = makeLabel({
		Size = UDim2.new(0, 14, 1, 0),
		Position = UDim2.new(1, -20, 0, 0),
		Font = Enum.Font.GothamBold,
		Text = "›",
		TextColor3 = C.TextMuted,
		TextSize = 14,
		TextTransparency = 1,
		ZIndex = 6,
		Parent = btn,
	})

	-- Hover overlay
	local hoverOv = Instance.new("Frame")
	hoverOv.Size = UDim2.new(1, 0, 1, 0)
	hoverOv.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	hoverOv.BackgroundTransparency = 1
	hoverOv.BorderSizePixel = 0
	hoverOv.ZIndex = 4
	hoverOv.Parent = btn
	addCorner(hoverOv, CORNER_SM)

	-- Active background gradient overlay
	local activeGrad = Instance.new("Frame")
	activeGrad.Size = UDim2.new(1, 0, 1, 0)
	activeGrad.BackgroundColor3 = C.Accent
	activeGrad.BackgroundTransparency = 1
	activeGrad.BorderSizePixel = 0
	activeGrad.ZIndex = 4
	activeGrad.Parent = btn
	addCorner(activeGrad, CORNER_SM)

	local agGrad = Instance.new("UIGradient")
	agGrad.Transparency = NumberSequence.new({
		NumberSequenceKeypoint.new(0, 0),
		NumberSequenceKeypoint.new(1, 1),
	})
	agGrad.Rotation = 0
	agGrad.Parent = activeGrad

	-- Content frame
	local contentFrame = Instance.new("Frame")
	contentFrame.Name = name
	contentFrame.Size = UDim2.new(1, 0, 1, 0)
	contentFrame.BackgroundTransparency = 1
	contentFrame.Visible = false
	contentFrame.Parent = self.ContentFadeWrapper

	self.TabButtons[name] = btn
	self.TabContents[name] = contentFrame
	self.Tabs[name] = {
		Button = btn,
		Label = tabLabel,
		Number = tabNum,
		Dot = tDot,
		Arrow = tabArrow,
		Content = contentFrame,
		Indicator = indicator,
		IndicatorGlow = indicatorGlow,
		HoverOverlay = hoverOv,
		ActiveGrad = activeGrad,
		OnClose = nil,
	}

	-- Click
	btn.MouseButton1Click:Connect(function()
		-- Press feedback
		tweenObj(btn, TweenInfo.new(0.04), { BackgroundTransparency = 0.2 })
		task.delay(0.04, function()
			self:SwitchTab(name)
		end)
	end)

	-- Hover (desktop only)
	if not self.IsMobile then
		btn.MouseEnter:Connect(function()
			if self.ActiveTab ~= name then
				tweenObj(hoverOv, TWEEN_FAST, { BackgroundTransparency = 0.96 })
				tweenObj(tabLabel, TWEEN_FAST, { TextColor3 = C.TextDim })
				tweenObj(tabNum, TWEEN_FAST, { TextTransparency = 0.2 })
				tweenObj(tDot, TWEEN_FAST, { BackgroundTransparency = 0.3 })
				tweenObj(tabArrow, TWEEN_FAST, { TextTransparency = 0.5 })
			end
		end)

		btn.MouseLeave:Connect(function()
			if self.ActiveTab ~= name then
				tweenObj(hoverOv, TWEEN_FAST, { BackgroundTransparency = 1 })
				tweenObj(tabLabel, TWEEN_FAST, { TextColor3 = C.TextMuted })
				tweenObj(tabNum, TWEEN_FAST, { TextTransparency = 0.4 })
				tweenObj(tDot, TWEEN_FAST, { BackgroundTransparency = 0.5 })
				tweenObj(tabArrow, TWEEN_FAST, { TextTransparency = 1 })
			end
		end)
	end

	-- Staggered tab entrance
	btn.BackgroundTransparency = 1
	tabLabel.TextTransparency = 1
	tabNum.TextTransparency = 1
	tDot.BackgroundTransparency = 1

	task.delay(0.06 * self.TabOrder, function()
		tweenObj(tabLabel, TWEEN_MED, { TextTransparency = 0 })
		tweenObj(tabNum, TWEEN_MED, { TextTransparency = 0.4 })
		tweenObj(tDot, TWEEN_MED, { BackgroundTransparency = 0.5 })
	end)

	if not self.ActiveTab then
		self:SwitchTab(name)
	end

	return contentFrame
end

-- ══════════════════════════════════════════════════════════
--  SWITCH TAB
-- ══════════════════════════════════════════════════════════
function UIFramework:SwitchTab(name)
	local C = self.Colors
	if not self.Tabs[name] then return end
	if self.ActiveTab == name then return end

	local oldName = self.ActiveTab
	self.ActiveTab = name

	-- Deactivate old
	if oldName and self.Tabs[oldName] then
		local o = self.Tabs[oldName]
		o.Content.Visible = false
		tweenObj(o.Button, TWEEN_SWITCH, { BackgroundTransparency = 1 })
		tweenObj(o.Label, TWEEN_SWITCH, { TextColor3 = C.TextMuted })
		tweenObj(o.Number, TWEEN_SWITCH, { TextTransparency = 0.4 })
		tweenObj(o.Dot, TWEEN_SWITCH, { BackgroundTransparency = 0.5, BackgroundColor3 = C.TextMuted })
		tweenObj(o.Arrow, TWEEN_SWITCH, { TextTransparency = 1 })
		tweenObj(o.Indicator, TWEEN_SWITCH, { Size = UDim2.new(0, 2, 0, 0), BackgroundTransparency = 0.3 })
		tweenObj(o.IndicatorGlow, TWEEN_SWITCH, { Size = UDim2.new(0, 10, 0, 0), BackgroundTransparency = 1 })
		tweenObj(o.HoverOverlay, TWEEN_SWITCH, { BackgroundTransparency = 1 })
		tweenObj(o.ActiveGrad, TWEEN_SWITCH, { BackgroundTransparency = 1 })
	end

	-- Activate new
	local n = self.Tabs[name]
	n.Content.Visible = true

	tweenObj(n.Button, TWEEN_SWITCH, { BackgroundTransparency = 0.35, BackgroundColor3 = C.Slot })
	tweenObj(n.Label, TWEEN_SWITCH, { TextColor3 = C.Text })
	tweenObj(n.Number, TWEEN_SWITCH, { TextTransparency = 0.15 })
	tweenObj(n.Dot, TWEEN_SWITCH, { BackgroundTransparency = 0, BackgroundColor3 = C.Accent })
	tweenObj(n.Arrow, TWEEN_SWITCH, { TextTransparency = 0.2, TextColor3 = C.Text })
	tweenObj(n.Indicator, TWEEN_SWITCH, { Size = UDim2.new(0, 2, 0.5, 0), BackgroundTransparency = 0 })
	tweenObj(n.IndicatorGlow, TWEEN_SWITCH, { Size = UDim2.new(0, 10, 0.5, 0), BackgroundTransparency = 0.86 })
	tweenObj(n.HoverOverlay, TWEEN_SWITCH, { BackgroundTransparency = 0.97 })
	tweenObj(n.ActiveGrad, TWEEN_SWITCH, { BackgroundTransparency = 0.97 })

	-- Content transition (slide up + fade)
	if self.ContentFadeWrapper then
		self.ContentFadeWrapper.GroupTransparency = 0.75
		self.ContentFadeWrapper.Position = UDim2.new(0, 0, 0, 8)
		tweenObj(self.ContentFadeWrapper, TweenInfo.new(0.28, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
			GroupTransparency = 0,
			Position = UDim2.new(0, 0, 0, 0),
		})
	end

	-- Title transition (slide + fade)
	if self.ContentTitle then
		self.ContentTitle.TextTransparency = 0.7
		self.ContentTitle.Position = UDim2.new(0, 78, 0, 0)
		self.ContentTitle.Text = name
		tweenObj(self.ContentTitle, TweenInfo.new(0.24, Enum.EasingStyle.Quint), {
			TextTransparency = 0.1,
			Position = UDim2.new(0, 74, 0, 0),
		})
	end
end

-- ══════════════════════════════════════════════════════════
--  UTILITIES
-- ══════════════════════════════════════════════════════════
function UIFramework:SetTabCloseCallback(name, callback)
	if self.Tabs[name] then self.Tabs[name].OnClose = callback end
end

function UIFramework:GetTabContent(name)
	return self.TabContents[name]
end

function UIFramework:CreateScrollFrame(parent)
	local C = self.Colors

	local scroll = Instance.new("ScrollingFrame")
	scroll.Size = UDim2.new(1, 0, 1, 0)
	scroll.BackgroundTransparency = 1
	scroll.BorderSizePixel = 0
	scroll.ScrollBarThickness = self.IsMobile and 4 or 2 -- Thicker scrollbar on mobile
	scroll.ScrollBarImageColor3 = C.AccentDim
	scroll.ScrollBarImageTransparency = 0.4
	scroll.AutomaticCanvasSize = Enum.AutomaticSize.Y
	scroll.CanvasSize = UDim2.new(0, 0, 0, 0)
	scroll.Parent = parent

	local layout = Instance.new("UIListLayout")
	layout.Padding = UDim.new(0, self.IsMobile and 6 or 4) -- More spacing on mobile
	layout.SortOrder = Enum.SortOrder.LayoutOrder
	layout.Parent = scroll

	addPadding(scroll, 8, 12, 14, 14)

	return scroll
end

-- ══════════════════════════════════════════════════════════
--  INIT
-- ══════════════════════════════════════════════════════════
UIFramework:CreateWindow()
getgenv().UIFramework = UIFramework

local deviceType = UIFramework.IsMobile and "Mobile" or "Desktop"
print("[NULLIX] v4.0 Loaded — " .. deviceType .. " (Scale: " .. string.format("%.2f", UIFramework.Scale) .. ")")
if not UIFramework.IsMobile then
	print("[NULLIX] Press F9 to toggle")
else
	print("[NULLIX] Tap the button in the corner to toggle")
end

-- ══════════════════════════════════════════════════════════
--  LOAD MODULES
-- ══════════════════════════════════════════════════════════
task.wait(0.3)

pcall(function()
	loadstring(game:HttpGet("https://pastebin.com/raw/AWCYm9xY"))()
	print("[NULLIX] Automatic System")
end)

task.wait(0.3)

pcall(function()
	loadstring(game:HttpGet("https://pastebin.com/raw/Nk3H9F2i"))()
	print("[NULLIX] Player")
end)

task.wait(0.3)

pcall(function()
	loadstring(game:HttpGet("https://pastebin.com/raw/TXWcrWf3"))()
	print("[NULLIX] ESP")
end)

task.wait(0.3)

pcall(function()
	loadstring(game:HttpGet("https://pastebin.com/raw/vsDRCHM2"))()
	print("[NULLIX] SELL")
end)

task.wait(0.3)

pcall(function()
	loadstring(game:HttpGet("https://pastebin.com/raw/zXSdtsej"))()
	print("[NULLIX] Giver")
end)
