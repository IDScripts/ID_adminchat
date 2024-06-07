-- client.lua
RegisterNetEvent('adminChatMessage')
AddEventHandler('adminChatMessage', function(author, text)
    TriggerEvent('chat:addMessage', {
        color = {255, 0, 0},
        multiline = true,
        args = {"^1[Admin Chat] ^0" .. author .. ": ", text}
    })
end)
