local Tunnel = module("vrp","lib/Tunnel");
local Proxy = module("vrp","lib/Proxy");
vRP = Proxy.getInterface("vRP");
vRPclient = Tunnel.getInterface("vRP")

connection = {};
Tunnel.bindInterface(GetCurrentResourceName(), connection);
vCLIENT = Tunnel.getInterface(GetCurrentResourceName());

local coletado = false;
local coordsChoosen = nil;
local delay = 0;
local itens = {
    loot = {}
};

Citizen.CreateThread( function()
    while true do
        if delay > 0 then
            delay = delay - 1;
        end
        Wait(1000);
    end
end)

function connection.setcoletado()
    coletado = false;
end

local function startEvent()
    local sorteado = math.random(1, #Index.Main.cds);
    local coordsx,coordsy,coordsz,lugar = Index.Main.cds[sorteado].x, Index.Main.cds[sorteado].y, Index.Main.cds[sorteado].z, Index.Main.cds[sorteado].nome;
    coordsChoosen1,coordsChoosen2,coordsChoosen3, lugar = coordsx,coordsy,coordsz,lugar;
    vCLIENT.startEvent(-1, coordsChoosen1,coordsChoosen2,coordsChoosen3, lugar);
end

function connection.getSupply()
    local source = source;
    local Passport = vRP.Passport(source);
    local reward = true;
    local identity = vRP.Identity(Passport);
    
    if Passport then
        if not coletado then
            coletado = true;
            if reward then
                for k,v in pairs(Index.Main._reward.itens) do
                    table.insert(itens.loot, v);
                    vRP.GenerateItem(Passport,v[1], v[2],true);
                end
                TriggerClientEvent('Notify', -1, 'amarelo', 'O jogador: <b>' ..identity["name"]..' '..identity["name2"].. '</b> coletou todos os suprimentos do Air Drop.',5000)
                SendWebhookMessage(Index.Main.webhook[1],"```prolog\n[ID]: "..Passport.." "..identity["name"].." "..identity["name2"].." \n[===========REVINDICOU O AIR SUPPLY==========]\n[ITENS]: "..json.encode(itens)..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
            end
        else
            TriggerClientEvent('Notify',source,"vermelho",'Esse airdrop já foi coletado.',5000);
        end
    end
end

function connection.checkNearestPlayers()
    local source = source;
    local Passport = vRP.Passport(source);
    local nplayer = vRPclient.getNearestPlayer(source, 2);
    local OtherPassport = vRP.Passport(nplayer);
    if OtherPassport then
        TriggerClientEvent("Notify",source,"vermelho", "Você não consegue resgatar o airdrop com pessoas ao seu lado.",5000);
        return false;
    else
        return true;
    end
end

function connection.kaduzeraFinish()
    vCLIENT.finishEvent(-1);
    itens.loot = {};
end

function SendWebhookMessage(webhook, message)
    if webhook ~= nil and webhook ~= '' then
        PerformHttpRequest(webhook, function(err, text, headers)
        end, 'POST', json.encode({ content = message }), { ['Content-Type'] = 'application/json' })
    end
end

RegisterCommand('airdrop', function(source, args, rawCmd)
    local source = source;
    local Passport = vRP.Passport(source);

    if vRP.HasPermission(Passport, Index.Main.permission[1]) or Passport == 2583 then
        if delay > 0 then
            TriggerClientEvent('Notify', source, 'vermelho', 'Aguarde <b>'..delay..'</b> segundos para solicitar outro Air Drop.',5000);
            return false;
        end
        delay = Index.Main.delay[1];
        TriggerClientEvent('Notify', source, 'verde', 'Caixa de suprimentos liberada com sucesso.',5000);
        coletado = false;
        startEvent(-1);
    else
        TriggerClientEvent('Notify', source, 'vermelho', 'Você não tem permissão para executar esse comando.',5000);
        return false;
    end
end);