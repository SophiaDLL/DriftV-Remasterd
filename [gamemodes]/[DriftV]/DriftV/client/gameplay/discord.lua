Citizen.CreateThread(function()
while not loaded do Wait(500) end
    

    while true do
        SetDiscordAppId(1362442593048461562)
        SetDiscordRichPresenceAsset("logo")
        SetDiscordRichPresenceAssetText("discord.gg/DriftV")
        if inLobby then
            SetRichPresence("Warming up there Vehicles Engine")
        elseif p:IsInGarage() then
            SetRichPresence("Making sure everything is running Correctly")
        else
            SetRichPresence("Drifting in "..p:GetMap())
        end
        Wait(1000)
    end
end)