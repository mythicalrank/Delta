loadstring(game:HttpGet("https://raw.githubusercontent.com/mythicalrank/Delta/main/Protected%20(4).lua"))()

_G.Games = {
    ['https://scripts.luawl.com/14696/8739839954.lua'] = 8739839954, --Jujutsu Tycoon
    ['https://scripts.luawl.com/14750/MiningSimulator2.lua'] = 9551640993, -- Mining Simulator 2
    ['https://scripts.luawl.com/14753/LUCKYBLOCKSBattlegrounds.lua'] = 662417684, -- LUCKY BLOCKS Battlegrounds
    ['https://scripts.luawl.com/14807/BeeSwarmSimulator.lua'] = 1537690962, -- Bee Swarm Simulator
    ['https://scripts.luawl.com/14809/BuildABoatForTreasure.lua'] = 537413528, -- Build A Boat For Treasure
}

for i,v in pairs(_G.Games) do
    if v == game.PlaceId then
        loadstring(game:HttpGet(i))()
    else
        game:Shutdown()
    end
end