local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("MoonCheats 0.01", "BloodTheme")


--Info
local Tab = Window:NewTab("Info")

--Movement

local Main = Window:NewTab("Movement")
local Section = Main:NewSection("Movement")
Section:NewSlider("WalkSpeed", "Set Walk Speed", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
Section:NewSlider("Jump Power", "Set Jump Power", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)
Section:NewButton("Speed Default", "Change speed to default", function(s)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
    print("Clicked")
end)
Section:NewButton("Jump Power Default", "Change Jump Power to default", function(s)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
    print("Clicked")
end)


--Keybinds


local Key = Window:NewTab("Key Binds")
local Section = Key:NewSection("Key Binds")
Section:NewKeybind("Hide GUI", "Hide Gui", Enum.KeyCode.RightShift, function()
	Library:ToggleUI()
end)
    