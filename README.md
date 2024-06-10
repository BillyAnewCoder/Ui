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
