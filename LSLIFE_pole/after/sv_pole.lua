ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterServerCallback('getpoleemploi', function(source, cb)
    MySQL.Async.fetchAll('SELECT SecondaryJob, name, label FROM jobs', {}, function(result)
        cb(result)  
        
    end)
end)

RegisterServerEvent('setjob')
AddEventHandler('setjob', function(job)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    xPlayer.setJob(job, 0)  
end)
