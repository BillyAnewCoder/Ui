local Button = {}

function Button.Create(parent, size, position, text)
    local button = Instance.new("TextButton")
    button.Size = size or UDim2.new(0, 100, 0, 50)
    button.Position = position or UDim2.new(0, 0, 0, 0)
    button.BackgroundColor3 = Color3.new(1, 1, 1)
    button.Text = text or "Button"
    button.Parent = parent
    return button
end

return Button
