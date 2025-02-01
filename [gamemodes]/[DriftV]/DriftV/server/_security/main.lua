
local random = math.random
local function uuid()
    local template ='xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'
    return string.gsub(template, '[xy]', function (c)
        local v = (c == 'x') and random(0, 0xf) or random(8, 0xb)
        return string.format('%x', v)
    end)
end

Events = {
    pay = "drift:Pay",  -- Pay event for server
    busted = "drift:GotBusted",
    refreshCars = "drift:UpdateCars",
    buyVeh = "drift:BuyVehicle",
    setPassive = "drift:SetInPassive",
    reqSync = "drift:RequestSync",
    getSync = "drift:SyncPlayer",
    setArchivment = "driftV:SetPlayerArchivement",
    SetExp = "driftV:SubmitExpPoints",
    addMoney = "driftV:AddMoney",
    setDriftPoint = "driftV:SubmitDriftPoint",
    raceEnd = "drift:EndRace",
    raceData = "drift:GetRaceData",
    sellVeh = "drift:SellVehicle"
}

function RegisterSecuredNetEvent(event, func)
    while event == nil do
        SecurityPrint("Trying to register [" .. event .. "] event which is nil ...")
        Wait(500)
    end
    SecurityPrint("Registered Secured net event ["..event.."]")
    RegisterNetEvent(event)
    AddEventHandler(event, func)
end

function SecurityPrint(text)
    print("^1SECURITY: ^7"..text)
end
