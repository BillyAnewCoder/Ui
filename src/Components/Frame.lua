local MyUILib = require(script.Parent.Parent.MyUILib)

function MyUILib:CreateFrame(parent, size, position, color)
    local frame = Instance.new("Frame")
    frame.Size = size or UDim2.new(0, 100, 0, 100)
    frame.Position = position or UDim2.new(0, 0, 0, 0)
    frame.BackgroundColor3 = color or Color3.new(1, 1, 1)
    frame.Parent = parent
    table.insert(self.Elements, frame)
    return frame
end

return MyUILib
