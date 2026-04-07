local baseUrl = "https://raw.githubusercontent.com/VitoZonno/AI-MOON/main/"

local function GetFile(path)
    return loadstring(game:HttpGet(baseUrl .. path))()
end

local Brain = GetFile("Core/Brain.lua")
local Interface = GetFile("Core/Interface.lua")

Interface.Build(function(cmd)
    print("Elaborazione: " .. cmd)
    local code = Brain.Chiedi(cmd)
    if code then
        local func = loadstring(code)
        if func then pcall(func) else warn("Codice IA corrotto") end
    end
end)
