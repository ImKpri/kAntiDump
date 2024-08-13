----------------------------------------------

local function isDumpAttempted()
    local memUsage = collectgarbage("count")
    if memUsage > 100000 then
        return true
    end
    return false
end

local function disableScript()
    sensitiveData = nil
    print("Tentative de dump détectée. Le script a été désactivé.")
    TriggerServerEvent('TRIGGER DE BAN')    --------- METTRE UN TRIGGER DE DROP ET BAN
    function criticalFunction()
        return nil
    end
end

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(5000)

        if isDumpAttempted() then
            disableScript()
            break
        end
    end
end)

---- BY KPRI