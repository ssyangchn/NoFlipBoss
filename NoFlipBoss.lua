-- 保存原方法
local set_blind_ref = Blind.set_blind

local disabled_bosses = {
    ['Amber Acorn'] = true,
    ['The Wheel'] = true,
    ['The House'] = true,
    ['The Mark'] = true,
    ['The Fish'] = true
}

function Blind:set_blind(blind, reset, silent)
    set_blind_ref(self, blind, reset, silent)
    
    if disabled_bosses[self.name] then
        self:disable()
    end
end
