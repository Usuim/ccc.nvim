local convert = require("ccc.utils.convert")

---@class CssHslOutput: ColorOutput
local CssHslOutput = {
    name = "CssHSL",
    pattern = "hsl(%d,%d%%,%d%%)",
}

---@param RGB integer[]
---@return string
function CssHslOutput.str(RGB)
    ---@type string
    return CssHslOutput.pattern:format(unpack(convert.rgb2hsl(RGB)))
end

return CssHslOutput
