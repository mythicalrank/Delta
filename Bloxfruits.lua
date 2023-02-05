if _G.Key == game:GetService("RbxAnalyticsService"):GetClientId() then
_G.Loading = false

repeat wait() until game:IsLoaded()
repeat wait() until game:GetService("Players")
repeat wait() until game:GetService("Players").LocalPlayer
repeat wait() until game:GetService("Players").LocalPlayer.PlayerGui
repeat wait() until game:GetService("ReplicatedStorage").Effect.Container
if not game:IsLoaded() then
	local GameLoadGui = Instance.new("Message",workspace);
	GameLoadGui.Text = 'Wait Game Loading';
	game.Loaded:Wait();
	GameLoadGui:Destroy();
	task.wait();
end;
spawn(function()
    while true do wait()
        if game:GetService("Players").LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam") then
			repeat wait()
				if game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("Main").ChooseTeam.Visible == true then
						for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.Activated)) do                                                                                                
							v.Function()
						end
					 end
			until game.Players.LocalPlayer.Team ~= nil and game:IsLoaded()
		end
    end
end)



---------------
local repo = 'https://raw.githubusercontent.com/Piwwy0909/Makima_Hub/main/'

local Library = loadstring(game:HttpGet(repo .. 'LinoriaLib'))()
local SaveManager = loadstring(game:HttpGet(repo .. 'SaveManager-obfuscated.lua'))()
local ThemeManager = loadstring(game:HttpGet(repo .. 'ThemeEdit-obfuscated.lua'))()

--Auto Rejoin System
spawn(function()
    while true do wait()
        getgenv().rejoin = game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(Kick)
                if Kick.Name == 'ErrorPrompt' and Kick:FindFirstChild('MessageArea') and Kick.MessageArea:FindFirstChild("ErrorFrame") then
                    game:GetService("TeleportService"):Teleport(game.PlaceId)
                    wait(50)
                end
        end)
    end
end)
_G.SaveSetting = {
   AutoFarm = false,
   AutoFarmSky = false,
   Superhuman = false,
   AutoFarmBone = false,
   AutoCakePrince = false,
   AutoThirdWorld = false,
   AutoFarmMagma = false,
   AutoFarmFish = false,
   AutoFarmDragonScale = false,
   BypassTp = true,
   FastTween = true,
   AutoFarmCandy = false,
   Godhuman = false,
   AutorandomBone = false,
   AutoHollow = false,
   AutoStoreFruit = true,
   BringFruit = true,
   AutoRandomFruit = true,
   HideDmg = false
}
   function LoadSettings()
	   if readfile and writefile and isfile and isfolder then
		   if not isfolder("Delta Hub") then
			   makefolder("Delta Hub")
		   end
		   if not isfolder("Delta Hub/Blox Fruits/") then
			   makefolder("Delta Hub/Blox Fruits/")
		   end
		   if not isfile("Delta Hub/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json") then
			   writefile("Delta Hub/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json", game:GetService("HttpService"):JSONEncode(_G.SaveSetting))
		   else
			   local Decode = game:GetService("HttpService"):JSONDecode(readfile("Delta Hub/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json"))
			   for i,v in pairs(Decode) do
				   _G.SaveSetting[i] = v
			   end
		   end
	   else
		   return warn("Status : Undetected Executor")
	   end
   end
   
   function savesettings()
	   if readfile and writefile and isfile and isfolder then
		   if not isfile("Delta Hub/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json") then
			   LoadSettings()
		   else
			   local Decode = game:GetService("HttpService"):JSONDecode(readfile("Delta Hub/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json"))
			   local Array = {}
			   for i,v in pairs(_G.SaveSetting) do
				   Array[i] = v
			   end
			   writefile("Delta Hub/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json", game:GetService("HttpService"):JSONEncode(Array))
		   end
	   else
		   return warn("Status : Undetected Executor")
	   end
   end
   
LoadSettings()


Old_World = false
New_World = false
Three_World = false
local placeId = game.PlaceId
if placeId == 2753915549 then
    Old_World = true
elseif placeId == 4442272183 then
    New_World = true
elseif placeId == 7449423635 then
    Three_World = true
end
-- [Deleted Effect Auto]

	task.spawn(function()
		while wait() do
			pcall(function()
				if HideDmg then
					game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = false
				else
					game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = true
				end
			end)
		end
	end)

task.spawn(function()
    while task.wait() do
	
			for i, v in pairs(game.Workspace["_WorldOrigin"]:GetChildren()) do
				if v.Name == "Dust" or v.Name == "eff" or v.Name == "CurvedRing" or v.Name == "SwordSlash" or v.Name == "Sounds" or v.Name == "SlashHit" then
					v:Destroy() 
				end
			end
		
    end
end)

task.spawn(function()
    while wait() do
      
            pcall(function()
                for i,v in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
                    if v.ClassName == "MeshPart" then
                        v.Transparency = 0.5
                    end
                end
                for i,v in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
                    if v.Name == "Head" then
                        v.Transparency = 0.5
                    end
                end
                for i,v in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
                    if v.ClassName == "Accessory" then
                        v.Handle.Transparency = 0.5
                    end
                end
                for i,v in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
                    if v.ClassName == "Decal" then
                        v.Transparency = 0.5
                    end
                end
            end)
        end

end)

if game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild("Death") then
	game:GetService("ReplicatedStorage").Effect.Container.Death:Destroy()
end
if game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild("Respawn") then
	game:GetService("ReplicatedStorage").Effect.Container.Respawn:Destroy()
end

function click()
   game:GetService'VirtualUser':CaptureController()
   game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
end

function AutoHaki()
	if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
	end
end
function Equip(ToolX)
if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(ToolX) then
    getgenv().Tol = game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(ToolX)
    game.Players.LocalPlayer.Character.Humanoid:EquipTool(Tol)
end
end
    -- [CheckMasteryWeapon]

function CheckMasteryWeapon(NameWe,MasNum)
	if game.Players.LocalPlayer.Backpack:FindFirstChild(NameWe) then
		if tonumber(game.Players.LocalPlayer.Backpack:FindFirstChild(NameWe).Level.Value) < tonumber(MasNum) then
			return "true DownTo"
		elseif tonumber(game.Players.LocalPlayer.Backpack:FindFirstChild(NameWe).Level.Value) >= tonumber(MasNum) then
			return "true UpTo"
		end
	end
	if game.Players.LocalPlayer.Character:FindFirstChild(NameWe) then
		if tonumber(game.Players.LocalPlayer.Character:FindFirstChild(NameWe).Level.Value) < tonumber(MasNum) then
			return "true DownTo"
		elseif tonumber(game.Players.LocalPlayer.Character:FindFirstChild(NameWe).Level.Value) >= tonumber(MasNum) then
			return "true UpTo"
		end
	end
	return "else"
end


-- [CheckMaterial]

local function CheckMaterial(v1)
	if Old_World then 
		if (v1=="Magma Ore") then 
			MaterialMob={"Military Soldier [Lv. 300]","Military Spy [Lv. 325]"};
			CFrameMon=CFrame.new( -5815,84,8820);
		elseif ((v1=="Leather") or (v1=="Scrap Metal")) then 
			MaterialMob={"Brute [Lv. 45]"};
			CFrameMon=CFrame.new( -1145,15,4350);
		elseif (v1=="Angel Wings") then 
			MaterialMob={"God's Guard [Lv. 450]"};
			CFrameMon=CFrame.new( -4698,845, -1912);
		elseif (v1=="Fish Tail") then 
			MaterialMob={"Fishman Warrior [Lv. 375]","Fishman Commando [Lv. 400]"};
			CFrameMon=CFrame.new(61123,19,1569);
		end 
	end 
	if New_World then 
		if (v1=="Magma Ore") then 
			MaterialMob={"Magma Ninja [Lv. 1175]"};
			CFrameMon=CFrame.new( -5428,78, -5959);
		elseif (v1=="Scrap Metal") then
			MaterialMob={"Swan Pirate [Lv. 775]"};
			CFrameMon=CFrame.new(878,122,1235);
		elseif (v1=="Radioactive Material") then 
			MaterialMob={"Factory Staff [Lv. 800]"};
			CFrameMon=CFrame.new(295,73, -56);
		elseif (v1=="Vampire Fang") then 
			MaterialMob={"Vampire [Lv. 975]"};
			CFrameMon=CFrame.new( -6033,7, -1317);
		elseif (v1=="Mystic Droplet") then 
			MaterialMob={"Water Fighter [Lv. 1450]","Sea Soldier [Lv. 1425]"};
			CFrameMon=CFrame.new( -3385,239, -10542);
		end 
	end 
	if Three_World then 
		if (v1=="Mini Tusk") then 
			MaterialMob={"Mythological Pirate [Lv. 1850]"};
			CFrameMon=CFrame.new( -13545,470, -6917);
		elseif (v1=="Fish Tail") then 
			MaterialMob={"Fishman Raider [Lv. 1775]","Fishman Captain [Lv. 1800]"};
			CFrameMon=CFrame.new( -10993,332, -8940);
		elseif (v1=="Scrap Metal") then 
			MaterialMob={"Jungle Pirate [Lv. 1900]"};
			CFrameMon=CFrame.new( -12107,332, -10549);
		elseif (v1=="Dragon Scale") then 
			MaterialMob={"Dragon Crew Archer [Lv. 1600]","Dragon Crew Warrior [Lv. 1575]"};
			CFrameMon=CFrame.new(6594,383,139);
		elseif (v1=="Conjured Cocoa") then 
			MaterialMob={"Cocoa Warrior [Lv. 2300]","Chocolate Bar Battler [Lv. 2325]","Sweet Thief [Lv. 2350]","Candy Rebel [Lv. 2375]"};
			CFrameMon=CFrame.new(620.6344604492188,78.93644714355469, -12581.369140625);
		elseif (v1=="Demonic Wisp") then MaterialMob={"Demonic Soul [Lv. 2025]"};
			CFrameMon=CFrame.new( -9507,172,6158);
		elseif (v1=="Gunpowder") then MaterialMob={"Pistol Billionaire [Lv. 1525]"};
			CFrameMon=CFrame.new( -469,74,5904);
		end 
	end 
end
task.spawn(function()
	while wait() do
		pcall(function()
--AutoFarm
function CheckQuest()
	local MyLevel = game.Players.LocalPlayer.Data.Level.Value
	if Old_World then
		if MyLevel == 1 or MyLevel <= 9 then -- Bandit
			LevelFarm = 1

			Name = "Bandit [Lv. 5]"
			QuestName = "BanditQuest1"

			LevelQuest = 1
			NameMon = "Bandit"

			CFrameMon = CFrame.new(1145, 17, 1634)
			VectorMon = Vector3.new(1145, 17, 1634)

			CFrameQuest = CFrame.new(1060, 17, 1547)
			VectorQuest = Vector3.new(1060, 17, 1547)
		elseif MyLevel == 10 or MyLevel <= 14 then -- Monkey
			LevelFarm = 2

			Name = "Monkey [Lv. 14]"
			QuestName = "JungleQuest"

			LevelQuest = 1
			NameMon = "Monkey"

			CFrameMon = CFrame.new(-1496, 39, 35)
			VectorMon = Vector3.new(-1496, 39, 35)

			CFrameQuest = CFrame.new(-1602, 37, 152)
			VectorQuest = Vector3.new(-1602, 37, 152)
		elseif MyLevel == 15 or MyLevel <= 29 then -- Gorilla
			LevelFarm = 3

			Name = "Gorilla [Lv. 20]"
			QuestName = "JungleQuest"

			LevelQuest = 2
			NameMon = "Gorilla"

			CFrameMon = CFrame.new(-1237, 6, -486)
			VectorMon = Vector3.new(-1237, 7, -486)

			CFrameQuest = CFrame.new(-1602, 37, 152)
			VectorQuest = Vector3.new(-1602, 37, 152)
		elseif MyLevel == 30 or MyLevel <= 39 then -- Pirate
			LevelFarm = 4

			Name = "Pirate [Lv. 35]"
			QuestName = "BuggyQuest1"

			LevelQuest = 1
			NameMon = "Pirate"

			CFrameMon = CFrame.new(-1115, 14, 3938)
			VectorMon = Vector3.new(-1115, 14, 3938)

			CFrameQuest = CFrame.new(-1140, 5, 3828)
			VectorQuest = Vector3.new(-1140, 5, 3828)
		elseif MyLevel == 40 or MyLevel <= 59 then -- Brute
			LevelFarm = 5

			Name = "Brute [Lv. 45]"
			QuestName = "BuggyQuest1"

			LevelQuest = 2
			NameMon = "Brute"

			CFrameMon = CFrame.new(-1145, 15, 4350)
			VectorMon = Vector3.new(-1146, 15, 4350)

			CFrameQuest = CFrame.new(-1140, 5, 3828)
			VectorQuest = Vector3.new(-1140, 5, 3828)
		elseif MyLevel == 60 or MyLevel <= 74 then -- Desert Bandit
			LevelFarm = 6

			Name = "Desert Bandit [Lv. 60]"
			QuestName = "DesertQuest"

			LevelQuest = 1
			NameMon = "Desert Bandit"

			CFrameMon = CFrame.new(932, 7, 4484)
			VectorMon = Vector3.new(932, 7, 4484)

			CFrameQuest = CFrame.new(897, 7, 4388)
			VectorQuest = Vector3.new(897, 7, 4388)
		elseif MyLevel == 75 or MyLevel <= 89 then -- Desert Officre
			LevelFarm = 7

			Name = "Desert Officer [Lv. 70]"
			QuestName = "DesertQuest"

			LevelQuest = 2
			NameMon = "Desert Officer"

			CFrameMon = CFrame.new(1572, 10, 4373)
			VectorMon = Vector3.new(1572, 10, 4373)

			CFrameQuest = CFrame.new(897, 7, 4388)
			VectorQuest = Vector3.new(897, 7, 4388)
		elseif MyLevel == 90 or MyLevel <= 99 then -- Snow Bandits
			LevelFarm = 8

			Name = "Snow Bandit [Lv. 90]"
			QuestName = "SnowQuest"

			LevelQuest = 1
			NameMon = "Snow Bandits"

			CFrameMon = CFrame.new(1289, 150, -1442)
			VectorMon = Vector3.new(1289, 106, -1442)

			CFrameQuest = CFrame.new(1386, 87, -1297)
			VectorQuest = Vector3.new(1386, 87, -1297)
		elseif MyLevel == 100 or MyLevel <= 119 then -- Snowman
			LevelFarm = 9

			Name = "Snowman [Lv. 100]"
			QuestName = "SnowQuest"

			LevelQuest = 2
			NameMon = "Snowman"

			CFrameMon = CFrame.new(1289, 150, -1442)
			VectorMon = Vector3.new(1289, 106, -1442)

			CFrameQuest = CFrame.new(1386, 87, -1297)
			VectorQuest = Vector3.new(1386, 87, -1297)
		elseif MyLevel == 120 or MyLevel <= 149 then -- Chief Petty Officer
			LevelFarm = 10

			Name = "Chief Petty Officer [Lv. 120]"
			QuestName = "MarineQuest2"

			LevelQuest = 1
			NameMon = "Chief Petty Officer"

			CFrameMon = CFrame.new(-4855, 23, 4308)
			VectorMon = Vector3.new(-4855, 23, 4308)

			CFrameQuest = CFrame.new(-5036, 29, 4325)
			VectorQuest = Vector3.new(-5036, 29, 4325)
		elseif MyLevel == 150 or MyLevel <= 174 then -- Sky Bandit
			LevelFarm = 11

			Name = "Sky Bandit [Lv. 150]"
			QuestName = "SkyQuest"

			LevelQuest = 1
			NameMon = "Sky Bandit"

			CFrameMon = CFrame.new(-4981, 278, -2830)
			VectorMon = Vector3.new(-4981, 278, -2830)

			CFrameQuest = CFrame.new(-4842, 718, -2623)
			VectorQuest = Vector3.new(-4842, 718, -2623)
		elseif MyLevel == 175 or MyLevel <= 189 then -- Dark Master
			LevelFarm = 12

			Name = "Dark Master [Lv. 175]"
			QuestName = "SkyQuest"

			LevelQuest = 2
			NameMon = "Dark Master"

			CFrameMon = CFrame.new(-5250, 389, -2272)
			VectorMon = Vector3.new(-5250, 389, -2272)

			CFrameQuest = CFrame.new(-4842, 718, -2623)
			VectorQuest = Vector3.new(-4842, 718, -2623)
		elseif MyLevel == 190 or MyLevel <= 209 then -- Dark Master
			LevelFarm = 13

			Name = "Prisoner [Lv. 190]"
			QuestName = "PrisonerQuest"

			LevelQuest = 1
			NameMon = "Prisoner"

			CFrameMon = CFrame.new(5411, 96, 690)
			VectorMon = Vector3.new(5411, 96, 690)

			CFrameQuest = CFrame.new(5308, 2, 474)
			VectorQuest = Vector3.new(5308, 2, 474)
		elseif MyLevel == 210 or MyLevel <= 249 then -- Dark Master
			LevelFarm = 14

			Name = "Dangerous Prisoner [Lv. 210]"
			QuestName = "PrisonerQuest"

			LevelQuest = 2
			NameMon = "Dangerous Prisoner"

			CFrameMon = CFrame.new(5411, 96, 690)
			VectorMon = Vector3.new(5411, 96, 690)

			CFrameQuest = CFrame.new(5308, 2, 474)
			VectorQuest = Vector3.new(5308, 2, 474)
		elseif MyLevel == 250 or MyLevel <= 299 then -- Toga Warrior
			LevelFarm = 15

			Name = "Toga Warrior [Lv. 250]"
			QuestName = "ColosseumQuest"

			LevelQuest = 1
			NameMon = "Toga Warrior"

			CFrameMon = CFrame.new(-1824, 50, -2743)
			VectorMon = Vector3.new(-1824, 50, -2743)

			CFrameQuest = CFrame.new(-1576, 8, -2985)
			VectorQuest = Vector3.new(-1576, 8, -2985)
		elseif MyLevel == 300 or MyLevel <= 329 then -- Military Soldier
			LevelFarm = 16

			Name = "Military Soldier [Lv. 300]"
			QuestName = "MagmaQuest"

			LevelQuest = 1
			NameMon = "Military Soldier"

			CFrameMon = CFrame.new(-5408, 11, 8447)
			VectorMon = Vector3.new(-5408, 11, 8447)

			CFrameQuest = CFrame.new(-5316, 12, 8517)
			VectorQuest = Vector3.new(-5316, 12, 8517)
		elseif MyLevel == 330 or MyLevel <= 374 then -- Military Spy
			LevelFarm = 17

			Name = "Military Spy [Lv. 325]"
			QuestName = "MagmaQuest"

			LevelQuest = 2
			NameMon = "Military Spy"

			CFrameMon = CFrame.new(-5815, 84, 8820)
			VectorMon = Vector3.new(-5815, 84, 8820)

			CFrameQuest = CFrame.new(-5316, 12, 8517)
			VectorQuest = Vector3.new(-5316, 12, 8517)
		elseif MyLevel == 375 or MyLevel <= 399 then -- Fishman Warrior
			LevelFarm = 18

			Name = "Fishman Warrior [Lv. 375]"
			QuestName = "FishmanQuest"

			LevelQuest = 1
			NameMon = "Fishman Warrior"

			CFrameMon = CFrame.new(60859, 19, 1501)
			VectorMon = Vector3.new(60859, 19, 1501)

			CFrameQuest = CFrame.new(61123, 19, 1569)
			VectorQuest = Vector3.new(61123, 19, 1569)
			if (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
			end
		elseif MyLevel == 400 or MyLevel <= 449 then -- Fishman Commando
			LevelFarm = 19

			Name = "Fishman Commando [Lv. 400]"
			QuestName = "FishmanQuest"

			LevelQuest = 2
			NameMon = "Fishman Commando"

			CFrameMon = CFrame.new(61891, 19, 1470)
			VectorMon = Vector3.new(61891, 19, 1470)

			CFrameQuest = CFrame.new(61123, 19, 1569)
			VectorQuest = Vector3.new(61123, 19, 1569)
						if (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
			end
		elseif MyLevel == 450 or MyLevel <= 474 then -- God's Guards
			LevelFarm = 20

			Name = "God's Guard [Lv. 450]"
			QuestName = "SkyExp1Quest"

			LevelQuest = 1
			NameMon = "God's Guards"

			CFrameMon = CFrame.new(-4698, 845, -1912)
			VectorMon = Vector3.new(-4698, 845, -1912)

			CFrameQuest = CFrame.new(-4722, 845, -1954)
			VectorQuest = Vector3.new(-4722, 846, -1954)
			if AutoFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
					end
		elseif MyLevel == 475 or MyLevel <= 524 then -- Shandas
			LevelFarm = 21

			Name = "Shanda [Lv. 475]"
			QuestName = "SkyExp1Quest"

			LevelQuest = 2
			NameMon = "Shandas"

			CFrameMon = CFrame.new(-7685, 5567, -502)
			VectorMon = Vector3.new(-7685, 5567, -502)

			CFrameQuest = CFrame.new(-7862, 5546, -380)
			VectorQuest = Vector3.new(-7862, 5546, -380)
			if AutoFarm and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
					end
		elseif MyLevel == 525 or MyLevel <= 549 then -- Royal Squad
			LevelFarm = 22

			Name = "Royal Squad [Lv. 525]"
			QuestName = "SkyExp2Quest"

			LevelQuest = 1
			NameMon = "Royal Squad"

			CFrameMon = CFrame.new(-7670, 5607, -1460)
			VectorMon = Vector3.new(-7670, 5607, -1460)

			CFrameQuest = CFrame.new(-7904, 5636, -1412)
			VectorQuest = Vector3.new(-7904, 5636, -1412)
		elseif MyLevel == 550 or MyLevel <= 624 then -- Royal Soldier
			LevelFarm = 23

			Name = "Royal Soldier [Lv. 550]"
			QuestName = "SkyExp2Quest"

			LevelQuest = 2
			NameMon = "Royal Soldier"

			CFrameMon = CFrame.new(-7828, 5607, -1744)
			VectorMon = Vector3.new(-7828, 5607, -1744)

			CFrameQuest = CFrame.new(-7904, 5636, -1412)
			VectorQuest = Vector3.new(-7904, 5636, -1412)
		elseif MyLevel == 625 or MyLevel <= 649 then -- Galley Pirate
			LevelFarm = 24

			Name = "Galley Pirate [Lv. 625]"
			QuestName = "FountainQuest"

			LevelQuest = 1
			NameMon = "Galley Pirate"

			CFrameMon = CFrame.new(5589, 45, 3996)
			VectorMon = Vector3.new(5589, 45, 3996)

			CFrameQuest = CFrame.new(5256, 39, 4050)
			VectorQuest = Vector3.new(5256, 39, 4050)
		elseif MyLevel >= 650 then -- Galley Captain
			LevelFarm = 25

			Name = "Galley Captain [Lv. 650]"
			QuestName = "FountainQuest"

			LevelQuest = 2
			NameMon = "Galley Captain"

			CFrameMon = CFrame.new(5649, 39, 4936)
			VectorMon = Vector3.new(5649, 39, 4936)

			CFrameQuest = CFrame.new(5256, 39, 4050)
			VectorQuest = Vector3.new(5256, 39, 4050)
		end
	end
	if New_World then
		if MyLevel == 700 or MyLevel <= 724 then -- Raider [Lv. 700]
			LevelFarm = 1

			Name = "Raider [Lv. 700]"
			QuestName = "Area1Quest"

			LevelQuest = 1
			NameMon = "Raider"

			CFrameQuest = CFrame.new(-425, 73, 1837)
			VectorQuest = Vector3.new(-425, 73, 1837)

			CFrameMon = CFrame.new(-746, 39, 2390)
			VectorMon = Vector3.new(-746, 39, 2389)
		elseif MyLevel == 725 or MyLevel <= 774 then -- Mercenary [Lv. 725]
			LevelFarm = 2

			Name = "Mercenary [Lv. 725]"
			QuestName = "Area1Quest"

			LevelQuest = 2
			NameMon = "Mercenary"

			CFrameQuest = CFrame.new(-425, 73, 1837)
			VectorQuest = Vector3.new(-425, 73, 1837)

			CFrameMon = CFrame.new(-874, 141, 1312)
			VectorMon = Vector3.new(-874, 141, 1312)
		elseif MyLevel == 775 or MyLevel <= 799 then -- Swan Pirate [Lv. 775]
			LevelFarm = 3

			Name = "Swan Pirate [Lv. 775]"
			QuestName = "Area2Quest"

			LevelQuest = 1
			NameMon = "Swan Pirate"

			CFrameQuest = CFrame.new(634, 73, 918)
			VectorQuest = Vector3.new(634, 73, 918)

			CFrameMon = CFrame.new(878, 122, 1235)
			VectorMon = Vector3.new(878, 122, 1235)
		elseif MyLevel == 800 or MyLevel <= 874 then -- Factory Staff [Lv. 800]
			LevelFarm = 4

			Name = "Factory Staff [Lv. 800]"
			QuestName = "Area2Quest"

			LevelQuest = 2
			NameMon = "Factory Staff"

			CFrameQuest = CFrame.new(634, 73, 918)
			VectorQuest = Vector3.new(634, 73, 918)

			CFrameMon = CFrame.new(295, 73, -56)
			VectorMon = Vector3.new(295, 73, -56)
		elseif MyLevel == 875 or MyLevel <= 899 then -- Marine Lieutenant [Lv. 875]
			LevelFarm = 5

			Name = "Marine Lieutenant [Lv. 875]"
			QuestName = "MarineQuest3"

			LevelQuest = 1
			NameMon = "Marine Lieutenant"

			CFrameMon = CFrame.new(-2806, 73, -3038)
			VectorMon = Vector3.new(-2806, 73, -3038)

			CFrameQuest = CFrame.new(-2443, 73, -3219)
			VectorQuest = Vector3.new(-2443, 73, -3219)
		elseif MyLevel == 900 or MyLevel <= 949 then -- Marine Captain [Lv. 900]
			LevelFarm = 6

			Name = "Marine Captain [Lv. 900]"
			QuestName = "MarineQuest3"

			LevelQuest = 2
			NameMon = "Marine Captain"

			CFrameMon = CFrame.new(-1869, 73, -3320)
			VectorMon = Vector3.new(-1869, 73, -3320)

			CFrameQuest = CFrame.new(-2443, 73, -3219)
			VectorQuest = Vector3.new(-2443, 73, -3219)
		elseif MyLevel == 950 or MyLevel <= 974 then -- Zombie [Lv. 950]
			LevelFarm = 7

			Name = "Zombie [Lv. 950]"
			QuestName = "ZombieQuest"

			LevelQuest = 1
			NameMon = "Zombie"

			CFrameMon = CFrame.new(-5736, 126, -728)
			VectorMon = Vector3.new(-5736, 126, -728)

			CFrameQuest = CFrame.new(-5494, 49, -795)
			VectorQuest = Vector3.new(-5494, 49, -794)
		elseif MyLevel == 975 or MyLevel <= 999 then -- Vampire [Lv. 975]
			LevelFarm = 8

			Name = "Vampire [Lv. 975]"
			QuestName = "ZombieQuest"

			LevelQuest = 2
			NameMon = "Vampire"

			CFrameMon = CFrame.new(-6033, 7, -1317)
			VectorMon = Vector3.new(-6033, 7, -1317)

			CFrameQuest = CFrame.new(-5494, 49, -795)
			VectorQuest = Vector3.new(-5494, 49, -795)
		elseif MyLevel == 1000 or MyLevel <= 1049 then -- Snow Trooper [Lv. 1000] **
			LevelFarm = 9

			Name = "Snow Trooper [Lv. 1000]"
			QuestName = "SnowMountainQuest"

			LevelQuest = 1
			NameMon = "Snow Trooper"

			CFrameMon = CFrame.new(478, 402, -5362)
			VectorMon = Vector3.new(478, 402, -5362)

			CFrameQuest = CFrame.new(605, 402, -5371)
			VectorQuest = Vector3.new(605, 402, -5371)
		elseif MyLevel == 1050 or MyLevel <= 1099 then -- Winter Warrior [Lv. 1050]
			LevelFarm = 10

			Name = "Winter Warrior [Lv. 1050]"
			QuestName = "SnowMountainQuest"

			LevelQuest = 2
			NameMon = "Winter Warrior"

			CFrameMon = CFrame.new(1157, 430, -5188)
			VectorMon = Vector3.new(1157, 430, -5188)

			CFrameQuest = CFrame.new(605, 402, -5371)
			VectorQuest = Vector3.new(605, 402, -5371)
		elseif MyLevel == 1100 or MyLevel <= 1124 then -- Lab Subordinate [Lv. 1100]
			LevelFarm = 11

			Name = "Lab Subordinate [Lv. 1100]"
			QuestName = "IceSideQuest"

			LevelQuest = 1
			NameMon = "Lab Subordinate"

			CFrameMon = CFrame.new(-5782, 42, -4484)
			VectorMon = Vector3.new(-5782, 42, -4484)

			CFrameQuest = CFrame.new(-6060, 16, -4905)
			VectorQuest = Vector3.new(-6060, 16, -4905)
		elseif MyLevel == 1125 or MyLevel <= 1174 then -- Horned Warrior [Lv. 1125]
			LevelFarm = 12

			Name = "Horned Warrior [Lv. 1125]"
			QuestName = "IceSideQuest"

			LevelQuest = 2
			NameMon = "Horned Warrior"

			CFrameMon = CFrame.new(-6406, 24, -5805)
			VectorMon = Vector3.new(-6406, 24, -5805)

			CFrameQuest = CFrame.new(-6060, 16, -4905)
			VectorQuest = Vector3.new(-6060, 16, -4905)
		elseif MyLevel == 1175 or MyLevel <= 1199 then -- Magma Ninja [Lv. 1175]
			LevelFarm = 13

			Name = "Magma Ninja [Lv. 1175]"
			QuestName = "FireSideQuest"
			LevelQuest = 1
			NameMon = "Magma Ninja"

			CFrameMon = CFrame.new(-5428, 78, -5959)
			VectorMon = Vector3.new(-5428, 78, -5959)

			CFrameQuest = CFrame.new(-5430, 16, -5295)
			VectorQuest = Vector3.new(-5430, 16, -5296)
		elseif MyLevel == 1200 or MyLevel <= 1249 then -- Lava Pirate [Lv. 1200]
			LevelFarm = 14

			Name = "Lava Pirate [Lv. 1200]"
			QuestName = "FireSideQuest"

			LevelQuest = 2
			NameMon = "Lava Pirate"

			CFrameMon = CFrame.new(-5270, 42, -4800)
			VectorMon = Vector3.new(-5270, 42, -4800)

			CFrameQuest = CFrame.new(-5430, 16, -5295)
			VectorQuest = Vector3.new(-5430, 16, -5296)
		elseif MyLevel == 1250 or MyLevel <= 1274 then -- Ship Deckhand [Lv. 1250]
			LevelFarm = 15

			Name = "Ship Deckhand [Lv. 1250]"
			QuestName = "ShipQuest1"

			LevelQuest = 1
			NameMon = "Ship Deckhand"

			CFrameMon = CFrame.new(1198, 126, 33031)
			VectorMon = Vector3.new(1198, 126, 33031)

			CFrameQuest = CFrame.new(1038, 125, 32913)
			VectorQuest = Vector3.new(1038, 125, 32913)
		elseif MyLevel == 1275 or MyLevel <= 1299 then -- Ship Engineer [Lv. 1275]
			LevelFarm = 16

			Name = "Ship Engineer [Lv. 1275]"
			QuestName = "ShipQuest1"

			LevelQuest = 2
			NameMon = "Ship Engineer"

			CFrameMon = CFrame.new(918, 44, 32787)
			VectorMon = Vector3.new(918, 44, 32787)

			CFrameQuest = CFrame.new(1038, 125, 32913)
			VectorQuest = Vector3.new(1038, 125, 32913)
		elseif MyLevel == 1300 or MyLevel <= 1324 then -- Ship Steward [Lv. 1300]
			LevelFarm = 17

			Name = "Ship Steward [Lv. 1300]"
			QuestName = "ShipQuest2"

			LevelQuest = 1
			NameMon = "Ship Steward"

			CFrameMon = CFrame.new(915, 130, 33419)
			VectorMon = Vector3.new(915, 130, 33419)

			CFrameQuest = CFrame.new(969, 125, 33245)
			VectorQuest = Vector3.new(969, 125, 33245)
		elseif MyLevel == 1325 or MyLevel <= 1349 then -- Ship Officer [Lv. 1325]
			LevelFarm = 18

			Name = "Ship Officer [Lv. 1325]"
			QuestName = "ShipQuest2"

			LevelQuest = 2
			NameMon = "Ship Officer"

			CFrameMon = CFrame.new(916, 181, 33335)
			VectorMon = Vector3.new(916, 181, 33335)

			CFrameQuest = CFrame.new(969, 125, 33245)
			VectorQuest = Vector3.new(969, 125, 33245)
		elseif MyLevel == 1350 or MyLevel <= 1374 then -- Arctic Warrior [Lv. 1350]
			LevelFarm = 19

			Name = "Arctic Warrior [Lv. 1350]"
			QuestName = "FrostQuest"

			LevelQuest = 1
			NameMon = "Arctic Warrior"

			CFrameMon = CFrame.new(6038, 29, -6231)
			VectorMon = Vector3.new(6038, 29, -6231)

			VectorQuest = Vector3.new(5669, 28, -6482)
			CFrameQuest = CFrame.new(5669, 28, -6482)
		elseif MyLevel == 1375 or MyLevel <= 1424 then -- Snow Lurker [Lv. 1375]
			LevelFarm = 20

			Name = "Snow Lurker [Lv. 1375]"
			QuestName = "FrostQuest"

			LevelQuest = 2
			NameMon = "Snow Lurker"

			CFrameMon = CFrame.new(5560, 42, -6826)
			VectorMon = Vector3.new(5560, 42, -6826)

			VectorQuest = Vector3.new(5669, 28, -6482)
			CFrameQuest = CFrame.new(5669, 28, -6482)
		elseif MyLevel == 1425 or MyLevel <= 1449 then -- Sea Soldier [Lv. 1425]
			LevelFarm = 21
			Name = "Sea Soldier [Lv. 1425]"
			QuestName = "ForgottenQuest"

			LevelQuest = 1
			NameMon = "Sea Soldier"

			CFrameMon = CFrame.new(-3022, 16, -9722)
			VectorMon = Vector3.new(-3022, 16, -9722)

			CFrameQuest = CFrame.new(-3054, 237, -10148)
			VectorQuest = Vector3.new(-3054, 237, -10148)
		elseif MyLevel >= 1450 then -- Water Fighter [Lv. 1450]
			LevelFarm = 22
			Name = "Water Fighter [Lv. 1450]"
			QuestName = "ForgottenQuest"

			LevelQuest = 2
			NameMon = "Water Fighter"

			CFrameMon = CFrame.new(-3385, 239, -10542)
			VectorMon = Vector3.new(-3385, 239, -10542)

			CFrameQuest = CFrame.new(-3054, 237, -10148)
			VectorQuest = Vector3.new(-3054, 237, -10148)
		end
	end
	if Three_World then
		if MyLevel == 1500 or MyLevel <= 1524 then
			LevelFarm = 1

			Name = "Pirate Millionaire [Lv. 1500]"
			QuestName = "PiratePortQuest"

			LevelQuest = 1
			NameMon = "Pirate"

			CFrameMon = CFrame.new(-373, 75, 5550)
			VectorMon = Vector3.new(-373, 75, 5550)

			CFrameQuest = CFrame.new(-288, 44, 5576)
			VectorQuest = Vector3.new(-288, 44, 5576)
		elseif MyLevel == 1525 or MyLevel <= 1574 then
			LevelFarm = 2

			Name = "Pistol Billionaire [Lv. 1525]"
			QuestName = "PiratePortQuest"

			LevelQuest = 2
			NameMon = "Pistol"

			CFrameMon = CFrame.new(-469, 74, 5904)
			VectorMon = Vector3.new(-469, 74, 5904)

			CFrameQuest = CFrame.new(-288, 44, 5576)
			VectorQuest = Vector3.new(-288, 44, 5576)
		elseif MyLevel == 1575 or MyLevel <= 1599 then
			LevelFarm = 3

			Name = "Dragon Crew Warrior [Lv. 1575]"
			QuestName = "AmazonQuest"

			LevelQuest = 1
			NameMon = "Warrior"

			CFrameMon = CFrame.new(6339, 52, -1213)
			VectorMon = Vector3.new(6338, 52, -1213)

			CFrameQuest = CFrame.new(5835, 52, -1105)
			VectorQuest = Vector3.new(5835, 52, -1105)
		elseif MyLevel == 1600 or MyLevel <= 1624 then
			LevelFarm = 4

			Name = "Dragon Crew Archer [Lv. 1600]"
			QuestName = "AmazonQuest"

			LevelQuest = 2
			NameMon = "Archer"

			CFrameMon = CFrame.new(6594, 383, 139)
			VectorMon = Vector3.new(6594, 383, 139)

			CFrameQuest = CFrame.new(5835, 52, -1105)
			VectorQuest = Vector3.new(5835, 52, -1105)
		elseif MyLevel == 1625 or MyLevel <= 1649 then
			LevelFarm = 5

			Name = "Female Islander [Lv. 1625]"
			QuestName = "AmazonQuest2"

			LevelQuest = 1
			NameMon = "Female"

			CFrameMon = CFrame.new(5308, 819, 1047)
			VectorMon = Vector3.new(5308, 819, 1047)

			CFrameQuest = CFrame.new(5443, 602, 751)
			VectorQuest = Vector3.new(5443, 602, 751)
		elseif MyLevel == 1650 or MyLevel <= 1699 then
			LevelFarm = 6

			Name = "Giant Islander [Lv. 1650]"
			QuestName = "AmazonQuest2"

			LevelQuest = 2
			NameMon = "Giant Islanders"

			CFrameMon = CFrame.new(4951, 602, -68)
			VectorMon = Vector3.new(4951, 602, -68)

			CFrameQuest = CFrame.new(5443, 602, 751)
			VectorQuest = Vector3.new(5443, 602, 751)
		elseif MyLevel == 1700 or MyLevel <= 1724 then
			LevelFarm = 7

			Name = "Marine Commodore [Lv. 1700]"
			QuestName = "MarineTreeIsland"

			LevelQuest = 1
			NameMon = "Marine Commodore"

			CFrameMon = CFrame.new(2447, 73, -7470)
			VectorMon = Vector3.new(2447, 73, -7470)

			CFrameQuest = CFrame.new(2180, 29, -6737)
			VectorQuest = Vector3.new(2180, 29, -6737)
		elseif MyLevel == 1725 or MyLevel <= 1774 then
			LevelFarm = 8

			Name = "Marine Rear Admiral [Lv. 1725]"
			QuestName = "MarineTreeIsland"

			LevelQuest = 2
			NameMon = "Marine Rear Admiral"

			CFrameMon = CFrame.new(3671, 161, -6932)
			VectorMon = Vector3.new(3671, 161, -6932)

			CFrameQuest = CFrame.new(2180, 29, -6737)
			VectorQuest = Vector3.new(2180, 29, -6737)
		elseif MyLevel == 1775 or MyLevel <= 1800 then
			LevelFarm = 9

			Name = "Fishman Raider [Lv. 1775]"
			QuestName = "DeepForestIsland3"

			LevelQuest = 1
			NameMon = "Fishman Raider"

			CFrameMon = CFrame.new(-10560, 332, -8466)
			VectorMon = Vector3.new(-10560, 332, -8466)

			CFrameQuest = CFrame.new(-10584, 332, -8758)
			VectorQuest = Vector3.new(-10584, 332, -8758)
		elseif MyLevel == 1800 or MyLevel <= 1824 then
			LevelFarm = 10

			Name = "Fishman Captain [Lv. 1800]"
			QuestName = "DeepForestIsland3"

			LevelQuest = 2
			NameMon = "Fishman Captain"

			CFrameMon = CFrame.new(-10993, 332, -8940)
			VectorMon = Vector3.new(-10993, 332, -8940)

			CFrameQuest = CFrame.new(-10584, 332, -8758)
			VectorQuest = Vector3.new(-10584, 332, -8758)
		elseif MyLevel == 1825 or MyLevel <= 1849 then
			LevelFarm = 11

			Name = "Forest Pirate [Lv. 1825]"
			QuestName = "DeepForestIsland"

			LevelQuest = 1
			NameMon = "Forest Pirate"

			CFrameMon = CFrame.new(-13479, 333, -7905)
			VectorMon = Vector3.new(-13479, 333, -7905)

			CFrameQuest = CFrame.new(-13232, 333, -7627)
			VectorQuest = Vector3.new(-13232, 333, -7627)
		elseif MyLevel == 1850 or MyLevel <= 1899 then
			LevelFarm = 12

			Name = "Mythological Pirate [Lv. 1850]"
			QuestName = "DeepForestIsland"

			LevelQuest = 2
			NameMon = "Mythological Pirate"

			CFrameMon = CFrame.new(-13545, 470, -6917)
			VectorMon = Vector3.new(-13545, 470, -6917)

			CFrameQuest = CFrame.new(-13232, 333, -7627)
			VectorQuest = Vector3.new(-13232, 333, -7627)
		elseif MyLevel == 1900 or MyLevel <= 1924 then
			LevelFarm = 13

			Name = "Jungle Pirate [Lv. 1900]"
			QuestName = "DeepForestIsland2"

			LevelQuest = 1
			NameMon = "Jungle Pirate"

			CFrameMon = CFrame.new(-12107, 332, -10549)
			VectorMon = Vector3.new(-12106, 332, -10549)

			CFrameQuest = CFrame.new(-12684, 391, -9902)
			VectorQuest = Vector3.new(-12684, 391, -9902)
		elseif MyLevel == 1925 or MyLevel <= 1974 then
			LevelFarm = 14

			Name = "Musketeer Pirate [Lv. 1925]"
			QuestName = "DeepForestIsland2"

			LevelQuest = 2
			NameMon = "Musketeer Pirate"

			CFrameMon = CFrame.new(-13286, 392, -9769)
			VectorMon = Vector3.new(-13286, 392, -9768)

			CFrameQuest = CFrame.new(-12684, 391, -9902)
			VectorQuest = Vector3.new(-12684, 391, -9902)
		elseif MyLevel == 1975 or MyLevel <= 1999 then
			LevelFarm = 15
			Name = "Reborn Skeleton [Lv. 1975]"
			QuestName = "HauntedQuest1"

			LevelQuest = 1
			NameMon = "Reborn Skeleton"

			CFrameMon = CFrame.new(-8760, 142, 6039)
			VectorMon = Vector3.new(-8760, 142, 6039)

			CFrameQuest = CFrame.new(-9482, 142, 5567)
			VectorQuest = Vector3.new(-9482, 142, 5567)
		elseif MyLevel == 2000 or MyLevel <= 2024 then
			LevelFarm = 16

			Name = "Living Zombie [Lv. 2000]"
			QuestName = "HauntedQuest1"

			LevelQuest = 2
			NameMon = "Living Zombie"

			CFrameMon = CFrame.new(-10144, 140, 5932)
			VectorMon = Vector3.new(-10144, 140, 5932)

			CFrameQuest = CFrame.new(-9482, 142, 5567)
			VectorQuest = Vector3.new(-9482, 142, 5567)
		elseif MyLevel == 2025 or MyLevel <= 2049 then
			LevelFarm = 17

			Name = "Demonic Soul [Lv. 2025]"
			QuestName = "HauntedQuest2"

			LevelQuest = 1
			NameMon = "Demonic Soul"

			CFrameMon = CFrame.new(-9507, 172, 6158)
			VectorMon = Vector3.new(-9506, 172, 6158)

			CFrameQuest = CFrame.new(-9513, 172, 6079)
			VectorQuest = Vector3.new(-9513, 172, 6079)
		elseif MyLevel == 2050 or MyLevel <= 2074 then
			LevelFarm = 18

			Name = "Posessed Mummy [Lv. 2050]"
			QuestName = "HauntedQuest2"

			LevelQuest = 2
			NameMon = "Posessed Mummy"

			CFrameMon = CFrame.new(-9577, 6, 6223)
			VectorMon = Vector3.new(-9577, 6, 6223)

			CFrameQuest = CFrame.new(-9513, 172, 6079)
			VectorQuest = Vector3.new(-9513, 172, 6079)

		elseif MyLevel == 2075 or MyLevel <= 2099 then
			LevelFarm = 19

			Name = "Peanut Scout [Lv. 2075]"
			QuestName = "NutsIslandQuest"

			LevelQuest = 1
			NameMon = "Peanut Scout"

			CFrameMon = CFrame.new(-2124, 123, -10435)
			VectorMon = Vector3.new(-2124, 123, -10435)

			CFrameQuest = CFrame.new(-2104, 38, -10192)
			VectorQuest = Vector3.new(-2104, 38, -10192)
		elseif MyLevel == 2100 or MyLevel <= 2124 then
			LevelFarm = 20

			Name = "Peanut President [Lv. 2100]"
			QuestName = "NutsIslandQuest"

			LevelQuest = 2
			NameMon = "Peanut President"

			CFrameMon = CFrame.new(-2124, 123, -10435)
			VectorMon = Vector3.new(-2124, 123, -10435)

			CFrameQuest = CFrame.new(-2104, 38, -10192)
			VectorQuest = Vector3.new(-2104, 38, -10192)
		elseif MyLevel == 2125 or MyLevel <= 2149 then
			LevelFarm = 21

			Name = "Ice Cream Chef [Lv. 2125]"
			QuestName = "IceCreamIslandQuest"

			LevelQuest = 1
			NameMon = "Ice Cream Chef"

			CFrameMon = CFrame.new(-641, 127, -11062)
			VectorMon = Vector3.new(-641, 127, -11062)

			CFrameQuest = CFrame.new(-822, 66, -10965)
			VectorQuest = Vector3.new(-822, 66, -10965)
		elseif MyLevel == 2150 or MyLevel <= 2199 then
			LevelFarm = 22

			Name = "Ice Cream Commander [Lv. 2150]"
			QuestName = "IceCreamIslandQuest"

			LevelQuest = 2
			NameMon = "Ice Cream Commander"

			CFrameMon = CFrame.new(-641, 127, -11062)
			VectorMon = Vector3.new(-641, 127, -11062)

			CFrameQuest = CFrame.new(-822, 66, -10965)
			VectorQuest = Vector3.new(-822, 66, -10965)
			---------------------------------------------------------------
		elseif MyLevel == 2200 or MyLevel <= 2224 then
			LevelFarm = 23

			Name = "Cookie Crafter [Lv. 2200]"
			QuestName = "CakeQuest1"

			LevelQuest = 1
			NameMon = "Cookie Crafter"

			CFrameMon = CFrame.new(-2365, 38, -12099)
			VectorMon = Vector3.new(-2365, 38, -12099)

			CFrameQuest = CFrame.new(-2020, 38, -12025)
			VectorQuest = Vector3.new(-2020, 38, -12025)
		elseif MyLevel == 2225 or MyLevel <= 2249 then
			LevelFarm = 24

			Name = "Cake Guard [Lv. 2225]"
			QuestName = "CakeQuest1"

			LevelQuest = 2
			NameMon = "Cake Guard"

			CFrameMon = CFrame.new(-1651, 38, -12308)
			VectorMon = Vector3.new(-1651, 38, -12308)

			CFrameQuest = CFrame.new(-2020, 38, -12025)
			VectorQuest = Vector3.new(-2020, 38, -12025)
		elseif MyLevel == 2250 or MyLevel <= 2274 then
			LevelFarm = 25

			Name = "Baking Staff [Lv. 2250]"
			QuestName = "CakeQuest2"

			LevelQuest = 1
			NameMon = "Baking Staff"

			CFrameMon = CFrame.new(-1870, 38, -12938)
			VectorMon = Vector3.new(-1870, 38, -12938)

			CFrameQuest = CFrame.new(-1926, 38, -12850)
			VectorQuest = Vector3.new(-1926, 38, -12850)
		elseif MyLevel == 2275 or MyLevel <= 2299 then
			LevelFarm = 26

			Name = "Head Baker [Lv. 2275]"
			QuestName = "CakeQuest2"

			LevelQuest = 2
			NameMon = "Head Baker"

			CFrameMon = CFrame.new(-1926, 88, -12850)
			VectorMon = CFrame.new(-1870, 38, -12938)

			CFrameQuest = CFrame.new(-1926, 38, -12850)
			VectorQuest = Vector3.new(-1926, 38, -12850)
			---------------------------------------------------------------
		elseif MyLevel == 2300 or MyLevel <= 2324 then
			LevelFarm = 27

			Name = "Cocoa Warrior [Lv. 2300]"
			QuestName = "ChocQuest1"

			LevelQuest = 1
			NameMon = "Cocoa Warrior"

			CFrameMon = CFrame.new(231, 23, -12194)
			VectorMon = CFrame.new(231, 23, -12194)

			CFrameQuest = CFrame.new(231, 23, -12194)
			VectorQuest = Vector3.new(231, 23, -12194)
		elseif MyLevel == 2325 or MyLevel <= 2349 then
			LevelFarm = 28

			Name = "Chocolate Bar Battler [Lv. 2325]"
			QuestName = "ChocQuest1"

			LevelQuest = 2
			NameMon = "Chocolate Bar Battler"

			CFrameMon = CFrame.new(231, 23, -12194)
			VectorMon = CFrame.new(231, 23, -12194)

			CFrameQuest = CFrame.new(231, 23, -12194)
			VectorQuest = Vector3.new(231, 23, -12194)
		elseif MyLevel == 2350 or MyLevel <= 2374 then
			LevelFarm = 29

			Name = "Sweet Thief [Lv. 2350]"
			QuestName = "ChocQuest2"

			LevelQuest = 1
			NameMon = "Sweet Thief"

			CFrameMon = CFrame.new(71, 77, -12632)
			VectorMon = CFrame.new(71, 77, -12632)

			CFrameQuest = CFrame.new(151, 23, -12774)
			VectorQuest = Vector3.new(151, 23, -12774)
		elseif MyLevel == 2375 or MyLevel <= 2399 then
			LevelFarm = 30

			Name = "Candy Rebel [Lv. 2375]"
			QuestName = "ChocQuest2"

			LevelQuest = 2
			NameMon = "Candy Rebel"

			CFrameMon = CFrame.new(134, 77, -12882)
			VectorMon = CFrame.new(134, 77, -12882)

			CFrameQuest = CFrame.new(151, 23, -12774)
			VectorQuest = Vector3.new(151, 23, -12774)
		elseif MyLevel == 2400 or MyLevel <= 2424 then
		    LevelFarm = 31
		    
		    Name = "Candy Pirate [Lv. 2400]"
		    QuestName = "CandyQuest1"
		    
		    LevelQuest = 1
			NameMon = "Candy Pirate"
		    
		    CFrameMon = CFrame.new(-1408.46521, 16.1423531, -14552.2041, 0.90175873, -8.17216943e-08, -0.432239741, 7.81264475e-08, 1, -2.60746162e-08, 0.432239741, -1.02563433e-08, 0.90175873)
		    VectorQuest = Vector3.new(-1408.46521, 16.1423531, -14552.2041, 0.90175873, -8.17216943e-08, -0.432239741, 7.81264475e-08, 1, -2.60746162e-08, 0.432239741, -1.02563433e-08, 0.90175873)
		    
		    CFrameQuest = CFrame.new(-1151.48987, 16.1422901, -14445.6904, -0.316594511, -6.85698254e-08, -0.948560953, -2.05343067e-08, 1, -6.54346692e-08, 0.948560953, -1.23821675e-09, -0.316594511)
		    VectorQuest = Vector3.new(-1151.48987, 16.1422901, -14445.6904, -0.316594511, -6.85698254e-08, -0.948560953, -2.05343067e-08, 1, -6.54346692e-08, 0.948560953, -1.23821675e-09, -0.316594511)
	   elseif MyLevel >= 2425 then
		    LevelFarm = 32
		    
		    Name = "Snow Demon [Lv. 2425]"
		    QuestName = "CandyQuest1"
		    
		    LevelQuest = 2
			NameMon = "Snow Demon"
		    
		    CFrameMon = CFrame.new(-777.070862, 23.5809536, -14453.0078, 0.33384338, 0, -0.942628562, 0, 1, 0, 0.942628562, 0, 0.33384338)
		    VectorQuest = Vector3.new(-777.070862, 23.5809536, -14453.0078, 0.33384338, 0, -0.942628562, 0, 1, 0, 0.942628562, 0, 0.33384338)
		    
		    CFrameQuest = CFrame.new(-1151.48987, 16.1422901, -14445.6904, -0.316594511, -6.85698254e-08, -0.948560953, -2.05343067e-08, 1, -6.54346692e-08, 0.948560953, -1.23821675e-09, -0.316594511)
		    VectorQuest = Vector3.new(-1151.48987, 16.1422901, -14445.6904, -0.316594511, -6.85698254e-08, -0.948560953, -2.05343067e-08, 1, -6.54346692e-08, 0.948560953, -1.23821675e-09, -0.316594511)
		end
	end
end
end)
end
end)


function TP(P)
local Distance = (P.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude -- จุดที่จะไป Position Only
local Speed = 300 -- ความเร็วของมึง
tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = P})
tween:Play()
end
function TPER(P)
local Distance = (P.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude -- จุดที่จะไป Position Only
local Speed = 400-- ความเร็วของมึง
tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = P})
tween:Play()
end
function TP2(P)
local Distance = (P.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude -- จุดที่จะไป Position Only
local Speed = 999999999999999999 -- ความเร็วของมึง
tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear)
tween = tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = P})
tween:Play()
end
function TP3(P)
CheckQuest()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
wait(0.1)
tween:cancel()
game.Players.LocalPlayer.Character.Humanoid:ChangeState(15)
wait(0)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
tween:cancel()
end
--------------------------------------------
Library:SetWatermarkVisibility(true)


    Library:SetWatermark("Loading Data...")
    wait(math.random(3,10))
    Library:SetWatermark("Script Load!")
    wait(math.random(1,3))
    local dgt = math.floor(workspace.DistributedGameTime+0.27322)
    local hr = math.floor(dgt/(60^2))%24
    local min = math.floor(dgt/(60^1))%60
    local sec = math.floor(dgt/(60^0))%60
    Library:SetWatermark("Client Id : "..game:GetService("RbxAnalyticsService"):GetClientId().." | Player Name : "..game.Players.LocalPlayer.Character.Name)



local Window = Library:CreateWindow({
    Title = 'Delta Hub',
    Center = true, 
    AutoShow = true,
})
task.spawn(function()
	while task.wait() do
		Library:AttemptSave()
		Window:SetWindowTitle("Delta Hub | "..os.date('%H:%M:%S')..' | '..game:GetService("RbxAnalyticsService"):GetClientId())
		
	end
end)

Library:Notify('Delta Hub | whitelisted user! ',10)

local Tabs = {
    -- Creates a new tab titled Main

    ['General'] = Window:AddTab('Main'), 
    ['Meterials'] = Window:AddTab('Auto'),
    
    ['Teleport'] = Window:AddTab('Teleport'),
    ['Shop'] = Window:AddTab('Shop'),
    ['Other'] = Window:AddTab('Webhook'),
    
}
local GeneralBox = Tabs['General']:AddLeftTabbox()
local GeneralBox2 = Tabs['General']:AddLeftTabbox()
local SettingBox = Tabs['General']:AddRightTabbox()
local SettingBox2 = Tabs['General']:AddRightTabbox()
local GeneralMasterBox = Tabs['General']:AddLeftTabbox()
local MeterialsBox = Tabs['Meterials']:AddLeftTabbox()
local CakeMain1 = Tabs['Meterials']:AddLeftTabbox()
local Bone = Tabs['Meterials']:AddLeftTabbox()
local Raid = Tabs['Meterials']:AddRightTabbox()
local Fruit = Tabs['Meterials']:AddRightTabbox()
local TeleportBox = Tabs['Teleport']:AddLeftTabbox()
local TeleportBox1 = Tabs['Teleport']:AddRightTabbox()
local Webhook = Tabs['Other']:AddLeftTabbox()
local AutoFarm = GeneralBox:AddTab('Main')
local AutoFarm1 = GeneralBox:AddTab('Fighting')
local Shoptab = Tabs['Shop']:AddLeftTabbox()
local Shoptab2 = Tabs['Shop']:AddLeftTabbox()
local Shoptab3 = Tabs['Shop']:AddRightTabbox()
local Ability = Shoptab:AddTab('Abilities')
local Fighting = Shoptab:AddTab('Fighting Style')
local Sword = Shoptab2:AddTab('Sword')
local Gun = Shoptab2:AddTab('Gun')
local Fragments = Shoptab3:AddTab('Fragments')

local SettingGeneral = SettingBox:AddTab('Setting')
local SettingGeneral2 = SettingBox:AddTab('Stats')
---------------------------------------
Ability:AddButton('Buy Geppo', function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Geppo")
end)

Ability:AddButton('Buy Buso Haki', function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Buso")
end)

Ability:AddButton('Buy Soru', function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Soru")
end)

Ability:AddButton('Buy Ken Haki', function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk","Buy")
end)

Fighting:AddButton('Buy Black Leg', function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
end)

Fighting:AddButton('Buy Electro', function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
end)

Fighting:AddButton('Buy Fishman Karate', function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
end)

Fighting:AddButton('Buy Dragon Claw', function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
     game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")
end)

Fighting:AddButton('Buy Superhuman', function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
end)

Fighting:AddButton('Buy Death Step', function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
end)

Fighting:AddButton('Buy Sharkman Karate', function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true)
     game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
end)

Fighting:AddButton('Buy Electric Claw', function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
end)

Fighting:AddButton('Buy Dragon Talon', function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
end)

Sword:AddButton("Cutlass",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Cutlass")
end)

Sword:AddButton("Katana",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Katana")
end)

Sword:AddButton("Iron Mace",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Iron Mace")
end)

Sword:AddButton("Duel Katana",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Duel Katana")
end)

Sword:AddButton("Triple Katana", function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Triple Katana")
end)

Sword:AddButton("Pipe",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Pipe")
end)

Sword:AddButton("Dual Headed Blade",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Dual-Headed Blade")
end)

Sword:AddButton("Bisento",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Bisento")
end)

Sword:AddButton("Soul Cane",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Soul Cane")
end)

Gun:AddButton("Slingshot",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Slingshot")
end)

Gun:AddButton("Musket",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Musket")
end)

Gun:AddButton("Flintlock",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Flintlock")
end)

Gun:AddButton("Refined Flintlock",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Refined Flintlock")
end)

Gun:AddButton("Cannon",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Cannon")
end)

Gun:AddButton("Kabucha",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Slingshot","1")
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Slingshot","2")
end)

Fragments:AddButton("Stat Refund",function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","1")
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","2")
end)

----------------------------------------
local CakeMain = CakeMain1:AddTab('Cake Prince')

MobKillCakePrince = CakeMain:AddLabel('Killed ⚔️ :  ')
PortalOpen = CakeMain:AddLabel('Portal 🌀 : Not Opened ❌')

task.spawn(function()
    while task.wait(3) do
        pcall(function()
            if string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 88 then
                MobKillCakePrince:SetText("Killed : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,41))
            elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 87 then
                MobKillCakePrince:SetText("Killed : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,40))
            elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 86 then
                MobKillCakePrince:SetText("Killed : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,39))
            else
                PortalOpen:SetText("Portal : Opened ✅")
            end
        end)
    end
end)
local Elite = CakeMain1:AddTab('Elite Hunter')
Status = Elite:AddLabel("Status")
EliteHunt = Elite:AddLabel("Elite")

task.spawn(
    function()
        pcall(
            function()
                while wait() do
                    EliteHunt:SetText("Elite Process ⚔️: " .. game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress"))
                end
            end
        )
    end
)

spawn(function()
    while wait() do
        pcall(function()
            if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]") or game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]") or game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Diablo [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Urban [Lv. 1750]") then
                Status:SetText("Status 👻 : : Spawned  ✅")    
            else
                Status:SetText("Status 👻 : Not Spawned  ❌ ")    
            end
        end)
    end
end)
Elite:AddToggle('AutoEliteHunter', {
    Text = 'Auto Elite Hunter',
    Default = false,
}):OnChanged(function(t)
    AutoEliteHunter = t
    task.spawn(function()
				while wait() do
					pcall(function()
						if AutoEliteHunter then
							if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
								if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Diablo") or string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Urban") or string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Deandre") then
									for i,v in pairs(game.ReplicatedStorage:GetChildren()) do
										if string.find(v.Name,"Diablo") then
											EliteHunter = toTarget(v.HumanoidRootPart.CFrame)
											if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
												if EliteHunter then
													EliteHunter:Stop()
												end
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
											end
										end	
										if string.find(v.Name,"Urban") then
											EliteHunter = toTarget(v.HumanoidRootPart.CFrame)
											if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
												if EliteHunter then
													EliteHunter:Stop()
												end
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
											end
										end	
										if string.find(v.Name,"Deandre") then
											EliteHunter = toTarget(v.HumanoidRootPart.CFrame)
											if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
												if EliteHunter then
													EliteHunter:Stop()
												end
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
											end
										end	
									end
									for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
										if AutoEliteHunter and string.find(v.Name,"Diablo") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
											repeat wait()
												if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude >150 then
													Farmtween = toTarget(v.HumanoidRootPart.CFrame)
												elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
													if Farmtween then
														Farmtween:Stop()
													end
													if AttackRandomType == 1 then
														game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1)
													elseif AttackRandomType == 2 then
														game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 1, 30)
													elseif AttackRandomType == 3 then
														game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(1, 1, -30)
													elseif AttackRandomType == 4 then
														game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(30, 1, 0)
													elseif AttackRandomType == 5 then
														game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(-30, 1, 0)
													else
														game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1)
													end
													FastAttackSpeed = true
													Equip(WeaponName)
												end 
											until not AutoEliteHunter or not v.Parent or v.Humanoid.Health <= 0
											FastAttackSpeed = false
										end
										if AutoEliteHunter and string.find(v.Name,"Urban") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
											repeat wait()
												if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude >150 then
													Farmtween = toTarget(v.HumanoidRootPart.CFrame)
												elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
													if Farmtween then
														Farmtween:Stop()
													end
													if AttackRandomType == 1 then
														game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1)
													elseif AttackRandomType == 2 then
														game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 1, 30)
													elseif AttackRandomType == 3 then
														game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(1, 1, -30)
													elseif AttackRandomType == 4 then
														game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(30, 1, 0)
													elseif AttackRandomType == 5 then
														game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(-30, 1, 0)
													else
														game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1)
													end
														FastAttackSpeed = true
													    Equip(WeaponName)
												end 
											until not AutoEliteHunter or not v.Parent or v.Humanoid.Health <= 0
											FastAttackSpeed = false
										end
										if AutoEliteHunter and string.find(v.Name,"Deandre") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
											repeat wait()
												if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude >150 then
													Farmtween = toTarget(v.HumanoidRootPart.CFrame)
												elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
													if Farmtween then
														Farmtween:Stop()
													end
													if AttackRandomType == 1 then
														game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1)
													elseif AttackRandomType == 2 then
														game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 1, 30)
													elseif AttackRandomType == 3 then
														game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(1, 1, -30)
													elseif AttackRandomType == 4 then
														game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(30, 1, 0)
													elseif AttackRandomType == 5 then
														game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(-30, 1, 0)
													else
														game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1)
													end
													FastAttackSpeed = true
												   Equip(WeaponName)
												end 
											until not AutoEliteHunter or not v.Parent or v.Humanoid.Health <= 0
											FastAttackSpeed = false
										end
									end
								else
									local string_1 = "EliteHunter";
									local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
									Target:InvokeServer(string_1);
								end
							else
								local string_1 = "EliteHunter";
								local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
								Target:InvokeServer(string_1);
							end
						end
					end)
				end
			end)
end)

Elite:AddToggle('AutoYama', {
    Text = 'Auto Yama Sword',
    Default = false,
}):OnChanged(function(t)

end)
----------------------------------------
local Bones = Bone:AddTab('Bones')
Bones:AddToggle('AutoHollow', {
    Text = 'Auto Hollow Scythe',
    Default = _G.SaveSetting.AutoHollow,
}):OnChanged(function(t)
	AutoHollow = t
	_G.SaveSetting.AutoHollow = t
     savesettings()
		
end)
spawn(function()
	while task.wait() do
		if AutoHollow then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if string.find(v.Name,"Soul Reaper [Lv. 2100] [Raid Boss]") then
							repeat task.wait()
								AutoHaki()
								FastAttackSpeed = true
								v.HumanoidRootPart.Size = Vector3.new(50,50,50)
								toTarget(v.HumanoidRootPart.CFrame*CFrame.new(5,-50,-29))
								v.HumanoidRootPart.Transparency = 1
								sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
							until v.Humanoid.Health <= 0 or AutoHollow == false
						end
					end
				elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hallow Essence") and not game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") then
					repeat
						toTarget(CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125))
					until (CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 15                       
					Equip("Hallow Essence")
					if game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") then
						toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]").HumanoidRootPart.CFrame * CFrame.new(0,50,0))
					end
				end
			end)
		end
	end
end)
spawn(function()
	game:GetService("RunService").Heartbeat:Connect(function()
		if AutoHollow then
		if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") then
			setfflag("HumanoidParallelRemoveNoPhysics", "False")
			setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
			game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
			end
		end
	end)
end)
Bones:AddToggle('AutoRandom', {
    Text = 'Auto Random Surprise ',
    Default = _G.SaveSetting.AutorandomBone,
}):OnChanged(function(t)
	AutorandomBone = t
	_G.SaveSetting.AutorandomBone = t
     savesettings()
	 spawn(function()
		while wait(.1) do
			if AutorandomBone then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
			end
		end
	end)
end)


task.spawn(
    function()
        pcall(
            function()
                while wait() do
                    BeliInfo:SetText("Beli : " .. game:GetService("Players").localPlayer.Data.Beli.value)
                end
            end
        )
    end
)
task.spawn(
    function()
        pcall(
            function()
                while wait() do
                    DevilFruitInfo:SetText("DevilFruit : " .. game:GetService("Players").localPlayer.Data.DevilFruit.value)
                end
            end
        )
    end
)

task.spawn(
    function()
        pcall(
            function()
                while wait() do
                    LevelFarm:SetText("Level : " .. game:GetService("Players").localPlayer.Data.Level.value)
                end
            end
        )
    end
)

task.spawn(
    function()
        pcall(
            function()
                while wait() do
                    RaceInfo:SetText("Race : " .. game:GetService("Players").localPlayer.Data.Race.value)
                end
            end
        )
    end
)
QuestStatus = AutoFarm:AddLabel("Quest:")
Level_Status = AutoFarm:AddLabel("Hello")
spawn(function()
    while task.wait() do
        CheckQuest()
        Level_Status:SetText("Mon : "..Name)
        wait(0)
        QuestStatus:SetText("Quest : "..QuestName.." | Level "..LevelQuest)
        
end
end)
function GetMaterial(matname)
    for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
        if type(v) == "table" then
            if v.Type == "Material" then
                if v.Name == matname then
                    return v.Count
                end
            end
        end
    end
    return 0
end

local StatusFarm = AutoFarm:AddLabel("Now Farming : N/A")
spawn(function()
  while task.wait() do
      pcall(function()
        local Bone = GetMaterial("Bones")
        local FishTail = GetMaterial("Fish Tail")
        local DragonScale = GetMaterial("Dragon Scale")
        local Lv = game.Players.LocalPlayer.Data.Level.Value
        if AutoFarm or _G.SaveSetting.AutoFarm == true then
            StatusFarm:SetText("Now Farming : Level")
        elseif AutoFarmBone or _G.SaveSetting.AutoFarmBone == true then
            StatusFarm:SetText("Now Farming : Bone")
        elseif AutoFarmFish or _G.SaveSetting.AutoFarmFish == true then
            StatusFarm:SetText("Now Farming : Fish Tail")
        elseif AutoFarmDragonScale or _G.SaveSetting.AutoFarmDragonScale == true then
            StatusFarm:SetText("Now Farming : Dragon Scale")
        elseif AutoCakePrince or _G.SaveSetting.AutoCakePrince == true then
            StatusFarm:SetText("Now Farming : Cake Prince")
        elseif AutoFarmCandy or _G.SaveSetting.AutoFarmCandy == true then
            StatusFarm:SetText("Now Farming : Candy")
        elseif FarmMasterySword or _G.SaveSetting.FarmMasterySword == true then
            StatusFarm:SetText("Now Farming : "..SelectSword)
		elseif AutoStartRaid then
			StatusFarm:SetText("Now Farming : Raid | "..SelectRaid)
        else 
            StatusFarm:SetText("Now Farming : N/A")
            tween:cancel()
            end
        end)
    end
end)
-- AutoFarmToggle
-- [Isnetwork Owner]

function InMyNetWork(object)
	if isnetworkowner then
		return isnetworkowner(object)
	else
		if (object.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 200 then 
			return true
		end
		return false
	end
end

-- [Function (Abandoned Quest , Others)]

function Com(com,...)
	local Remote = game:GetService('ReplicatedStorage').Remotes:FindFirstChild("Comm"..com)
	if Remote:IsA("RemoteEvent") then
		Remote:FireServer(...)
	elseif Remote:IsA("RemoteFunction") then
		Remote:InvokeServer(...)
	end
end

-- [Tween Functions]

local function GetIsLand(...)
	local RealtargetPos = {...}
	local targetPos = RealtargetPos[1]
	local RealTarget
	if type(targetPos) == "vector" then
		RealTarget = targetPos
	elseif type(targetPos) == "userdata" then
		RealTarget = targetPos.Position
	elseif type(targetPos) == "number" then
		RealTarget = CFrame.new(unpack(RealtargetPos))
		RealTarget = RealTarget.p
	end

	local ReturnValue
	local CheckInOut = math.huge;
	if game.Players.LocalPlayer.Team then
		for i,v in pairs(game.Workspace._WorldOrigin.PlayerSpawns:FindFirstChild(tostring(game.Players.LocalPlayer.Team)):GetChildren()) do 
			local ReMagnitude = (RealTarget - v:GetModelCFrame().p).Magnitude;
			if ReMagnitude < CheckInOut then
				CheckInOut = ReMagnitude;
				ReturnValue = v.Name
			end
		end
		if ReturnValue then
			return ReturnValue
		end 
	end
end

--BTP

function BTP(Position)
	game.Players.LocalPlayer.Character.Head:Destroy()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Position
	wait(1)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Position
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
end


-- [Tween Functions (toTarget)]
local function toTarget(...)
	local RealtargetPos = {...}
	local targetPos = RealtargetPos[1]
	local RealTarget
	if type(targetPos) == "vector" then
		RealTarget = CFrame.new(targetPos)
	elseif type(targetPos) == "userdata" then
		RealTarget = targetPos
	elseif type(targetPos) == "number" then
		RealTarget = CFrame.new(unpack(RealtargetPos))
	end
	if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health == 0 then if tween then tween:Cancel() end repeat wait() until game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health > 0; wait(0.2) end
	local tweenfunc = {}
	local Distance = (RealTarget.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude
	if FastTween then
    if Distance < 400 then
		Speed = 575
	else 
	    Speed = 350
    end
    else 
	    Speed = 350
end
	if BypassTp then
		if Distance > 2000 then
			pcall(function()
			  tween:Cancel()
				fkwarp = false
				if game:GetService("Players")["LocalPlayer"].Data:FindFirstChild("LastSpawnPoint").Value == tostring(GetIsLand(RealTarget)) then
					game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15)
					wait(0.1)
					repeat wait() until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0
				else
					if game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 then
						if fkwarp == false then
							if Three_World then
								if (Vector3.new(-5079.44677734375, 313.7293395996094, -3151.065185546875) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 1500 then
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer('requestEntrance',Vector3.new(-5079.44677734375, 313.7293395996094, -3151.065185546875))
									Library:Notify('Delta Hub | Start Tp in 3',1)
	                                wait(1)
	                                Library:Notify('Delta Hub | Start Tp in 2',1)
	                                wait(1)
	                                Library:Notify('Delta Hub | Start Tp in 1',1)
	                                wait(.5)
								end
								tween:cancel()
							end
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = RealTarget
							tween:cancel()
						end
						fkwarp = true
					end
					wait(.08)
					game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15)
					repeat wait() until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0
					tween:cancel()
					wait(.1)
					Com("F_","SetSpawnPoint")
					wait(0.2)
					tween:cancel()
					end
				return
			end)
		end
	end

	local tween_s = game:service"TweenService"
	local info = TweenInfo.new((RealTarget.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude/Speed, Enum.EasingStyle.Linear)
	local tweenw, err = pcall(function()
		tween = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = RealTarget})
		tween:Play()
	end)

	function tweenfunc:Stop()
		tween:Cancel()
	end 

	function tweenfunc:Wait()
		tween.Completed:Wait()
	end 

	return tweenfunc
end


function toTargetP(CFgo)
	if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health <= 0 or not game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid") then tween:Cancel() repeat wait() until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid") and game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 wait(7) return end
	if (game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - CFgo.Position).Magnitude <= 150 then
		pcall(function()
			tween:Cancel()

			game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.CFrame = CFgo

			return
		end)
	end
	local tween_s = game:service"TweenService"
	local info = TweenInfo.new((game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - CFgo.Position).Magnitude/325, Enum.EasingStyle.Linear)
	tween = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = CFgo})
	tween:Play()

	local tweenfunc = {}

	function tweenfunc:Stop()
		tween:Cancel()
	end

	return tweenfunc
end
AutoFarm:AddToggle('AutoFarmLevel', {
    Text = 'Auto Farm [Level]',
    Default = _G.SaveSetting.AutoFarm,
})

if Old_World then
AutoFarm:AddToggle('AutoFarmSky', {
    Text = 'Auto Farm [Skypiea]',
    Default = _G.SaveSetting.AutoFarmSky,
    Tooltip = 'Turn On When Level 40 to Level 100',
}):OnChanged(function(t)
    _G.SaveSetting.AutoFarmSky = t
    savesettings()
    AutoFarmSky = t
    FastAttackSpeed = t
end)
end

local Lvl = game.Players.LocalPlayer.Data.Level.Value
spawn(function()
	while wait() do
		pcall(function()
			if AutoFarmSky then
			    if Lvl == 20 or Lvl <= 120 then
		        AutoFarm = false
		        else
		        AutoFarm = true
		        AutoFarmSky = false
		        Bringmob = true
		            end
			    MonPos = CFrame.new(-7685, 5567, -502)
			    if AutoFarmSky and (MonPos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
					end
					if game.Workspace.Enemies:FindFirstChild("Shanda [Lv. 475]") then
					    Bringmob = true
						for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
							if v.Name == "Shanda [Lv. 475]" and v.Humanoid.Health > 0 then
								if v.Humanoid.Health > 0 then
						   repeat wait()
                    v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                        v.HumanoidRootPart.CanCaillde = false
                    until AutoFarmSky == false or v.Humanoid.Health <= 0
                if game.Players.LocalPlayer.Character.Humanoid.Health <= 0 then
                        AutoFarmSky = false
                        wait(0.25)
                        AutoFarmSky = true
                end
								end
                end
                end
						
					
			
				end
			end

		end)
			end
end)

spawn(function()
game:GetService("RunService").Heartbeat:Connect(function()
    if AutoFarmSky then
    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") then
        setfflag("HumanoidParallelRemoveNoPhysics", "False")
        setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
        game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
        end
    end
end)
end)
AutoFarm:AddToggle('NewWorld', {
    Text = 'Auto New World',
    Default = _G.SaveSetting.AutoNewWorld,
}):OnChanged(function(t)
    _G.SaveSetting.AutoNewWorld = t
    savesettings()
    AutoNewWorld = t
    task.spawn(function()
        while wait() do
            pcall(function()
                if AutoNewWorld then
                    if game.Players.LocalPlayer.Data.Level.Value >= 700 then
                        if AutoFarm then
                            AutoFarm = false
                        end
                        if game.Workspace.Map.Ice.Door.CanCollide == true and game.Workspace.Map.Ice.Door.Transparency == 0 then
                            repeat wait() 
                                toTarget(CFrame.new(1347.7124, 37.3751602, -1325.6488)) 
                            until (CFrame.new(1347.7124, 37.3751602, -1325.6488).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or notAutoNewWorld
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress","Detective")
                            Equip("Key")
                        elseif game.Workspace.Map.Ice.Door.CanCollide == false and game.Workspace.Map.Ice.Door.Transparency == 1 then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Ice Admiral [Lv. 700] [Boss]") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Ice Admiral [Lv. 700] [Boss]" and v.Humanoid.Health > 0 then
                                        repeat task.wait()
                                             AutoHaki()
                                            Equip(WeaponName)
                                            toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Settings.Configs["Distance Form Position"],0))
                                            FastAttackSpeed = true
                                            v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                            v.Humanoid.JumpPower = 0
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid:ChangeState(11)
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                                        until v.Humanoid.Health <= 0 or not v.Parent
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                                    end
                                end
                            else
                                toTarget(CFrame.new(1347.7124, 37.3751602, -1325.6488))
                            end
                        else
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                        end
                    end
                end
            end)
        end
    end)
end)
function TPWorld1()
game:GetService("ReplicatedStorage").Remotes.CommF:InvokeServer("TravelMain")

end
function TPWorld2()
game:GetService("ReplicatedStorage").Remotes.CommF:InvokeServer("TravelDressrosa")

end
function TPWorld3()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")

end
AutoFarm:AddToggle('AutoThirdWorld', {
    Text = 'Auto Thrid Sea',
    Default = _G.SaveSetting.AutoThirdWorld,
}):OnChanged(function(value)
_G.SaveSetting.AutoThirdWorld = value
savesettings()
AutoThirdWorld = value
if value == false then
				wait()
				toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
				wait()
			end
			task.spawn(function()
				while wait() do
					pcall(function()
						if AutoThirdWorld then
							if game.Players.LocalPlayer.Data.Level.Value >= 1500 then
								if AutoFarm then
								AutoFarm = false
								end
								if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 3 then
									if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetUnlockables").FlamingoAccess ~= nil then
										Com("F_","TravelZou")
										if game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("ZQuestProgress", "Check") == 0 then
											if game.Workspace.Enemies:FindFirstChild("rip_indra [Lv. 1500] [Boss]") then 	
												for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
													if v.Name == "rip_indra [Lv. 1500] [Boss]" and v:FindFirstChild("Humanoid")and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
														repeat wait()
															if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
																Farmtween = toTarget(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
															elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
																if Farmtween then Farmtween:Stop() end
																FastAttackSpeed = true
															     AutoHaki()
															     Equip(WeaponName)
																end
																_G.PosMon = v.HumanoidRootPart.CFrame
																v.HumanoidRootPart.Size = Vector3.new(60,60,60)
																v.Humanoid.JumpPower = 0
																v.Humanoid.WalkSpeed = 0
																v.HumanoidRootPart.CanCollide = false
																v.Humanoid:ChangeState(11)
																toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
														until not AutoThirdWorld or not v.Parent or v.Humanoid.Health <= 0 
														wait(.5)
														Check = 2
														repeat wait() Com("F_","TravelZou") until Check == 1
														FastAttackSpeed = false
													end
												end
											else
												Com("F_","ZQuestProgress","Check")
												Com("F_","ZQuestProgress","Begin")
											end
										elseif game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("ZQuestProgress", "Check") == 1 then
											Com("F_","TravelZou")
										else
											if game.Workspace.Enemies:FindFirstChild("Don Swan [Lv. 1000] [Boss]") then
												for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
													if v.Name == "Don Swan [Lv. 1000] [Boss]" and v:FindFirstChild("Humanoid")and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
														repeat wait()
															if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
																Farmtween = toTarget(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
															elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
																if Farmtween then Farmtween:Stop() end
																FastAttackSpeed = true
																AutoHaki()
																Equip(WeaponName)
																_G.PosMon = v.HumanoidRootPart.CFrame
																v.Humanoid.JumpPower = 0
																v.Humanoid.WalkSpeed = 0
																v.HumanoidRootPart.CanCollide = false
																v.Humanoid:ChangeState(11)
																toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
															end
														until not AutoThirdWorld or not v.Parent or v.Humanoid.Health <= 0 
														FastAttackSpeed = false
													end
												end
											else
												TweenDonSwanthireworld = toTarget(CFrame.new(2288.802, 15.1870775, 863.034607).Position,CFrame.new(2288.802, 15.1870775, 863.034607))
												if (CFrame.new(2288.802, 15.1870775, 863.034607).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
													if TweenDonSwanthireworld then
														TweenDonSwanthireworld:Stop()
														game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2288.802, 15.1870775, 863.034607)
													end
												end
											end
										end
									else
										if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetUnlockables").FlamingoAccess == nil then
											TabelDevilFruitStore = {}
											TabelDevilFruitOpen = {}

											for i,v in pairs(game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventoryFruits")) do
												for i1,v1 in pairs(v) do
													if i1 == "Name" then 
														table.insert(TabelDevilFruitStore,v1)
													end
												end
											end

											for i,v in next,game.ReplicatedStorage:WaitForChild("Remotes").CommF_:InvokeServer("GetFruits") do
												if v.Price >= 1000000 then  
													table.insert(TabelDevilFruitOpen,v.Name)
												end
											end

											for i,DevilFruitOpenDoor in pairs(TabelDevilFruitOpen) do
												for i1,DevilFruitStore in pairs(TabelDevilFruitStore) do
													if DevilFruitOpenDoor == DevilFruitStore and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetUnlockables").FlamingoAccess == nil then    
														if not game.Players.LocalPlayer.Backpack:FindFirstChild(DevilFruitStore) then   
															Com("F_","LoadFruit",DevilFruitStore)
														else
															Com("F_","TalkTrevor","1")
															Com("F_","TalkTrevor","2")
															Com("F_","TalkTrevor","3")
														end
													end
												end
											end

											Com("F_","TalkTrevor","1")
											Com("F_","TalkTrevor","2")
											Com("F_","TalkTrevor","3")	
										end
									end
								else
									if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 0 then
										if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirates") and string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
											if game.Workspace.Enemies:FindFirstChild("Swan Pirate [Lv. 775]") then
												for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
													if v.Name == "Swan Pirate [Lv. 775]" then
														pcall(function()
															repeat wait()
																if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
																	Farmtween = toTarget(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
																elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
																	if Farmtween then Farmtween:Stop() end
																	FastAttackSpeed = true
																	Bringmob = true
																    AutoHaki()
																    Equip(WeaponName)
																	PosMon = v.HumanoidRootPart.CFrame
																	v.Humanoid.JumpPower = 0
																	v.Humanoid.WalkSpeed = 0
																	v.HumanoidRootPart.CanCollide = false
																	v.Humanoid:ChangeState(11)
																	toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
																end
															until not v.Parent or v.Humanoid.Health <= 0 orAutoThirdWorld = false or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
															Bringmob = false
															FastAttackSpeed = false
														end)
													end
												end
											else
												Questtween = toTarget(CFrame.new(1057.92761, 137.614319, 1242.08069).Position,CFrame.new(1057.92761, 137.614319, 1242.08069))
												if (CFrame.new(1057.92761, 137.614319, 1242.08069).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
													if Bartilotween then Bartilotween:Stop() end
													game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1057.92761, 137.614319, 1242.08069)
												end
											end
										else
											Bartilotween = toTarget(CFrame.new(-456.28952, 73.0200958, 299.895966).Position,CFrame.new(-456.28952, 73.0200958, 299.895966))
											if ( CFrame.new(-456.28952, 73.0200958, 299.895966).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
												if Bartilotween then Bartilotween:Stop() end
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =  CFrame.new(-456.28952, 73.0200958, 299.895966)
												Com("F_","StartQuest","BartiloQuest",1)
											end
										end
									elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 1 then
										if game.Workspace.Enemies:FindFirstChild("Jeremy [Lv. 850] [Boss]") then
											for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
												if v.Name == "Jeremy [Lv. 850] [Boss]" then
													repeat wait()
														if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
															Farmtween = toTarget(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
														elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
															if Farmtween then Farmtween:Stop() end
															FastAttackSpeed = true
															AutoHaki()
															Equip(WeaponName)
															PosMon = v.HumanoidRootPart.CFrame
															v.Humanoid.JumpPower = 0
															v.Humanoid.WalkSpeed = 0
															v.HumanoidRootPart.CanCollide = false
															v.Humanoid:ChangeState(11)															
															toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
														end
													until not v.Parent or v.Humanoid.Health <= 0 or AutoThirdWorld == false
													FastAttackSpeed = false
												end
											end
										else
											Bartilotween = toTarget(CFrame.new(2099.88159, 448.931, 648.997375).Position,CFrame.new(2099.88159, 448.931, 648.997375))
											if (CFrame.new(2099.88159, 448.931, 648.997375).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
												if Bartilotween then Bartilotween:Stop() end
												game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2099.88159, 448.931, 648.997375)
											end
										end
									elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 2 then
										if (CFrame.new(-1836, 11, 1714).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
											Bartilotween = toTarget(CFrame.new(-1836, 11, 1714).Position,CFrame.new(-1836, 11, 1714))
										elseif (CFrame.new(-1836, 11, 1714).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
											if Bartilotween then Bartilotween:Stop() end
											game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1836, 11, 1714)
											wait(.5)
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1850.49329, 13.1789551, 1750.89685)
											wait(.1)
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1858.87305, 19.3777466, 1712.01807)
											wait(.1)
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1803.94324, 16.5789185, 1750.89685)
											wait(.1)
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1858.55835, 16.8604317, 1724.79541)
											wait(.1)
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1869.54224, 15.987854, 1681.00659)
											wait(.1)
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1800.0979, 16.4978027, 1684.52368)
											wait(.1)
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1819.26343, 14.795166, 1717.90625)
											wait(.1)
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1813.51843, 14.8604736, 1724.79541)
										end
									end
								end
							end
						end
					end)
				end
			end)

end)
local Meterials = MeterialsBox:AddTab('Meterials')

Meterials:AddToggle('AutoFarmCandy', {
    Text = 'Auto Candy [Event]',
    Default = _G.SaveSetting.AutoFarmCandy,
}):OnChanged(function(x)
    _G.SaveSetting.AutoFarmCandy = x
    savesettings()
    AutoFarmCandy = x
    if x == false then
	toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
    end
		task.spawn(function()
                        while wait() do
                            pcall(function()
                                if AutoFarmCandy then
                                         if game:GetService("Workspace").Enemies:FindFirstChild("Candy Pirate [Lv. 2400]") or game:GetService("Workspace").Enemies:FindFirstChild("Snow Demon [Lv. 2425]") then
                                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                                 if v.Name == "Candy Pirate [Lv. 2400]" or v.Name == "Snow Demon [Lv. 2425]" then
                                                     if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                                      repeat wait(_G.Fast_Delay)
                                                        Bringmob = true
                                                        FastAttackSpeed = true
                                                        Equip(WeaponName)
                                                        AutoHaki()
                                                        _G.PosMon = v.HumanoidRootPart.CFrame
                                                        v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                                        v.Humanoid.JumpPower = 0
                                                        v.Humanoid.WalkSpeed = 0
                                                        v.HumanoidRootPart.CanCollide = false
                                                        v.Humanoid:ChangeState(11)
                                                        toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
                                                    until not AutoFarmCandy or v.Humanoid.Health <= 0 or not v.Parent or v.Humanoid.Health <= 0
                                                    Bringmob = false
                                                    FastAttackSpeed = false
                                                end
                                            end
                                        end
                                    else
                                        toTarget(CFrame.new(-1408.46521, 16.1423531, -14552.2041, 0.90175873, -8.17216943e-08, -0.432239741, 7.81264475e-08, 1, -2.60746162e-08, 0.432239741, -1.02563433e-08, 0.90175873))
                                 
                                         end
                                         
                           end
                            end)
                        end
                end)
end)
    
Meterials:AddToggle('AutoFarmbone', {
    Text = 'Auto Bones',
    Default = _G.SaveSetting.AutoFarmBone,
}):OnChanged(function(x)
    _G.SaveSetting.AutoFarmBone = x
    savesettings()
    AutoFarmBone = x
    if x == false then
	toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
    end
		task.spawn(function()
				while wait() do
					pcall(function()
						if AutoFarmBone or _G.AutoFarmBoneForSythe then
						    if Three_World then
							if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton [Lv. 1975]") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie [Lv. 2000]") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul [Lv. 2025]") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy [Lv. 2050]") then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == "Reborn Skeleton [Lv. 1975]" or v.Name == "Living Zombie [Lv. 2000]" or v.Name == "Demonic Soul [Lv. 2025]" or v.Name == "Posessed Mummy [Lv. 2050]" then
										if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
											repeat wait(_G.Fast_Delay)
												Bringmob = true
												FastAttackSpeed = true
											    Equip(WeaponName)
											    AutoHaki()
												_G.PosMon = v.HumanoidRootPart.CFrame
												v.HumanoidRootPart.Size = Vector3.new(60,60,60)
												v.Humanoid.JumpPower = 0
												v.Humanoid.WalkSpeed = 0
												v.HumanoidRootPart.CanCollide = false
												v.Humanoid:ChangeState(11)
												toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
											until not AutoFarmBone or _G.AutoFarmBoneForSythe or v.Humanoid.Health <= 0 or not v.Parent or v.Humanoid.Health <= 0
											Bringmob = false
											FastAttackSpeed = false
										end
									end
								end
							else
								toTarget(CFrame.new(-9504.8564453125, 172.14292907714844, 6057.259765625))
							end
							else
							    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
						    end
					end
					end)
				end
		end)
end)

Meterials:AddToggle('AutoFarmFish', {
    Text = 'Auto Fish Tail',
    Default = _G.SaveSetting.AutoFarmFish,
}):OnChanged(function(x)
    _G.SaveSetting.AutoFarmFish = x
    savesettings()
    AutoFarmFish = x
    if x == false then
        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
            task.spawn(function()
                    while wait() do
                        pcall(function()
                            if AutoFarmFish then
                               if Three_World then
                                if game:GetService("Workspace").Enemies:FindFirstChild("Fishman Captain [Lv. 1800]") or game:GetService("Workspace").Enemies:FindFirstChild("Fishman Raider [Lv. 1775]") then
                                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if v.Name == "Fishman Raider [Lv. 1775]" or v.Name == "Fishman Captain [Lv. 1800]" then
                                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                                repeat wait(_G.Fast_Delay)
                                                    Bringmob = true
                                                    FastAttackSpeed = true
                                                    Equip(WeaponName)
                                                    AutoHaki()
                                                    _G.PosMon = v.HumanoidRootPart.CFrame
                                                    v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                                    v.Humanoid.JumpPower = 0
                                                    v.Humanoid.WalkSpeed = 0
                                                    v.HumanoidRootPart.CanCollide = false
                                                       v.Humanoid:ChangeState(11)
                                                    toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
                                                until not AutoFarmFish or v.Humanoid.Health <= 0 or not v.Parent or v.Humanoid.Health <= 0
                                                Bringmob = false
                                                FastAttackSpeed = false
                                            end
                                        end
                                    end
                                else
                                    toTarget(CFrame.new( -10993,332, -8940))
                                end
                            
                               else
							   
							    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
                               end
                      
                            end
                            
                        end)
                    end
            end)
    end)
Meterials:AddToggle('AutoFarmDragonScale', {
        Text = 'Auto Dragon Scale',
        Default = _G.SaveSetting.AutoFarmDragonScale,
}):OnChanged(function(x)
        _G.SaveSetting.AutoFarmDragonScale = x
        savesettings()
        AutoFarmDragonScale = x
        if x == false then
            toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
            end
                task.spawn(function()
                        while wait() do
                            pcall(function()
                                if AutoFarmDragonScale then
                                           if Three_World then
                                         if game:GetService("Workspace").Enemies:FindFirstChild("Dragon Crew Archer [Lv. 1600]") or game:GetService("Workspace").Enemies:FindFirstChild("Dragon Crew Warrior [Lv. 1575]") then
                                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                                 if v.Name == "Dragon Crew Warrior [Lv. 1575]" or v.Name == "Dragon Crew Archer [Lv. 1600]" then
                                                     if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                                      repeat wait(_G.Fast_Delay)
                                                        Bringmob = true
                                                        FastAttackSpeed = true
                                                        Equip(WeaponName)
                                                        AutoHaki()
                                                        _G.PosMon = v.HumanoidRootPart.CFrame
                                                        v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                                        v.Humanoid.JumpPower = 0
                                                        v.Humanoid.WalkSpeed = 0
                                                        v.HumanoidRootPart.CanCollide = false
                                                        v.Humanoid:ChangeState(11)
                                                        toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
                                                    until not AutoFarmDragonScale or v.Humanoid.Health <= 0 or not v.Parent or v.Humanoid.Health <= 0
                                                    Bringmob = false
                                                    FastAttackSpeed = false
                                                end
                                            end
                                        end
                                    else
                                        toTarget(CFrame.new(6594,383,139))
                                         end
                                else
							    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
                                           end
                            
                           end
                            end)
                        end
                end)
        end)
    
-- กันรั่วง
spawn(function()
game:GetService("RunService").Heartbeat:Connect(function()
    if AutoFarmBone or AutoFarmMagma or AutoFarmDragonScale or AutoFarmFish or AutoFarmCandy or FarmMasterySword then
    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") then
        setfflag("HumanoidParallelRemoveNoPhysics", "False")
        setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
        game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
        end
    end
end)
end)

local Teleport = TeleportBox:AddTab('Island')

Locations = {}
for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
    table.insert(Locations,v.Name)
    task.spawn(function()
	while wait() do
		pcall(function()
		     if GoIsland then
        if v.Name == SelectLocation then
            toTarget(v.CFrame*CFrame.new(0,50,0))
        end
        end
		end)
	end
end)
end
Teleport:AddDropdown('SelectLocation', {
    Values = Locations,
    Default = nil,
    Multi = false,
    Text = 'Select Island',
}):OnChanged(function(t)
 SelectLocation = t
end)
Teleport:AddToggle('TeleportIsland', {
    Text = 'Teleport',
    Default = false,
}):OnChanged(function(t)
 GoIsland = t
 task.spawn(function()
	while wait() do
		pcall(function()
             if GoIsland then
                toTarget(CframeIsland)
             end
         end)
        end
    end)
end)
spawn(function()
game:GetService("RunService").Heartbeat:Connect(function()
    if GoIsland or GoToNpc then
    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") then
        setfflag("HumanoidParallelRemoveNoPhysics", "False")
        setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
        game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
        end
    end
end)
end)
local NPCs = {}
    for i,v in pairs(game.Workspace.NPCs:GetChildren()) do
         table.insert(NPCs,v.Name)
        task.spawn(function()
	while wait() do
		pcall(function()
		     if GoToNpc then
        if v.Name == SelectNPC then
            toTarget(v.HumanoidRootPart.CFrame)
        end
        end
		end)
	end
end)
    end
local Teleport2 = TeleportBox:AddTab("Teleport Npc's")
local NpcTP = Teleport2:AddDropdown('SelectNPC', {
    Values = NPCs,
    Default = nil,
    Multi = false,
    Text = 'Select Npc Name',
}):OnChanged(function(t)
 SelectNPC = t
end)
Teleport2:AddToggle('TeleportNPC', {
    Text = 'Teleport',
    Default = false,
}):OnChanged(function(t)
 GoToNpc = t
end)

local Event = MeterialsBox:AddTab('Candies')
local CandyCheck = Event:AddLabel("Candies : don't have this event yet!")
task.spawn(
    function()
        pcall(
            function()
                while wait() do
                    CandyCheck:SetText("Candies : "..game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer('Candies','Check'))
                end
            end
        )
    end
)
Event:AddButton('Elf Hat [ 250 Candies ]', function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer('Candies','Buy',3,1)

end)
Event:AddButton('Santa Hat [ 500 Candies]', function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer('Candies','Buy',3,2)
 
end)
Event:AddButton('Sleigh [ 1000 Candies ]', function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer('Candies','Buy',3,3) 

end)
Event:AddButton('Exp x2 15 mins [ 50 Candies ]', function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer('Candies','Buy',1,1)
 
end)
Event:AddButton("Reset Stats [ 75 Candies ]", function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer('Candies','Buy',1,2)

end)
Event:AddButton("New Race [ 100 Candies ]", function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer('Candies','Buy',1,3)
end)
Event:AddButton("200 Fragments [ 50 Candies ]", function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer('Candies','Buy',2,1)
end)
Event:AddButton("500 Fragments [ 100 Candies ]", function()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer('Candies','Buy',2,2)
end)


local PlaceID = game.PlaceId
local z = {}
local o = ""
local n = os.date("!*t").hour
local Deleted = false
local File = pcall(function()
    z = game:GetService('HttpService'):JSONDecode(readfile("NotSameServers.json"))
end)
if not File then
    table.insert(z, n)
    writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(z))
end
local function q()
    local l;
    if o == "" then
        l = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
    else
        l = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. o))
    end
    local ID = ""
    if l.nextPageCursor and l.nextPageCursor ~= "null" and l.nextPageCursor ~= nil then
        o = l.nextPageCursor
    end
    local num = 0;
    for i,v in pairs(l.data) do
        local g = true
        ID = tostring(v.id)
        if tonumber(v.maxPlayers) > tonumber(v.playing) then
            for _,a in pairs(z) do
                if num ~= 0 then
                    if ID == tostring(a) then
                        g = false
                    end
                else
                    if tonumber(n) ~= tonumber(a) then
                        local delFile = pcall(function()
                            delfile("NotSameServers.json")
                            z = {}
                            table.insert(z, n)
                        end)
                    end
                end
                num = num + 1
            end
            if g == true then
                table.insert(z, ID)
                task.wait()
                pcall(function()
                    writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(z))
                    task.wait()
                    game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                end)
            end
        end
    end
end

function ServerHop()
    while task.wait() do
			pcall(function()
				q()
				if o ~= "" then
					q()
				end
			end)
    end
end
local ServerTp = TeleportBox1:AddTab('Server')
ServerTp:AddButton('Rejoin Server', function()
Library:Notify('Delta Hub | Rejoin Server in 3',1)
wait(1)
Library:Notify('Delta Hub | Rejoin Server in 2',1)
wait(1)
Library:Notify('Delta Hub | Rejoin Server in 1',1)
wait(1)
Library:Notify('Delta Hub | Rejoin Server Go!!',1)
game:GetService("TeleportService"):Teleport(game.PlaceId)

end)
ServerTp:AddButton('Hop Server', function()
Library:Notify('Delta Hub | Hop Server in 3',1)
wait(1)
Library:Notify('Delta Hub | Hop Server in 2',1)
wait(1)
Library:Notify('Delta Hub | Hop Server in 1',1)
wait(1)
Library:Notify('Delta Hub | Hop Server Go!!',1.5)
    ServerHop()
end)
ServerTp:AddButton('Teleport Sea 1', function()
Library:Notify('Delta Hub | Teleport Sea 1 in 3 sec',1)
wait(1)
Library:Notify('Delta Hub | Teleport Sea 1 in 2 sec',1)
wait(1)
Library:Notify('Delta Hub | Teleport Sea 1 in 1 sec',1)
wait(1)
Library:Notify('Delta Hub | Teleport Sea 1 Go!!',1)
game:GetService("ReplicatedStorage").Remotes.CommF:InvokeServer("TravelMain")
end)
ServerTp:AddButton('Teleport Sea 2', function()
Library:Notify('Delta Hub | Teleport Sea 2 in 3 sec',1)
wait(1)
Library:Notify('Delta Hub | Teleport Sea 2 in 2 sec',1)
wait(1)
Library:Notify('Delta Hub | Teleport Sea 2 in 1 sec',1)
wait(1)
Library:Notify('Delta Hub | Teleport Sea 2 Go!!',1)
game:GetService("ReplicatedStorage").Remotes.CommF:InvokeServer("TravelDressrosa")
end)
ServerTp:AddButton('Teleport Sea 3', function()
Library:Notify('Delta Hub | Teleport Sea 3 in 3 sec',1)
wait(1)
Library:Notify('Delta Hub | Teleport Sea 3 in 2 sec',1)
wait(1)
Library:Notify('Delta Hub | Teleport Sea 3 in 1 sec',1)
wait(1)
Library:Notify('Delta Hub | Teleport Sea 3 Go!!',1)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
end)
function GetAllMeleeFarm()
	if SupComplete == false then
		local args = {
			[1] = "BuySuperhuman"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		if CheckMasteryWeapon("Superhuman",400) == "true UpTo" then
			SupComplete = true
		end
	end
	wait(.5)
	if EClawComplete == false then
		local string_1 = "BuyElectricClaw";
		local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
		Target:InvokeServer(string_1);

		if CheckMasteryWeapon("Electric Claw",400) == "true UpTo" then
			EClawComplete = true
		end
	end
	wait(.5)
	if TalComplete == false then
		game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyDragonTalon")

		if CheckMasteryWeapon("Dragon Talon",400) == "true UpTo" then
			TalComplete = true
		end
	end
	wait(.5)
	if SharkComplete == false then
		local args = {
			[1] = "BuySharkmanKarate"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

		if CheckMasteryWeapon("Sharkman Karate",400) == "true UpTo" then
			SharkComplete = true
		end
	end
	wait(.5)
	if DeathComplete == false then
		local args = {
			[1] = "BuyDeathStep"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

		if CheckMasteryWeapon("Death Step",400) == "true UpTo" then
			DeathComplete = true
		end
	end
	if GodComplete == false then
		local args = {
			[1] = "BuyGodhuman"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

		if CheckMasteryWeapon("Godhuman",350) == "true UpTo" then
			GodComplete = true
		end
	end
end
AutoFarm1:AddToggle('Superhuman', {
    Text = 'Auto Superhuman',
    Default = _G.SaveSetting.Superhuman,
}):OnChanged(function(t)
    _G.SaveSetting.Superhuman = t
    savesettings()
    Superhuman = t
end)
		task.spawn(function()
			while wait() do
				pcall(function()
					if Superhuman then
						if game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
							if not game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") and not game.Players.LocalPlayer.Character:FindFirstChild("Combat") then
								if not game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and not game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") then
									if not game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and not game.Players.LocalPlayer.Character:FindFirstChild("Electro") then
										if not game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and not game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") then
											if not game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and not game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") then
												if not game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") and not game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") then
													local args = {
														[1] = "BuyElectro"
													}
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
												end
											end
										end
									end
								end
							end

							Equip(WeaponName)

							if game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") or game.Players.LocalPlayer.Character:FindFirstChild("Combat") then
								local args = {
									[1] = "BuyElectro"
								}
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							end
							if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 300 then
								local args = {
									[1] = "BuyBlackLeg"
								}
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							end
							if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 300 then
								local args = {
									[1] = "BuyBlackLeg"
								}
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							end
							if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 300 then
								local args = {
									[1] = "BuyFishmanKarate"
								}
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							end
							if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 300 then
								local args = {
									[1] = "BuyFishmanKarate"
								}
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							end
							if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 300  then
								local args = {
									[1] = "BlackbeardReward",
									[2] = "DragonClaw",
									[3] = "2"
								}
end
end
end
end)
end
end)
AutoFarm1:AddToggle('Godhuman', {
    Text = 'Auto Godhuman',
    Default = _G.SaveSetting.Godhuman,
}):OnChanged(function(t)
    Godhuman = t
    _G.SaveSetting.Godhuman = t
    savesettings()
	task.spawn(function()
		while wait() do
			pcall(function()
				if Godhuman then
					BuyGodhuman = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman",true))
					if BuyGodhuman then
						if BuyGodhuman == 1 then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
							Godhuman = false
						end
					end
					if not HasTalon then
						BuyDragonTalon = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon",true))

						if BuyDragonTalon then
							if BuyDragonTalon == 1 then
								HasTalon = true
							end
						end
					end
					if not HasSuperhuman then
						BuySuperhuman = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman",true))

						if BuySuperhuman then
							if BuySuperhuman == 1 then
								HasSuperhuman = true
							end
						end
					end
					if not HasKarate then
						BuySharkmanKarate = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true))

						if BuySharkmanKarate then
							if BuySharkmanKarate == 1 then
								HasKarate = true
							end
						end
					end
					if not HasDeathStep then
						BuyDeathStep = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer( "BuyDeathStep",true))

						if BuyDeathStep then
							if BuyDeathStep == 1 then
								HasDeathStep = true
							end
						end
					end
					if not HasElectricClaw then
						BuyElectricClaw = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw",true))
						if BuyElectricClaw then
							if BuyElectricClaw == 1 then
								HasElectricClaw = true
							end
						end
					end

					if not HasSuperhuman then
						if game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
							if not game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") and not game.Players.LocalPlayer.Character:FindFirstChild("Combat") then
								if not game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and not game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") then
									if not game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and not game.Players.LocalPlayer.Character:FindFirstChild("Electro") then
										if not game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and not game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") then
											if not game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and not game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") then
												if not game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") and not game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") then
													local args = {
														[1] = "BuyElectro"
													}
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
												end
											end
										end
									end
								end
							end
							Equip(WeaponName)

							if game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") or game.Players.LocalPlayer.Character:FindFirstChild("Combat") then
								local args = {
									[1] = "BuyElectro"
								}
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							end
							if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 300 then
								local args = {
									[1] = "BuyBlackLeg"
								}
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							end
							if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 300 then
								local args = {
									[1] = "BuyBlackLeg"
								}
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							end
							if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 300 then
								local args = {
									[1] = "BuyFishmanKarate"
								}
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							end
							if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 300 then
								local args = {
									[1] = "BuyFishmanKarate"
								}
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							end
							if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 300  then
								local args = {
									[1] = "BlackbeardReward",
									[2] = "DragonClaw",
									[3] = "2"
								}
								HaveDragonClaw = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
								if Godhuman and game.Players.LocalPlayer.Data.Fragments.Value <= 1500 and HaveDragonClaw == 0 then
									if game.Players.LocalPlayer.Data.Level.Value > 1100 then
										if AutoFarm then _G.SaveSetting.AutoFarm = false end
									end
								else
									if AutoFarm then _G.SaveSetting.AutoFarm = true end
									local args = {
										[1] = "BlackbeardReward",
										[2] = "DragonClaw",
										[3] = "2"
									}
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
								end
							end
							if game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 300  then
								local args = {
									[1] = "BlackbeardReward",
									[2] = "DragonClaw",
									[3] = "2"
								}
								HaveDragonClaw = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
								if Godhuman and game.Players.LocalPlayer.Data.Fragments.Value <= 1500 and HaveDragonClaw == 0 then
									if game.Players.LocalPlayer.Data.Level.Value > 1100 then
										if AutoFarm then _G.SaveSetting.AutoFarm = false end
									end
								else
									if AutoFarm then _G.SaveSetting.AutoFarm = true end
									local args = {
										[1] = "BlackbeardReward",
										[2] = "DragonClaw",
										[3] = "2"
									}
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
									if AutoFarm then _G.SaveSetting.AutoFarm = true end
								end
							end

							if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 300 then
								if AutoFarm then _G.SaveSetting.AutoFarm = true end
								local args = {
									[1] = "BuySuperhuman"
								}
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							end
							if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 300 then
								if AutoFarm then _G.SaveSetting.AutoFarm = true end
								local args = {
									[1] = "BuySuperhuman"
								}
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							end 
						end
					elseif not HasKarate then
						if game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
							if not game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and not game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") then
								if not game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate") and not game.Players.LocalPlayer.Character:FindFirstChild("Sharkman Karate") then
									local args = {
										[1] = "BuyFishmanKarate"
									}
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
								end
							end

							if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 400 then
								if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true) == "I lost my house keys, could you help me find them? Thanks." and not game.Players.LocalPlayer.Character:FindFirstChild("Water Key") and not game.Players.LocalPlayer.Backpack:FindFirstChild("Water Key") then
									if New_World then
										KillSharkMan = true
										if AutoFarm then _G.SaveSetting.AutoFarm = false end
									else
										KillSharkMan = false
										if AutoFarm then _G.SaveSetting.AutoFarm =  true end
									end
								elseif tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true)) == 1 then
									KillSharkMan = false
									if Auto_Farm_Level then _G.Settings.Main["Auto Farm Level"] = true end
									local args = {
										[1] = "BuySharkmanKarate"
									}
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
								elseif game.Players.LocalPlayer.Character:FindFirstChild("Water Key") or game.Players.LocalPlayer.Backpack:FindFirstChild("Water Key") then
									KillSharkMan = false
									if Auto_Farm_Level then _G.Settings.Main["Auto Farm Level"] = true end
									local args = {
										[1] = "BuySharkmanKarate"
									}
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
								end
							end

							if game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 400 then
								if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true) == "I lost my house keys, could you help me find them? Thanks." and not game.Players.LocalPlayer.Character:FindFirstChild("Water Key") and not game.Players.LocalPlayer.Backpack:FindFirstChild("Water Key") then
									if New_World then
										KillSharkMan = true
										if AutoFarm then _G.SaveSetting.AutoFarm = false end
									else
										if AutoFarm then _G.SaveSetting.AutoFarm = true end
										KillSharkMan = false
									end
								elseif tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true)) == 1 then
									KillSharkMan = false
									if AutoFarm then _G.SaveSetting.AutoFarm = true end
									local args = {
										[1] = "BuySharkmanKarate"
									}
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
								elseif game.Players.LocalPlayer.Character:FindFirstChild("Water Key") or game.Players.LocalPlayer.Backpack:FindFirstChild("Water Key") then
									KillSharkMan = false
									if AutoFarm then _G.SaveSetting.AutoFarm = true end
									local args = {
										[1] = "BuySharkmanKarate"
									}
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
								end
							end
							Equip(WeaponName)
						end
					elseif not HasDeathStep then
						if game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
							if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 400 then
								local args = {
									[1] = "BuyDeathStep"
								}
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

							end  
							if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 400 then
								local args = {
									[1] = "BuyDeathStep"
								}
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

							end  
							Equip(WeaponName)
						end
					elseif not HasTalon then
						if game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
							Equip(WeaponName)

							if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 400 and game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 then
								if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon", true) == 3 then
									local string_1 = "Bones";
									local string_2 = "Buy";
									local number_1 = 1;
									local number_2 = 1;
									local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
									Target:InvokeServer(string_1, string_2, number_1, number_2);

									local string_1 = "BuyDragonTalon";
									local bool_1 = true;
									local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
									Target:InvokeServer(string_1, bool_1);
								elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon", true) == 1 then
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
								else
									local string_1 = "Bones";
									local string_2 = "Buy";
									local number_1 = 1;
									local number_2 = 1;
									local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
									Target:InvokeServer(string_1, string_2, number_1, number_2);
								end 
							end

							if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 400 and game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 then
								if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon", true) == 3 then
									local string_1 = "Bones";
									local string_2 = "Buy";
									local number_1 = 1;
									local number_2 = 1;
									local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
									Target:InvokeServer(string_1, string_2, number_1, number_2);

									local string_1 = "BuyDragonTalon";
									local bool_1 = true;
									local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
									Target:InvokeServer(string_1, bool_1);
								elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon", true) == 1 then
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
								else
									local string_1 = "Bones";
									local string_2 = "Buy";
									local number_1 = 1;
									local number_2 = 1;
									local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
									Target:InvokeServer(string_1, string_2, number_1, number_2);
								end 
							end
						end
					elseif not HasElectricClaw then
						if game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then
							Equip(WeaponName)
							if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 400 then
								local v175 = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw", true);
								if v175 == 4 then
									local v176 = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw", "Start");
									if v176 == nil then
										game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12548, 337, -7481)
									end
								else
									local string_1 = "BuyElectricClaw";
									local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
									Target:InvokeServer(string_1);
								end
							end

							if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 400 then
								local v175 = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw", true);
								if v175 == 4 then
									local v176 = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw", "Start");
									if v176 == nil then
										game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12548, 337, -7481)
									end
								else
									local string_1 = "BuyElectricClaw";
									local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
									Target:InvokeServer(string_1);
								end
							end
						end
					end
					if BuyGodhuman ~= 1 and HasSuperhuman and HasTalon and HasKarate and HasDeathStep and HasElectricClaw then
						if HasSuperhuman and not SupComplete then
							local args = {
								[1] = "BuySuperhuman"
							}
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							wait(0.2)
							if CheckMasteryWeapon("Superhuman",400) == "true UpTo" or CheckMasteryWeapon("Superhuman",400) == "true" and SupComplete == false then
								SupComplete = true
							end
						elseif HasTalon and not TalComplete then
							local args = {
								[1] = "BuyDragonTalon"
							}
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							wait(0.2)
							if CheckMasteryWeapon("Dragon Talon",400) == "true UpTo" or CheckMasteryWeapon("Superhuman",400) == "true" and TalComplete == false then
								TalComplete = true
							end
						elseif HasKarate and not SharkComplete then
							local args = {
								[1] = "BuySharkmanKarate"
							}
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							wait(0.2)
							if CheckMasteryWeapon("Sharkman Karate",400) == "true UpTo" or CheckMasteryWeapon("Superhuman",400) == "true" and SharkComplete == false then
								SharkComplete = true
							end
						elseif HasDeathStep and not DeathComplete then
							local args = {
								[1] = "BuyDeathStep"
							}
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							wait(0.2)
							if CheckMasteryWeapon("Death Step",400) == "true UpTo" or CheckMasteryWeapon("Superhuman",400) == "true" and DeathComplete == false then
								DeathComplete = true
							end
						elseif HasElectricClaw and not EClawComplete then
							local args = {
								[1] = "BuyElectricClaw"
							}
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							wait(0.2)
							if CheckMasteryWeapon("Electric Claw",400) == "true UpTo" or CheckMasteryWeapon("Superhuman",400) == "true" and EClawComplete == false then
								EClawComplete = true
							end
						end
					end

					if BuyGodhuman ~= 1 and SupComplete and EClawComplete and TalComplete and SharkComplete and DeathComplete and (not game.Players.LocalPlayer.Character:FindFirstChild("Godhuman") or not game.Players.LocalPlayer.Backpack:FindFirstChild("Godhuman")) then
						if GetMaterial("Fish Tail") >= 20 then
							if GetMaterial("Magma Ore") >= 20 then
								if GetMaterial("Dragon Scale") >= 10 then
									if GetMaterial("Mystic Droplet") >= 10 then
										Com("F_","BuyGodhuman")
										BuyGodhuman = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman",true))

										if BuyGodhuman then
											if BuyGodhuman == 1 then
												Godhuman = false
											end
										end
										if AutoFarm then _G.SaveSetting.AutoFarm = true end
									elseif not New_World then
										Com("F_","TravelDressrosa")
									elseif New_World then
										if AutoFarm then _G.SaveSetting.AutoFarm = false end
										CheckMaterial("Mystic Droplet")
										if CustomFindFirstChild(MaterialMob) then
											for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
												if Godhuman and table.find(MaterialMob,v.Name) and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
													repeat wait()
														FarmtoTarget = toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,1))
														if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
															if FarmtoTarget then FarmtoTarget:Stop() end
															FastAttack = true
															Equip(WeaponName)
															spawn(function()
																for i,v2 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
																	if v2.Name == v.Name then
																		spawn(function()
																			if InMyNetWork(v2.HumanoidRootPart) then
																				v2.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
																				v2.Humanoid.JumpPower = 0
																				v2.Humanoid.WalkSpeed = 0
																				v2.HumanoidRootPart.CanCollide = false
																				v2.Humanoid:ChangeState(11)
																				v2.HumanoidRootPart.Size = Vector3.new(80,80,80)
																			end
																		end)
																	end
																end
															end)
															if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
																game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
																game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
															end
															toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
														end
													until not CustomFindFirstChild(MaterialMob) or not _Godhuman or v.Humanoid.Health <= 0 or not v.Parent
													FastAttackSpeed = false
												end
											end
										else
											FastAttackSpeed = false
											Modstween = toTarget(CFrameMon.Position,CFrameMon)
											if World1 and (table.find(MaterialMob,"Fishman Commando [Lv. 400]")) and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
												if Modstween then Modstween:Stop() end wait(.5)
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
											elseif World1 and not (table.find(MaterialMob,"Fishman Commando [Lv. 400]")) and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
												if Modstween then Modstween:Stop() end wait(.5)
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(3864.8515625, 6.6796875, -1926.7841796875))
											elseif World1 and (table.find(MaterialMob,"God's Guard [Lv. 450]")) and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 3000 then
												if Modstween then Modstween:Stop() end wait(.5)
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-4607.8227539063, 872.54248046875, -1667.5568847656))
											elseif (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
												if Modstween then Modstween:Stop() end
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
											end 
										end
									end
								elseif not Three_World then
									Com("F_","TravelZou")
								elseif Three_World then
									if AutoFarm then _G.SaveSetting.AutoFarm = false end
									CheckMaterial("Dragon Scale")
									if CustomFindFirstChild(MaterialMob) then
										for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
											if Godhuman and table.find(MaterialMob,v.Name) and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
												repeat wait()
													FarmtoTarget = toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
													if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
														if FarmtoTarget then FarmtoTarget:Stop() end
														FastAttackSpeed = true
														Equip(WeaponName)
														spawn(function()
															for i,v2 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
																if v2.Name == v.Name then
																	spawn(function()
																		if InMyNetWork(v2.HumanoidRootPart) then
																			v2.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
																			v2.Humanoid.JumpPower = 0
																			v2.Humanoid.WalkSpeed = 0
																			v2.HumanoidRootPart.CanCollide = false
																			v2.Humanoid:ChangeState(11)
																			v2.HumanoidRootPart.Size = Vector3.new(80,80,80)
																		end
																	end)
																end
															end
														end)
														if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
															game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
															game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
														end
														toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
													end
												until not CustomFindFirstChild(MaterialMob) or not Godhuman or v.Humanoid.Health <= 0 or not v.Parent
												FastAttackSpeed = false
											end
										end
									else
										FastAttackSpeed = false
										Modstween = toTarget(CFrameMon.Position,CFrameMon)
										if Old_World and (table.find(MaterialMob,"Fishman Commando [Lv. 400]")) and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
											if Modstween then Modstween:Stop() end wait(.5)
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
										elseif Old_World and not (table.find(MaterialMob,"Fishman Commando [Lv. 400]")) and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
											if Modstween then Modstween:Stop() end wait(.5)
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(3864.8515625, 6.6796875, -1926.7841796875))
										elseif Old_World and (table.find(MaterialMob,"God's Guard [Lv. 450]")) and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 3000 then
											if Modstween then Modstween:Stop() end wait(.5)
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-4607.8227539063, 872.54248046875, -1667.5568847656))
										elseif (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
											if Modstween then Modstween:Stop() end
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
										end 
									end
								end
							elseif not Old_World then
								Com("F_","TravelMain")
							elseif Old_World then
								if AutoFarm then _G.SaveSetting.AutoFarm = false end
								CheckMaterial("Magma Ore")
								if CustomFindFirstChild(MaterialMob) then
									for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if Godhuman and table.find(MaterialMob,v.Name) and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
											repeat wait()
												FarmtoTarget = toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
												if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
													if FarmtoTarget then FarmtoTarget:Stop() end
													FastAttack = true
													EquipWeapon(_G.Settings.Configs["Select Weapon"])
													spawn(function()
														for i,v2 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
															if v2.Name == v.Name then
																spawn(function()
																	if InMyNetWork(v2.HumanoidRootPart) then
																		v2.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
																		v2.Humanoid.JumpPower = 0
																		v2.Humanoid.WalkSpeed = 0
																		v2.HumanoidRootPart.CanCollide = false
																		v2.Humanoid:ChangeState(11)
																		v2.HumanoidRootPart.Size = Vector3.new(80,80,80)
																	end
																end)
															end
														end
													end)
													if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
														game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
														game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
													end
													toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
												end
											until not CustomFindFirstChild(MaterialMob) or not Godhuman or v.Humanoid.Health <= 0 or not v.Parent
											FastAttackSpeed = false
										end
									end
								else
									FastAttackSpeed = false
									Modstween = toTarget(CFrameMon.Position,CFrameMon)
									if Old_World and (table.find(MaterialMob,"Fishman Commando [Lv. 400]")) and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
										if Modstween then Modstween:Stop() end wait(.5)
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
									elseif Old_World and not (table.find(MaterialMob,"Fishman Commando [Lv. 400]")) and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
										if Modstween then Modstween:Stop() end wait(.5)
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(3864.8515625, 6.6796875, -1926.7841796875))
									elseif Old_World and (table.find(MaterialMob,"God's Guard [Lv. 450]")) and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 3000 then
										if Modstween then Modstween:Stop() end wait(.5)
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-4607.8227539063, 872.54248046875, -1667.5568847656))
									elseif (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
										if Modstween then Modstween:Stop() end
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
									end 
								end
							end
						elseif not Old_World then
							Com("F_","TravelMain")
						elseif Old_World then
							if AutoFarm then _G.SaveSetting.AutoFarm = false end
							CheckMaterial("Fish Tail")
							if CustomFindFirstChild(MaterialMob) then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if Godhuman and table.find(MaterialMob,v.Name) and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
										repeat wait()
											FarmtoTarget = toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
											if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
												if FarmtoTarget then FarmtoTarget:Stop() end
												FastAttackSpeed = true
												Equip(WeaponName)
												spawn(function()
													for i,v2 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
														if v2.Name == v.Name then
															spawn(function()
																if InMyNetWork(v2.HumanoidRootPart) then
																	v2.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
																	v2.Humanoid.JumpPower = 0
																	v2.Humanoid.WalkSpeed = 0
																	v2.HumanoidRootPart.CanCollide = false
																	v2.Humanoid:ChangeState(11)
																	v2.HumanoidRootPart.Size = Vector3.new(80,80,80)
																end
															end)
														end
													end
												end)
												if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
													game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
													game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
												end
												toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
											end
										until not CustomFindFirstChild(MaterialMob) or not Godhuman or v.Humanoid.Health <= 0 or not v.Parent
										FastAttackSpeed = false
									end
								end
							else
								FastAttackSpeed = false
								Modstween = toTarget(CFrameMon.Position,CFrameMon)
								if Old_World and (table.find(MaterialMob,"Fishman Commando [Lv. 400]")) and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
									if Modstween then Modstween:Stop() end wait(.5)
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
								elseif Old_World and not (table.find(MaterialMob,"Fishman Commando [Lv. 400]")) and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000 then
									if Modstween then Modstween:Stop() end wait(.5)
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(3864.8515625, 6.6796875, -1926.7841796875))
								elseif Old_World and (table.find(MaterialMob,"God's Guard [Lv. 450]")) and (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 3000 then
									if Modstween then Modstween:Stop() end wait(.5)
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-4607.8227539063, 872.54248046875, -1667.5568847656))
								elseif (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
									if Modstween then Modstween:Stop() end
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon
								end 
							end
						end
					end
				end
			end)
		end
	end)

task.spawn(function()
while wait() do
	pcall(function()
		if Godhuman and New_World then
			if game.Workspace.Enemies:FindFirstChild("Tide Keeper [Lv. 1475] [Boss]") or game.ReplicatedStorage:FindFirstChild("Tide Keeper [Lv. 1475] [Boss]") then
				if (KillSharkMan == true and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true) == "I lost my house keys, could you help me find them? Thanks.") then
					if KillFish then KillFish:Stop() end
					Com("F_","SetSpawnPoint")
					for i,v in pairs(game.Workspace.Enemies:GetChildren()) do 
						if v.Name == "Tide Keeper [Lv. 1475] [Boss]" then
							repeat wait()
								if game.Workspace.Enemies:FindFirstChild(v.Name) then
									if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 200 then
										Farmtween = toTarget(v.HumanoidRootPart.CFrame)
									elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 200 then
										if Farmtween then Farmtween:Stop() end
										FastAttackSpeed = true
										if _G.Settings.Configs["Auto Haki"] then
											if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
											end
										end
										if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Settings.Configs["Select Weapon"]) then
											wait()
											Equip(WeaponName)
										end
										if not _G.Settings.Configs["Fast Attack"] then
											game:GetService'VirtualUser':CaptureController()
											game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
										end
										v.HumanoidRootPart.Size = Vector3.new(60,60,60)
										v.Humanoid.JumpPower = 0
										v.Humanoid.WalkSpeed = 0
										v.HumanoidRootPart.CanCollide = false
										v.Humanoid:ChangeState(11)
										toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
										if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
											game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
											game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
										end
									end
								end
							until not v.Parent or not Godhuman or KillSharkMan == false or v.Humanoid.Health == 0 or game.Players.LocalPlayer.Character:FindFirstChild("Water Key") or game.Players.LocalPlayer.Backpack:FindFirstChild("Water Key")
							FastAttackSpeed = false
						end
					end
				end
			else
				if game:GetService("ReplicatedStorage"):FindFirstChild("Tide Keeper [Lv. 1475] [Boss]") then
					KillFish = toTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Tide Keeper [Lv. 1475] [Boss]").HumanoidRootPart.CFrame)
				else
					if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true) == "I lost my house keys, could you help me find them? Thanks." then
						ServerHop()
					end
				end
			end
		end
	end)
end
end)
end)
AutoFarm1:AddToggle('ElectricClaw', {
    Text = 'Auto Electric Claw',
    Default = _G.SaveSetting.ElectricClaw,
})
AutoFarm1:AddToggle('DeathStep', {
    Text = 'Auto DeathStep',
    Default = _G.SaveSetting.DeathStep,
})
AutoFarm1:AddToggle('SharkmanKarate', {
    Text = 'Auto SharkmanKarate',
    Default = _G.SaveSetting.SharkmanKarate,
})
AutoFarm1:AddToggle('DragonTalon', {
    Text = 'Auto DragonTalon',
    Default = _G.SaveSetting.DragonTalon,
})

							
Toggles.AutoFarmLevel:OnChanged(function(t)
    _G.SaveSetting.AutoFarm = t
    AutoFarm = t
    Bringmob = t
    FastAttackSpeed = t
    savesettings()
    if t == false then
		toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
    end
spawn(function()
while wait() do
    if AutoFarm == true then
       pcall(function()
        CheckQuest()
if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then

for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
	if v.Name == Name then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",QuestName,LevelQuest)
	else
		toTarget(CFrameMon)
	end
end

elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
    if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,NameMon) then
        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
            if v.Name == Name and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") then
                if v.Humanoid.Health > 0 then
                  repeat wait()
                    _G.PosMon = v.HumanoidRootPart.CFrame
                    Equip(WeaponName)
                    AutoHaki()
                    toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))

                    v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                    v.HumanoidRootPart.CanCaillde = false
                     if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,NameMon) then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
        end
                    until AutoFarm == false or v.Humanoid.Health <= 0
                end
			end
            end
        else
            local A_1 = "AbandonQuest"
            local Event = game:GetService("ReplicatedStorage").Remotes["CommF_"]
            Event:InvokeServer(A_1)
    end
end
       end)

end

end
end)
end)
CakeMain:AddToggle('AutoCakePrince', {
    Text = 'Auto Cake Prince',
    Default = _G.SaveSetting.AutoCakePrince,
})
Toggles.AutoCakePrince:OnChanged(function(x)
    _G.SaveSetting.AutoCakePrince = x
    savesettings()
    AutoCakePrince = x
    if x == false then
		toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
    end
task.spawn(function()
				while wait() do
					if AutoCakePrince then
						game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CakePrinceSpawner")
						if game.ReplicatedStorage:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
							if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
								for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
									if AutoCakePrince and v.Name == "Cake Prince [Lv. 2300] [Raid Boss]" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
										repeat wait(_G.Fast_Delay)
											if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
												Farmtween = toTarget(v.HumanoidRootPart.CFrame)
											elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
												if Farmtween then
													Farmtween:Stop()
												end
												FastAttackSpeed = true
											   AutoHaki()
											   Equip(WeaponName)
												_G.PosMon = v.HumanoidRootPart.CFrame
												v.HumanoidRootPart.Size = Vector3.new(60,60,60)
												v.Humanoid.JumpPower = 0
												v.Humanoid.WalkSpeed = 0
												v.HumanoidRootPart.CanCollide = false
												v.Humanoid:ChangeState(11)
												toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
											end
										until not AutoCakePrince or not v.Parent or v.Humanoid.Health <= 0
										FastAttackSpeed = false
									end
								end
							else
								if game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 0 and (CFrame.new(-1990.672607421875, 4532.99951171875, -14973.6748046875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude >= 2000 then
									FastAttackSpeed = false
									Questtween = toTarget(CFrame.new(-2151.82153, 149.315704, -12404.9053))
									if (CFrame.new(-2151.82153, 149.315704, -12404.9053).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
										if Questtween then Questtween:Stop() end
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2151.82153, 149.315704, -12404.9053)
										wait(.1)
									end
								end 
							end
						else
							if game:GetService("Workspace").Enemies:FindFirstChild("Cookie Crafter [Lv. 2200]") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Guard [Lv. 2225]") or game:GetService("Workspace").Enemies:FindFirstChild("Baking Staff [Lv. 2250]") or game:GetService("Workspace").Enemies:FindFirstChild("Head Baker [Lv. 2275]") then
								for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
									if (v.Name == "Cookie Crafter [Lv. 2200]" or v.Name == "Cake Guard [Lv. 2225]" or v.Name == "Baking Staff [Lv. 2250]" or v.Name == "Head Baker [Lv. 2275]") and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
										repeat wait()
											if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
												Farmtween = toTarget(v.HumanoidRootPart.CFrame)
											elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
												if Farmtween then
													Farmtween:Stop()
												end
												FastAttackSpeed = true
												Bringmob = true
												AutoHaki()
											   Equip(WeaponName)
												_G.PosMon = v.HumanoidRootPart.CFrame
												v.Humanoid.JumpPower = 0
												v.Humanoid.WalkSpeed = 0
												v.HumanoidRootPart.CanCollide = false
												v.Humanoid:ChangeState(11)
												toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
											end
										until not AutoCakePrince or not v.Parent or v.Humanoid.Health <= 0
										Bringmob = false
										FastAttackSpeed = false
									end
								end
							else
								Questtween = toTarget(CFrame.new(-2077, 252, -12373))
								if (CFrame.new(-2077, 252, -12373).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
									if Questtween then Questtween:Stop() end
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2077, 252, -12373)
								end
							end
						end
					else
						toTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
						break
					end
				end
			end)
end)
spawn(function()
game:GetService("RunService").Heartbeat:Connect(function()
    if AutoCakePrince then
    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") then
        setfflag("HumanoidParallelRemoveNoPhysics", "False")
        setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
        game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
        end
    end
end)
end)

Weapon = {
	"Melee",
	"Sword",
	"Devil Fruit"
}
FastAttack = {
	"Slow",
    "Fast",
    "Super Fast",
    "Extreme",
}

SettingGeneral:AddDropdown('SelectWeaponDropdown', {
    Values = Weapon,
    Default = "Combat",
    Multi = false,
    Text = 'Select Weapon',
})
SettingGeneral:AddDropdown('FastAttackMode', {
    Values = FastAttack,
    Default = "Fast",
    Multi = false,
    Text = 'Select Fast Attack',
})

Options.FastAttackMode:OnChanged(function(a)
	SelectSpeedFast = a
	if SelectSpeedFast == "Fast" then
		_G.Fast_Delay = 0.07
	elseif SelectSpeedFast == "Super Fast" then
		_G.Fast_Delay = 0.02
	elseif SelectSpeedFast == "Extreme" then
		_G.Fast_Delay = 0
	elseif SelectSpeedFast == "Slow" then
		_G.Fast_Delay = 0.1
	end
end)

SettingGeneral:AddToggle('FastTween', {
    Text = 'Fast Tween',
    Default = _G.SaveSetting.FastTween,

}):OnChanged(function(t)
    FastTween = t
    _G.SaveSetting.FastTween = t
    savesettings()
end)

SettingGeneral:AddToggle('HideDmg', {
    Text = 'Hide Damages',
    Default = _G.SaveSetting.HideDmg,

}):OnChanged(function(t)
    _G.SaveSetting.HideDmg = t
    savesettings()
    HideDmg = t
end)

SettingGeneral:AddButton('Capcut', function()
    local cac = require(game:GetService("Players").LocalPlayer.PlayerGui.Main.UIController.Inventory)
         local Inventory = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")
         local Items = {}
         local RaityLevel = {"Mythical","Legendary","Rare","Uncommon","Common"}
         local RaityColor =  {
             ["Common"] = Color3.fromRGB(179, 179, 179),
             ["Uncommon"] = Color3.fromRGB(92, 140, 211),
             ["Rare"] =  Color3.fromRGB(140, 82, 255),
             ["Legendary"] = Color3.fromRGB(213, 43, 228) ,
             ["Mythical"] =  Color3.fromRGB(238, 47, 50)
         }
         function GetRaity(color)
             for k,v in pairs(RaityColor) do 
                 if v==color then return k end
             end
         end
 
         for k,v in pairs(Inventory) do 
             Items[v.Name] = v
         end
 
         local total = #getupvalue(cac.UpdateRender,4)
         local rac = {}
         local allitem = {}
         local total2 = 0
         while total2<total do 
             local i = 0
             while i < 25000 and total2<total do 
                 game:GetService("Players").LocalPlayer.PlayerGui.Main.InventoryContainer.Right.Content.ScrollingFrame.CanvasPosition = Vector2.new(0,i)
                 for k,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main.InventoryContainer.Right.Content.ScrollingFrame.Frame:GetChildren()) do 
                     if v:IsA("Frame") and not rac[v.ItemName.Text] and v.ItemName.Visible==true then 
                         local vaihuhu = GetRaity(v.Background.BackgroundColor3)
                         if vaihuhu then
                             print("Rac")
                             if not allitem[vaihuhu] then 
                                 allitem[vaihuhu] = {}
                             end
                             table.insert(allitem[vaihuhu],v:Clone())
                         end
                         total2=total2+1
                         rac[v.ItemName.Text] = true
                     end
                 end
                 i=i+20
             end
             wait()
         end
         function GetXY(vec) 
             return vec*100
         end
 
         local tvk = Instance.new("UIListLayout")
         tvk.FillDirection = Enum.FillDirection.Vertical
         tvk.SortOrder = 2
         tvk.Padding = UDim.new(0,10)
 
         local Left = Instance.new("Frame",game.Players.LocalPlayer.PlayerGui.BubbleChat)
         Left.BackgroundTransparency = 1
         Left.Size = UDim2.new(.5,0,1,0) 
         tvk.Parent = Left
 
         local Right = Instance.new("Frame",game.Players.LocalPlayer.PlayerGui.BubbleChat)
         Right.BackgroundTransparency = 1
         Right.Size = UDim2.new(.5,0,1,0) 
         Right.Position = UDim2.new(.6,0,0,0)
         tvk:Clone().Parent = Right
         for k,v in pairs(allitem) do 
             local cac = Instance.new("Frame",Left)
             cac.BackgroundTransparency = 1
             cac.Size = UDim2.new(1,0,0,0) 
             cac.LayoutOrder = table.find(RaityLevel,k)
 
             local cac2 = Instance.new("Frame",Right)
             cac2.BackgroundTransparency = 1
             cac2.Size = UDim2.new(1,0,0,0) 
             cac2.LayoutOrder = table.find(RaityLevel,k)
 
             local tvk = Instance.new("UIGridLayout",cac)
             tvk.CellPadding = UDim2.new(.005,0,.005,0)
             tvk.CellSize =  UDim2.new(0,70,0,70)
             tvk.FillDirectionMaxCells = 100
             tvk.FillDirection = Enum.FillDirection.Horizontal
 
             local ccc = tvk:Clone()
             ccc.Parent = cac2
             for k,v in pairs(v) do 
                 if Items[v.ItemName.Text] and Items[v.ItemName.Text].Mastery then 
                     if v.ItemLine2.Text~="Accessory" then 
                         local bucac = v.ItemName:Clone()
                         bucac.BackgroundTransparency = 1
                         bucac.TextSize = 10
                         bucac.TextXAlignment  = 2
                         bucac.TextYAlignment  = 2
                         bucac.ZIndex  = 5
                         bucac.Text = Items[v.ItemName.Text].Mastery
                         bucac.Size = UDim2.new(.5,0,.5,0)
                         bucac.Position = UDim2.new(.5,0,.5,0)
                         bucac.Parent = v
                     end
                     v.Parent = cac
                 elseif v.ItemLine2.Text == "Blox Fruit" then 
                     v.Parent = cac2
                 end
             end
             cac.AutomaticSize = 2
             cac2.AutomaticSize = 2
         end
         local ListHuhu = {
             ["Superhuman"] = Vector2.new(3,2),
             ["DeathStep"] = Vector2.new(4,3),
             ["ElectricClaw"] = Vector2.new(2,0),
             ["SharkmanKarate"] = Vector2.new(0,0),
             ["DragonTalon"] = Vector2.new(1,5)
         }
         local MeleeG = Instance.new("Frame",Left)
         MeleeG.BackgroundTransparency = 1
         MeleeG.Size = UDim2.new(1,0,0,0) 
         MeleeG.LayoutOrder = table.find(RaityLevel,k)
         MeleeG.AutomaticSize=2
         MeleeG.LayoutOrder = 100
         local tvk = Instance.new("UIGridLayout",MeleeG)
         tvk.CellPadding = UDim2.new(.005,0,.005,0)
         tvk.CellSize =  UDim2.new(0,70,0,70)
         tvk.FillDirectionMaxCells = 100
         tvk.FillDirection = Enum.FillDirection.Horizontal
 
         local cac = {"Superhuman","ElectricClaw","DragonTalon","SharkmanKarate","DeathStep","GodHuman"}
         for k,v in pairs(cac) do
             if ListHuhu[v] and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buy"..v,true) == 1 then 
                 local huhu = Instance.new("ImageLabel",MeleeG)
                 huhu.Image = "rbxassetid://9945562382"
                 huhu.ImageRectSize = Vector2.new(100,100)
                 huhu.ImageRectOffset = ListHuhu[v]*100
             end
         end
         function formatNumber(v)
             return tostring(v):reverse():gsub("%d%d%d", "%1,"):reverse():gsub("^,", "")
         end
         game:GetService("Players").LocalPlayer.PlayerGui.Main.Beli.Position = UDim2.new(0,800,0,500)
         game:GetService("Players").LocalPlayer.PlayerGui.Main.Level.Position = UDim2.new(0,800,0,550)
 
         local thieunang = game:GetService("Players").LocalPlayer.PlayerGui.Main.Fragments:Clone()
         thieunang.Parent = game:GetService("Players").LocalPlayer.PlayerGui.BubbleChat
         thieunang.Position = UDim2.new(0,800,0.63,0)
         local n = formatNumber(game.Players.LocalPlayer.Data.Fragments.Value)
         thieunang.Text = "ƒ"..n
         print("Done")
         pcall(function() 
             game:GetService("Players").LocalPlayer.PlayerGui.Main.MenuButton:Destroy()
         end)
         pcall(function() 
             game:GetService("Players").LocalPlayer.PlayerGui.Main.HP:Destroy()
         end)
         pcall(function() 
             game:GetService("Players").LocalPlayer.PlayerGui.Main.Energy:Destroy()
         end)
         for k,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main:GetChildren()) do 
             if v:IsA("ImageButton") then 
                 v:Destroy()
             end
         end
         pcall(function() 
             game:GetService("Players").LocalPlayer.PlayerGui.Main.Compass:Destroy()
         end)
end)

local CombatFramework = require(game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild("CombatFramework"))
local CombatFrameworkR = getupvalues(CombatFramework)[2]
local RigController = require(game:GetService("Players")["LocalPlayer"].PlayerScripts.CombatFramework.RigController)
local RigControllerR = getupvalues(RigController)[2]

function CurrentWeapon()
	local ac = CombatFrameworkR.activeController
	local ret = ac.blades[1]
	if not ret then return game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name end
	pcall(function()
		while ret.Parent~=game.Players.LocalPlayer.Character do ret=ret.Parent end
	end)
	if not ret then return game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name end
	return ret
end

function getAllBladeHitsPlayers(Sizes)
	local Hits = {}
	local Client = game.Players.LocalPlayer
	local Characters = game:GetService("Workspace").Characters:GetChildren()
	for i=1,#Characters do local v = Characters[i]
		local Human = v:FindFirstChildOfClass("Humanoid")
		if v.Name ~= game.Players.LocalPlayer.Name and Human and Human.RootPart and Human.Health > 0 and Client:DistanceFromCharacter(Human.RootPart.Position) < Sizes+5 then
			table.insert(Hits,Human.RootPart)
		end
	end
	return Hits
end

function getAllBladeHits(Sizes)
	local Hits = {}
	local Client = game.Players.LocalPlayer
	local Enemies = game:GetService("Workspace").Enemies:GetChildren()
	for i=1,#Enemies do local v = Enemies[i]
		local Human = v:FindFirstChildOfClass("Humanoid")
		if Human and Human.RootPart and Human.Health > 0 and Client:DistanceFromCharacter(Human.RootPart.Position) < Sizes+5 then
			table.insert(Hits,Human.RootPart)
		end
	end
	return Hits
end

function DamageAura()
	local ac = CombatFrameworkR.activeController
	if ac and ac.equipped then
		for indexincrement = 1, 1 do
			local bladehit = getAllBladeHits(150) local a = getAllBladeHitsPlayers(150)
			if #bladehit or #a > 0 then
				local AcAttack8 = debug.getupvalue(ac.attack, 5)
				local AcAttack9 = debug.getupvalue(ac.attack, 6)
				local AcAttack7 = debug.getupvalue(ac.attack, 4)
				local AcAttack10 = debug.getupvalue(ac.attack, 7)
				local NumberAc12 = (AcAttack8 * 798405 + AcAttack7 * 727595) % AcAttack9
				local NumberAc13 = AcAttack7 * 798405
				(function()
					NumberAc12 = (NumberAc12 * AcAttack9 + NumberAc13) % 1099511627776
					AcAttack8 = math.floor(NumberAc12 / AcAttack9)
					AcAttack7 = NumberAc12 - AcAttack8 * AcAttack9
				end)()
				AcAttack10 = AcAttack10 + 1
				debug.setupvalue(ac.attack, 5, AcAttack8)
				debug.setupvalue(ac.attack, 6, AcAttack9)
				debug.setupvalue(ac.attack, 4, AcAttack7)
				debug.setupvalue(ac.attack, 7, AcAttack10)
				for k, v in pairs(ac.animator.anims.basic) do
					v:Play(0.01,0.01,0.01)
				end                 
				if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and ac.blades and ac.blades[1] then 
					game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(CurrentWeapon()))
					game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(NumberAc12 / 1099511627776 * 16777215), AcAttack10)
                    game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, indexincrement, "") 
				end
			end
		end
	end
end

function AttackFunction()
	local ac = CombatFrameworkR.activeController
	if ac and ac.equipped then
		for indexincrement = 1, 1 do
			local bladehit = getAllBladeHits(60)
			if #bladehit > 0 then
				local AcAttack8 = debug.getupvalue(ac.attack, 5)
				local AcAttack9 = debug.getupvalue(ac.attack, 6)
				local AcAttack7 = debug.getupvalue(ac.attack, 4)
				local AcAttack10 = debug.getupvalue(ac.attack, 7)
				local NumberAc12 = (AcAttack8 * 798405 + AcAttack7 * 727595) % AcAttack9
				local NumberAc13 = AcAttack7 * 798405
				(function()
					NumberAc12 = (NumberAc12 * AcAttack9 + NumberAc13) % 1099511627776
					AcAttack8 = math.floor(NumberAc12 / AcAttack9)
					AcAttack7 = NumberAc12 - AcAttack8 * AcAttack9
				end)()
				AcAttack10 = AcAttack10 + 1 
				debug.setupvalue(ac.attack, 5, AcAttack8)
				debug.setupvalue(ac.attack, 6, AcAttack9)
				debug.setupvalue(ac.attack, 4, AcAttack7)
				debug.setupvalue(ac.attack, 7, AcAttack10)
				for k, v in pairs(ac.animator.anims.basic) do
					v:Play(0.01,0.01,0.01)
				end                 
				if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and ac.blades and ac.blades[1] then 
					game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(CurrentWeapon()))
					game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(NumberAc12 / 1099511627776 * 16777215), AcAttack10)
                    game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, indexincrement, "")
				end
			end
		end
	end
end

task.spawn(function()
    pcall(function()
    while task.wait(_G.Fast_Delay) do
        if FastAttackSpeed then
            AttackFunction()
           end
        end
    end)
end)

Options.SelectWeaponDropdown:OnChanged(function(a)
	SelectWeapon = a
end)
-- Auto Use Weapon
task.spawn(function()
	while wait() do
		pcall(function()
			if SelectWeapon == "Melee" then
				for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Melee" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							WeaponName = v.Name
						end
					end
				end
			elseif SelectWeapon == "Sword" then
				for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Sword" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							WeaponName = v.Name
						end
					end
				end
			elseif SelectWeapon == "Devil Fruit" then
				for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Blox Fruit" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							WeaponName = v.Name
						end
					end
				end
			else
				for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Melee" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							WeaponName = v.Name
						end
					end
				end
			end
		end)
	end
end)



Stats = {
	"Melee",
	"Defense",
	"Sword",
	"Gun",
	"Devil Fruit"
}


SettingGeneral2:AddDropdown('DropdownAutoStats', {
    Values = Stats,
    Default = "Melee",
    Multi = false,
    Text = 'Select Stats',
}):OnChanged(function(a)
	AutoStats = a
	task.spawn(function()
	while wait() do
		pcall(function()
if AutoStats == "Melee" then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Melee",1)
elseif AutoStats == "Defense" then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Defense",1)
elseif AutoStats == "Sword" then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Sword",Point)
elseif AutoStats == "Gun" then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Gun",Point)
elseif AutoStats == "Devil Fruit" then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Demon Fruit",Point)
end
end)
end
end)
end)
SettingGeneral2:AddButton('Redeem All code', function()
    function UseCode(Text)
        game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(Text)
    end
    UseCode("GAMERROBOT_YT")
    UseCode("Enyu_is_Pro")
    UseCode("Magicbus")
    UseCode("JCWK")
    UseCode("Starcodeheo")
    UseCode("Bluxxy")
    UseCode("THEGREATACE")
    UseCode("SUB2GAMERROBOT_EXP1")
    UseCode("StrawHatMaine")
    UseCode("Sub2OfficialNoobie")
    UseCode("SUB2NOOBMASTER123")
    UseCode("Sub2Daigrock")
    UseCode("Axiore")
    UseCode("TantaiGaming")
    UseCode("STRAWHATMAINE")
    UseCode("EXP_5B")
    UseCode("kittgaming")
    UseCode("GAMER_ROBOT_1M")
    UseCode("ADMINGIVEAWAY")
end)


-------------
-------------

spawn(function()
game:GetService("RunService").Heartbeat:Connect(function()
    if AutoFarm or AutoEliteHunter or AutoThirdWorld or AutoNewWorld then
    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") then
        setfflag("HumanoidParallelRemoveNoPhysics", "False")
        setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
        game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
        end
    end
end)
end)




-- [Bring Mob]

task.spawn(function()
	while true do wait()
		if setscriptable then
			setscriptable(game.Players.LocalPlayer, "SimulationRadius", true)
		end
		if sethiddenproperty then
			sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
		end
	end
end)

function InMyNetWork(object)
	if isnetworkowner then
		return isnetworkowner(object)
	else
		if (object.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 450 then 
			return true
		end
		return false
	end
end

task.spawn(function()
	while task.wait() do
		pcall(function()
			if Bringmob then
				for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
					if not string.find(v.Name,"Boss") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 650 then
						if InMyNetWork(v.HumanoidRootPart) then
							v.HumanoidRootPart.CFrame = _G.PosMon
							v.Humanoid.JumpPower = 0
							v.Humanoid.WalkSpeed = 0
							v.HumanoidRootPart.Size = Vector3.new(60,60,60)
							v.HumanoidRootPart.Transparency = 1
							v.HumanoidRootPart.CanCollide = false
							v.Head.CanCollide = false
							if v.Humanoid:FindFirstChild("Animator") then
								v.Humanoid.Animator:Destroy()
							end
							v.Humanoid:ChangeState(11)
							v.Humanoid:ChangeState(14)
						end
					end
				end
			end
		end)
	end
end)

-- [No Stun]
task.spawn(function()
	if game.Players.LocalPlayer.Character:FindFirstChild("Stun") then
		game.Players.LocalPlayer.Character.Stun.Changed:connect(function()
			pcall(function()
				if game.Players.LocalPlayer.Character:FindFirstChild("Stun") then
					game.Players.LocalPlayer.Character.Stun.Value = 0
				end
			end)
		end)
	end
end)
local WebHookLog = {}

local AllRequest = http_request or request or HttpPost or syn.request
function WebHookLog:WebHookKaiTanSend(WebHookUrl)

	function GetFightingStyle(Style)
		ReturnText = ""
		for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v:IsA("Tool") then
				if v.ToolTip == Style then
					ReturnText = v.Name
				end
			end
		end
		for i ,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
			if v:IsA("Tool") then
				if v.ToolTip == Style then
					ReturnText = v.Name
				end
			end
		end
		if ReturnText ~= "" then
			return ReturnText
		else
			return "Not Have"
		end
	end

	function GetAwaken()
		ReturnText = ""
		Awakened_Z = ":x:"
		Awakened_X = ":x:"
		Awakened_C = ":x:"
		Awakened_V = ":x:"
		Awakened_F = ":x:"
		for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v:IsA("Tool") then
				if v.ToolTip == "Blox Fruit" then
					if v:FindFirstChild("AwakenedMoves") then
						if v.AwakenedMoves:FindFirstChild("Z") then
							Awakened_Z = ":white_check_mark:"
						end
						if v.AwakenedMoves:FindFirstChild("X") then
							Awakened_X = ":white_check_mark:"
						end
						if v.AwakenedMoves:FindFirstChild("C") then
							Awakened_C = ":white_check_mark:"
						end
						if v.AwakenedMoves:FindFirstChild("V") then
							Awakened_V = ":white_check_mark:"
						end
						if v.AwakenedMoves:FindFirstChild("F") then
							Awakened_F = ":white_check_mark:"
						end
						ReturnText = ":regional_indicator_z:"..Awakened_Z..
							"\n"..":regional_indicator_x:"..Awakened_X..
							"\n"..":regional_indicator_c:"..Awakened_C..
							"\n"..":regional_indicator_v:"..Awakened_V..
							"\n"..":regional_indicator_f:"..Awakened_F
					else
						ReturnText = "This Fruit Can't Awakened"
					end
				end
			end
		end
		for i ,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
			if v:IsA("Tool") then
				if v.ToolTip == "Blox Fruit" then
					if v:FindFirstChild("AwakenedMoves") then
						if v.AwakenedMoves:FindFirstChild("Z") then
							Awakened_Z = ":white_check_mark:"
						end
						if v.AwakenedMoves:FindFirstChild("X") then
							Awakened_X = ":white_check_mark:"
						end
						if v.AwakenedMoves:FindFirstChild("C") then
							Awakened_C = ":white_check_mark:"
						end
						if v.AwakenedMoves:FindFirstChild("V") then
							Awakened_V = ":white_check_mark:"
						end
						if v.AwakenedMoves:FindFirstChild("F") then
							Awakened_F = ":white_check_mark:"
						end
						ReturnText = ":regional_indicator_z:"..Awakened_Z..
							"\n"..":regional_indicator_x:"..Awakened_X..
							"\n"..":regional_indicator_c:"..Awakened_C..
							"\n"..":regional_indicator_v:"..Awakened_V..
							"\n"..":regional_indicator_f:"..Awakened_F
					else
						ReturnText = "This Fruit Can't Awakened"
					end
				end
			end
		end
		if ReturnText ~= "" then
			return ReturnText
		else
			return "Not Have"
		end
	end

	function GetWeapon(Rare)
		if Rare == "Common" then
			RareNumber = 0
		elseif Rare == "Uncommon" then
			RareNumber = 1
		elseif Rare == "Rare" then
			RareNumber = 2
		elseif Rare == "Legendary" then
			RareNumber = 3
		elseif Rare == "Mythical" then
			RareNumber = 4
		else
			return "Worng InPut"
		end
		local ReturnText = ""
		for i,v in pairs(game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventoryWeapons")) do
			if type(v) == "table" then
				if v.Rarity then
					if tonumber(v.Rarity) == RareNumber then
						ReturnText = ReturnText .. v.Name .. "\n"
					end
				end
			end
		end
		if ReturnText ~= "" then
			return ReturnText
		else
			return "Not Have"
		end
	end

	function GetFruitInU()
		local ReturnText = ""
		for i,v in pairs(game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventoryFruits")) do
			if type(v) == "table" then
				if v ~= nil then
					ReturnText = ReturnText .. v.Name .. "\n"
				end
			end
		end

		if ReturnText ~= "" then
			return ReturnText
		else
			return "Not Have"
		end
	end

	function GetAllMelee()
		BuyDragonTalon = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon",true))
		if BuyDragonTalon then
			if BuyDragonTalon == 1 then
				TalComplete = true
			end
		end
		BuySuperhuman = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman",true))
		if BuySuperhuman then
			if BuySuperhuman == 1 then
				SupComplete = true
			end
		end
		BuySharkmanKarate = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true))
		if BuySharkmanKarate then
			if BuySharkmanKarate == 1 then
				SharkComplete = true
			end
		end
		BuyDeathStep = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep",true))
		if BuyDeathStep then
			if BuyDeathStep == 1 then
				DeathComplete = true
			end
		end
		BuyElectricClaw = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw",true))
		if BuyElectricClaw then
			if BuyElectricClaw == 1 then
				EClawComplete = true
			end
		end
		BuyGod = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman",true))
		if BuyGod then
			if BuyGod == 1 then
				GodComplete = true
			end
		end
		ReturnText = {}
		if SupComplete == true then
			table.insert(ReturnText,"Superhuman")
		end
		if EClawComplete == true then
			table.insert(ReturnText,"Electric Claw")
		end
		if TalComplete == true then
			table.insert(ReturnText,"Dragon Talon")
		end
		if SharkComplete == true then
			table.insert(ReturnText,"Sharkman Karate")
		end
		if DeathComplete == true then
			table.insert(ReturnText,"Death Step")
		end
		if GodComplete == true then
			table.insert(ReturnText,"Godhuman")
		end

		if #ReturnText ~= 0 then
			return table.concat(ReturnText,"\n")
		else
			return "your are not have all melees"
		end
	end

	local Embeds = {{
		["title"] = "**Delta Hub Webhooks💐**",
		["color"] = tonumber(0xD936FF),
		["fields"] = {
			{
				["name"] = "User Info",
				["value"] = "||"..tostring(game.Players.LocalPlayer.Name).."||",
				["inline"] = true
			},
			{
				["name"] = "Level",
				["value"] = tostring(game:GetService("Players").LocalPlayer.Data:FindFirstChild("Level").Value),
				["inline"] = true
			},
			{
				["name"] = "Fragments",
				["value"] = tostring(game:GetService("Players").LocalPlayer.Data:FindFirstChild("Fragments").Value),
				["inline"] = true
			},
			{
				["name"] = "Beli",
				["value"] = tostring(game:GetService("Players").LocalPlayer.Data:FindFirstChild("Beli").Value),
				["inline"] = true
			},
			{
				["name"] = "Using Fighting Style",
				["value"] = GetFightingStyle("Melee"),
				["inline"] = true
			},
			{
				["name"] = "Using Sword",
				["value"] = GetFightingStyle("Sword"),
				["inline"] = true
			},
			{
				["name"] = "Devil Fruit",
				["value"] = GetFightingStyle("Blox Fruit"),
				["inline"] = true
			},
			{
				["name"] = "Gun",
				["value"] = GetFightingStyle("Gun"),
				["inline"] = true
			},
			{
				["name"] = "Accessory",
				["value"] = GetFightingStyle("Wear"),
				["inline"] = true
			},
			{
				["name"] = "Race",
				["value"] = tostring(game:GetService("Players").LocalPlayer.Data:FindFirstChild("Race").Value),
				["inline"] = true
			},
			{
				["name"] = "Awakened",
				["value"] = tostring(GetAwaken()),
				["inline"] = true
			},
			{
				["name"] = ":signal_strength: Status",
				["value"] = "```sml\n"..tostring("Melee : "..game:GetService("Players").LocalPlayer.Data.Stats.Melee:WaitForChild("Level").Value .. 
					"\nDefense : "..game:GetService("Players").LocalPlayer.Data.Stats.Defense:WaitForChild("Level").Value .. 
					"\nSword : "..game:GetService("Players").LocalPlayer.Data.Stats.Sword:WaitForChild("Level").Value.. 
					"\nGun : "..game:GetService("Players").LocalPlayer.Data.Stats.Gun:WaitForChild("Level").Value .. 
					"\nDevil Fruit : "..game:GetService("Players").LocalPlayer.Data.Stats["Demon Fruit"]:WaitForChild("Level").Value).."```",
				["inline"] = true
			},
			{
				["name"] = "Rare :yellow_circle:",
				["value"] = "```sml\n"..tostring(GetWeapon("Rare")).."```",
				["inline"] = true
			},
			{
				["name"] = "Legendary :orange_circle: ",
				["value"] = "```sml\n"..tostring(GetWeapon("Legendary")).."```",
				["inline"] = true
			},
			{
				["name"] = "Mythical :red_circle:",
				["value"] = "```sml\n"..tostring(GetWeapon("Mythical")).."```",
				["inline"] = true
			},
			{
				["name"] = ":apple: Fruit In Inventory",
				["value"] = "```sml\n"..tostring(GetFruitInU()).."```",
				["inline"] = true
			},
			{
				["name"] = ":punch: All Melee",
				["value"] = "```sml\n"..tostring(GetAllMelee()).."```",
				["inline"] = true
			},
			{
				["name"] = "ㅤ",
				["value"] = tostring("ㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤㅤ"),
				["inline"] = false
			}},
		["footer"] = {
			["text"] = "Delta Hub Webhook",
		},
	}}

	local Message

if _G.SendWebHookPing then
		Message = {
			['username'] = "Delta Hub | Webhook",
			["avatar_url"] = "https://cdn.discordapp.com/icons/1031918709608022036/efafaf2e6ede6d29df489dacf157dcb4.webp?size=240",
			["content"] = "@everyone",
			["embeds"] = Embeds,
		}
	else
		Message = {
			['username'] = "Delta Hub | Webhook",
			["avatar_url"] = "https://cdn.discordapp.com/icons/1031918709608022036/efafaf2e6ede6d29df489dacf157dcb4.webp?size=240",
			["embeds"] = Embeds,
		}
	end

	local DataCallBack = AllRequest({
		Url = WebHookUrl,
		Method = 'POST',
		Headers = {
			["Content-Type"] = "application/json"
		},
		Body = game:GetService("HttpService"):JSONEncode(Message)
	})
	return DataCallBack
end

local WebhookSend = Webhook:AddTab('Webhook')
WebhookSend:AddInput('',{
    Text = "Url Webhook here"
}):OnChanged(function(x)
   Webhooklink = x
end)
WebhookSend:AddButton('Sent Webhook', function()
    WebHookLog:WebHookKaiTanSend(Webhooklink)
end)
WebhookSend:AddToggle('Hello',{
   Text = "Ping Every One"
}):OnChanged(function(x)
   _G.SendWebHookPing = x
end)


function CheckMasteryWeapon(NameWe,MasNum)
	if game.Players.LocalPlayer.Backpack:FindFirstChild(NameWe) then
		if tonumber(game.Players.LocalPlayer.Backpack:FindFirstChild(NameWe).Level.Value) < tonumber(MasNum) then
			return "true DownTo"
		elseif tonumber(game.Players.LocalPlayer.Backpack:FindFirstChild(NameWe).Level.Value) >= tonumber(MasNum) then
			return "true UpTo"
		end
	end
	if game.Players.LocalPlayer.Character:FindFirstChild(NameWe) then
		if tonumber(game.Players.LocalPlayer.Character:FindFirstChild(NameWe).Level.Value) < tonumber(MasNum) then
			return "true DownTo"
		elseif tonumber(game.Players.LocalPlayer.Character:FindFirstChild(NameWe).Level.Value) >= tonumber(MasNum) then
			return "true UpTo"
		end
	end
	return "else"
end

local AllSwordInInventroy = {};
pcall(function()
	for i, v in pairs(game:GetService("ReplicatedStorage").Remotes['CommF_']:InvokeServer("getInventoryWeapons")) do
		if (type(v) ~= "table") then
		elseif (v.Type == "Sword") then
			table.insert(AllSwordInInventroy, v.Name);
		end
	end
end)
local FarmMastery = GeneralMasterBox:AddTab('Mastery')
local DropdownMasSword = FarmMastery:AddDropdown('SelectSword', {
    Values = AllSwordInInventroy,
    Default = nil,
    Multi = false,
    Text = 'Select Sword',
}):OnChanged(function(t)
	SelectSword = t
end)
FarmMastery:AddToggle('FarmMasterySword', {
    Text = 'Auto Sword Mastery',
    Default = false,
}):OnChanged(function(x)
	FarmMasterySword = x
	if FarmMasterySword then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadItem",SelectSword)
	end
          task.spawn(function()
                    while wait() do
                        pcall(function()
						if FarmMasterySword then
						    if Three_World then
							if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton [Lv. 1975]") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie [Lv. 2000]") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul [Lv. 2025]") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy [Lv. 2050]") then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == "Reborn Skeleton [Lv. 1975]" or v.Name == "Living Zombie [Lv. 2000]" or v.Name == "Demonic Soul [Lv. 2025]" or v.Name == "Posessed Mummy [Lv. 2050]" then
										if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
											repeat wait(_G.Fast_Delay)
												Bringmob = true
												FastAttackSpeed = true
											    EquipWeaponSword()
											    AutoHaki()
												_G.PosMon = v.HumanoidRootPart.CFrame
												v.HumanoidRootPart.Size = Vector3.new(60,60,60)
												v.Humanoid.JumpPower = 0
												v.Humanoid.WalkSpeed = 0
												v.HumanoidRootPart.CanCollide = false
												v.Humanoid:ChangeState(11)
												toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
											until not FarmMasterySword or v.Humanoid.Health <= 0 or not v.Parent or v.Humanoid.Health <= 0
											Bringmob = false
											FastAttackSpeed = false
										end
									end
								end
							else
								toTarget(CFrame.new(-9504.8564453125, 172.14292907714844, 6057.259765625))
							end
							else
							    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
						    end
                      
                            end
                            
                        end)
                    end
end)
end)

function EquipWeaponSword()
	pcall(function()
		for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v.ToolTip == "Sword" and v:IsA('Tool') then
				local ToolHumanoid = game.Players.LocalPlayer.Backpack:FindFirstChild(v.Name) 
				game.Players.LocalPlayer.Character.Humanoid:EquipTool(ToolHumanoid) 
			end
		end
	end)
end
local function inmyself(name)
	return game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(name) or game:GetService("Players").LocalPlayer.Character:FindFirstChild(name);
end

spawn(function()
game:GetService("RunService").Heartbeat:Connect(function()
    if FarmMasterySword then
    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") then
        setfflag("HumanoidParallelRemoveNoPhysics", "False")
        setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
        game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
        end
    end
end)
end)

local AutoRaid = Raid:AddTab('Auto Raids')

RaidMap = {"Flame","Ice","Quake","Light","Dark","String","Rumble","Magma","Human: Buddha","Sand","Bird: Phoenix","Dough"}

AutoRaid:AddDropdown('SelectRaidMap', {
    Values = RaidMap,
    Default = nil,
    Multi = false,
    Text = 'Select Raids',
})
Options.SelectRaidMap:OnChanged(function(t)
 SelectRaid = t
end)
AutoRaid:AddButton('Get Fruit Inventory',function()
    AutoStoreFruit = false
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadFruit","Bomb-Bomb")
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadFruit","Spike-Spike")
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadFruit","Chop-Chop")
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadFruit","Spring-Spring")
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadFruit","Kilo-Kilo")
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadFruit","Smoke-Smoke")
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadFruit","Spin-Spin")
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadFruit","Flame-Flame")
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadFruit","Light-Light")
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadFruit","Love-Love")
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadFruit","Diamond-Diamond")
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadFruit","Magma-Magma")
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadFruit","Barrier-Barrier")
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadFruit","Ice-Ice")
	if game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") or game.Players.LocalPlayer.Character:FindFirstChild("Special Microchip") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
	    AutoStoreFruit = true
	end
end)
AutoRaid:AddToggle('AutoRaids1', {
    Text = 'Auto Raids',
    Default = false,
}):OnChanged(function(value)
	AutoStartRaid = value
	NextIsland = value
	KillAura = value
	
			if value == false then
			wait()
			toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
			wait()
		end
end)
AutoRaid:AddToggle('AutoRaids3', {
    Text = 'Auto Awake Fruit',
    Default = false,
}):OnChanged(function(value)
AutoAwake = value
end)
task.spawn(function()
	while wait() do
		if AutoStartRaid and not AutoFarm then
		    BuypassTP = false
			if game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") or game.Players.LocalPlayer.Character:FindFirstChild("Special Microchip") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") or game.Players.LocalPlayer.Character:FindFirstChild("Special Microchip") and game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == false then
					if New_World then
						fireclickdetector(Workspace.Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
					elseif Three_World then
						fireclickdetector(Workspace.Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
					end
					wait(17)
				elseif game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == true then				
					pcall(function()
						repeat wait()
							if game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == false then

							elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
								game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame = CFrame.new(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame.x,60,game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame.z)
								if (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 350 then
									Farmtween = toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame)
								elseif (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 350 then
									if Farmtween then
										Farmtween:Stop()
									end
									toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 5"].CFrame*CFrame.new(4,65,10))
								end
							elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
								game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame = CFrame.new(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame.x,60,game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame.z)
								if (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 350 then
									Farmtween = toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame)
								elseif (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 350 then
									if Farmtween then
										Farmtween:Stop()
									end
									toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 4"].CFrame*CFrame.new(4,65,10))
								end
							elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
								game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame = CFrame.new(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame.x,60,game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame.z)
								if (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 350 then
									Farmtween = toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame)
								elseif (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 350 then
									if Farmtween then
										Farmtween:Stop()
									end
									toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 3"].CFrame*CFrame.new(4,65,10))
								end
							elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
								game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame = CFrame.new(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame.x,60,game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame.z)
								if (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 350 then
									Farmtween = toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame)
								elseif (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 350 then
									if Farmtween then
										Farmtween:Stop()
									end
									toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 2"].CFrame*CFrame.new(4,65,10))
								end
							elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
								game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame = CFrame.new(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame.x,60,game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame.z)
								if (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 350 then
									Farmtween = toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame)
								elseif (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 350 then
									if Farmtween then
										Farmtween:Stop()
									end
									toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 1"].CFrame*CFrame.new(4,65,10))
								end
							end
							for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
								if AutoStartRaid and game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == true and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 400 then
									repeat wait()
										v.Humanoid.Health = 0
										v:BreakJoints()
									until not AutoStartRaid or v.Humanoid.Health <= 0 or not v.Parent
								end
							end
							if AutoAwake then	
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Awaken")
							end
						until not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") or not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") or not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") or not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") or not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") or game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == false
						if AutoAwake then	
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Awaken")
						end
					end)
				end           
			else
				if AutoAwake then	
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Awaken")
				end
				local args = {
					[1] = "RaidsNpc",
					[2] = "Select",
					[3] = tostring(SelectRaid)
				}
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			end
			else
			  BuypassTP = true
		end
	end
end)

spawn(function()
	while wait() do
		if KillAura then
			for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
				if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
					pcall(function()
						repeat wait()
							v.Humanoid.Health = 0
							v.HumanoidRootPart.CanCollide = false
							v.HumanoidRootPart.Size = Vector3.new(50,50,50)
							v.HumanoidRootPart.Transparency = 0.8
						until not KillAura or not AutoStartRaid or not v.Parent or v.Humanoid.Health <= 0
					end)
				end
			end
		end
	end
end)

spawn(function()
	pcall(function()
		while wait() do
			if NextIsland then
			    wait(10)
				if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == true and game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") or game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
					if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
						toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 5"].CFrame*CFrame.new(4,65,10))
					elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
						toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 4"].CFrame*CFrame.new(4,65,10))
					elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
						toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 3"].CFrame*CFrame.new(4,65,10))
					elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
						toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 2"].CFrame*CFrame.new(4,65,10))
					elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
						toTarget(game:GetService("Workspace")["_WorldOrigin"].Locations["Island 1"].CFrame*CFrame.new(4,65,10))
					end
				elseif New_World then
					toTarget(CFrame.new(-6438.73535, 250.645355, -4501.50684))
				elseif Three_World then
					toTarget(CFrame.new(-5057.146484375, 314.54132080078, -2934.7995605469))
				end
			end
		end
	end)
end)
spawn(function()
game:GetService("RunService").Heartbeat:Connect(function()
    if NextIsland or AutoStartRaid then
    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") then
        setfflag("HumanoidParallelRemoveNoPhysics", "False")
        setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
        game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
        end
    end
end)
end)
local FruitSetting = Fruit:AddTab('miscellaneous')
FruitSetting:AddToggle('AutoRandomFruit', {
    Text = 'Random Fruit',
    Default = _G.SaveSetting.AutoRandomFruit,
}):OnChanged(function(t)
AutoRandomFruit = t
_G.SaveSetting.AutoRandomFruit = t
savesettings()
spawn(function()
    while wait(.2) do
        if AutoRandomFruit or _G.SaveSetting.AutoRandomFruit then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
            wait(20)
        end
    end
end)
end)
FruitSetting:AddToggle('AutoStoreFruit', {
    Text = 'Store Fruit',
    Default = _G.SaveSetting.AutoStoreFruit,
}):OnChanged(function(t)
AutoStoreFruit = t
_G.SaveSetting.AutoStoreFruit = t
savesettings()
spawn(function()
    while wait(2) do
		pcall(function() 
			if AutoStoreFruit then
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bomb Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bomb Fruit") then
					Equip('Bomb Fruit')
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Bomb-Bomb",game:GetService("Players").LocalPlayer.Character["Bomb Fruit"])
					wait(1)
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spike Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spike Fruit") then
					Equip('Spike Fruit')
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spike-Spike",game:GetService("Players").LocalPlayer.Character["Spike Fruit"])
					wait(1)
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Chop Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Chop Fruit") then
					Equip('Chop Fruit')
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Chop-Chop",game:GetService("Players").LocalPlayer.Character["Chop Fruit"])
					wait(1)
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spring Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spring Fruit") then
					Equip('Spring Fruit')
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spring-Spring",game:GetService("Players").LocalPlayer.Character["Spring Fruit"])
					wait(1)
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Kilo Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Kilo Fruit") then
					Equip('Kilo Fruit')
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Kilo-Kilo",game:GetService("Players").LocalPlayer.Character["Kilo Fruit"])
					wait(1)
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Smoke Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Smoke Fruit") then
					Equip('Smoke Fruit')
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Smoke-Smoke",game:GetService("Players").LocalPlayer.Character["Smoke Fruit"])
					wait(1)
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spin Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spin Fruit") then
					Equip('Spin Fruit')
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spin-Spin",game:GetService("Players").LocalPlayer.Character["Spin Fruit"])
					wait(1)
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flame Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame Fruit") then
					Equip('Flame Fruit')
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Flame-Flame",game:GetService("Players").LocalPlayer.Character["Flame Fruit"])
					wait(1)
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Falcon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Falcon Fruit") then
					Equip('Bird: Falcon Fruit')
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Bird-Bird: Falcon",game:GetService("Players").LocalPlayer.Character["Bird: Falcon Fruit"])
					wait(1)
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ice Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice Fruit") then
					Equip('Ice Fruit')
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Ice-Ice",game:GetService("Players").LocalPlayer.Character["Ice Fruit"])
					wait(1)
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sand Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand Fruit") then
					Equip('Sand Fruit')
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Sand-Sand",game:GetService("Players").LocalPlayer.Character["Sand Fruit"])
					wait(1)
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dark Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark Fruit") then
					Equip('Dark Fruit')
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Dark-Dark",game:GetService("Players").LocalPlayer.Character["Dark Fruit"])
					wait(1)
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Revive Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Revive Fruit") then
					Equip('Revive Fruit')
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Revive-Revive",game:GetService("Players").LocalPlayer.Character["Revive Fruit"])
					wait(1)
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Diamond Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Diamond Fruit") then
					Equip('Diamond Fruit')
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Diamond-Diamond",game:GetService("Players").LocalPlayer.Character["Diamond Fruit"])
					wait(1)
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Light Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light Fruit") then
					Equip('Light Fruit')
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Light-Light",game:GetService("Players").LocalPlayer.Character["Light Fruit"])
					wait(1)
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Love Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Love Fruit") then
					Equip('Love Fruit')
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Love-Love",game:GetService("Players").LocalPlayer.Character["Love Fruit"])
					wait(1)
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rubber Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rubber Fruit") then
					Equip('Rubber Fruit')
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Rubber-Rubber",game:GetService("Players").LocalPlayer.Character["Rubber Fruit"])
					wait(1)
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Barrier Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Barrier Fruit") then
					Equip('Barrier Fruit')
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Barrier-Barrier",game:GetService("Players").LocalPlayer.Character["Barrier Fruit"])
					wait(1)
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Magma Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma Fruit") then
					Equip('Magma Fruit')
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Magma-Magma",game:GetService("Players").LocalPlayer.Character["Magma Fruit"])
					wait(1)
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Quake Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake Fruit") then
					Equip('Quake Fruit')
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Quake-Quake",game:GetService("Players").LocalPlayer.Character["Quake Fruit"])
					wait(1)
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Human-Human: Buddha Fruit") then
					Equip('Human-Human: Buddha Fruit')
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Human-Human: Buddha",game:GetService("Players").LocalPlayer.Character["Human-Human: Buddha Fruit"])
					wait(1)
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("String Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("String Fruit") then
					Equip('String Fruit')
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","String-String",game:GetService("Players").LocalPlayer.Character["String Fruit"])
					wait(1)
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Phoenix Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Phoenix Fruit") then
					Equip('Bird: Phoenix Fruit')
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Bird-Bird: Phoenix",game:GetService("Players").LocalPlayer.Character["Bird: Phoenix Fruit"])
					wait(1)
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rumble Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble Fruit") then
					Equip('Rumble Fruit')
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Rumble-Rumble",game:GetService("Players").LocalPlayer.Character[("Rumble Fruit")])
					wait(1)
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Paw Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Paw Fruit") then
					Equip('Paw Fruit')
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Paw-Paw",game:GetService("Players").LocalPlayer.Character[("Paw Fruit")])
					wait(1)
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Gravity Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Gravity Fruit") then
					Equip('Gravity Fruit')
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Gravity-Gravity",game:GetService("Players").LocalPlayer.Character[("Gravity Fruit")])
					wait(1)
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dough Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough Fruit") then
					Equip("Dough Fruit")
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Dough-Dough",game:GetService("Players").LocalPlayer.Character[("Dough Fruit")])
					wait(1)
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Shadow Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Shadow Fruit") then
					Equip("Shadow Fruit")
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Shadow-Shadow",game:GetService("Players").LocalPlayer.Character[("Shadow Fruit")])
					wait(1)
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Venom Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Venom Fruit") then
					Equip("Venom Fruit")
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Venom-Venom",game:GetService("Players").LocalPlayer.Character[("Venom Fruit")])
					wait(1)
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Control Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Control Fruit") then
					Equip("Control Fruit")
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Control-Control",game:GetService("Players").LocalPlayer.Character[("Control Fruit")])
					wait(1)
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Fruit") then
					Equip("Dragon Fruit")
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Dragon-Dragon",game:GetService("Players").LocalPlayer.Character[("Dragon Fruit")])
					wait(1)
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spirit Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spirit Fruit") then
					Equip("Spirit Fruit")
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spirit-Spirit",game:GetService("Players").LocalPlayer.Character[("Spirit Fruit")])
					wait(1)
				end
				if  game:GetService("Players").LocalPlayer.Character:FindFirstChild("Portal Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Portal Fruit") then
					Equip("Portal Fruit")
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Portal-Portal",game:GetService("Players").LocalPlayer.Character[("Portal Fruit")])
					wait(1)
				end
				if  game:GetService("Players").LocalPlayer.Character:FindFirstChild("Blizzard Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Blizzard Fruit") then
					Equip("Blizzard Fruit")
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Blizzard-Blizzard",game:GetService("Players").LocalPlayer.Character[("Blizzard Fruit")])
					wait(1)
				end
			end
		end)
    end
end)
end)
FruitSetting:AddToggle('BringFruit', {
    Text = 'Bring Fruit',
    Default = _G.SaveSetting.BringFruit,
}):OnChanged(function(t)
BringFruit = t
_G.SaveSetting.BringFruit = t
savesettings()
spawn(function()
    while wait(.15) do
        pcall(function()
            if BringFruit then
                for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
                    if v:IsA ("Tool") and (v.Handle.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 15000 then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Handle.CFrame
                        v.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                    end
                end
            end
        end)
    end
end)
end)

Library.ToggleKeybind = Options.MenuKeybind
ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings() 
SaveManager:SetIgnoreIndexes({ 'MenuKeybind' }) 
ThemeManager:SetFolder('Delta Hub Theme Save')
SaveManager:SetFolder('Delta Hub Theme Save/Blox Fruit')

local table = {
    "Random1",
    "This script = trash ( I already know it.  )",
    "Script By me","Delta Hub","Gay?",
    game.Players.LocalPlayer.Character.Name.." is ".."Gay",
    "Delta Hub \n is the best",
}
while true do
for i=1,#table do
    local total = i 
    print(total)
    print(table[math.random(1,total)])
end
wait()
end
else
	game.Players.LocalPlayer:Kick("Invaild Key!")
end