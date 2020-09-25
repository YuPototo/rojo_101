-- Services
local ReplicatedStorage = game:GetService("ReplicatedStorage")

-- Modules
local RobloxWrapper = require(ReplicatedStorage.Modules.RobloxWrapper)

local Trap = { }

function Trap.onTouch(hit)
    local isHumanoid = RobloxWrapper.instanceHasChild(hit, 'Humanoid')
    if isHumanoid then 
        local humanoid = hit.Parent.Humanoid
        Trap.killHumanoid(humanoid)
    end
end

function Trap.killHumanoid(humanoid)
    humanoid.Health = 0
end

return Trap
