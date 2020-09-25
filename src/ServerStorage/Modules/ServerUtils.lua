local ServerUtils = { }

--[[
  set Model's primary part as primaryPart
--]]
function ServerUtils.setModelPrimaryPart(model, primaryPartName)
    local primaryPart = model:WaitForChild(primaryPartName)
    model.PrimaryPart = primaryPart
end


return ServerUtils