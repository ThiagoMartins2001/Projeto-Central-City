fx_version 'bodacious'
game 'gta5'

author 'jeff'
contact ''
version '1.0.0'

--dependency 'vrp'
ui_page 'nui/mitsu.html'

client_scripts{
    '@vrp/lib/utils.lua',
    --'lib/utils.lua',
    'charizard.lua'
}

server_scripts{
    '@vrp/lib/utils.lua',
   -- 'lib/utils.lua',
    'sceptile.lua'
}

files {
	'nui/mitsu.html',
	'nui/mitsu.js',
    'nui/mitsu.css',
   -- 'nui/subindo.ogg',
   -- 'nui/descendo.ogg',
	'nui/controlejeff.png'
}
