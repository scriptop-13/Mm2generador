-- 👾 GUI principal (PURPLE INVASION 🛸)
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game:GetService("CoreGui")

-- 👾 Notificación (morado neón)
local notificationFrame = Instance.new("Frame")
notificationFrame.Size = UDim2.new(0.4, 0, 0.08, 0)
notificationFrame.Position = UDim2.new(0.3, 0, 0.9, 0)
notificationFrame.BackgroundColor3 = Color3.fromRGB(25, 10, 40)
notificationFrame.BackgroundTransparency = 0.2
notificationFrame.BorderSizePixel = 0
notificationFrame.Parent = screenGui
notificationFrame.Visible = false

local notificationUICorner = Instance.new("UICorner")
notificationUICorner.CornerRadius = UDim.new(0.1, 0)
notificationUICorner.Parent = notificationFrame

local notificationGradient = Instance.new("UIGradient")
notificationGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(180, 0, 255)),  -- Morado neón
    ColorSequenceKeypoint.new(1, Color3.fromRGB(90, 0, 255))   -- Azul violeta
}
notificationGradient.Parent = notificationFrame

local notificationText = Instance.new("TextLabel")
notificationText.Size = UDim2.new(1, 0, 1, 0)
notificationText.BackgroundTransparency = 1
notificationText.TextColor3 = Color3.fromRGB(230, 180, 255)
notificationText.TextSize = 20
notificationText.Font = Enum.Font.GothamBold
notificationText.TextScaled = true
notificationText.Parent = notificationFrame

local function showNotification(message)
    notificationText.Text = utf8.char(0x1F47E) .. " " .. message -- 👾
    notificationFrame.Visible = true
    notificationFrame:TweenPosition(UDim2.new(0.3, 0, 0.85, 0), "Out", "Quad", 0.5, true)
    task.wait(3)
    notificationFrame:TweenPosition(UDim2.new(0.3, 0, 1.1, 0), "Out", "Quad", 0.5, true)
    task.wait(0.5)
    notificationFrame.Visible = false
end

-- 👾 Ventana principal (Purple Alien Style)
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0.35, 0, 0.45, 0)
frame.Position = UDim2.new(0.325, 0, 0.275, 0)
frame.BackgroundColor3 = Color3.fromRGB(20, 10, 30)
frame.BackgroundTransparency = 0.1
frame.BorderSizePixel = 0
frame.Parent = screenGui

local frameShadow = Instance.new("ImageLabel")
frameShadow.Size = UDim2.new(1, 40, 1, 40)
frameShadow.Position = UDim2.new(0, -20, 0, -20)
frameShadow.BackgroundTransparency = 1
frameShadow.Image = "rbxassetid://1316045217"
frameShadow.ImageColor3 = Color3.fromRGB(180, 0, 255)
frameShadow.ImageTransparency = 0.7
frameShadow.ScaleType = Enum.ScaleType.Slice
frameShadow.SliceCenter = Rect.new(10,10,118,118)
frameShadow.ZIndex = 0
frameShadow.Parent = frame

local frameUICorner = Instance.new("UICorner")
frameUICorner.CornerRadius = UDim.new(0.1, 0)
frameUICorner.Parent = frame

local frameGradient = Instance.new("UIGradient")
frameGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(40, 0, 80)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(90, 0, 120))
}
frameGradient.Parent = frame

-- 👾 Título (animación morada neón)
local textLabel = Instance.new("TextLabel")
textLabel.Size = UDim2.new(1, 0, 0.2, 0)
textLabel.BackgroundTransparency = 1
textLabel.Text = "👾 MM2 Spawner 🛸"
textLabel.TextColor3 = Color3.fromRGB(230, 180, 255)
textLabel.TextSize = 28
textLabel.Font = Enum.Font.GothamBold
textLabel.TextStrokeTransparency = 0.6
textLabel.Parent = frame

local titleStroke = Instance.new("UIStroke")
titleStroke.Thickness = 2
titleStroke.Color = Color3.fromRGB(200, 0, 255)
titleStroke.Parent = textLabel

-- Gradiente animado morado/azul
local titleGradient = Instance.new("UIGradient")
titleGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(180, 0, 255)),
    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(100, 0, 255)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(230, 100, 255))
}
titleGradient.Rotation = 0
titleGradient.Parent = textLabel

task.spawn(function()
    while true do
        for i = 0, 360, 1 do
            titleGradient.Rotation = i
            task.wait(0.03)
        end
    end
end)

-- 🧪 TextBox ítem
local itemTextBox = Instance.new("TextBox")
itemTextBox.Size = UDim2.new(0.8, 0, 0.2, 0)
itemTextBox.Position = UDim2.new(0.1, 0, 0.3, 0)
itemTextBox.BackgroundColor3 = Color3.fromRGB(40, 0, 80)
itemTextBox.PlaceholderText = "🛸 Ingresa el nombre del ítem..."
itemTextBox.PlaceholderColor3 = Color3.fromRGB(180, 100, 255)
itemTextBox.TextColor3 = Color3.fromRGB(230, 200, 255)
itemTextBox.TextSize = 20
itemTextBox.Font = Enum.Font.Gotham
itemTextBox.Parent = frame

local itemTextBoxUICorner = Instance.new("UICorner")
itemTextBoxUICorner.CornerRadius = UDim.new(0.1, 0)
itemTextBoxUICorner.Parent = itemTextBox

-- 🚀 Botón Spawn (Purple style)
local spawnButton = Instance.new("TextButton")
spawnButton.Size = UDim2.new(0.8, 0, 0.2, 0)
spawnButton.Position = UDim2.new(0.1, 0, 0.6, 0)
spawnButton.BackgroundColor3 = Color3.fromRGB(80, 0, 120)
spawnButton.Text = "Spawn 👾"
spawnButton.TextSize = 20
spawnButton.TextColor3 = Color3.fromRGB(230, 200, 255)
spawnButton.Font = Enum.Font.Gotham
spawnButton.Parent = frame

local spawnButtonUICorner = Instance.new("UICorner")
spawnButtonUICorner.CornerRadius = UDim.new(0.1, 0)
spawnButtonUICorner.Parent = spawnButton

local function buttonHoverEffect(button)
    button.MouseEnter:Connect(function()
        button:TweenSize(UDim2.new(0.82, 0, 0.22, 0), "Out", "Quad", 0.2, true)
        button.BackgroundColor3 = Color3.fromRGB(180, 0, 255)
    end)

    button.MouseLeave:Connect(function()
        button:TweenSize(UDim2.new(0.8, 0, 0.2, 0), "Out", "Quad", 0.2, true)
        button.BackgroundColor3 = Color3.fromRGB(80, 0, 120)
    end)

    button.MouseButton1Click:Connect(function()
        button:TweenSize(UDim2.new(0.78, 0, 0.18, 0), "Out", "Quad", 0.1, true)
        button.BackgroundColor3 = Color3.fromRGB(120, 0, 200)
        task.wait(0.2)
        button:TweenSize(UDim2.new(0.8, 0, 0.2, 0), "Out", "Quad", 0.2, true)
        button.BackgroundColor3 = Color3.fromRGB(80, 0, 120)
    end)
end
buttonHoverEffect(spawnButton)

-- 👾 Texto Alien 2025
local alienLabel = Instance.new("TextLabel")
alienLabel.Size = UDim2.new(1, 0, 0.1, 0)
alienLabel.Position = UDim2.new(0, 0, 0.83, 0)
alienLabel.BackgroundTransparency = 1
alienLabel.Text = "Alien Invasion 2025 👾🛸"
alienLabel.TextColor3 = Color3.fromRGB(200, 150, 255)
alienLabel.TextSize = 16
alienLabel.Font = Enum.Font.GothamBold
alienLabel.TextTransparency = 0.1
alienLabel.TextStrokeTransparency = 0.8
alienLabel.Parent = frame

-- ✅ Parte funcional intacta
-- (todo el sistema de crates, Remote, PlayerWeapons y reset sigue igual) 

-- 📌 Items
local crate = "KnifeBox4"
local itemList = {
    Harvester = "Harvester",
    Gingerscope = "Gingerscope",
    Icepiercer = "Icepiercer",
    VampireGun = "VampireGun",
    VampireAxe = "VampireAxe",
    TravelerGun = "TravelerGun",
    TravelerGunChroma = "TravelerGunChroma",
    TravelerAxe = "TravelerAxe",
    Spirit = "WraithKnife",
    ChromaWatergun = "WatergunChroma",
    TreeKnife2023 = "TreeKnife2023",
    TreeGun2023 = "TreeGun2023",
    TreeKnife2023Chroma = "TreeKnife2023Chroma",
    TreeGun2023Chroma = "TreeGun2023Chroma",
    Sunset = "SunsetGun",
    Sunrise = "SunsetKnife",
    Soul = "WraithGun",
    Sorry = "Sorry",
    Bauble = "Bauble", 
    TravelerGun = "TravelerGun",
    Darkshot = "Darkshot",
    Darksword = "Darksword", 
    ZombieBat = "ZombieBat",
    Constellation = "Constellation",
    Celestial = "Celestial",
    Sakura = "Sakura_K",
    Blossom = "Blossom_G",
    Turkey = "Turkey2023",
    Candy = "Candy",
    ChromaBauble = "BaubleChroma",
    ChromaConstellation = "ConstellationChroma",
    XenoShot = "XenoGun",
    XenoKnife = "XenoKnife",
    RayGun = "UFOGun",
    AlienBeam = "UFOKnife",
    ChromaAlienBeam = "UFOKnifeChroma",
    ChromaRayGun = "UFOGunChroma"
}

-- 📌 Remote de crates
local _R = game:GetService(string.reverse("egarotSdetacilpeR"))
local _a, _b, _c = "Remotes", "Shop", "BoxController"
local _B = _R:WaitForChild(_a):WaitForChild(_b):WaitForChild(_c)

local function fireBoxController(...)
    _B:Fire(...)
end

-- 📌 PlayerWeapons
local PlayerData = require(game:GetService("ReplicatedStorage").Modules.ProfileData)
local PlayerWeapons = PlayerData.Weapons

-- 📌 Acción al presionar Spawn
spawnButton.MouseButton1Click:Connect(function()
    local itemName = itemTextBox.Text
    local item = itemList[itemName]

    if item then
        -- Dispara el Remote
        fireBoxController(crate, item)
        -- Añade al inventario local
        PlayerWeapons.Owned[item] = (PlayerWeapons.Owned[item] or 0) + 1
        showNotification("✅ Spawned item: " .. item)

        -- reset (refrescar goldies/inventario)
        local char = game.Players.LocalPlayer.Character
        if char then
            task.wait(1)
            char:BreakJoints()
        end
    else
        showNotification("❌ Item not found.")
    end
end)

-- 📌 Drag system
local UIS = game:GetService("UserInputService")
local dragging, dragInput, dragStart, startPos

local function update(input)
    local delta = input.Position - dragStart
    frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

frame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = frame.Position

        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

frame.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        dragInput = input
    end
end)

UIS.InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        update(input)
    end
end)
