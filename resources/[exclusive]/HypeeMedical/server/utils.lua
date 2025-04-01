Webhooks = {
    ['AtendimentosFinalizados'] = 'https://discord.com/api/webhooks/1338553161492992107/QlLxDcMqWHFB6HFSl6lhhRauEoCQOBZYadVbVnt7QSQ_YCnnycF_wJHSC-gbVC9y4gx1',
    ['RegistroDiagnostico'] = 'https://discord.com/api/webhooks/1338553408428445898/itvp4rsz84NmUVLQlamWl2RxWNXVWaIebBcmVxEMF6Clkpxb2YIG5EpwNIq05JH3_sPH',
    ['SolicitaçaoAtendimento'] = 'https://discord.com/api/webhooks/1338553548631179275/AOWGADCaxe9kVZGpoJhIcEeRxqdEzcakuOo-LGfkpa6BxaUhd9qtCcFx4dX0n2CP1el3',
    ['AceitarAtendimento'] = 'https://discord.com/api/webhooks/1338553873773760582/u7jJpuyRAW8sHPOqsoaPaGNr7fJo8QPj2pbfiZuzeZu54ZlG0zXrcYA2AGF65mE3icwQ',
    ['AgendarConsulta'] = 'https://discord.com/api/webhooks/1338553792118915134/zacyrANhiygMYfR-bQKq6Eqi3FzX5YGaa6nLouJrBkFcMhUFCPVMNLMbDft4DEfDmQPT',
    ['ExcluirConsulta'] = 'https://discord.com/api/webhooks/1338554039604084857/O2sghTqta26OgWTw8doem-XVBUmfylgU9zTVbNBvNO787qrEigzcfSXTEMsJ3hRgVd4d',
    ['ConcluirConsulta'] = 'https://discord.com/api/webhooks/1338554198567948379/ugzf8PrGiqhQYnM553Uwolc64L0JDLNVmpqTuKvhen6KXKwctfyuYSsSgfn3KuLpvZzH',
    ['PromoverFuncionario'] = 'https://discord.com/api/webhooks/1338554325357695076/XkcJwQsotUqEJm_c-tfrF2S7EmseP0sgKKf0LNaG_BeDTlyfiRGJbdiIEwckFq63QY4c',
    ['RebaixarFuncionario'] = 'https://discord.com/api/webhooks/1338554445927026800/3XjuCyi1avQHwVzlAUCDKreZAIL3WKwXEy8I6seW6Mhbk5I8r2khqT0p3kwRzVxYd8uV',
    ['ContratarFuncionario'] = 'https://discord.com/api/webhooks/1338554575342407782/uTD-KVs28ePBlpM5ZrhemzVdVVTekouS-3cIdvukJ653RiaiPXtIZNJyVcnjUYt0VLgr',
    ['DemitirFuncionario'] = 'https://discord.com/api/webhooks/1338554692900487311/rOawsntJaEjDXmdzN2jeenFvjlTMIQslP8gMTFOBKPGsHhn8CDLGb0vipEy3buP7WfMv',
    ['BonificarFuncionario'] = 'https://discord.com/api/webhooks/1338554820046487622/Gn9prrwlmC4JJyMBYIZ9P26HIoTkYV2CQTSu-Isv4UBPiRB3sNnJykpXzNkID3oPiMpd',
    ['PlanoSaude'] = 'https://discord.com/api/webhooks/1338554994013634703/wEIHjju-Gzz4EDNDt9uIkoatFgD7WTv7Jbowq55dxVawArnmaUo1La957Qptpd5MkQn_'
}

RegistrarDiagnostico = function(user_id,m_user_id,descricao,ferimentos,gesso,imagem,hospital) 
    local identity = func.getUserIdentity(m_user_id)
    local identity2 = func.getUserIdentity(user_id)
    PerformHttpRequest(Webhooks['RegistroDiagnostico'], function(err, text, headers) end, 'POST', json.encode({
        embeds = {
            {
                title = "Diagnóstico Registrado",
                thumbnail = {
                    url = imagem
                }, 
                fields = {
                    { 
                        name = "ﾠ",
                        value = "**Médico:** "..identity.name.." "..identity.firstname.." #"..m_user_id.."\n**Paciente**: " .. identity2.name .. " " .. identity2.firstname .. " #" .. user_id .. "\n\n**Ferimentos** ```"..ferimentos.."```\n**Gesso Aplicado** ```"..gesso.."```\n**Descrição** ```"..descricao.."``` "
                    }
                }, 
                footer = { 
                    text = 'Hypee Resources | Medical',
                },
                color = 3092790
            }
        }
    }), { ['Content-Type'] = 'application/json' })
end

FinalizarAtendimento = function(user_id,m_user_id,descricao,conclusao,codigo,hospital,imagem_paciente) 
    local identity = func.getUserIdentity(m_user_id)
    local identity2 = func.getUserIdentity(user_id)
    PerformHttpRequest(Webhooks['AtendimentosFinalizados'], function(err, text, headers) end, 'POST', json.encode({
        embeds = {
            {     ------------------------------------------------------------
                title = "Atendimento Finalizado",
                thumbnail = {
                    url = imagem_paciente[1]
                }, 
                fields = {
                    { 
                        name = " Codigo #"..codigo.."ﾠ",
                        value = "**Médico:** " ..identity.name.." "..identity.firstname.." #"..m_user_id.."\n**Paciente:** " ..identity2.name.." "..identity2.firstname.." #"..user_id.."\n\n**Descrição **```"..descricao.."```\n**Conclusão: **```"..conclusao.."``` ",
                    }
                }, 
                footer = { 
                    text = 'Hypee Resources | Medical',
                },
                color = 3092790
            }
        }
    }), { ['Content-Type'] = 'application/json' })
end

SolicitacaoAtendimento = function(user_id,descricao,codigo,hospital,imagem_paciente)
    local identity = func.getUserIdentity(user_id)
    PerformHttpRequest(Webhooks['SolicitaçaoAtendimento'], function(err, text, headers) end, 'POST', json.encode({
        embeds = {
            {     ------------------------------------------------------------
                title = "Solicitação de atendimento",
                thumbnail = {
                    url = imagem_paciente[1]
                }, 
                fields = {
                    { 
                        name = " Codigo #"..codigo.."ﾠ",
                        value = "**Paciente:** " ..identity.name.." "..identity.firstname.." #"..user_id.."\n\n**Descrição** ```" ..descricao.."```",
                    }
                }, 
                footer = { 
                    text = 'Hypee Resources | Medical',
                },
                color = 3092790
            }
        }
    }), { ['Content-Type'] = 'application/json' })
end

AceitarAtendimento = function(nome,passaporte,medico_id,descricao,codigo,hospital,imagem_paciente)
    local identity = func.getUserIdentity(medico_id)
    print(imagem_paciente,'AceitarAtendimento')
    PerformHttpRequest(Webhooks['AceitarAtendimento'], function(err, text, headers) end, 'POST', json.encode({
        embeds = {
            {     ------------------------------------------------------------
                title = "Atendimento aceito",
                thumbnail = {
                    url = imagem_paciente[1]
                }, 
                fields = {
                    { 
                        name = " Codigo #"..codigo.."ﾠ",
                        value = "\n**Médico:**  " ..identity.name.." "..identity.firstname.."\n**Paciente:** " ..nome.." #"..passaporte.."\n\nDescrição ```"..descricao.."```",
                    }
                }, 
                footer = { 
                    text = 'Hypee Resources | Medical',
                },
                color = 3092790
            }
        }
    }), { ['Content-Type'] = 'application/json' })
end

AgendarConsulta = function(id_medico,especialidade,data,hospital,pacientes,imagem_medico)
    
    local pacientesNames = ''
    
    for k, v in pairs(pacientes) do
        local identity = func.getUserIdentity(k)
        if pacientesNames == '' then
            pacientesNames = identity.name..' #'..k
        else
            pacientesNames = pacientesNames..', '..identity.name..' #'..k
        end
    end

    local identity = func.getUserIdentity(id_medico)

    PerformHttpRequest(Webhooks['AgendarConsulta'], function(err, text, headers) end, 'POST', json.encode({
        embeds = {
            {     ------------------------------------------------------------
                title = "Consulta agendada",
                thumbnail = {
                    url = imagem_medico[1]
                }, 
                fields = {
                    { 
                        name = "ﾠ",
                        value = "\nMédico  ```" ..identity.name.." "..identity.firstname.." #"..id_medico.."```\nPacientes ```" ..pacientesNames.."```\n**Especialidade** ```"..especialidade.."```\n**Data agendada** ```"..data.."```",
                    }
                }, 
                footer = { 
                    text = 'Hypee Resources | Medical',
                },
                color = 3092790
            }
        }
    }), { ['Content-Type'] = 'application/json' })

end

ExcluirConsulta = function(pacientes,marcada_user_id,deletada_por,especialidade,descricao,status,data_consulta,data_criada,hospital,imagem_medico)
    
    local pacientesNames = 'Não encontrei'
    
    print(json.encode(pacientes))
    for k, v in pairs(json.decode(pacientes)) do
        local identity = func.getUserIdentity(k)
        if pacientesNames == 'Não encontrei' then
            pacientesNames = identity.name..' #'..k
        else
            pacientesNames = pacientesNames..', '..identity.name..' #'..k
        end
    end

    print(descricaom,'desc')
    if descricao == nil then
        descricao = 'Não obtive descrição nessa consulta'
    else
        descricao = descricao
    end

    print('descricao',descricao)
    local identity = func.getUserIdentity(deletada_por)
    local identity2 = func.getUserIdentity(marcada_user_id)

    PerformHttpRequest(Webhooks['ExcluirConsulta'], function(err, text, headers) end, 'POST', json.encode({
        embeds = {
            {
                title = "Consulta excluida",
                thumbnail = {
                    url = imagem_medico[1]
                },
                fields = {
                    {
                        name = "ﾠ",
                        value = "Médico Excluiu  ```" .. identity.name .. " " .. identity.firstname .. " #" .. deletada_por .. "```\nMédico Agendou  ```" .. identity2.name .. " " .. identity2.firstname .. " #" .. marcada_user_id .. "```\nPacientes ```".. pacientesNames .. "```\nEspecialidade ```" .. especialidade .. "```\nData agendada ```" .. os.date("%d/%m/%Y %H:%M", data_consulta) .. "```\nData criada ```" .. os.date("%d/%m/%Y %H:%M", data_criada) .. "```\nStatus consulta ```" .. status .. "```\nDescrição ```" .. descricao .. "```"
                    }
                },
                footer = {
                    text = 'Hypee Resources | Medical',
                },
                color = 3092790
            }
        }
    }), { ['Content-Type'] = 'application/json' })
    
    
end

ConcluirConsulta = function(user_id,pacientes2,especialidade,descricao,datamarcada,status,medico_id,hospital,imagem_medico)
    local pacientes = 'Não encontrei'
    
    for k, v in pairs(json.decode(pacientes2)) do
        local identity = func.getUserIdentity(k)
        if pacientes == 'Não encontrei' then
            pacientes = identity.name..' #'..k
        else
            pacientes = pacientes..', '..identity.name..' #'..k
        end
    end
    
    if descricao == nil then
        descricao = 'Não obtive descrição nessa consulta'
    else
        descricao = descricao
    end

    local identity = func.getUserIdentity(user_id)
    local identity2 = func.getUserIdentity(medico_id)

    PerformHttpRequest(Webhooks['ConcluirConsulta'], function(err, text, headers) end, 'POST', json.encode({
        embeds = {
            {
                title = "Consulta concluida",
                thumbnail = {
                    url = imagem_medico[1]
                },
                fields = {
                    {
                        name = "ﾠ",
                        value = "Paciente  ```" .. pacientes .. "```\nMédico que agendou  ```" .. identity2.name .. " " .. identity2.firstname .. " #" .. medico_id .. "```\nMédico que concluiu ```" .. identity.name .. " " .. identity.firstname .. " #" .. user_id .. "```\nEspecialidade ```" .. especialidade .. "```\nData agendada ```" ..datamarcada.. "```\nStatus anterior da consulta ```" .. status .. "```\nDescrição ```" .. descricao .. "```"
                    }
                },
                footer = {
                    text = 'Hypee Resources | Medical',
                },
                color = 3092790
            }
        }
    }), { ['Content-Type'] = 'application/json' })
    
    
end

ContratarFuncionario = function(user_id,medico_id,cargo,imagem_medico_contratado)
    
    local identity = func.getUserIdentity(user_id)
    local identity2 = func.getUserIdentity(medico_id)
    
    PerformHttpRequest(Webhooks['ContratarFuncionario'], function(err, text, headers) end, 'POST', json.encode({
        embeds = {
            {
                title = "Contratação",
                thumbnail = {
                    url = imagem_medico_contratado[1]
                },
                fields = {
                    {
                        name = "ﾠ",
                        value = "Quem foi contratado  ```" .. identity.name .. " "..identity.firstname.." #"..user_id.."```\nQuem contratou  ```" .. identity2.name .. " " .. identity2.firstname .. " #" .. medico_id .. "```\nCargo ```" .. cargo .. "```"
                    }
                },
                footer = {
                    text = 'Hypee Resources | Medical',
                },
                color = 3092790
            }
        }
    }), { ['Content-Type'] = 'application/json' })
    
    
end

DemitirFuncionario = function(user_id,medico_id,cargo,imagem_medico_demitido)
    
    local identity = func.getUserIdentity(user_id)
    local identity2 = func.getUserIdentity(medico_id)
    
    PerformHttpRequest(Webhooks['DemitirFuncionario'], function(err, text, headers) end, 'POST', json.encode({
        embeds = {
            {
                title = "Demitir",
                thumbnail = {
                    url = imagem_medico_demitido[1]
                },
                fields = {
                    {
                        name = "ﾠ",
                        value = "Quem foi demitido  ```" .. identity.name .. " "..identity.firstname.." #"..user_id.."```\nQuem demitiu  ```" .. identity2.name .. " " .. identity2.firstname .. " #" .. medico_id .. "```\nCargo ```" .. cargo .. "```"
                    }
                },
                footer = {
                    text = 'Hypee Resources | Medical',
                },
                color = 3092790
            }
        }
    }), { ['Content-Type'] = 'application/json' })
    
    
end

PromoverFuncionario = function(user_id,medico_id,cargo,imagem_medico_promovido)
    
    local identity = func.getUserIdentity(user_id)
    local identity2 = func.getUserIdentity(medico_id)
    
    PerformHttpRequest(Webhooks['PromoverFuncionario'], function(err, text, headers) end, 'POST', json.encode({
        embeds = {
            {
                title = "Promoção concluida",
                thumbnail = {
                    url = imagem_medico_promovido[1]
                },
                fields = {
                    {
                        name = "ﾠ",
                        value = "Quem foi promovido  ```" .. identity.name .. " "..identity.firstname.." #"..user_id.."```\nQuem promoveu  ```" .. identity2.name .. " " .. identity2.firstname .. " #" .. medico_id .. "```\nNovo cargo ```" .. cargo .. "```"
                    }
                },
                footer = {
                    text = 'Hypee Resources | Medical',
                },
                color = 3092790
            }
        }
    }), { ['Content-Type'] = 'application/json' })
    
    
end

RebaixarFuncionario = function(user_id,medico_id,cargo,imagem_medico_rebaixado)
    
    local identity = func.getUserIdentity(user_id)
    local identity2 = func.getUserIdentity(medico_id)
    
    PerformHttpRequest(Webhooks['RebaixarFuncionario'], function(err, text, headers) end, 'POST', json.encode({
        embeds = {
            {
                title = "Rebaixamento concluido",
                thumbnail = {
                    url = imagem_medico_rebaixado[1]
                },
                fields = {
                    {
                        name = "ﾠ",
                        value = "Quem foi rebaixado  ```" .. identity.name .. " "..identity.firstname.." #"..user_id.."```\nQuem rebaixou  ```" .. identity2.name .. " " .. identity2.firstname .. " #" .. medico_id .. "```\nNovo cargo ```" .. cargo .. "```"
                    }
                },
                footer = {
                    text = 'Hypee Resources | Medical',
                },
                color = 3092790
            }
        }
    }), { ['Content-Type'] = 'application/json' })
    
    
end

BonificarFuncionario = function(user_id,medico_id,valor,imagem_medico_bonificado)
    
    local identity = func.getUserIdentity(medico_id)
    local identity2 = func.getUserIdentity(user_id)
    
    PerformHttpRequest(Webhooks['BonificarFuncionario'], function(err, text, headers) end, 'POST', json.encode({
        embeds = {
            {
                title = "Bonificação",
                thumbnail = {
                    url = imagem_medico_bonificado[1]
                },
                fields = {
                    {
                        name = "ﾠ",
                        value = "Quem foi bonificado  ```" .. identity.name .. " "..identity.firstname.." #"..medico_id.."```\nQuem bonificou  ```" .. identity2.name .. " " .. identity2.firstname .. " #" .. user_id .. "```\nValor da bonificação ```" .. valor .. "```"
                    }
                },
                footer = {
                    text = 'Hypee Resources | Medical',
                },
                color = 3092790
            }
        }
    }), { ['Content-Type'] = 'application/json' })
    
    
end

PlanoSaude = function(user_id,medico_id,newDate,status,hospital,imagem_paciente)
    
    -- print(user_id,medico_id,newDate,status,hospital,imagem_paciente[1])
    local statusDoPlano = ''
    if newDate == nil then
        statusDoPlano = 'Adicionado'
    elseif newDate == 'Removido plano médico' then
        statusDoPlano = 'Removido'
    else
        statusDoPlano = 'Renovado'
    end
    print(statusDoPlano,status)
    local identity = func.getUserIdentity(medico_id)
    local identity2 = func.getUserIdentity(user_id)
    
    PerformHttpRequest(Webhooks['PlanoSaude'], function(err, text, headers) end, 'POST', json.encode({
        embeds = {
            {
                title = "Plano de saúde",
                thumbnail = {
                    url = imagem_paciente[1]
                },
                fields = {
                    {
                        name = "ﾠ",
                        value = "Paciente ```" .. identity.name .. " "..identity.firstname.." #"..medico_id.."```\nMédico  ```" .. identity2.name .. " " .. identity2.firstname .. " #" .. user_id .. "```\nStatus atual ```" .. statusDoPlano .. "```\nStatus antigo ```"..status.."```"
                    }
                },
                footer = {
                    text = 'Hypee Resources | Medical',
                },
                color = 3092790
            }
        }
    }), { ['Content-Type'] = 'application/json' })
    
    
end
