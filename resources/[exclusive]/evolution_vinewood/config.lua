Config = {}
---# O SCRIPT ESTÁ CONFIGURADO INICIALMENTE PARA QUALQUER FRAMEWORK "" STANDALONE "", PORÉM FOI DEIXADO OPCIONAL A BAIXO CASO QUEIRAM TESTAR EM
---# FRAMEWORKS GRINGAS.

---# THE SCRIPT IS INITIALLY CONFIGURED FOR ANY FRAMEWORK, BUT IT HAS BEEN LEFT OPTIONAL BELOW IF YOU WANT TO TEST IT IN
---# GRINGAS FRAMEWORKS.
Config.Framework = 'standalone' -- CONFIGURE A FRAMEWORK

Config.Command = 'letreiro' -- COMANDO PARA ABRIR O PAINEL

Config.AuthorizedGroups = {
    group = { -- CONFIGURAÇÃO DE PERMISSÃO, SE ESTIVER STANDALLONE, USE APENAS O IDENTIFY A BAIXO
        'Admin'
    },
    identifier = { -- PARA QUALQUER BASE
        'steam:110000146f62875'
    }
}

Config.Locales = {
    ['vinewood'] = "Salvador",
    ['sign'] = "Vinewood System",
    ['text'] = "Digite até 8 Letras a baixo para o Letreiro",
    ['color'] = "Cor",
    ['text_edited'] = "Edite o Texto antes e salve!",
    ['type_text'] = "Vinewood"
}

Config.FileName = 'textSettings.json'

Config.Coords = {
    [1] = {
        coordinate = vector3(668.46820000, 1211.08500000, 326.05880000),
        heading = 343.5
    },
    [2] = {
        coordinate = vector3(681.39440000, 1204.17500000, 326.28830000),
        heading = 344.99996948242
    },
    [3] = {
        coordinate = vector3(696.22340000, 1199.10800000, 326.36760000),
        heading = 344.99996948242
    },
    [4] = {
        coordinate = vector3(711.22370000, 1196.96700000, 326.22170000),
        heading = 344.99996948242
    },
    [5] = {
        coordinate = vector3(728.87360000, 1194.60300000, 326.56200000),
        heading = 344.99996948242
    },
    [6] = {
        coordinate = vector3(745.75310000, 1187.6, 327.80650000),
        heading = 344.99996948242
    },
    [7] = {
        coordinate = vector3(763.69390000, 1184.89400000, 329.14790000),
        heading = 344.99996948242
    },
    [8] = {
        coordinate = vector3(776.69390000, 1174.89400000, 326.14790000),
        heading = 344.99996948242
    },
}
