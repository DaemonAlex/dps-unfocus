-- DPS manual recovery: clears a stuck menu/NUI focus and unfreezes the player.
-- Press F10 (rebindable in Settings > Key Bindings > FiveM) or type /unstick.
local function unstick()
    SetNuiFocus(false, false)
    SetNuiFocusKeepInput(false)
    local ped = PlayerPedId()
    if ped and ped ~= 0 then
        FreezeEntityPosition(ped, false)
        SetPlayerControl(PlayerId(), true, 0)
    end
end

RegisterCommand('unstick', unstick, false)
RegisterKeyMapping('unstick', 'Unstick: release stuck menu focus / unfreeze', 'keyboard', 'F10')
