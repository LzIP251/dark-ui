local library = {}

function InitLibrary(uiName)
    local DarkUI = Instance.new("ScreenGui")
    local MainFrame = Instance.new("ImageLabel")
    local mainTitle = Instance.new("TextLabel")
    local scriptsFrame = Instance.new("ImageLabel")
    local UIlayout = Instance.new("Frame")
    local UIListLayout = Instance.new("UIListLayout")
    local mainCredits = Instance.new("TextLabel")

    DarkUI.Name = uiName
    DarkUI.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

    MainFrame.Name = "MainFrame"
    MainFrame.Parent = DarkUI
    MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
    MainFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    MainFrame.BackgroundTransparency = 1.000
    MainFrame.Position = UDim2.new(0.5, 0, 0.499068916, 0)
    MainFrame.Size = UDim2.new(0, 278, 0, 346)
    MainFrame.Image = "rbxassetid://3570695787"
    MainFrame.ImageColor3 = Color3.fromRGB(52, 52, 52)
    MainFrame.ScaleType = Enum.ScaleType.Slice
    MainFrame.SliceCenter = Rect.new(100, 100, 100, 100)
    MainFrame.SliceScale = 0.030

    mainTitle.Name = "mainTitle"
    mainTitle.Parent = MainFrame
    mainTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    mainTitle.BackgroundTransparency = 1.000
    mainTitle.Position = UDim2.new(0.140287772, 0, 0, 0)
    mainTitle.Size = UDim2.new(0, 200, 0, 22)
    mainTitle.Font = Enum.Font.GothamBold
    mainTitle.Text = uiName
    mainTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
    mainTitle.TextScaled = true
    mainTitle.TextSize = 14.000
    mainTitle.TextWrapped = true

    scriptsFrame.Name = "scriptsFrame"
    scriptsFrame.Parent = MainFrame
    scriptsFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    scriptsFrame.BackgroundTransparency = 1.000
    scriptsFrame.Position = UDim2.new(0.0683453232, 0, 0.0635838136, 0)
    scriptsFrame.Size = UDim2.new(0, 240, 0, 302)
    scriptsFrame.Image = "rbxassetid://3570695787"
    scriptsFrame.ImageColor3 = Color3.fromRGB(68, 68, 68)
    scriptsFrame.ScaleType = Enum.ScaleType.Slice
    scriptsFrame.SliceCenter = Rect.new(100, 100, 100, 100)
    scriptsFrame.SliceScale = 0.040

    UIlayout.Name = "UIlayout"
    UIlayout.Parent = scriptsFrame
    UIlayout.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UIlayout.BackgroundTransparency = 1.000
    UIlayout.Position = UDim2.new(0.0166666675, 0, 0.0198675506, 0)
    UIlayout.Size = UDim2.new(0, 232, 0, 290)

    UIListLayout.Parent = UIlayout
    UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder



    mainCredits.Name = "mainCredits"
    mainCredits.Parent = MainFrame
    mainCredits.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    mainCredits.BackgroundTransparency = 1.000
    mainCredits.Position = UDim2.new(0.140000001, 0, 0.949000001, 0)
    mainCredits.Size = UDim2.new(0, 200, 0, 16)
    mainCredits.Font = Enum.Font.Gotham
    mainCredits.Text = "ROBLOX @ Gesilius"
    mainCredits.TextColor3 = Color3.fromRGB(255, 255, 255)
    mainCredits.TextSize = 14.000

    -- Scripts:

    local function TNHHOP_fake_script() -- MainFrame.Dragify 
        local script = Instance.new('LocalScript', MainFrame)

        local UIS = game:GetService("UserInputService")
        function dragify(Frame)
            dragToggle = nil
            local dragSpeed = 0
            dragInput = nil
            dragStart = nil
            local dragPos = nil
            function updateInput(input)
                local Delta = input.Position - dragStart
                local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
                game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.25), {Position = Position}):Play()
            end
            Frame.InputBegan:Connect(function(input)
                if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
                    dragToggle = true
                    dragStart = input.Position
                    startPos = Frame.Position
                    input.Changed:Connect(function()
                        if input.UserInputState == Enum.UserInputState.End then
                            dragToggle = false
                        end
                    end)
                end
            end)
            Frame.InputChanged:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
                    dragInput = input
                end
            end)
            game:GetService("UserInputService").InputChanged:Connect(function(input)
                if input == dragInput and dragToggle then
                    updateInput(input)
                end
            end)
        end
        
        dragify(script.Parent)
    end
    coroutine.wrap(TNHHOP_fake_script)()

end

function CreateButton(buttonName, filestring)
    local sampleButton = Instance.new("TextButton")
    local roundify = Instance.new("ImageLabel")

    sampleButton.Name = "button"
    sampleButton.Parent = UIlayout
    sampleButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    sampleButton.BackgroundTransparency = 1.000
    sampleButton.BorderSizePixel = 0
    sampleButton.Position = UDim2.new(0.0129310349, 0, 0, 0)
    sampleButton.Size = UDim2.new(0, 226, 0, 30)
    sampleButton.ZIndex = 2
    sampleButton.Font = Enum.Font.GothamSemibold
    sampleButton.Text = buttonName
    sampleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    sampleButton.TextSize = 14.000

    roundify.Name = "roundify"
    roundify.Parent = sampleButton
    roundify.Active = true
    roundify.AnchorPoint = Vector2.new(0.5, 0.5)
    roundify.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    roundify.BackgroundTransparency = 1.000
    roundify.Position = UDim2.new(0.5, 0, 0.5, 0)
    roundify.Selectable = true
    roundify.Size = UDim2.new(1, 0, 1, 0)
    roundify.Image = "rbxassetid://3570695787"
    roundify.ImageColor3 = Color3.fromRGB(93, 93, 93)
    roundify.ScaleType = Enum.ScaleType.Slice
    roundify.SliceCenter = Rect.new(100, 100, 100, 100)
    roundify.SliceScale = 0.040

    sampleButton.MouseButton1Click:Connect(function()
        loadstring(game:HttpGet(filestring, true))()
    end)
end

return library;
