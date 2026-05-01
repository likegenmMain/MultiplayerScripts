local L_10_ = game:GetService("Players").LocalPlayer
local x = 20
local y = Vector3.new(x, x, x)
local z = 0.7

game:GetService("RunService").RenderStepped:Connect(function()
    for _, L_17_ in ipairs(game:GetService("Players"):GetPlayers()) do
        if L_17_ ~= L_10_ and L_17_.Character then
            local L_20_ = L_17_.Character:FindFirstChild("HumanoidRootPart")
            if L_20_ and L_20_:IsA("BasePart") then
                L_20_.CanCollide = false
                L_20_.Size = y
                L_20_.Transparency = z
            end
        end
    end
end)
