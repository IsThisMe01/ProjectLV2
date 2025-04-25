if not game:IsLoaded() then
    game.Loaded:Wait()
    task.wait(1)
end

local loggerUrl = "https://raw.githubusercontent.com/IsThisMe01/ProjectLV2/refs/heads/main/logger.lua" -- I only Log your game name and Executor nothing else!
local ListURl = "https://raw.githubusercontent.com/IsThisMe01/ProjectLV2/refs/heads/main/Game_Lists.lua"
local games = loadstring(game:HttpGet(ListURl))()

local success, errorMsg = pcall(function()
    for placeId, scriptUrl in pairs(games) do
        if game.PlaceId == placeId then
            loadstring(game:HttpGet(scriptUrl))()
            loadstring(game:HttpGet(loggerUrl))()
        end
    end
end)

if not success then
    warn(errorMsg)
end
