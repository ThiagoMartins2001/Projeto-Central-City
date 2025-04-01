parts = {
    ---@param partName, initialPrice, incrementPrice
    [0] = {'Aerofólio',1,50}, 
    [1] = {'Parachoque F',10,0},
    [2] = {'Parachoque T',10,0}, 
    [3] = {'Saias',5000,525}, 
    [4] = {'Escapamento',50,300}, 
    [5] = {'Rool-Cage',5000,525}, 
    [6] = {'Grade',5000,525}, 
    [7] = {'Capô',5000,525}, 
    [8] = {'Paralama',5000,525}, 
    [10] = {"Teto",2000,1000}, 
    [11] = {"Motor",2000,1000}, 
    [12] = {'Freio',500,250}, 
    [13] = {'Transmissao',500,250}, 
    [14] = {'Buzina',10,0}, 
    [15] = {'Suspensão',200,250}, 
    [16] = {'Blindagem',200,250}, 
    [18] = {'Turbo',200,250},  
    [23] = {'Rodas',250,0},
    [24] = {'Traseira',0,0}, 
    [25] = {'PlacaPos',0,0}, 
    [29] = {'dashboard',0,0},
    [35] = {'Placa',200,250}, 
    [46] = {'Vidro',10,0}, 
    [48] = {'Decalque',10,0},  
    [28] = {'Ornamentos',10,0},
    [27] = {'Parabrisa',10,0},
    [29] = {'Painel',10,0},
    [30] = {'Relogio',10,0},
    [32] = {'Bancos',10,0},
    [33] = {'Volante',10,0},
    [31] = {'Portas',10,0},
    [42] = {'Forma',10,0},
    [43] = {'Aerial',10,0},
    [44] = {'Upper',10,0},
    [45] = {'Tanque',10,0},
    [46] = {'Janela',10,0},
    [19] = {'Subwoofer',0,0},
    [49] = {'Lightbar'},
    [95] = {'CustomTyres'},
    [96] = {'Blindagem-Pneu'},
}


ColorPrices = {
    carColor = 250,
    smoke = 300,
    neon = 400,
    wheel = 150
}

Premium = true -- Coloque true caso queira utilizar com ordem de serviço
BudgetDistance = 10 -- Caso use o sistema de orçamento, altera a area para limite para orçamento

UseArea = false
UseDistance = 15
Debug = true
MaxDiscount = 0.1 -- 10% do valor da ordem de serviço
AngularDetect = true -- Desative caso ja tenha um script de kit angulo
SoundEvent = 'sounds:Private' -- Evento de som
Commands = {
    panel = 'mecanicad', -- Painel de mecanico caso modo premium tiver ativada
    menu = 'mecanica' -- Abrir mecanica com prioridade fora de localizaçao
}

Markers = {
    id = 36,
    color = {
        255,255,255,50
    },
    scale = {
        1.0,1.3,1.0
    }
}

Dynamometers = {
    {
        coords = vec4(-361.1447,-112.486,38.696,337.053),
        platform = vec4(-361.1447,-112.486,38.696,337.053),
        --prop = `mist_dyno`, -- Caso nao queira que spawne prop, apagar essa linha
        offsets = vec3(0.2,0.0,0.0),
    },
    {
        coords = vec4(-325.65032958984,-138.40110778809,39.2096,248.33193969727),
        platform = vec4(-325.65032958984,-138.40110778809,39.2096,248.33193969727),
        --prop = `mist_dyno`, -- Caso nao queira que spawne prop, apagar essa linha
        offsets = vec3(0.0,0.0,0.0),
    },
}

ServerName = 'Trigueiro Network'
Tunners = {
    {
        --perm = {'admin.permissao'},
        name = 'Trigueiro Custom',
        coords = vector3(556.35,-190.60,54.51),
        hiddenParts = {},
        
    },
    {
        --perm = {'admin.permissao'},
        name = 'Trigueiro Custom',
        coords = vector3(556.06,-183.46,54.51),
        hiddenParts = {},
        
    },
    {
        --perm = {'admin.permissao'},
        name = 'Trigueiro Custom',
        coords = vector3(556.17,-175.40,54.51),
        hiddenParts = {},
        
    },
    {
        --perm = {'admin.permissao'},
        name = 'Trigueiro Custom',
        coords = vector3(555.64,-198.68,54.52),
        hiddenParts = {},
        
    },
    {
        --perm = {'admin.permissao'},
        name = 'Trigueiro Custom',
        coords = vector3(110.57,6627.47,31.79),
        hiddenParts = {},
        
    },
    {
        --perm = {'admin.permissao'},
        name = 'Trigueiro Custom',
        coords = vector3(103.53,6622.53,31.83),
        hiddenParts = {},
        
    },
    {
        --perm = {'admin.permissao'},
        name = 'Trigueiro Custom',
        coords = vector3(557.46,-168.31,54.55),
        hiddenParts = {},
        
    }
}

functions = {
    [46] = SetVehicleWindowTint,
    [35] = SetVehicleNumberPlateTextIndex,
    [18] = ToggleVehicleMod,
}

carParts = {
    [0] = {
        {
            itemIndex = 98,
            itemName = 'reparar',
            itemSize = 'large',
            cam = 'none',
            installed = false,
            itemOptions = {
                {
                    name = 'Lavar',
                    price = 50,
                    purchased = false
                },
                {
                    name = 'Motor',
                    price = 250,
                    purchased = false
                },
                {
                    name = 'Revisão completa',
                    price = 400,
                    purchased = false
                },
            },
        },
    },
    [1] = {
        {
            itemIndex = 46,
            itemName = 'janelas',
            itemSize = 'small',
            cam = 'vidro',
            installed = false,
            itemOptions = {
               --[[  {
                    name = 'janela 1',
                    price = '1222',
                    purchased = false
                },
                {
                    name = 'janela 2',
                    price = '2',
                    purchased = true
                }, ]]
            },
        },
        {
            itemIndex = 11,
            itemName = 'motor',
            cam = 'capô',
            itemSize = 'large',
            installed = false,
            itemOptions = {
                --[[ {
                    name = 'dada',
                    price = '2',
                    purchased = false
                } ]]
            }
        },
    },
    [2] = {
        {
            itemName = 'parachoque',
            itemSize = 'medium',
            installed = false,
            itemOptions = {
              --[[   {
                    name = '',
                    price = '',
                    purchased = false
                } ]]
            },
            subCategories = {
                {
                    itemIndex = 1,
                    itemName = 'frontal',
                    cam = 'parachoque-dianteiro',
                    itemOptions = {
                     --[[    {
                            name = 'sport',
                            price = 100,
                        },
                        {
                            name = 'sport2',
                            price = 200,
                        },
                        {
                            name = 'sport3',
                            price = 300,
                        }, ]]
                    },
                    itemSize ='small'
                },
                {
                    itemIndex = 2,
                    itemName = 'traseiro',
                    cam = 'parachoque-traseiro',
                    itemSize ='medium',
                    itemOptions = {
                       --[[  {
                            name = 'sport',
                            price = 100,
                        },
                        {
                            name = 'sport2',
                            price = 200,
                        },
                        {
                            name = 'sport3',
                            price = 300,
                        }, ]]
                    },
                },
            }
        },
        {
            itemIndex = 12,
            itemName = 'freios',
            cam ='traseira',
            itemSize = 'medium',
            installed = false,
            itemOptions = {
               --[[  {
                    name = '',
                    price = '',
                    purchased = false
                } ]]
             }
        },
    }, 
    [3] = {
        {
            itemIndex = 14,
            itemName = 'buzinas',
            itemSize = 'small',
            cam= 'none',
            installed = false,
            itemOptions = {
               --[[  {
                    name = '',
                    price = '',
                    purchased = false
                } ]]
             }
        },
        {
            itemIndex = 6,
            itemName = 'grades',
            cam = 'grelha',
            itemSize = 'medium',
            installed = false,
            itemOptions = {
               --[[  {
                    name = '',
                    price = '',
                    purchased = false
                } ]]
             }
        },
        {
            itemName = 'rodas',
            itemSize = 'small',
            cam = 'traseira',
            installed = false,
            frontDisplacement = 0.1,
            frontRotation = 0.3,
            rearDisplacement = 0.5,
            rearRotation = 0.7,
            subCategories = {
                {
                    itemIndex = 23,
                    itemName = 'tipo',
                    cam = 'traseira',
                   --[[  itemOptions = { ]]
                       --[[  {
                            name = 'sport',
                            price = 100,
                        },
                        {
                            name = 'sport2',
                            price = 200,
                        },
                        {
                            name = 'sport3',
                            price = 300,
                        }, ]]
                    --[[ }, ]]
                    itemSize ='small'
                },
                {
                    itemName = 'cor',
                    itemIndex = 99,
                    cam = 'traseira',
                    colorPresets = {'#FFFF', '#3FFF', 'blue'},
                    itemSize ='small'
                },
                {
                    itemName = 'acessórios',
                    itemSize ='small',
                    cam = 'traseira',
                    subCategories = {
                        {
                            itemIndex = 95,
                            itemName = 'Custom',
                            cam = 'traseira',
                            itemOptions = {
                                {
                                    name = 'Original',
                                    price = 0,
                                },
                                {
                                    name = 'Custom',
                                    price = 100,
                                },
                               
                            },
                            itemSize ='small'
                        },
                        {
                            itemIndex = 96,
                            itemName = 'blindagem-pneu',
                            cam = 'traseira',
                            itemSize ='small',
                            itemOptions = {
                                {
                                    name = 'Original',
                                    price = 0,
                                },
                                {
                                    name = 'Blindada',
                                    price = 100,
                                },
                            },
                        },
                        {
                            itemIndex = 97,
                            itemName = 'Fumaça',
                            cam = 'traseira',
                            itemSize ='small',
                            itemOptions = {
                                {
                                    name = 'sport',
                                    price = 100,
                                },
                            },
                        },
                    }
                },
                 
                {
                    itemName = 'modificações',
                    itemOptions = {},
                    itemSize ='small'
                },
            }
            
        },
    },
    [4] = {
        {
            itemName = 'cores',
            itemSize = 'small',
            installed = false,
            itemIndex = 200,
            primaryColor = '#FFFFFF',
            secondaryColor = '#FFFFFF',
            selectedColorType = '',
            pearlyColor = ''
            
        },
        {
            itemIndex = 15,
            itemName = 'suspensao',
            cam = 'traseira',
            itemSize = 'large',
            installed = false,
            
            itemOptions = {
               --[[  {
                    name = '',
                    price = '',
                    purchased = false
                } ]]
             }
        },
    },
    [5] = {
        {
            itemIndex = 0,
            itemName = 'aerofolios',
            itemSize = 'large',
            cam = 'aerofólio',
            installed = false,
            itemOptions = {
                --[[ {
                    name = '',
                    price = '',
                    purchased = false
                } ]]
             }
        },
        {
            itemIndex = 24,
            itemName = 'traseira',
            itemSize = 'small',
            installed = false,
            itemOptions = {
               --[[  {
                    name = '',
                    price = '',
                    purchased = false
                } ]]
             }
        },
    },
    [6] = {
        {
            itemIndex = 3,
            itemName = 'saias',
            itemSize = 'medium',
            cam = 'saias',
            installed = false,
            itemOptions = {
                --[[ {
                    name = '',
                    price = '',
                    purchased = false
                } ]]
             }
        },
        {
            itemIndex = 4,
            itemName = 'escapamentos',
            itemSize = 'large',
            cam = 'escapamento',
            installed = false,
            itemOptions = {
               --[[  {
                    name = '',
                    price = '',
                    purchased = false
                } ]]
             }
        },
    },
    [7] = {
        {
            itemIndex = 48,
            itemName = 'decalques',
            itemSize = 'medium',
            installed = false,
            itemOptions = {
                --[[ {
                    name = '',
                    price = '',
                    purchased = false
                } ]]
             }
        },
       
        {
            itemName = 'neons',
            itemSize = 'large',
            installed = false,
            --[[ itemOptions = {
                {
                    name = 'Kit Neon',
                    price = 10,
                    purchased = false
                },
                {
                    name = 'Cor',
                    price = 10,
                    purchased = false
                },
            } ]]
            subCategories = {
                {
                    itemIndex = 100,
                    cam = 'neon',
                    itemName = 'KitNeon',
                    itemOptions = {
                        {
                            name = 'Original',
                            price = 100,
                        },
                        {
                            name = 'Neon',
                            price = 100,
                        },
                        
                    },
                    itemSize ='small'
                },
                {
                    itemIndex = 101,
                    cam = 'neon',
                    itemName = 'NeonColor',
                    itemOptions = {
                        {
                            name = 'Neon',
                            price = 100,
                        },
                        
                    },
                    itemSize ='small'
                },
            }

        },
        {
            itemName = 'farol',
            itemSize = 'medium',
            cam = 'farol',
            installed = false,
           --[[  itemOptions = {
                {
                    name = '',
                    price = '',
                    purchased = false
                }
             } ]]

            subCategories = {
                {
                    itemIndex = 42,
                    cam = 'farol',
                    itemName = 'Forma',
                    itemOptions = {
                       --[[  {
                            name = 'sport',
                            price = 100,
                        },
                        {
                            name = 'sport2',
                            price = 200,
                        },
                        {
                            name = 'sport3',
                            price = 300,
                        },  ]]
                    },
                    itemSize ='small'
                },
                {
                    itemIndex = 22,
                    cam = 'faroltype',
                    itemName = 'Farol',
                    cam = 'farol',
                    itemOptions = {
                        {
                            name = 'Normal',
                            price = 0,
                        },
                        {
                            name = 'Xenon',
                            price = 200,
                        },
                        
                    },
                    itemSize ='small'
                },
                {
                    itemIndex = 9999,
                    cam = 'faroltype',
                    cam = 'farol',
                    itemName = 'Cor',
                    itemOptions = {
                      --[[   {
                            name = 'sport',
                            price = 100,
                        },
                        {
                            name = 'sport2',
                            price = 200,
                        },
                        {
                            name = 'sport3',
                            price = 300,
                        },  ]]
                    },
                    itemSize ='small'
                },
            },
        },
    },
    [8] = {
        {
            itemIndex = 8,
            itemName = 'paralamas',
            itemSize = 'large',
            installed = false,
            cam = 'para-lama',
            itemOptions = {
               --[[  {
                    name = '',
                    price = '',
                    purchased = false
                } ]]
             }
        },
        {
            itemIndex = 7,
            itemName = 'capo',
            itemSize = 'small',
            cam = 'capô',
            installed = false,
            itemOptions = {
                --[[ {
                    name = '',
                    price = '',
                    purchased = false
                } ]]
             }
        },
        
    },
    [9] = {
        {
            itemIndex = 13,
            itemName = 'transmissao',
            itemSize = 'large',
            cam = 'capô',
            installed = false,
            itemOptions = {
               --[[  {
                    name = '',
                    price = '',
                    purchased = false
                } ]]
             }
        },
        {
            itemIndex = 18,
            itemName = 'turbo',
            itemSize = 'medium',
            cam = 'capô',
            installed = false,
            itemOptions = {
               --[[  {
                    name = '',
                    price = '',
                    purchased = false
                } ]]
             }
        },
    },
    [10] = {
        {
            itemIndex = 16,
            itemName = 'blindagem',
            itemSize = 'small',
            cam = 'none',
            installed = false,
            itemOptions = {
              --[[   {
                    name = '',
                    price = '',
                    purchased = false
                } ]]
             }
        },
        {
            itemIndex = 5,
            itemName = 'gaiola',
            itemSize = 'small',
            cam = 'roll-cage',
            installed = false,
            itemOptions = {
                --[[ {
                    name = '',
                    price = '',
                    purchased = false
                } ]]
             }
        },
        {
            itemIndex = 10,
            itemName = 'Teto',
            itemSize = 'small',
            cam = 'teto',
            installed = false,
            itemOptions = {
                --[[ {
                    name = '',
                    price = '',
                    purchased = false
                } ]]
            }
        },
    },
    [11] = {
        {
            itemName = 'interior',
            itemSize = 'medium',
         
            installed = false,
            itemOptions = {
              --[[   {
                    name = '',
                    price = '',
                    purchased = false
                } ]]
            },
            subCategories = {
                {
                    itemIndex = 27,
                    cam = 'interior',
                    itemName = 'Parabrisa',
                    itemOptions = {
                     --[[    {
                            name = 'sport',
                            price = 100,
                        },
                        {
                            name = 'sport2',
                            price = 200,
                        },
                        {
                            name = 'sport3',
                            price = 300,
                        },  ]]
                    },
                    itemSize ='small'
                },
                {
                    itemIndex = 28,
                    cam = 'interior',
                    itemName = 'Ornamentos',
                    itemOptions = {
                       --[[  {
                            name = 'sport',
                            price = 100,
                        },
                        {
                            name = 'sport2',
                            price = 200,
                        },
                        {
                            name = 'sport3',
                            price = 300,
                        },  ]]
                    },
                    itemSize ='small'
                },
                {
                    itemIndex = 29,
                    itemName = 'Painel',
                    cam = 'interior',
                    itemOptions = {
                       --[[  {
                            name = 'sport',
                            price = 100,
                        },
                        {
                            name = 'sport2',
                            price = 200,
                        },
                        {
                            name = 'sport3',
                            price = 300,
                        },  ]]
                    },
                    itemSize ='small'
                },
                {
                    itemIndex = 30,
                    itemName = 'Relógio',
                    
                    cam = 'interior',
                    itemOptions = {
                      --[[  {
                             name = 'sport',
                            price = 100,
                        },
                        {
                            name = 'sport2',
                            price = 200,
                        },
                        {
                            name = 'sport3',
                            price = 300,
                        },  ]]
                    },
                    itemSize ='small'
                },
                {
                    itemIndex = 32,
                    itemName = 'Bancos',
                    cam = 'interior',
                    itemOptions = {
                       --[[  {
                            name = 'sport',
                            price = 100,
                        },
                        {
                            name = 'sport2',
                            price = 200,
                        },
                        {
                            name = 'sport3',
                            price = 300,
                        },  ]]
                    },
                    itemSize ='small'
                },
                {
                    itemIndex = 33,
                    itemName = 'Volante',
                    cam = 'interior',
                    itemOptions = {
                       --[[  {
                            name = 'sport',
                            price = 100,
                        },
                        {
                            name = 'sport2',
                            price = 200,
                        },
                        {
                            name = 'sport3',
                            price = 300,
                        },  ]]
                    },
                    itemSize ='small'
                },
                {
                    itemIndex = 31,
                    itemName = 'Portas',
                    cam = 'doors',
                    itemOptions = {
                        --[[ {
                            name = 'sport',
                            price = 100,
                        },
                        {
                            name = 'sport2',
                            price = 200,
                        },
                        {
                            name = 'sport3',
                            price = 300,
                        },  ]]
                    },
                    itemSize ='small'
                },
                
            }
        },
        {
            itemIndex = 43,
            itemName = 'aerial',
            itemSize = 'medium',
            cam = 'capô',
            installed = false,
            itemOptions = {
                --[[ {
                    name = '',
                    price = '',
                    purchased = false
                } ]]
             }
        },
       --[[  {
            itemIndex = 97,
            itemName = 'extra',
            itemSize = 'medium',
            cam = 'teto',
            installed = false,
            itemOptions = {
                {
                    name = 'Extra 1',
                    price = 0,
                    purchased = false
                },
                {
                    name = 'Extra 2',
                    price = 0,
                    purchased = false
                },
                {
                    name = 'Extra 3',
                    price = 0,
                    purchased = false
                },
                {
                    name = 'Extra 4',
                    price = 0,
                    purchased = false
                },
                {
                    name = 'Extra 5',
                    price = 0,
                    purchased = false
                },
                {
                    name = 'Extra 6',
                    price = 0,
                    purchased = false
                },
                {
                    name = 'Extra 7',
                    price = 0,
                    purchased = false
                },
                {
                    name = 'Extra 8',
                    price = 0,
                    purchased = false
                },
                {
                    name = 'Extra 9',
                    price = 0,
                    purchased = false
                },
             }
        }, ]]
        --[[ {
            itemName = 'acessórios',
            itemSize = 'medium',
            installed = false,
            itemOptions = {
               
            }
        }, ]]
        --[[ {
            itemName = 'chassi',
            itemSize = 'medium',
            installed = false,
            itemOptions = {
                {
                    name = '',
                    price = '',
                    purchased = false
                }
            }
        }, ]]
    },
    [12] = {
        {
            itemName = 'Placa',
            itemSize = 'medium',
            installed = false,
            itemOptions = {
                --[[   {
                      name = '',
                      price = '',
                      purchased = false
                  } ]]
            },
            subCategories = {
                {
                    itemIndex = 35,
                    cam = 'placa',
                    itemName = 'Placa',
                    itemSize = 'medium',
                    installed = false,
                    itemOptions = {
                        --[[   {
                            name = 'das',
                            price = '3242',
                            purchased = false
                        } ]]
                    }
                },
                {
                    itemIndex = 25,
                    cam = 'placa',
                    itemName = 'Posicao',
                    itemSize = 'medium',
                    installed = false,
                    itemOptions = {
                      --[[   {
                            name = 'das',
                            price = '3242',
                            purchased = false
                        } ]]
                    }
                    
                },
            }
        },
        {
            itemIndex = 44,
            cam = 'teto',
            itemName = 'Upper',
            itemSize = 'medium',
            installed = false,
            itemOptions = {
              --[[   {
                    name = 'das',
                    price = '3242',
                    purchased = false
                } ]]
            }
        },
        {
            itemIndex = 45,
            cam = 'saias',
            itemName = 'tanque',
            itemSize = 'medium',
            installed = false,
            itemOptions = {
              --[[   {
                    name = 'das',
                    price = '3242',
                    purchased = false
                } ]]
            }
        },
       
        
       --[[  {
            itemIndex = 19,
            itemName = 'Subwoofer',
            itemSize = 'medium',
            installed = false,
            itemOptions = {
              
            }
        }, ]]
      --[[   {
            itemIndex = 49,
            itemName = 'Lightbar',
            itemSize = 'medium',
            installed = false,
            itemOptions = {
                 {
                    name = 'das',
                    price = '3242',
                    purchased = false
                } 
            }
        }, ]]
    },
}

