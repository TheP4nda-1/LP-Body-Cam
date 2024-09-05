local show = false
RegisterCommand("BodyCam",function ()

    local animDict = 'clothingtie'
    local animName = 'try_tie_positive_a'

    RequestAnimDict(animDict)
    
    -- Warten, bis das Animationsdict geladen ist
    while not HasAnimDictLoaded(animDict) do
        Citizen.Wait(100)
    end

    -- Hole den Spielercharakter
    local playerPed = PlayerPedId()
    
    -- Spiele die Animation ab
    TaskPlayAnim(playerPed, animDict, animName, 8.0, -8.0, -1, 49, 0, false, false, false)
    Citizen.Wait(2500)

    ClearPedTasks(playerPed)
    if show == false then
        show = true
        SendNUIMessage({
            action = 'show'
        })
    elseif show ==true then
        SendNUIMessage({
            action = 'hide'
        })
        show = false
    end
    
end, false)
