-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
vRPclient = Proxy.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECTION
-----------------------------------------------------------------------------------------------------------------------------------------
cRP = {}
Tunnel.bindInterface("dismantled", cRP)
vGARAGES = Tunnel.getInterface("garages")
vCLIENT = Tunnel.getInterface("dismantled")



local desmanche = ""

function SendWebhookMessage(webhook,message)
	if webhook ~= nil and webhook ~= "" then
		PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({content = message}), { ['Content-Type'] = 'application/json' })
	end
end

------------------------------------------------------
-- CONFIG 
------------------------------------------------------
local RestritoParaDesmanche = false -- É restrito para quem tiver só a permissão do desmanche? (TRUE/FALSE)
local PermissaoDesmanche = 'Flanelas' -- Se RestritoParaDesmanche for TRUE, aqui deverá ter a permissão que será verifiada.

local CarrosDesmanches = {
    --==============================================================
    -- configure o nome do veículo e valor que recebe ao desmanchar
    -- geralmente configuro 10% do valor do veículo
    --==============================================================

    ['blista'] = 6000,
    ['brioso'] = 3500,
    ['dilettante'] = 6000,
    ['issi2'] = 7500,
    ['panto'] = 1000,
    ['prairie'] = 200,
    ['rhapsody'] = 1400,
    ['cogcabrio'] = 13000,
    ['emperor'] = 10000,
    ['emperor2'] = 10000,
    ['phoenix'] = 25000,
    ['premier'] = 7000,
    ['glendale'] = 14000,
    ['intruder'] = 12000,
    ['exemplar'] = 16000,
    ['f620'] = 11000,
    ['felon'] = 14000,
    ['ingot'] = 15500,
    ['felon2'] = 200,
    ['jackal'] = 12000,
    ['oracle'] = 12000,
    ['oracle2'] = 16000,
    ['sentinel'] = 10000,
    ['sentinel2'] = 12000,
    ['windsor'] = 15000,
    ['windsor2'] = 17000,
    ['zion'] = 10000,
    ['zion2'] = 12000,
    ['blade'] = 22000,
    ['buccaneer'] = 26000,
    ['buccaneer2'] = 21000,
    ['primo'] = 26000,
    ['primo2'] = 30000,
    ['chino'] = 26000,
    ['chino2'] = 30000,
    ['coquette3'] = 39000,
    ['dominator'] = 46000,
    ['dukes'] = 30000,
    ['faction'] = 30000,
    ['faction2'] = 40000,
    ['faction3'] = 35000,
    ['gauntlet'] = 33000,
    ['gauntlet2'] = 33000,
    ['hermes'] = 46000,
    ['hotknife'] = 36000,
    ['moonbeam'] = 44000,
    ['moonbeam2'] = 50000,
    ['nightshade'] = 54000,
    ['picador'] = 30000,
    ['ruiner'] = 30000,
    ['sabregt'] = 52000,
    ['sabregt2'] = 30000,
    ['gburrito'] = 40000,
    ['slamvan'] = 36000,
    ['slamvan2'] = 40000,
    ['slamvan3'] = 46000,
    ['stalion'] = 30000,
    ['stalion2'] = 30000,
    ['tampa'] = 34000,
    ['vigero'] = 34000,
    ['virgo'] = 30000,
    ['virgo2'] = 50000,
    ['virgo3'] = 36000,
    ['voodoo'] = 44000,
    ['voodoo2'] = 44000,
    ['yosemite'] = 70000,
    ['bfinjection'] = 16000,
    ['bifta'] = 38000,
    ['bodhi2'] = 34000,
    ['brawler'] = 50000,
    ['trophytruck'] = 80000,
    ['trophytruck2'] = 80000,
    ['dubsta3'] = 60000,
    ['mesa3'] = 40000,
    ['rancherxl'] = 44000,
    ['rebel'] = 200,
    ['rebel2'] = 50000,
    ['riata'] = 50000,
    ['dloader'] = 30000,
    ['sandking'] = 80000,
    ['sandking2'] = 74000,
    ['baller'] = 30000,
    ['baller2'] = 32000,
    ['baller3'] = 35000,
    ['baller4'] = 37000,
    ['baller5'] = 54000,
    ['baller6'] = 56000,
    ['bjxl'] = 22000,
    ['cavalcade'] = 22000,
    ['cavalcade2'] = 26000,
    ['contender'] = 60000,
    ['dubsta'] = 42000,
    ['dubsta2'] = 48000,
    ['fq2'] = 22000,
    ['granger'] = 69000,
    ['gresley'] = 30000,
    ['habanero'] = 22000,
    ['seminole'] = 22000,
    ['serrano'] = 30000,
    ['xls'] = 30000,
    ['xls2'] = 70000,
    ['asea'] = 11000,
    ['asterope'] = 13000,
    ['cog55'] = 40000,
    ['cog552'] = 80000,
    ['cognoscenti'] = 56000,
    ['cognoscenti2'] = 80000,
    ['stanier'] = 12000,
    ['stratum'] = 18000,
    ['superd'] = 40000,
    ['surge'] = 22000,
    ['tailgater'] = 22000,
    ['warrener'] = 18000,
    ['washington'] = 26000,
    ['alpha'] = 46000,
    ['banshee'] = 60000,
    ['bestiagts'] = 58000,
    ['blista2'] = 11000,
    ['blista3'] = 16000,
    ['buffalo'] = 60000,
    ['buffalo2'] = 60000,
    ['buffalo3'] = 60000,
    ['carbonizzare'] = 58000,
    ['comet2'] = 50000,
    ['comet3'] = 58000,
    ['comet5'] = 60000,
    ['coquette'] = 50000,
    ['elegy'] = 70000,
    ['elegy2'] = 71000,
    ['feltzer2'] = 51000,
    ['furoregt'] = 58000,
    ['fusilade'] = 42000,
    ['futo'] = 34000,
    ['jester'] = 30000,
    ['khamelion'] = 42000,
    ['kuruma'] = 66000,
    ['massacro'] = 66000,
    ['massacro2'] = 66000,
    ['ninef'] = 58000,
    ['ninef2'] = 58000,
    ['omnis'] = 48000,
    ['pariah'] = 100000,
    ['penumbra'] = 30000,
    ['raiden'] = 48000,
    ['rapidgt'] = 50000,
    ['rapidgt2'] = 60000,
    ['ruston'] = 74000,
    ['schafter3'] = 55000,
    ['schafter4'] = 55000,
    ['schafter5'] = 55000,
    ['schwarzer'] = 34000,
    ['sentinel3'] = 34000,
    ['seven70'] = 74000,
    ['specter'] = 64000,
    ['specter2'] = 71000,
    ['streiter'] = 50000,
    ['sultan'] = 42000,
    ['surano'] = 62000,
    ['tampa2'] = 40000,
    ['tropos'] = 34000,
    ['verlierer2'] = 76000,
    ['btype'] = 40000,
    ['btype2'] = 92000,
    ['btype3'] = 78000,
    ['casco'] = 71000,
    ['cheetah'] = 85000,
    ['coquette2'] = 57000,
    ['feltzer3'] = 44000,
    ['gt500'] = 50000,
    ['infernus2'] = 50000,
    ['jb700'] = 44000,
    ['mamba'] = 60000,
    ['manana'] = 26000,
    ['monroe'] = 52000,
    ['peyote'] = 30000,
    ['pigalle'] = 50000,
    ['rapidgt3'] = 44000,
    ['retinue'] = 30000,
    ['stinger'] = 44000,
    ['stingergt'] = 46000,
    ['torero'] = 32000,
    ['tornado'] = 30000,
    ['tornado2'] = 32000,
    ['tornado5'] = 44000,
    ['tornado6'] = 50000,
    ['turismo2'] = 50000,
    ['ztype'] = 80000,
    ['adder'] = 124000,
    ['autarch'] = 152000,
    ['banshee2'] = 74000,
    ['bullet'] = 80000,
    ['cheetah2'] = 48000,
    ['entityxf'] = 92000,
    ['fmj'] = 104000,
    ['gp1'] = 99000,
    ['infernus'] = 94000,
    ['nero'] = 90000,
    ['nero2'] = 96000,
    ['osiris'] = 92000,
    ['penetrator'] = 96000,
    ['pfister811'] = 106000,
    ['reaper'] = 124000,
    ['sc1'] = 99000,
    ['sultanrs'] = 90000,
    ['t20'] = 134000,
    ['tempesta'] = 120000,
    ['turismor'] = 124000,
    ['tyrus'] = 124000,
    ['vacca'] = 124000,
    ['visione'] = 138000,
    ['voltic'] = 88000,
    ['zentorno'] = 184000,
    ['sadler'] = 36000,
    ['bison'] = 44000,
    ['bison2'] = 36000,
    ['bobcatxl'] = 52000,
    ['burrito'] = 52000,
    ['burrito2'] = 52000,
    ['burrito3'] = 52000,
    ['burrito4'] = 52000,
    ['minivan'] = 22000,
    ['minivan2'] = 44000,
    ['paradise'] = 52000,
    ['pony'] = 52000,
    ['pony2'] = 52000,
    ['rumpo'] = 52000,
    ['rumpo2'] = 52000,
    ['rumpo3'] = 70000,
    ['speedo'] = 40000,
    ['surfer'] = 11000,
    ['youga'] = 200,
    ['youga2'] = 200,
    ['tractor2'] = 200,
    ['huntley'] = 22000,
    ['landstalker'] = 26000,
    ['mesa'] = 18000,
    ['patriot'] = 50000,
    ['radi'] = 22000,
    ['rocoto'] = 22000,
    ['tyrant'] = 138000,
    ['entity2'] = 110000,
    ['cheburek'] = 34000,
    ['hotring'] = 60000,
    ['jester3'] = 69000,
    ['flashgt'] = 74000,
    ['ellie'] = 64000,
    ['michelli'] = 32000,
    ['fagaloa'] = 64000,
    ['dominator2'] = 46000,
    ['dominator3'] = 74000,
    ['issi3'] = 38000,
    ['taipan'] = 124000,
    ['gb200'] = 39000,
    ['stretch'] = 104000,
    ['guardian'] = 108000,
    ['kamacho'] = 120000,
    ['neon'] = 74000,
    ['cyclone'] = 184000,
    ['italigtb'] = 120000,
    ['italigtb2'] = 122000,
    ['vagner'] = 136000,
    ['xa21'] = 126000,
    ['tezeract'] = 184000,
    ['prototipo'] = 206000,
    ['patriot2'] = 110000,
    ['stafford'] = 40000,
    ['swinger'] = 50000,
    ['clique'] = 72000,
    ['deveste'] = 184000,
    ['deviant'] = 74000,
    ['impaler'] = 64000,
    ['italigto'] = 160000,
    ['schlagen'] = 138000,
    ['toros'] = 104000,
    ['tulip'] = 64000,
    ['vamos'] = 64000,
    ['freecrawler'] = 70000,
    ['fugitive'] = 10000,
    ['le7b'] = 140000,
    ['lurcher'] = 30000,
    ['lynx'] = 74000,
    ['sheava'] = 140000,
    ['z190'] = 70000,
    ['akuma'] = 100000,
    ['avarus'] = 88000,
    ['bagger'] = 60000,
    ['bati'] = 74000,
    ['bati2'] = 60000,
    ['bf400'] = 64000,
    ['carbonrs'] = 74000,
    ['chimera'] = 69000,
    ['cliffhanger'] = 62000,
    ['daemon'] = 40000,
    ['daemon2'] = 48000,
    ['defiler'] = 92000,
    ['diablous'] = 86000,
    ['diablous2'] = 92000,
    ['double'] = 74000,
    ['enduro'] = 39000,
    ['esskey'] = 64000,
    ['faggio'] = 800,
    ['faggio2'] = 1000,
    ['faggio3'] = 1000,
    ['fcr'] = 78000,
    ['fcr2'] = 78000,
    ['gargoyle'] = 69000,
    ['hakuchou'] = 76000,
    ['hakuchou2'] = 110000,
    ['hexer'] = 50000,
    ['innovation'] = 50000,
    ['lectro'] = 76000,
    ['manchez'] = 71000,
    ['nemesis'] = 69000,
    ['nightblade'] = 83000,
    ['pcj'] = 46000,
    ['ruffian'] = 69000,
    ['sanchez'] = 37000,
    ['sanchez2'] = 37000,
    ['sanctus'] = 40000,
    ['sovereign'] = 57000,
    ['thrust'] = 75000,
    ['vader'] = 69000,
    ['vindicator'] = 68000,
    ['vortex'] = 75000,
    ['wolfsbane'] = 58000,
    ['zombiea'] = 58000,
    ['zombieb'] = 60000,
    ['blazer'] = 46000,
    ['blazer4'] = 74000,
    ['shotaro'] = 200000,
    ['ratbike'] = 46000,
    ['rallytruck'] = 52000,
    ['flatbed'] = 200,
    ['ratloader'] = 200,
    ['ratloader2'] = 200,
    ['taxi'] = 200,
    ['boxville4'] = 200,
    ['trash2'] = 200,
    ['trash'] = 200,
    ['tiptruck'] = 200,
    ['scorcher'] = 200,
    ['tribike'] = 200,
    ['tribike2'] = 200,
    ['tribike3'] = 200,
    ['fixter'] = 200,
    ['cruiser'] = 200,
    ['bmx'] = 200,
    ['dinghy'] = 200,
    ['speeder'] = 200,
    ['suntrap'] = 200,
    ['tropic'] = 200,

}

------------------------------------------------------
------------------------------------------------------
------------------------------------------------------


-- RETORNA VEICULOS PERMITIDOS
function cRP.GetVehs()
    return CarrosDesmanches
end


-- FUNÇÃO VERIFICAR PERMISSÃO DO DESMANCHE
function cRP.CheckPerm()
    local source = source
    local Passport = vRP.Passport(source)
    if RestritoParaDesmanche then
        if vRP.HasPermission(Passport, PermissaoDesmanche) then
            return true
        end
        return false
    end
    return true
end

-- FUNÇÃO PRA VERIFICAR SE POSSUI O ITEM
function cRP.CheckItem()
    local source = source
	local Passport = vRP.Passport(source)
    if Passport then
        local consultItem = vRP.InventoryItemAmount(Passport,"WEAPON_WRENCH")
        if consultItem[1] <= 0 then
            return false
        end
        return true
    end
end


-- FUNÇÃO PARA GERAR O PAGAMENTO E OS ITENS
function cRP.GerarPagamento(placa, nomeFeio, nomeBonito, nPassport)
    local source = source
    local Passport = vRP.Passport(source)
	local identity = vRP.Identity(Passport)

    -- REALIZA O PAGAMENTO
    for k, v in pairs(CarrosDesmanches) do
        if string.upper(k) == string.upper(nomeFeio) then
            local pagamento = v
            vRP.GiveItem(Passport,'dollars2',pagamento) -- DINHEIRO SUJO
            vRP.GenerateItem(Passport,'nitro',5)
            vRP.TakeItem(Passport, 'WEAPON_WRENCH')

            TriggerClientEvent('Notify',source,'verde','Você recebeu <b>R$'..pagamento..'</b> pelo desmanche de um <b>'..nomeBonito..' ('.. nomeFeio..' - PLACA [' .. placa .. '])</b>.',20000)
            vRP.UpgradeStress(Passport,5)
            SendWebhookMessage(desmanche,"```[NOME]: "..identity.name.." "..identity.name2.." \n[ID]: "..Passport.." \n[DESMANCHOU]: "..nomeBonito.." \n[PLACA]: "..placa.." \n[E RECEBEU]: "..pagamento.." "..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
        end
    end
end