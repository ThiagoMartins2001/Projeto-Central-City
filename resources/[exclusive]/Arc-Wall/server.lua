local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")

vRPclient = Tunnel.getInterface("vRP")
arc = {}
Tunnel.bindInterface("Arc-Wall",arc)
Proxy.addInterface("Arc-Wall",arc)
vRP = Proxy.getInterface("vRP")

Config = {}
-----------------------------------------------------------------------------------------------------------------------------------------
-- GET USER ID AND STEAMHEX
-----------------------------------------------------------------------------------------------------------------------------------------	
function arc.getId(sourceplayer)
    local sourceplayer = sourceplayer
	if sourceplayer ~= nil and sourceplayer ~= 0 then
		local user_id = vRP.Passport(sourceplayer)
		if user_id then
			return user_id
		end
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- USER PERMISSION
-----------------------------------------------------------------------------------------------------------------------------------------	

function arc.getPermissao(toogle)
    local source = source
    local user_id = vRP.Passport(source)
    if vRP.HasPermission(user_id,Config.permissaoesp) then
        return true
    else
        return false
    end
end
-----------------------------------------------------------------------------------------------------------------------------------------
--Webhook (LINES)
-----------------------------------------------------------------------------------------------------------------------------------------
function arc.reportlinesLog(toggle)
	local source = source
	local user_id = vRP.Passport(source)
	local identity = vRP.Identity(user_id)
	local x,y,z = vRPclient.getPosition(source)
	if user_id then
        local imageurl = "https://media.discordapp.net/attachments/807063382662185001/845462171470266449/hazedev90x90.png"
        PerformHttpRequest(Config.webhooklines, function(err, text, headers) end, 'POST', json.encode({username = ' SNAP-STORE Anticheat - Sistema de ESP ', avatar_url = imageurl, embeds = {
                { 	------------------------------------------------------------
                    title = "**Um administrador ``ativou`` o /lines**",
                    fields = {
                        { 
                            name = "**ID do Administrador:\n**",
                            value = "**"..identity.name.." "..identity.name2.." ["..user_id.."]**"
                        },
                        {
							name = "**LOCALIZAÇÃO:**\n",
							value = "**"..x..", "..y..", "..z.."**"
                        }, 
                        {                        
							name = "``Sistema desenvolvido Por SNAP-STORE.``\n",
							value = "``Obrigado Pela Compra.``"
						}
                    }, 
                    footer = { 
                        text = "SNAP-STORE Anticheat - ESP - "..os.date("%d/%m/%Y | %H:%M:%S"),
                        icon_url = "https://media.discordapp.net/attachments/807063382662185001/845462171470266449/hazedev90x90.png"
                    },
                    color = 3093194 
                }
            }
        }), { ['Content-Type'] = 'application/json' })
    end
end

function arc.reportunlinesLog(toggle)
	local source = source
	local user_id = vRP.Passport(source)
	local identity = vRP.Identity(user_id)
	local x,y,z = vRPclient.getPosition(source)
	if user_id then
        local imageurl = "https://media.discordapp.net/attachments/807063382662185001/845462171470266449/hazedev90x90.png"
        PerformHttpRequest(Config.webhooklines, function(err, text, headers) end, 'POST', json.encode({username = ' SNAP-STORE Anticheat - Sistema de ESP ', avatar_url = imageurl, embeds = {
                { 	------------------------------------------------------------
                    title = "**Um administrador ``desativou`` o /lines**",
                    fields = {
                        { 
                            name = "**ID do Administrador:\n**",
                            value = "**"..identity.name.." "..identity.name2.." ["..user_id.."]**"
                        },
                        {
							name = "**LOCALIZAÇÃO:**\n",
							value = "**"..x..", "..y..", "..z.."**"
                        },
                        {                        
							name = "``Sistema desenvolvido Por SNAP-STORE.``\n",
							value = "``Obrigado Pela Compra.``"
						}
                    }, 
                    footer = { 
                        text = "SNAP-STORE Anticheat - ESP - "..os.date("%d/%m/%Y | %H:%M:%S"),
                        icon_url = "https://media.discordapp.net/attachments/807063382662185001/845462171470266449/hazedev90x90.png"
                    },
                    color = 3093194 
                }
            }
        }), { ['Content-Type'] = 'application/json' })
    end
end
-----------------------------------------------------------------------------------------------------------------------------------------
--Webhook (WALL)
-----------------------------------------------------------------------------------------------------------------------------------------
function arc.reportwallLog(toggle)
    local source = source
    local user_id = vRP.Passport(source)
    local identity = vRP.Identity(user_id)
    local x,y,z = vRPclient.getPosition(source)
    if user_id then
        local imageurl = "https://media.discordapp.net/attachments/807063382662185001/845462171470266449/hazedev90x90.png"
        PerformHttpRequest(Config.webhookwall, function(err, text, headers) end, 'POST', json.encode({username = ' SNAP-STORE Anticheat - Sistema de ESP ', avatar_url = imageurl, embeds = {
                { 	------------------------------------------------------------
                    title = "**Um administrador ``ativou`` o /Wall**",
                    fields = {
                        { 
                            name = "**ID do Administrador:\n**",
                            value = "**"..identity.name.." "..identity.name2.." ["..user_id.."]**"
                        },
                        {
                            name = "**LOCALIZAÇÃO:**\n",
                            value = "**"..(x or "N/A")..", "..(y or "N/A")..", "..(z or "N/A").."**"
                        },
                        {                        
                            name = "``Sistema desenvolvido Por SNAP-STORE.``\n",
                            value = "``Obrigado Pela Compra.``"
                        }
                    }, 
                    footer = { 
                        text = "SNAP-STORE Anticheat - ESP - "..os.date("%d/%m/%Y | %H:%M:%S"),
                        icon_url = "https://media.discordapp.net/attachments/807063382662185001/845462171470266449/hazedev90x90.png"
                    },
                    color = 1286027
                }
            }
        }), { ['Content-Type'] = 'application/json' })
    end
end

function arc.reportwallLog(toggle)
    local source = source
    local user_id = vRP.Passport(source)
    local identity = vRP.Identity(user_id)
    local x, y, z = vRPclient.getPosition(source)
    if user_id and x and y and z then
        local imageurl = "https://media.discordapp.net/attachments/807063382662185001/845462171470266449/hazedev90x90.png"
        PerformHttpRequest(Config.webhookwall, function(err, text, headers) end, 'POST', json.encode({username = ' SNAP-STORE Anticheat - Sistema de ESP ', avatar_url = imageurl, embeds = {
                { 	------------------------------------------------------------
                    title = "**Um administrador ``ativou`` o /Wall**",
                    fields = {
                        { 
                            name = "**ID do Administrador:\n**",
                            value = "**"..identity.name.." "..identity.name2.." ["..user_id.."]**"
                        },
                        {
                            name = "**LOCALIZAÇÃO:**\n",
                            value = "**"..x..", "..y..", "..z.."**"
                        },
                        {                        
                            name = "``Sistema desenvolvido Por SNAP-STORE.``\n",
                            value = "``Obrigado Pela Compra.``"
                        }
                    }, 
                    footer = { 
                        text = "SNAP-STORE Anticheat - ESP - "..os.date("%d/%m/%Y | %H:%M:%S"),
                        icon_url = "https://media.discordapp.net/attachments/807063382662185001/845462171470266449/hazedev90x90.png"
                    },
                    color = 1286027
                }
            }
        }), { ['Content-Type'] = 'application/json' })
    end
end

print("^2 WALL INICIADO COM SUCESSO")