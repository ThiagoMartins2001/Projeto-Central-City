config = { 
    voice = {
        lang = 'pt-BR'
    },
    commands = {
        openTablet = 'tablethp',
    },
	utils = {
		defaultImage = "https://media.discordapp.net/attachments/1151556985163108492/1171893691548438548/user.png", -- Imagem padrão caso o avatar do usuário não exista
		photoWebhook = "https://discord.com/api/webhooks/1337978491953741835/VPDPB-65KyTvHG1CQsVZCbVF1DZ-rvPAxljZGVzP_iLx5sN-8GxqL7ZSTnZAY-giGN7S", -- URL do webhook que será utilizado para salvar as fotos, sem essa webhook não funcionará o sistema de fotos
	},
    money = {
        type = '$',
        text = 'Reais',
    },
    raiox = {
        tempoPorPartes = 5, -- Tempo em segundos. para terminar o raio X lembrese que são 6 partes do corpos então se for 2 é 12 segundos para realizar completamente 
    },
    plano_medico = {-- Para coletar o tempo plano médico tem duas formar export['HypeeMedical']:checkTimer(user_id,hospital) / Envia o tempo em dias do player; | export['HypeeMedical']:medicalPlan(user_id,hospital) // O plano médico é possivel utilizar de varias formas, para tratamento gratuito durante o tempo do plano médico.
        duration = 7, -- O Tempo é em dias da duração do plano medico
    },
    options_consulta = {
        [1] = "Cliníco Geral",
        [2] = "Psicologia",
        [3] = "Farmaceutico",
        [4] = "Psiquiatria",
        [5] = "Cirurgião Plástico",
    },
    hospitais = {
        ['Hospital-Central'] = {
            customLogo = 'https://cdn.discordapp.com/attachments/1321964234942320660/1330343660562157639/Sem_Titulo-4.png?ex=67e3fcd5&is=67e2ab55&hm=34409cf7b63d804e61e7197bb6378692524667caab7f20d1d95d30cde41b815d&', -- Caso queira colocar uma logo personalizada coloque ( customLogo = 'url' ) caso não queira logo, é deseja usar a default basta deixar false.
            colorPadrao = '#4a7bca', -- Cor tematica do tablet.
            

            permissions = {
                
                consultas = { -- PAGINA DE CONSULTAS
                pagina = { 'Estagiario', 'Funcionarios', 'Direçao','MedicoChefe'},
                concluir = { 'Estagiario', 'Funcionarios', 'Direçao','MedicoChefe'},
                visualizar = { 'Estagiario', 'Funcionarios', 'Direçao','MedicoChefe'},
                apagar = { 'Direçao'},
            },
            
            financeiro = { -- PAGINA DO BANCO
                pagina = { 'Estagiario', 'Funcionarios', 'Direçao','MedicoChefe'},
                sacar = { 'Direçao'},
                depositar = { 'Estagiario', 'Funcionarios', 'Direçao','MedicoChefe'},
            },
            
            funcionarios = { -- PAGINA DE GERENCIAMENTO DE FUNCIONARIOS E VISUALIZAÇÃO.
                pagina = { 'Estagiario', 'Funcionarios', 'Direçao'},
                contratar = { 'Direçao','MedicoChefe'},
                promover = { 'Direçao','MedicoChefe'},
                rebaixar = { 'Direçao','MedicoChefe'},
                demitir = { 'Direçao','MedicoChefe'},
                estatisticas = { 'Direçao','MedicoChefe'},
                bonificar = { 'Direçao'},
           
                },
            },

            Hierarchy = { -- O "PERMISSION" É DENTRO DO PROPRIO SCRIPT VOCÊ COLOCA O NOME QUE QUISER ALI É SOMENTE PARA TER ACESSO AS PAGINAS X CONFIGURADAS A CIMA
                [12] = { 
                    group = 'Paramedic', 
                    name = 'Diretor Geral',
                    permission = 'Direçao', 
                },
                [11] = { 
                    group = 'Paramedic', 
                    name = 'Direção Adjunta',
                    permission = 'Direçao', 
                },
                [10] = { 
                    group = 'Paramedic', 
                    name = 'Coordenador',
                    permission = 'Direçao', 
                },
                [9] = { 
                    group = 'Paramedic', 
                    name = 'Médico Auditor',
                    permission = 'Direçao', 
                },
                [8] = { 
                    group = 'Paramedic', 
                    name = 'Supervisor',
                    permission = 'Direçao', 
                },
                [7] = { 
                    group = 'Paramedic', 
                    name = 'Médico Chefe',
                    permission = 'MedicoChefe', 
                },
                [6] = { 
                    group = 'Paramedic', 
                    name = 'Médico Especialista',
                    permission = 'Funcionarios', 
                },
                [5] = { 
                    group = 'Paramedic', 
                    name = 'Médico Residente',
                    permission = 'Funcionarios', 
                },
                [4] = { 
                    group = 'Paramedic', 
                    name = 'Paramédico',
                    permission = 'Funcionarios', 
                },
                [3] = { 
                    group = 'Paramedic', 
                    name = 'Enfermeiro',
                    permission = 'Funcionarios', 
                },
                [2] = { 
                    group = 'Paramedic', 
                    name = 'Téc.Enfermagem',
                    permission = 'Funcionarios', 
                },
                [1] = { 
                    group = 'Paramedic', 
                    name = 'Estagiario',
                    permission = 'Estagiario', 
                },
            },

            Blips = {
                Coord = vector3(302.30,-589.55,43.27), -- Cordenada do blip do atendimento na recepção
                Radius = 15.0, -- Distancia que será possivel ver o blip de atendimento
                RadiusButtonPress = 3.0, -- Distancia necessaria para acessar o atendimento
                Marker = function(v) -- Blip do atendimento
                    local r,g,b = 0,255,130
                    DrawMarker(32,v[1],v[2],v[3]-0.5,0,0,0,0,0.0,0.0,0.4,0.4,0.4,r,g,b,150,0,0,0,1)
                end,
            },
            
            Sound = {
                Coord = vector3(310.10,-585.65,43.27), -- Localização aonde irá ficar alto falante central do hospital
                Radius = 15.0, -- Distancia max que irá conseguir escutar o chamado.
                Aviso = function(namePaciente,nameMedico) -- C
                    return 'Atenção paciente, '..namePaciente..', dirija-se até a sala de emergência e procure o médico '..nameMedico..'!'
                end,
            },
            
            Gesso = {
                ColocarGessoTimer = 7000, -- 5 SEGUNDOS PARA COLOCAR O GESSO
                RetirarGessoTimer = 7000, -- 5 SEGUNDOS PARA REMOVER O GESSO

                Coords = {
                    { 332.35,-585.59,38.33,10}, -- X,Y,Z,RADIUS
                },
                
                -- 1	Masks
                -- 2	Hair Styles
                -- 3	Torsos
                -- 4	Legs
                -- 5	Bags and Parachutes
                -- 6	Shoes
                -- 7	Accessories
                -- 8	Undershirts
                -- 9	Body Armors
                -- 10	Decals
                -- 11	Tops

                Roupas = {
                    ['MASCULINO'] = { -- MASCULINO                               
                        [9] = { part = "Cabeça", part_data = {142,0}, default = { 0,0 } },
                        [5] = { part = "Peito", part_data = {214,0}, default = { 0,0 } },
                        [9] = { part = "Braço esquerdo", part_data = {6,0}, default = { 0,0 } },
                        [9] = { part = "Braço direito", part_data = {152,0}, default = { 0,0 } },
                        [9] = { part = "Perna esquerda", part_data = {172,0}, default = { 0,0 } },
                        [9] = { part = "Perna direita", part_data = {61,0}, default = { 0,0 } },
                    },
                    ['FEMININO'] = { -- FEMININO
                        [5] = { part = "Cabeça", part_data = {0,0}, default = { 0,0 } },
                        [6] = { part = "Peito", part_data = {668,0}, default = { 0,0 } },
                        [8] = { part = "Braço esquerdo", part_data = {290,0}, default = { 0,0 } },
                        [8] = { part = "Braço direito", part_data = {291,0}, default = { 0,0 } },
                        [7] = { part = "Perna esquerda", part_data = {167,0}, default = { 0,0 } },
                        [7] = { part = "Perna direita", part_data = {163,0}, default = { 0,0 } },
                    }
                },

                animColocarGesso = function()
                    local playerPed = PlayerPedId()
                    RequestAnimDict("amb@prop_human_parking_meter@female@idle_a")
                    while not HasAnimDictLoaded("amb@prop_human_parking_meter@female@idle_a") do
                        Wait(500)
                    end
                    TaskPlayAnim(playerPed, "amb@prop_human_parking_meter@female@idle_a", "idle_a_female", 8.0, -8, -1, 1, 1, 1, 1, 1)
                end,

                animRetirarGesso = function()
                    local playerPed = PlayerPedId()
                    RequestAnimDict("amb@prop_human_parking_meter@female@idle_a")
                    while not HasAnimDictLoaded("amb@prop_human_parking_meter@female@idle_a") do
                        Wait(500)
                    end
                    TaskPlayAnim(playerPed, "amb@prop_human_parking_meter@female@idle_a", "idle_a_female", 8.0, -8, -1, 1, 1, 1, 1, 1)
                end,

                Marker = function(v) -- Blip do atendimento
                    local r,g,b = 0,255,130
                    DrawMarker(27,v[1],v[2],v[3]-1.0,0,0,0,0,0.0,0.0,0.8,0.8,0.8,r,g,b,150,0,0,0,1)
                end,



            },
            

            Metas = { 
                [1] = {
                    Nome = 'Doações', -- Nome que será exibido da meta.
                    Meta = 30000, -- Valor da meta
                    getMeta = function(source,user_id,valorTotal) -- É NECESSARIO RETORNAR O VALOR ATUAL DA META, E LOGO APÓS RETORNAR A % DE 0 A 100.
                        return 15000,97 
                    end,
                },
                [2] = {
                    Nome = 'Atendimentos', -- Nome que será exibido da meta.
                    Meta = 30000, -- Valor da meta
                    getMeta = function(source,user_id,valorTotal) -- É NECESSARIO RETORNAR O VALOR ATUAL DA META, E LOGO APÓS RETORNAR A % DE 0 A 100.
                        return 5000,10 
                    end,
                },
            }
        },


    },
}

