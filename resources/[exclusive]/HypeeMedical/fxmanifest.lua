
fx_version 'adamant'
game 'gta5'
name 'Painel Hospital'
author 'Hypee Resources'
version '1.0'
dependencies{
	'screenshot-basic',
}
shared_scripts {
    'lib/utils.lua',
    'lib/Tools.lua',
    'lib/Proxy.lua',
    'lib/Tunnel.lua'
}
ui_page 'web-side/index.html'
files {
	'web-side/*',
	'web-side/index.html',
	'web-side/assets/*',
	'web-side/assets/fonts/*',
	'web-side/assets/skeleton/*.png',
	'web-side/assets/skeleton/damage/*.png',
	'web-side/assets/skeleton/no_damage/*.png',
}
client_script {
	'lib/utils.lua',
    'lib/Tools.lua',
    'lib/Proxy.lua',
    'lib/Tunnel.lua',
	"config.lua",
	"client/*.lua"
}
server_scripts{ 
	'lib/utils.lua',
    'lib/Tools.lua',
    'lib/Proxy.lua',
    'lib/Tunnel.lua',
	"config.lua",
	"server/*.lua",
}