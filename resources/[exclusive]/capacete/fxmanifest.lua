fx_version 'cerulean'
game 'gta5'

description 'Script automático de capacete para policiais em moto'
author 'SeuNome'
version '1.0.0'

shared_scripts {
    '@vrp/lib/utils.lua' -- ou seu caminho correto para o vRP
}

client_scripts {
    'client.lua'
}

server_scripts {
    '@vrp/lib/utils.lua', -- caso o vRP seja necessário no server também
    'server.lua'
}
