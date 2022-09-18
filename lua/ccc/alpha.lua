local utils = require("ccc.utils")

---@class AlphaSlider
---@field ui UI
---@field value number 0-1
---@field is_showed boolean
---@field prev_pos number[] (1,1)-index
local AlphaSlider = {}

---@param ui UI
---@param value? number
---@return AlphaSlider
function AlphaSlider.new(ui, value)
    return setmetatable({
        ui = ui,
        value = value or 1,
    }, { __index = AlphaSlider })
end

function AlphaSlider:show()
    self.is_showed = true
    local ui = self.ui
    ui:update()
    ui.win_height = ui.win_height + 1
    ui:refresh()
    self.prev_pos = utils.cursor()
    utils.cursor_set({ ui.win_height - 1, 1 })
end

function AlphaSlider:hide()
    self.is_showed = false
    local ui = self.ui
    ui:update()
    ui.win_height = ui.win_height - 1
    ui:refresh()
    utils.cursor_set(self.prev_pos)
end

function AlphaSlider:toggle()
    if self.is_showed then
        self:hide()
    else
        self:show()
    end
end

---@param value number
function AlphaSlider:set(value)
    self.value = value
end

---@return number
function AlphaSlider:get()
    return self.value
end

---For slider
---@return string
function AlphaSlider:str()
    return ("%5d%%"):format(self.value * 100)
end

---@param value number
function AlphaSlider:hex(value)
    value = value or self.value
    local h = math.floor(255 - value * 255)
    return "#" .. string.rep(("%02x"):format(h), 3)
end

return AlphaSlider