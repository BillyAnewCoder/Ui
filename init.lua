local MyUILib = {}

local Components = {
    "Button",
    "Frame",
    "Slider",
    "Draggable"
}

for _, component in ipairs(Components) do
    MyUILib[component] = require(script:WaitForChild("src"):WaitForChild("Components"):WaitForChild(component))
end

return MyUILib
