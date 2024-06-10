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
    local frame = self.Frame.Create(parent, size, position)
    self:ApplyTheme(frame)
    return frame
end

function MyUILib:CreateThemedButton(parent, size, position, text)
    local button = self.Button.Create(parent, size, position, text)
    self:ApplyTheme(button)
    return button
end

function MyUILib:CreateSlider(parent, size, position, min, max, default)
    local slider = self.Slider.Create(parent, size, position, min, max, default)
    self:ApplyTheme(slider)
    return slider
end

function MyUILib:EnableDrag(frame)
    self.Draggable.Enable(frame)
end

return MyUILib
