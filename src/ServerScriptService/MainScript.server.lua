-- Serivces
local Players = game:GetService("Players")
local ServerStorage = game:GetService("ServerStorage")
local CollectionService = game:GetService("CollectionService")

-- Modules
local Trap = require(ServerStorage.Modules.Trap)
local ServerUtils = require(ServerStorage.Modules.ServerUtils)

-- 获取 world model，并设置在原点
local WorldModel = ServerStorage:WaitForChild("WorldModel")
ServerUtils.setModelPrimaryPart(WorldModel, "Floor")
local cf = CFrame.new(0, 0, 0)
WorldModel:SetPrimaryPartCFrame(cf)
WorldModel.Parent = workspace

-- 给所有的 trap 加上 Touch 事件
local TRAP_TAG = 'trap'
for _, trap in pairs(CollectionService:GetTagged(TRAP_TAG)) do
    trap.Touched:Connect(Trap.onTouch)
end

-- 修改玩家的 respawnTime
Players.RespawnTime = 1

