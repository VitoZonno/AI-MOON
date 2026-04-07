local Brain = {}
local HttpService = game:GetService("HttpService")

function Brain.Chiedi(prompt)
    local url = "https://api.blackbox.ai/api/chat"
    local payload = HttpService:JSONEncode({
        messages = {{role = "user", content = "Sei un Roblox Modder. Rispondi SOLO con codice Lua puro per: " .. prompt}},
        model = "deepseek-v3"
    })

    local res = request({
        Url = url, Method = "POST",
        Headers = {["Content-Type"] = "application/json"},
        Body = payload
    })

    if res.Success then
        return res.Body:gsub("```lua", ""):gsub("```", ""):gsub("`", "")
    end
    return nil
end

return Brain
