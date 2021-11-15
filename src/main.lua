if game.PlaceId == 23578803 then
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("BlazeHUB | Hotel Elephant", "Synapse")

    -- MAIN
    local Main = Window:NewTab("Main")
    
local TeamSection = Main:NewSection("Teams")
    TeamSection:NewButton("Become Manager", "Changes your team to manager.", function()    
    local args = {
        [1] = "Bright green"
    }
    
    game:GetService("ReplicatedStorage").ChangeTeam:InvokeServer(unpack(args))
end)
    
    TeamSection:NewButton("Become Shop Assistant", "Changes your team to Shop Assistant.", function()    
    local args = {
        [1] = "Bright blue"
    }

    game:GetService("ReplicatedStorage").ChangeTeam:InvokeServer(unpack(args))
end)

    TeamSection:NewButton("Become Concierge", "Changes your team to Concierge.", function()    
    local args = {
        [1] = "Burgundy"
    }   

    game:GetService("ReplicatedStorage").ChangeTeam:InvokeServer(unpack(args))
end)

    TeamSection:NewButton("Become Waiter/Waitress", "Changes your team to Waiter/Waitress.", function()    
    local args = {
        [1] = "Bright red"
    }

    game:GetService("ReplicatedStorage").ChangeTeam:InvokeServer(unpack(args))
end)

    TeamSection:NewButton("Become Hotel Guest", "Changes your team to Hotel Guest.", function()    
    local args = {
        [1] = "Bright yellow"
    }

    game:GetService("ReplicatedStorage").ChangeTeam:InvokeServer(unpack(args))
end)

    -- Player
    local Player = Window:NewTab("Player")
    
local LocalPlayerSection = Player:NewSection("LocalPlayer")
    LocalPlayerSection:NewButton("Give 10000 Cash", "Give yourself 10000 cash.", function()   
    local args ={
        [1] = false,
        [2] = 10000,
        [3] = "Cash",
        [4] = game:GetService("Players").LocalPlayer
    }

    game:GetService("ReplicatedStorage").MoneyRequest:FireServer(unpack(args))
end)

    -- RAGE
    local Rage = Window:NewTab("Rage")

local RageSection = Rage:NewSection("Rage")
    RageSection:NewButton("Destroy Map", "Removes coalitions for all parts.", function(toggle)   
        for _, GameFucked in pairs(game:GetDescendants()) do
	    game.ReplicatedStorage.DoorOpener:FireServer(GameFucked)
	 end
end)

    RageSection:NewButton("Give Everyone 10000 Cash", "Gives everyone 10000 cash.", function()
    Players = game:GetService("Players")
	for i, plr in pairs(Players:GetPlayers()) do
		local args = {
			[1] = false,
			[2] = 10000,
			[3] = "Cash",
			[4] = plr
		}

		game:GetService("ReplicatedStorage").MoneyRequest:FireServer(unpack(args))
	end
end)

    RageSection:NewButton("Remove 10000 Cash From Everyone", "Removes 10000 Cash From EVERYONE.", function()    
    Players = game:GetService("Players")
	for i, plr in pairs(Players:GetPlayers()) do
		local Table = {
			[1] = false,
			[2] = -10000,
			[3] = "Cash",
			[4] = plr
		}

		game:GetService("ReplicatedStorage").MoneyRequest:FireServer(unpack(Table))
	end
end)

    -- CREDITS
    local Credits = Window:NewTab("Credits")

local CreditSection = Credits:NewSection("Credits")
    CreditSection:NewLabel("UI - Kavo UI Library")
    CreditSection:NewLabel("Scripts - Teemsploit")
    CreditSection:NewButton("Copy Discord Server Link", "This will copy the Discord Server link to your clipboard.", function()
    	setclipboard("https://discord.gg/cMZQJzZKnd")
    end)
elseif game.PlaceId == 189707 then
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("BlazeHUB | Natural Disaster Survival", "Synapse")

    -- MAIN
    local Main = Window:NewTab("Main")

local MainSection = Main:NewSection("Main")
    MainSection:NewToggle("Vote Map", "Open the menu to vote for a map.", function(toggle)
    if toggle then
    VoteMenu = game.Players.LocalPlayer.PlayerGui.MainGui.MapVotePage
        VoteMenu.Visible = true
    else
        VoteMenu.Visible = false
    end
end)

    MainSection:NewToggle("Auto-Farm", "Automatically farm wins.", function(toggle)
    if toggle then
    getgenv().AutoFarm = true
    while wait(5) do
        if getgenv().AutoFarm == true then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-290, 178, 379)
        end
        end
    else
        getgenv().AutoFarm = false
    end
end)
    
    -- TOOLS
local ToolSection = Main:NewSection("Tools")
    ToolSection:NewButton("Get Green Balloon", "Somebody in the server needs to own the green balloon for this to work.", function()
        for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
        if v.Name == "GreenBalloon" then
        free = v:Clone()
        free.Parent = game.Players.LocalPlayer.Character
        wait()
        free.Parent = game.Players.LocalPlayer.Backpack
    end
end
end)

    -- PLAYER
    local Player = Window:NewTab("Player")

local LocalPlayerSection = Player:NewSection("LocalPlayer")
    LocalPlayerSection:NewSlider("WalkSpeed", "Changes your walkspeed.", 250, 16, function(v)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
end)
 
    LocalPlayerSection:NewSlider("JumpPower", "Changes your jumppower.", 250, 50, function(v)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
end)
    
    LocalPlayerSection:NewToggle("Loop-Heal", "Loop-heal yourself.", function(toggle)
    if toggle then
    getgenv().LoopHeal = true
    while wait() do
        if getgenv().LoopHeal == true then
        game.Players.LocalPlayer.Character.Humanoid.Health = 100
        end
    end
    else
        getgenv().LoopHeal = false
    end
end)
    
    
    LocalPlayerSection:NewButton("Disable Fall Damage", "Stops you from taking damage when falling.", function()
        game.Players.LocalPlayer.Character.FallDamageScript:Destroy()
end)
   
    -- TELEPORTS
    local Teleport = Window:NewTab("Teleports")

local TeleportSection = Teleport:NewSection("Teleports")
    TeleportSection:NewButton("Lobby", "Teleport to the lobby.", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-290, 178, 379)
end)

    TeleportSection:NewButton("Map", "Teleport to the map.", function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(106, 46, 3)
end)

    
    -- CREDITS
    local Credits = Window:NewTab("Credits")

local CreditSection = Credits:NewSection("Credits")
    CreditSection:NewLabel("UI - Kavo UI Library")
    CreditSection:NewButton("Copy Discord Server Link", "This will copy the Discord Server link to your clipboard.", function()
    	setclipboard("https://discord.gg/cMZQJzZKnd")
    end)
else
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("BlazeHUB | Universal", "Synapse")

    -- MAIN
    local Main = Window:NewTab("Main")
    
local UniversalSection = Main:NewSection("Universal Scripts")
    UniversalSection:NewButton("Fate's Admin", "Credits - GitHub/fatesc", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/fatesc/fates-admin/main/main.lua"))();
end)

    UniversalSection:NewButton("Ez Hub", "Credits - GitHub/debug420", function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/debug420/Ez-Industries-Launcher-Data/master/Launcher.lua'),true))()
end)
    UniversalSection:NewButton("CMD-X", "Credits - GitHub/CMD-X", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source", true))()
end)

    -- PLAYER
    local Player = Window:NewTab("Player")

local LocalPlayerSection = Player:NewSection("LocalPlayer")
    LocalPlayerSection:NewSlider("WalkSpeed", "Changes your walkspeed.", 250, 16, function(v)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
    end)
 
    LocalPlayerSection:NewSlider("JumpPower", "Changes your jumppower.", 250, 50, function(v)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
    end)
    
    -- CREDITS
    local Credits = Window:NewTab("Credits")

local CreditSection = Credits:NewSection("Credits")
    CreditSection:NewLabel("UI - Kavo UI Library")
    CreditSection:NewButton("Copy Discord Server Link", "This will copy the Discord Server link to your clipboard.", function()
    	setclipboard("https://discord.gg/cMZQJzZKnd")
    end)
end
