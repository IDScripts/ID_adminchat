-- server.lua
RegisterCommand('adminchat', function(source, args, rawCommand)
    local msg = table.concat(args, ' ')
    if IsPlayerAceAllowed(source, "adminchat.use") then
        TriggerClientEvent('adminChatMessage', -1, GetPlayerName(source), msg)
    else
        TriggerClientEvent('chat:addMessage', source, {color = {255, 0, 0}, multiline = true, args = {"^1[Error] ^0You do not have permission to use this command."}})
    end
end, false)
