-- join_criminal.lua
local function JoinCriminal()
    local crimpad = workspace.Warrior.Body.Seats:GetChildren()[3]
    local oldpos = crimpad.Position
    local Players = game:GetService("Players")
    local LocalPlayer = Players.LocalPlayer

    local function getTargetHRP()
        if LocalPlayer.Character then
            return LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
        end
        return nil
    end

    crimpad.Size = Vector3.new(10, 1, 5)
    crimpad.Transparency = 0
    crimpad.BrickColor = BrickColor.new("Bright red")
    crimpad.Material = Enum.Material.Neon

    local hrp = getTargetHRP()
    if hrp then
        crimpad.Position = hrp.Position - Vector3.new(0, hrp.Size.Y/2 + crimpad.Size.Y/2, 0)
    end

    task.delay(5, function()
        crimpad.Position = oldpos
        crimpad.Size = Vector3.new(1,1,1)
        crimpad.Transparency = 1
        crimpad.BrickColor = BrickColor.new("Bright red")
        crimpad.Material = Enum.Material.SmoothPlastic
    end)
end

return JoinCriminal
