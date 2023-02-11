--[[
_G.AutoGen = true
_G.Settings = {
    ["Password lenght"] = 15,
    ["Username lenght"] = 7,
}
]]

--Main Script

if not _G.Execute then
    _G.Execute = true
    while wait() do
        pcall(function()
            if _G.AutoGen then
                --char
                local characters_P = {"a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","1","2","3","4","5","6","7","8","9","!","@","#","$","%","?","&","*","(",")","-","_","=","+"}
                local characters_U = {"a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","1","2","3","4","5","6","7","8","9"}

                --length
                local length_P = _G.Settings["Password lenght"] -- Password lenght
                local length_U = _G.Settings["Username lenght"] --Username lenght

                --var
                local password = ""
                local user = ""

                --Gen
                for i = 1,length_P,1 do
                    password ..= characters_P[math.random(1,#characters_P)]
                end

                for i = 1,length_U,1 do
                    user ..= characters_U[math.random(1,#characters_U)]
                end

                --Copy
                setclipboard("\n\nUsername : "..user.."\nPassword : "..password)
                print("\n\nUsername : "..user.."\nPassword : "..password)
            end
        end)
    end
else
    print("OKAY")
end
