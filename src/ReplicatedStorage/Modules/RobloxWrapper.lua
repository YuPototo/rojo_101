--[[
    Wrapper over Roblox API. For convenience.
--]]

local RobloxWrapper = { }

--[[
    Check if instance has a child named childName
--]]
function RobloxWrapper.instanceHasChild(instance, childName)
    return instance.Parent:FindFirstChild(childName) ~= nil
end

return RobloxWrapper
