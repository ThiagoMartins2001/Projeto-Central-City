
shared_script "@vrp/lib/lib.lua" --Para remover esta pendencia de todos scripts, execute no console o comando "uninstall"
fx_version 'cerulean'
game 'gta5'
lua54 'yes'
white 'White Custom'
discord 'https://discord.gg/cUxnazUxqU'
dependencies {
    '/server:5848',
    '/onesync',
}
-- Remove the following lines if you would like to use the SQL keybinds. Requires oxmysql.
--#region oxmysql
-- dependency 'oxmysql'
-- server_script '@oxmysql/lib/MySQL.lua'
--#endregion oxmysql
shared_scripts {
    'config.lua',
    'Translations.lua',
    'animals.lua',
}
server_scripts {
    'printer.lua',
    'server/Server.lua',
    'server/frameworks/*.lua'
}
client_scripts {
    'NativeUI.lua',
    'client/Utils.lua',
    'client/AnimationList.lua',
    'client/AnimationListCustom.lua',
    'client/Binoculars.lua',
    'client/Crouch.lua',
    'client/Emote.lua',
    'client/EmoteMenu.lua',
    'client/Expressions.lua',
    'client/Keybinds.lua',
    'client/NewsCam.lua',
    'client/NoIdleCam.lua',
    'client/Pointing.lua',
    'client/Ragdoll.lua',
    'client/Syncing.lua',
    'client/Walk.lua',
    'client/frameworks/*.lua'
}
---- Loads all ytyp files for custom props to stream ---
---- You will need to add a data_file 'DLC_ITYP_REQUEST' for your own to work in game ---
data_file 'DLC_ITYP_REQUEST' 'stream/taymckenzienz_rpemotes.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/brummie_props.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/bzzz_props.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/apple_1.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/kaykaymods_props.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/knjgh_pizzas.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/natty_props_lollipops.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/ultra_ringcase.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/pata_props.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/pata_freevalentinesday.ytyp'
              
              