
  
fx_version 'adamant'
game 'gta5'
ui_page 'nui/index.html'
files {
	'nui/index.html',
	'nui/*',
}
shared_script { "shared.lua" }
client_script {
	"@vrp/lib/Utils.lua",
	"@vrp/config/Item.lua",
	"client-side/*.lua"
}              