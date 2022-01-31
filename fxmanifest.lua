name 'Holiday Skateboard'
author 'Ronald Nelson -Holiday'
contact 'ron.divcol@gmail.com'
version 'v1.0.0'

description "An electric skateboard for QB-Core framework"

fx_version 'cerulean'
games { 'gta5' }


client_scripts {
    'client/client.lua',
    'client/c_*.lua'
}

server_scripts {
    'server/server.lua',
    'server/s_*.lua'
}

shared_scripts {
    'shared/*.lua'
}
