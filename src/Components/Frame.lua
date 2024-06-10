local Frame = {}

function Frame.Create(parent, size, position)
    local frame = Instance.new("Frame")
    frame.Size = size or UDim2.new(0, 100, 0, 100)
    frame.Position = position or UDim2.new(0, 0, 0, 0)
    frame.BackgroundColor3 = Color3.new(1, 1, 1)
    frame.Parent = parent
    return frame
end

return Frame
