local players = game:GetService("Players")
local runService = game:GetService("RunService")
local playerColor = Color3.new(1, 0, 0)

local function highlightPlayers()
    for _, player in pairs(players:GetPlayers()) do
        local character = player.Character

        if character then
            for _, part in pairs(character:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.BrickColor = BrickColor.new(playerColor)
                    part.Material = Enum.Material.Neon
                end
            end
        end
    end
end

local function updateHighlight()
    while true do
        highlightPlayers()
        wait(0.5)
    end
end

runService.Heartbeat:Connect(updateHighlight)
