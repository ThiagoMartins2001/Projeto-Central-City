local ferris_blip_coords = vector3(-1661.79,-1126.88,13.69) -- Coordenadas do blip
local ferris_wheel_coords = vector3(-1664.08,-1126.58,31.15) -- Coordenadas centrais da roda gigante
local rideInProgress = false -- Controle do estado do passeio
local gondolas = {} -- Armazenará as gôndolas adicionais
local ferrisWheel -- Variável para armazenar o objeto da roda gigante
local rotationInProgress = false -- Controle para evitar múltiplas rotações simultâneas
local stopRequested = false -- Controle para solicitar a pausa da rotação
local maxPlayersPerGondola = 3 -- Máximo de jogadores por gôndola
local previousCameraMode = 0 -- Variável global para armazenar o modo de câmera anterior
local playerInGondola = false -- Verifica se o jogador está em uma gôndola
CreateThread(function()
    RemoveIpl('ferris_finale_Anim')
    print("Roda-gigante do pier removida!")
end)



-- Variáveis de configuração de posição e rotação dos jogadores dentro da gôndola
local gondolaOffsets = {
    [1] = {x = -0.3, y = 0.0, z = -2.0, rotation = 180.0}, -- Posição e rotação do jogador 1
    [2] = {x = 0.0, y = 0.0, z = -2.0, rotation = 180.0},  -- Posição e rotação do jogador 2 (central)
    [3] = {x = 0.3, y = 0.0, z = -2.0, rotation = 180.0},  -- Posição e rotação do jogador 3
}

-- Função para criar gôndolas adicionais e sincronizar com a roda gigante
function CreateAndSyncGondolas()
    local numGondolas = 16 -- Número de gôndolas a serem adicionadas
    local radius = 16.0 -- Raio da roda gigante (ajustado para sincronizar com o prop)
    local gondola_model = GetHashKey("prop_ferris_car_01")
    local ferris_wheel_model = GetHashKey("p_ferris_wheel_amo_l2")

    RequestModel(gondola_model)
    RequestModel(ferris_wheel_model)
    
    while not HasModelLoaded(gondola_model) or not HasModelLoaded(ferris_wheel_model) do
        Citizen.Wait(0)
    end

    -- Criar o prop da roda gigante no centro, abaixado em 15.7 unidades na coordenada Z
    ferrisWheel = CreateObject(ferris_wheel_model, ferris_wheel_coords.x, ferris_wheel_coords.y, ferris_wheel_coords.z , false, false, false)
    SetEntityCoordsNoOffset(ferrisWheel, ferris_wheel_coords.x, ferris_wheel_coords.y, ferris_wheel_coords.z , false, false, false)

    -- Forçar a roda gigante a ser sempre visível
    SetEntityAsMissionEntity(ferrisWheel, true, true) -- Faz com que o GTA não descarregue o objeto
    SetEntityLodDist(ferrisWheel, 10000) -- Aumenta a distância de renderização para 10 km
    FreezeEntityPosition(ferrisWheel, true)

    -- Criação e sincronização das gôndolas com a roda gigante
    for i = 1, numGondolas do
        local angle = (i / numGondolas) * 360
        local yOffset = radius * math.cos(math.rad(angle))
        local zOffset = -radius * math.sin(math.rad(angle)) -- Inverte o sentido de rotação
        local xOffset = 0.0 -- A posição lateral é fixa

        local gondola = CreateObject(gondola_model, ferris_wheel_coords.x + xOffset, ferris_wheel_coords.y + yOffset, ferris_wheel_coords.z + zOffset, false, false, false)
        SetEntityAsMissionEntity(gondola, true, true) -- Evitar descarregamento da gôndola
        SetEntityLodDist(gondola, 10000) -- Aumenta a distância de renderização das gôndolas
        FreezeEntityPosition(gondola, true)
        table.insert(gondolas, {entity = gondola, angle = angle, players = 0}) -- Adicionando o contador de jogadores por gôndola
    end
end

-- Função para sincronizar o movimento da roda gigante e das gôndolas com pausas suaves
function SyncFerrisWheelAndGondolasRotationWithSmoothPause()
    if rotationInProgress then return end -- Verifica se já está rodando para evitar múltiplas execuções
    rotationInProgress = true

    Citizen.CreateThread(function()
        local rotationSpeed = -0.05 -- Velocidade de rotação inicial negativa para girar no sentido contrário
        local minRotationSpeed = -0.01 -- Velocidade mínima ao parar
        local maxRotationSpeed = -0.05 -- Velocidade máxima quando em movimento normal
        local radius = 15.45 -- Raio da roda gigante
        local currentAngle = 0.0 -- Ângulo inicial
        local pauseDuration = 5000 -- Duração da pausa em milissegundos (5 segundos)
        local pauseThreshold = 0.1 -- Tolerância de ângulo para parar no ponto mais baixo

        while true do
            Citizen.Wait(0) -- Espera 0ms entre cada atualização para que a rotação seja contínua

            -- Encontrar a gôndola mais próxima do ponto mais baixo (ou do marcador)
            local nearestGondola = GetNearestGondolaToBottom()

            -- Verifica se a gôndola mais próxima está no ponto mais baixo (perto do marcador)
            if math.abs(nearestGondola.angle % 360) < pauseThreshold and not stopRequested then
                stopRequested = true

                -- Suaviza a rotação antes de parar
                while math.abs(rotationSpeed) > math.abs(minRotationSpeed) do
                    rotationSpeed = rotationSpeed + 0.001 -- Diminui gradualmente a velocidade
                    Citizen.Wait(50)
                end

                -- Pausa a roda gigante para permitir o embarque/desembarque
                Citizen.Wait(pauseDuration)

                -- Suaviza o retorno à velocidade normal
                while math.abs(rotationSpeed) < math.abs(maxRotationSpeed) do
                    rotationSpeed = rotationSpeed - 0.001 -- Aumenta gradualmente a velocidade
                    Citizen.Wait(50)
                end

                stopRequested = false -- Permitir que a roda pare na próxima gôndola
            end

            -- Incrementar o ângulo para simular a rotação
            currentAngle = currentAngle + rotationSpeed
            if currentAngle <= -360 then
                currentAngle = 0.0
            end

            -- Aplicar a rotação no eixo X para simular a "rolagem" no sentido contrário
            SetEntityRotation(ferrisWheel, currentAngle, 0.0, 0.0, 2, true)

            for _, gondolaData in ipairs(gondolas) do
                local gondola = gondolaData.entity
                local angle = gondolaData.angle - rotationSpeed -- Inverte a direção da rotação

                -- Atualiza o ângulo para a próxima rotação
                gondolaData.angle = angle % 360 -- Garante que o ângulo esteja sempre entre 0 e 360

                -- Calcula a nova posição da gôndola ao redor do eixo
                local yOffset = -radius * math.cos(math.rad(angle)) -- Inverte o sinal de yOffset
                local zOffset = radius * math.sin(math.rad(angle)) -- Inverte o sinal de zOffset

                -- Atualiza a posição da gôndola
                SetEntityCoords(gondola, ferris_wheel_coords.x, ferris_wheel_coords.y + yOffset, ferris_wheel_coords.z + zOffset, false, false, false, true)

                -- Mantém a orientação original da gôndola
                SetEntityRotation(gondola, 0.0, 0.0, 0.0, 2, true)
            end
        end
    end)
end

-- Função para encontrar a gôndola mais próxima ao ponto mais baixo (ou do marcador)
function GetNearestGondolaToBottom()
    local bottomCoords = ferris_blip_coords -- Coordenadas do ponto mais baixo
    local nearestGondola = nil
    local minDistance = math.huge

    for _, gondolaData in ipairs(gondolas) do
        local gondolaCoords = GetEntityCoords(gondolaData.entity)
        local distance = #(bottomCoords - gondolaCoords)
        if distance < minDistance then
            minDistance = distance
            nearestGondola = gondolaData
        end
    end

    return nearestGondola
end

-- Função para iniciar o passeio na roda gigante com transição suave
function StartFerrisWheelRide(playerPed, nearestGondola)
    nearestGondola.players = nearestGondola.players + 1 -- Incrementa o número de jogadores na gôndola
    rideInProgress = true
    playerInGondola = true -- Define que o jogador está na gôndola

    -- Salvar o modo de câmera atual antes de forçar a visão em 1ª pessoa
    previousCameraMode = GetFollowPedCamViewMode()

    -- Aplicar efeito de fade-out ao iniciar o passeio
    DoScreenFadeOut(1000)
    Citizen.Wait(1000)

    -- Forçar a visão em 1ª pessoa
    SetFollowPedCamViewMode(4)

    -- Posicionar o jogador na gôndola, ajustando sua posição e rotação conforme o número de jogadores
    local playerPosition = nearestGondola.players -- Número de jogadores na gôndola
    local offset = gondolaOffsets[playerPosition] -- Usar o offset e rotação da configuração

    -- Anexar o jogador à gôndola com o offset de posição e rotação
    AttachEntityToEntity(playerPed, nearestGondola.entity, 0, offset.x, offset.y, offset.z, 0, 0, offset.rotation, false, false, false, false, 2, true)

    -- Iniciar a animação de sentar com suavização
    RequestAnimDict("timetable@reunited@ig_10")
    while not HasAnimDictLoaded("timetable@reunited@ig_10") do
        Citizen.Wait(0)
    end
    TaskPlayAnim(playerPed, "timetable@reunited@ig_10", "base_amanda", 8.0, -8.0, -1, 1, 0, false, false, false)

    -- Suavemente aplicar o efeito de fade-in após o embarque
    DoScreenFadeIn(2000)

    -- Iniciar a sincronização da rotação e posição da gôndola (se não estiver em andamento)
    SyncFerrisWheelAndGondolasRotationWithSmoothPause()
end

-- Função para sair da gôndola com transição suave
function ExitFerrisWheelRide(playerPed, nearestGondola)
    -- Evitar múltiplas saídas simultâneas
    if not playerInGondola then
        return
    end

    nearestGondola.players = nearestGondola.players - 1 -- Reduz o número de jogadores na gôndola
    rideInProgress = false
    playerInGondola = false -- Define que o jogador saiu da gôndola

    -- Aplicar efeito de fade-out ao sair do passeio
    if not IsScreenFadedOut() then
        DoScreenFadeOut(1000)
        Citizen.Wait(1000)
    end

    -- Restaurar o modo de câmera anterior
    SetFollowPedCamViewMode(previousCameraMode)

    -- Desembarcar e parar a animação
    ClearPedTasks(playerPed)
    DetachEntity(playerPed, true, true)
    SetEntityCoords(playerPed, ferris_blip_coords.x, ferris_blip_coords.y, ferris_blip_coords.z, false, false, false, true)

    -- Aplicar efeito de fade-in após o desembarque
    if not IsScreenFadedIn() then
        DoScreenFadeIn(2000)
    end
end


-- Função para desenhar o texto 3D
function DrawText3D(x, y, z, text)
    local onScreen, _x, _y = World3dToScreen2d(x, y, z)
    local px, py, pz = table.unpack(GetGameplayCamCoords())

    SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x, _y)
    local factor = (string.len(text)) / 370
    DrawRect(_x, _y + 0.0125, 0.015 + factor, 0.03, 41, 11, 41, 68)
end

-- Função para adicionar um blip ao mapa
Citizen.CreateThread(function()
    local blip = AddBlipForCoord(ferris_blip_coords.x, ferris_blip_coords.y, ferris_blip_coords.z)
    SetBlipSprite(blip, 479) -- Ícone do blip
    SetBlipDisplay(blip, 4) -- Exibição no mapa e radar
    SetBlipScale(blip, 0.8) -- Tamanho do blip
    SetBlipColour(blip, 3) -- Cor do blip
    SetBlipAsShortRange(blip, true) -- Alcance curto

    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString("Roda Gigante")
    EndTextCommandSetBlipName(blip)
end)

-- Função modificada para o loop principal para verificar a saída
Citizen.CreateThread(function()
    CreateAndSyncGondolas() -- Criar as gôndolas
    SyncFerrisWheelAndGondolasRotationWithSmoothPause() -- Iniciar a sincronização da rotação com pausas suaves (uma vez)

    while true do
        Citizen.Wait(0)
        local playerPed = PlayerPedId()
        local playerCoords = GetEntityCoords(playerPed)

        -- Desenha o marcador no local da roda gigante
        DrawMarker(1, ferris_blip_coords.x, ferris_blip_coords.y, ferris_blip_coords.z - 1.0, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 0.5, 0, 255, 0, 100, false, true, 2, nil, nil, false)

        -- Verifica a proximidade do jogador e exibe a mensagem de interação
        local nearestGondola = GetNearestGondolaToBottom()
        if #(playerCoords - ferris_blip_coords) < 1.5 and not playerInGondola and nearestGondola.players < maxPlayersPerGondola then
            DrawText3D(ferris_blip_coords.x, ferris_blip_coords.y, ferris_blip_coords.z + 0.18, "Pressione [E] para entrar na roda gigante")

            -- Inicia o passeio ao pressionar "E" somente se a gôndola estiver na posição mais baixa
            if IsControlJustReleased(0, 38) then -- Tecla "E"
                StartFerrisWheelRide(playerPed, nearestGondola)
            end
        end

        -- Verifica se o jogador está na gôndola durante o passeio
        if playerInGondola then
            -- Desabilita a tecla F6 (código 167) e todos os controles de movimento durante o passeio
            DisableControlAction(0, 167, true)
            DisableControlAction(0, 30, true) -- Desabilita movimento no eixo X
            DisableControlAction(0, 31, true) -- Desabilita movimento no eixo Y
            DisableControlAction(0, 32, true) -- Desabilita andar para frente
            DisableControlAction(0, 33, true) -- Desabilita andar para trás
            DisableControlAction(0, 34, true) -- Desabilita andar para esquerda
            DisableControlAction(0, 35, true) -- Desabilita andar para direita

            -- Verifica se o jogador deseja sair da gôndola apenas no ponto mais baixo
            if IsControlJustReleased(0, 73) then -- Tecla "X"
                ExitFerrisWheelRide(playerPed, nearestGondola)
            end
        end
    end
end)
