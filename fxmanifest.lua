fx_version 'cerulean'
game 'gta5'

name "LP_BodyCam"
description "This is a easy to use Body-Cam"
author "TheP4nda"
version "1.0.0"
ui_page 'html/index.html'

files {
	'html/index.html',
	'html/bodycam.png',
	'html/BodyCam.mp3'
}


shared_scripts {
	'shared/*.lua'
}

client_scripts {
	'client/*.lua'
}

server_scripts {
	'server/*.lua'
}
