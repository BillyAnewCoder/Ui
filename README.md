# MyUILib

MyUILib is a flexible and powerful UI library for Roblox. It includes basic UI components such as frames, buttons, sliders, and draggable functionality, as well as styling options.

## Features
- Create Frames
- Create Buttons
- Create Sliders
- Enable Dragging
- Customizable Themes

## Usage
```lua
local MyUILib = loadstring(game:HttpGet("https://raw.githubusercontent.com/YourGitHubUsername/MyUILib/main/init.lua"))()

local screenGui = Instance.new("ScreenGui", game.Players.LocalPlayer:WaitForChild("PlayerGui"))

local mainWindow = MyUILib:CreateThemedFrame(screenGui, UDim2.new(0, 400, 0, 300), UDim2.new(0.5, -200, 0.5, -150))
MyUILib:EnableDrag(mainWindow)

local button = MyUILib:CreateThemedButton(mainWindow, UDim2.new(0, 100, 0, 50), UDim2.new(0.5, -50, 0.5, -25), "Click Me")
button.MouseButton1Click:Connect(function()
    print("Button clicked!")
end)

local slider = MyUILib:CreateSlider(mainWindow, UDim2.new(0, 200, 0, 50), UDim2.new(0.5, -100, 0.6, -25), 0, 100, 50)

### 3. `src/MyUILib.lua`
The main module of your library.

```lua
local MyUILib = {}
MyUILib.__index = MyUILib

local UIS = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

MyUILib.Theme = {
    FrameColor = Color3.fromRGB(30, 30, 30),
    ButtonColor = Color3.fromRGB(40, 40, 40),
    TextColor = Color3.fromRGB(255, 255, 255),
    Font = Enum.Font.SourceSans,
    TextSize = 14
}

function MyUILib.new()
    local self = setmetatable({}, MyUILib)
    self.Elements = {}
    return self
end

function MyUILib:ApplyTheme(element)
    if element:IsA("Frame") then
        element.BackgroundColor3 = self.Theme.FrameColor
    elseif element:IsA("TextButton") then
        element.BackgroundColor3 = self.Theme.ButtonColor
        element.TextColor3 = self.Theme.TextColor
        element.Font = self.Theme.Font
        element.TextSize = self.Theme.TextSize
    end
end

function MyUILib:CreateThemedFrame(parent, size, position)
    local frame = self:CreateFrame(parent, size, position)
    self:ApplyTheme(frame)
    return frame
end

function MyUILib:CreateThemedButton(parent, size, position, text)
    local button = self:CreateButton(parent, size, position, text)
    self:ApplyTheme(button)
    return button
end

return MyUILib
