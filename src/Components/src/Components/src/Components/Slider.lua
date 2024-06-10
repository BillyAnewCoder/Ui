local MyUILib = require(script.Parent.Parent.MyUILib)

function MyUILib:CreateSlider(parent, size, position, min, max, default, color)
    local slider = Instance.new("Frame")
    slider.Size = size or UDim2.new(0, 200, 0, 50)
    slider.Position = position or UDim2.new(0, 0, 0, 0)
    slider.BackgroundColor3 = color or Color3.new(0.8, 0.8, 0.8)
    slider.Parent = parent

    local fill = Instance.new("Frame")
    fill.Size = UDim2.new((default or min) / max, 0, 1, 0)
    fill.BackgroundColor3 = Color3.new(0, 0, 0.8)
    fill.Parent = slider

    slider.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            local function update(input)
                local scale = math.clamp((input.Position.X - slider.AbsolutePosition.X) / slider.AbsoluteSize.X, 0, 1)
                fill.Size = UDim2.new(scale, 0, 1, 0)
            end

            update(input)

            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    UIS.InputChanged:Disconnect()
                end
            end)

            UIS.InputChanged:Connect(update)
        end
    end)

    return slider
end

return MyUILib
