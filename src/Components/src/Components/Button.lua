local MyUILib = require(script.Parent.Parent.MyUILib)

function MyUILib:CreateButton(parent, size, position, text, color)
    local button = Instance.new("TextButton")
    button.Size = size or UDim2.new(0, 100, 0, 50)
    button.Position = position or UDim2.new(0, 0, 0, 0)
    button.BackgroundColor3 = color or Color3.new(1, 1, 1)
    button.Text = text or "Button"
    button.Parent = parent
    table.insert(self.Elements, button)
    return button
end

return MyUILib
