local wins = {}

  local Circle = Instance.new("ImageLabel")
    Circle.Name = "Circle"
    Circle.Parent = nil
    Circle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Circle.BackgroundTransparency = 1.000
    Circle.ZIndex = 10
    Circle.Image = "rbxassetid://266543268"
    Circle.ImageColor3 = Color3.fromRGB(255, 255, 255)
    Circle.ImageTransparency = 0.500
 
    function CircleClick(Button, X, Y)
        spawn(function()
            Button.ClipsDescendants = true
            local Circ = Circle:Clone()
            Circ.Parent = Button
            local NewX = X - Circ.AbsolutePosition.X
            local NewY = Y - Circ.AbsolutePosition.Y
            Circ.Position = UDim2.new(0, NewX, 0, NewY)
            local Size = 0
            if Button.AbsoluteSize.X > Button.AbsoluteSize.Y then
                Size = Button.AbsoluteSize.X * 1.5
            elseif Button.AbsoluteSize.X < Button.AbsoluteSize.Y then
                Size = Button.AbsoluteSize.Y * 1.5
            elseif Button.AbsoluteSize.X == Button.AbsoluteSize.Y then
                Size = Button.AbsoluteSize.X * 1.5
            end
            local Time = 0.5
            Circ:TweenSizeAndPosition(UDim2.new(0, Size, 0, Size), UDim2.new(0.5, -Size / 2, 0.5, -Size / 2), "Out", "Quad", Time, false, nil)
            for i = 1, 10 do
                Circ.ImageTransparency = Circ.ImageTransparency + 0.1
                wait(Time / 10)
            end
            Circ:Destroy()
        end)
    end

function changeSize(win, y)
game.Players.LocalPlayer["PlayerGui"][win].UI.things.Size = UDim2.new(0,200, 0,y)
game.Players.LocalPlayer["PlayerGui"][win].UI.back.Size = UDim2.new(0,200, 0,y)
game.Players.LocalPlayer["PlayerGui"][win].UI.Toggle.YValue.Value = y
end

function createWin(name)
table.insert(wins, name)
	for i,v in pairs(game.Players.LocalPlayer["PlayerGui"]:GetChildren()) do
	if v.Name == name then
	game.Players.LocalPlayer["PlayerGui"][name]:Destroy()
	end
	end
	-- Gui to Lua
	-- Version: 3.2
	
	-- Instances:
	
	local pro = Instance.new("ScreenGui")
	local UI = Instance.new("Frame")
	local pro_2 = Instance.new("TextLabel")
	local Toggle = Instance.new("TextButton")
	local back = Instance.new("Frame")
	local Line = Instance.new("Frame")
	local things = Instance.new("Frame")
	local things2 = Instance.new("ScrollingFrame")
	local UIGridLayout = Instance.new("UIGridLayout")
	
	--Properties:
	
	pro.Name = name
	pro.Parent = game.Players.LocalPlayer["PlayerGui"]
	pro.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	pro.ResetOnSpawn = false
	
	UI.Name = "UI"
	UI.Parent = pro
	UI.BackgroundColor3 = Color3.fromRGB(37, 37, 37)
	UI.BorderSizePixel = 0
	UI.Position = UDim2.new(0.352855057, 0, 0.190817788, 0)
	UI.Size = UDim2.new(0, 200, 0, 40)
	
	pro_2.Name = "Label"
	pro_2.Parent = UI
    pro_2.TextScaled = true
    pro_2.TextWrapped = true
	pro_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	pro_2.BackgroundTransparency = 1.000
	pro_2.Size = UDim2.new(0, 175, 0, 39)
	pro_2.Font = Enum.Font.SourceSansBold
	pro_2.Text = name
	pro_2.TextColor3 = Color3.fromRGB(255, 255, 255)
	
	Toggle.Name = "Toggle"
	Toggle.Parent = UI
	Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Toggle.BackgroundTransparency = 1.000
	Toggle.Position = UDim2.new(0.925000012, -25, 0, 0)
	Toggle.Size = UDim2.new(0.075000003, 25, 1, 0)
	Toggle.Font = Enum.Font.SourceSansBold
	Toggle.Text = "-"
	Toggle.TextColor3 = Color3.fromRGB(255, 0, 0)
	Toggle.TextSize = 40.000

local ything = Instance.new("IntValue")
ything.Value = 350
ything.Name = "YValue"
ything.Parent = Toggle

	back.Name = "back"
	back.Parent = UI
	back.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
	back.Position = UDim2.new(0, 0, 1.04999995, 0)
	back.Size = UDim2.new(0, 200, 0, 350)
	
	Line.Name = "Line"
	Line.Parent = UI
	Line.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
	Line.BorderSizePixel = 0
	Line.Position = UDim2.new(0, 0, 1, 0)
	Line.Size = UDim2.new(0, 200, 0, 2)
	Line.ZIndex = 2
	
	things.Name = "things"
	things.Parent = UI
	things.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
	things.BorderColor3 = Color3.fromRGB(27, 42, 53)
	things.BorderSizePixel = 0
	things.Position = UDim2.new(-0.00214493275, 0, 1.04820657, 0)
	things.Size = UDim2.new(0, 200, 0, 350)
	
	things2.Name = "things2"
	things2.Parent = things
	things2.Active = true
	things2.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
	things2.Position = UDim2.new(0, 0, 0.00142848492, 0)
	things2.Size = UDim2.new(1,0, 1,0)
	things2.ZIndex = 2
    things2.ScrollBarThickness = 8
	UIGridLayout.Parent = things2
	UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIGridLayout.CellPadding = UDim2.new(0, 0, 0, 0)
	UIGridLayout.CellSize = UDim2.new(0, 185, 0, 40)
	UIGridLayout.Name = "Attrixx Made This"

if _G.customm == true then
local gui = game.Players.LocalPlayer["PlayerGui"][name]
gui.UI.BackgroundColor3 = _G.topBgColor
gui.UI.Toggle.Font = _G.font
gui.UI.Toggle.TextColor3 = _G.toggleColor
gui.UI.Line.BackgroundColor3 = _G.lineColor
gui.UI.back.BackgroundColor3 = _G.bottomBgColor
gui.UI.things.things2.BackgroundColor3 = _G.bottomBgColor
gui.UI.Label.TextColor3 = _G.labelColor
gui.UI.Label.Font = _G.font
end

	function BIMZ_fake_script() -- UI.LocalScript 
		local script = Instance.new('LocalScript', UI)
		local dragger = {}; 
		local resizer = {};
		do
			local mouse = game:GetService("Players").LocalPlayer:GetMouse();
			local inputService = game:GetService('UserInputService');
			local heartbeat = game:GetService("RunService").Heartbeat;
			function dragger.new(frame)
				local s, event = pcall(function()
					return frame.MouseEnter
				end)
				if s then
					frame.Active = true;
		
					event:connect(function()
						local input = frame.InputBegan:connect(function(key)
							if key.UserInputType == Enum.UserInputType.MouseButton1 then
								local objectPosition = Vector2.new(mouse.X - frame.AbsolutePosition.X, mouse.Y - frame.AbsolutePosition.Y);
								while heartbeat:wait() and inputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
									frame:TweenPosition(UDim2.new(0, mouse.X - objectPosition.X + (frame.Size.X.Offset * frame.AnchorPoint.X), 0, mouse.Y - objectPosition.Y + (frame.Size.Y.Offset * frame.AnchorPoint.Y)), 'Out', 'Quad', 0.1, true);
								end
							end
						end)
		
						local leave;
						leave = frame.MouseLeave:connect(function()
							input:disconnect();
							leave:disconnect();
						end)
					end)
				end
			end
			function resizer.new(p, s)
				p:GetPropertyChangedSignal('AbsoluteSize'):connect(function()
					s.Size = UDim2.new(s.Size.X.Scale, s.Size.X.Offset, s.Size.Y.Scale, p.AbsoluteSize.Y);
				end)
			end
		end
		script.Parent.Active = true
		script.Parent.Draggable = true
	end
	coroutine.wrap(BIMZ_fake_script)()
    local on = true
	function TMGSKN_fake_script() -- Toggle.LocalScript 
		local script = Instance.new('LocalScript', Toggle)
			script.Parent.MouseButton1Click:connect(function()
						local back = script.Parent.Parent.back
		local con = script.Parent.Parent.things
		local framex = 200
		local framey = game.Players.LocalPlayer["PlayerGui"][name].UI.Toggle.YValue.Value
				if on == true then
on = false
Toggle.Text = "+"
con.Visible = false
con:TweenSize(UDim2.new(0,200, 0,0))
back:TweenSize(UDim2.new(0,200, 0,0))
else
on = true
Toggle.Text = "-"
back:TweenSize(UDim2.new(0,200, 0,framey))
con:TweenSize(UDim2.new(0,200, 0,framey))
con.Visible = true
                end
			end)
	end
	coroutine.wrap(TMGSKN_fake_script)()
local counter = 0
for index in pairs(wins) do
counter = counter + 1
end
if counter == 1 then
changePos(name, 100 * counter, 100)	
else
changePos(name, 175 * counter, 100)	
end
end
	
	function createBtn(text, win, callback)
	text = text or "New button"
	callback = callback or function() end
		
	local button = Instance.new("TextButton")
		button.BackgroundTransparency = 1
		button.AutoButtonColor = false
		button.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
		button.BorderSizePixel = 0
		button.BorderColor3 = Color3.fromRGB(20, 20, 20)
		button.TextColor3 = Color3.new(255, 255, 255)
		button.TextSize = 17
		button.Name = text
		button.TextXAlignment = Enum.TextXAlignment.Left
		button.Font = Enum.Font.SourceSansBold
		button.Text = tostring(text)
		button.ZIndex = 1
		button.Parent = game.Players.LocalPlayer["PlayerGui"][win].UI.things.things2
		
if _G.customm == true then
button.TextSize = _G.textSize
button.Font = _G.font
button.TextColor3 = _G.textColor
end

		button.MouseButton1Click:connect(function()
			pcall(callback)
local Mouse = game:GetService("Players").LocalPlayer:GetMouse()
                CircleClick(button, Mouse.X, Mouse.Y)
		end)
	
	local value = Instance.new("StringValue")
	value.Name = "Type"
	value.Value = "Button"
	value.Parent = button
	end
	
	function delItem(item, win)
	local item = game.Players.LocalPlayer["PlayerGui"][win].UI.things.things2:FindFirstChild(item)
	item:Destroy()
	end
	
	function delWin(win)
	local item = game.Players.LocalPlayer["PlayerGui"]:FindFirstChild(win)
	item:Destroy()
	end
	
	function createLabel(text, win)
	text = text or "New Label"
		
	local label = Instance.new("TextLabel")
		label.BackgroundTransparency = 1
		label.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
		label.BorderSizePixel = 0
		label.BorderColor3 = Color3.fromRGB(20, 20, 20)
		label.TextSize = 17
		label.Name = text
		label.TextXAlignment = Enum.TextXAlignment.Left
        label.Font = Enum.Font.SourceSansBold
        label.TextColor3 = Color3.new(255, 255, 255)
		label.Text = tostring(text)
		label.ZIndex = 1
		label.Parent = game.Players.LocalPlayer["PlayerGui"][win].UI.things.things2

if _G.customm == true then
label.TextColor3 = _G.textColor
label.Font = _G.font
label.TextSize = _G.textSize
end
	
	local value = Instance.new("StringValue")
	value.Name = "Type"
	value.Value = "Label"
	value.Parent = label
	end
	
	function createSlider(text, win, min, max, callback)
	text = text or "New Slider"
	min = min or 0
	max = max or 100
	
	callback = callback or function() end
	
	local mouse = game.Players.LocalPlayer:GetMouse()
	local uis = game:GetService("UserInputService")
	local value;
	
	local Walkspeed = Instance.new("Frame")
	local Slider = Instance.new("ImageLabel")
	local SliderBtn = Instance.new("TextButton")
	local SliderInner = Instance.new("Frame")
	local Value = Instance.new("TextLabel")
	local Label = Instance.new("TextLabel")
	
	local value = Instance.new("StringValue")
	value.Name = "Type"
	value.Value = "Slider"
	value.Parent = Walkspeed
	
	Walkspeed.Name = text
	Walkspeed.Parent = game.Players.LocalPlayer["PlayerGui"][win].UI.things.things2
	Walkspeed.BackgroundTransparency = 1.000
	Walkspeed.Size = UDim2.new(0, 100, 0, 100)

	Slider.Name = "Slider"
	Slider.Parent = Walkspeed
	Slider.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
	Slider.BackgroundTransparency = 1.000
	Slider.Position = UDim2.new(0, 0, 0.0249999985, 0)
	Slider.Size = UDim2.new(0, 200, 0, 40)
	Slider.Image = "rbxassetid://3570695787"
	Slider.ImageColor3 = game.Players.LocalPlayer["PlayerGui"][win].UI.things.things2.BackgroundColor3
	Slider.ScaleType = Enum.ScaleType.Slice
	Slider.SliceCenter = Rect.new(100, 100, 100, 100)
	Slider.SliceScale = 0.050
	
	SliderBtn.Name = "SliderBtn"
	SliderBtn.Parent = Walkspeed
	SliderBtn.BackgroundTransparency = 1
	SliderBtn.BorderSizePixel = 0
	SliderBtn.Position = UDim2.new(0.0500000007, 0, 0.5, 0)
	SliderBtn.Size = UDim2.new(0, 180, 0, 15)
	SliderBtn.Font = Enum.Font.SourceSansBold
	SliderBtn.Text = ""
	SliderBtn.TextColor3 = Color3.new(255,255,255)
	SliderBtn.TextSize = 14.000
	
	SliderInner.Name = "SliderInner"
	SliderInner.Parent = SliderBtn
	SliderInner.BackgroundColor3 = Color3.fromRGB(255,80,60)
	SliderInner.Size = UDim2.new(0, 0, 0, 15)
	
	Value.Name = text
	Value.Parent = Walkspeed
	Value.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Value.BackgroundTransparency = 1.000
	Value.Position = UDim2.new(0.824999988, 0, 0, 0)
	Value.Size = UDim2.new(0, 35, 0, 20)
	Value.Font = Enum.Font.SourceSans
	Value.Text = "2"
	Value.TextColor3 = Color3.new(255,255,255)
	Value.TextSize = 14.000
	
	Label.Name = "Label"
	Label.Parent = Walkspeed
	Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Label.BackgroundTransparency = 1.000
	Label.Position = UDim2.new(0.0500000007, 0, -0.0250000004, 0)
	Label.Size = UDim2.new(0, 155, 0, 20)
	Label.Font = Enum.Font.SourceSansBold
	Label.Text = text
	Label.TextColor3 = Color3.new(255,255,255)
	Label.TextSize = 14.000
	Label.TextXAlignment = Enum.TextXAlignment.Left
	
if _G.customm == true then
SliderBtn.TextColor3 = _G.textColor
SliderInner.BackgroundColor3 = _G.topBgColor
Value.Font = _G.font
Value.TextColor3 = _G.textColor
Label.Font = _G.font
Label.TextColor3 = _G.textColor
end

	-----Main Code-----
	
	SliderBtn.MouseButton1Down:Connect(function()
		Value = math.floor((((tonumber(max) - tonumber(min)) / 180) * SliderInner.AbsoluteSize.X) + tonumber(min)) or 0
		pcall(function()
			callback(Value)
		end)
		SliderInner.Size = UDim2.new(0, math.clamp(mouse.X - SliderInner.AbsolutePosition.X, 0, 180), 0, 15)
		moveconnection = mouse.Move:Connect(function()
			game.Players.LocalPlayer["PlayerGui"][win].UI.things.things2[text][text].Text = Value .. "/" .. max
			Value = math.floor((((tonumber(max) - tonumber(min)) / 180) * SliderInner.AbsoluteSize.X) + tonumber(min))
			pcall(function()
				callback(Value)
			end)
			SliderInner.Size = UDim2.new(0, math.clamp(mouse.X - SliderInner.AbsolutePosition.X, 0, 180), 0, 15)
		end)
		releaseconnection = uis.InputEnded:Connect(function(Mouse)
			if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
				Value = math.floor((((tonumber(max) - tonumber(min)) / 180) * SliderInner.AbsoluteSize.X) + tonumber(min))
				pcall(function()
					callback(Value)
				end)
				SliderInner.Size = UDim2.new(0, math.clamp(mouse.X - SliderInner.AbsolutePosition.X, 0, 180), 0, 15)
				moveconnection:Disconnect()
				releaseconnection:Disconnect()
			end
		end)
	end)
	
	end
	
	function createBox(placeholder, win, callback) 
	placeholder = placeholder or "New Box"
	callback = callback or function()
	end
	local button = Instance.new("TextBox")
	button.BackgroundTransparency = 0
	button.BackgroundColor3 = Color3.fromRGB(15,15,15)
	button.BackgroundTransparency = 1
	button.BorderSizePixel = 1
	button.BorderMode = Enum.BorderMode.Outline
	button.BorderColor3 = Color3.fromRGB(255,255,255)
	button.TextColor3 = Color3.fromRGB(255, 255, 255)
	button.TextSize = 17
	button.TextXAlignment = Enum.TextXAlignment.Left
	button.Font = Enum.Font.SourceSansBold
	button.Text = ""
	button.Parent = game.Players.LocalPlayer["PlayerGui"][win].UI.things.things2
	button.PlaceholderText = placeholder
	button.Name = placeholder
	
	local value = Instance.new("StringValue")
	value.Name = "Type"
	value.Value = "Box"
	value.Parent = button

if _G.customm == true then
button.Font = _G.font
button.TextColor3 = _G.textColor
end
	
	button.FocusLost:connect(function(ep)
			if ep then
				if #button.Text > 0 then
					pcall(callback, button.Text) 
					button.Text = ""
				end  
			end
		end)
	end
	
	function createToggle(text, win, callback)
				local switchactions = {}
				text = text or "New switch"
				callback = callback or function()
				end
				
				local switch = Instance.new("TextLabel")
				switch.BackgroundTransparency = 1
				switch.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
				switch.BorderSizePixel = 0
				switch.TextColor3 = Color3.new(1, 1, 1)
				switch.TextSize = 17
				switch.TextXAlignment = Enum.TextXAlignment.Left
				switch.Font = Enum.Font.SourceSansBold
				switch.Text = tostring(text)
				switch.Parent = game.Players.LocalPlayer["PlayerGui"][win].UI.things.things2
		
	local value = Instance.new("StringValue")
	value.Name = "Type"
	value.Value = "Toggle"
	value.Parent = switch
	
				local enabled = false
				local checkmark = Instance.new("TextButton", switch)
				checkmark.Size = UDim2.new(0, 20, 0, 20)
				checkmark.Position = UDim2.new(0.9, 0, 0.15, 0)
				checkmark.BackgroundColor3 = game.Players.LocalPlayer["PlayerGui"][win].UI.BackgroundColor3
				checkmark.BorderColor3 = Color3.fromRGB(45, 45, 45)
				checkmark.BorderSizePixel = 1
				checkmark.TextColor3 = Color3.new(1, 1, 1)
				checkmark.TextScaled = true
				checkmark.Text = ""
				checkmark.AutoButtonColor = false

if _G.customm == true then
switch.Font = _G.font
switch.TextColor3 = _G.textColor
checkmark.TextColor3 = _G.textColor
end
		
				function Trigger ()
					enabled = not enabled
					checkmark.Text = enabled and utf8.char(10003) or ""
					pcall(callback, enabled)
				end
		
				checkmark.MouseButton1Click:connect(Trigger)
		
				function switchactions:Set (state)
					enabled = state
					checkmark.Text = enabled and utf8.char(10003) or ""
					pcall(callback, enabled)
				end
		
				return switchactions
	end
	
	function lineColor(win, r,g,b)
	game.Players.LocalPlayer["PlayerGui"][win].UI.Line.BackgroundColor3 = Color3.fromRGB(r,g,b)
	end
	
	function toggleColor(win, r,g,b)
	game.Players.LocalPlayer["PlayerGui"][win].UI.Toggle.TextColor3 = Color3.fromRGB(r,g,b)
	end
	
	function labelColor(win, r,g,b)
	game.Players.LocalPlayer["PlayerGui"][win].UI.Label.TextColor3 = Color3.fromRGB(r,g,b)
	end
	
	function allColor(win, r,g,b)
	game.Players.LocalPlayer["PlayerGui"][win].UI.Label.TextColor3 = Color3.fromRGB(r,g,b)
	game.Players.LocalPlayer["PlayerGui"][win].UI.Toggle.TextColor3 = Color3.fromRGB(r,g,b)
	game.Players.LocalPlayer["PlayerGui"][win].UI.Line.BackgroundColor3 = Color3.fromRGB(r,g,b)
	end
	
	function toggleWin(win, trueorfalse)
	game.Players.LocalPlayer["PlayerGui"][win].Enabled = trueorfalse
	end
	
	function changePos(win, x,y)
	game.Players.LocalPlayer["PlayerGui"][win].UI.Position = UDim2.new(0,x, 0,y)
	end
	
	function delType(Type, win)
	for i,v in pairs(game.Players.LocalPlayer["PlayerGui"][win].UI.things.things2:GetChildren()) do
	if v.ClassName == "UIGridLayout" then
	
	else
	if v.Type.Value == Type then
	v:Destroy()
	end
	end
	end
	end

    function createDropdown(text, win, items, callback)
local DropdownButton = Instance.new("TextButton")
			local Opened = false
			local DropdownArrow = Instance.new("ImageButton")
			local DropdownBody = Instance.new("Frame")
			local DropdownUIListLayout = Instance.new("UIListLayout")
			local DropdownUIPadding = Instance.new("UIPadding")

			DropdownButton.Name = "DropdownButton"
			DropdownButton.BackgroundTransparency = 1
			DropdownButton.BorderSizePixel = 0
			DropdownButton.Size = UDim2.new(0, 240, 0, 30)
			DropdownButton.Font = Enum.Font.SourceSansBold
			DropdownButton.Text = tostring(text)
			DropdownButton.TextColor3 = Color3.fromRGB(241, 241, 241)
			DropdownButton.TextSize = 17.000
			DropdownButton.ZIndex = 3
            DropdownButton.Parent = game.Players.LocalPlayer["PlayerGui"][win].UI.things.things2

			DropdownArrow.Name = "DropdownArrow"
			DropdownArrow.Parent = DropdownButton
			DropdownArrow.BackgroundTransparency = 1.000
			DropdownArrow.Position = UDim2.new(0.837887108, 0, 0.095238097, 0)
			DropdownArrow.Rotation = 0
			DropdownArrow.Size = UDim2.new(0, 25, 0, 25)
			DropdownArrow.Image = "rbxassetid://3926305904"
			DropdownArrow.ImageRectOffset = Vector2.new(924, 884)
			DropdownArrow.ImageRectSize = Vector2.new(36, 36)
			DropdownArrow.ZIndex = 3

			DropdownBody.Name = "DropdownBody"
			DropdownBody.Parent = DropdownButton
			DropdownBody.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			DropdownBody.BackgroundTransparency = 1.000
			DropdownBody.Size = UDim2.new(1, 0, 1, 0)
			DropdownBody.ZIndex = 3
			DropdownBody.Visible = false

			DropdownUIListLayout.Name = "DropdownUIListLayout"
			DropdownUIListLayout.Parent = DropdownBody
			DropdownUIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

			DropdownUIPadding.Name = "DropdownUIPadding"
			DropdownUIPadding.Parent = DropdownBody
			DropdownUIPadding.PaddingTop = UDim.new(0, 31)

			DropdownButton.MouseButton1Down:connect(function()
				Opened = not Opened
				if Opened == true then
					DropdownBody.Visible = true
					game:GetService("TweenService"):Create(DropdownArrow, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						Rotation = 90
					}):Play();
					for _, v in pairs(DropdownBody:GetChildren()) do 
						if v:IsA("TextButton") then
							game:GetService("TweenService"):Create(v, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
								BackgroundTransparency = 0,
								TextTransparency = 0
							}):Play();
						end 
					end
				else
					game:GetService("TweenService"):Create(DropdownArrow, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						Rotation = 0
					}):Play();
					for _, v in pairs(DropdownBody:GetChildren()) do 
						if v:IsA("TextButton") then
							game:GetService("TweenService"):Create(v, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
								BackgroundTransparency = 1,
								TextTransparency = 1
							}):Play();
						end 
					end
					wait(0.5)
					DropdownBody.Visible = false
				end
			end)


			for _, v in pairs(items) do
				local DropdownOption = Instance.new("TextButton")
	
				DropdownOption.Name = "DropdownOption"
				DropdownOption.Parent = DropdownBody
				DropdownOption.BackgroundTransparency = 1
				DropdownOption.BackgroundColor3 = game.Players.LocalPlayer["PlayerGui"][win].UI.things.things2.BackgroundColor3
				DropdownOption.BorderSizePixel = 0
				DropdownOption.Size = UDim2.new(1, 0, 0, 31)
				DropdownOption.Font = Enum.Font.Gotham
				DropdownOption.Text = v
				DropdownOption.TextTransparency = 1
				DropdownOption.TextColor3 = Color3.fromRGB(241, 241, 241)
				DropdownOption.TextSize = 14.000
				DropdownOption.ZIndex = 4

if _G.customm == true then
DropdownOption.Font = _G.font
DropdownOption.TextColor3 = _G.textColor
end

				DropdownOption.MouseButton1Down:connect(function()
					game:GetService("TweenService"):Create(DropdownArrow, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
						Rotation = 0
					}):Play();
					for _, v in pairs(DropdownBody:GetChildren()) do 
						if v:IsA("TextButton") then
							game:GetService("TweenService"):Create(v, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
								BackgroundTransparency = 1,
								TextTransparency = 1
							}):Play();
						end 
					end
					callback(v)
					Opened = false
					wait(0.5)
					DropdownBody.Visible = false
				end)

			end
if _G.customm == true then
DropdownButton.TextColor3 = _G.textColor
DropdownButton.Font = _G.font
end
     end

function optimizeWin(window)
local bruh = 0
for i,v in pairs(game.Players.LocalPlayer["PlayerGui"][window].UI.things.things2:GetChildren()) do
if v.ClassName == "UIGridLayout" then

else
bruh = bruh + 1
end
end
local yes = 7 * bruh
game.Players.LocalPlayer["PlayerGui"][window].UI.things.things2.CanvasSize = UDim2.new(0,0, 1, yes)
end