#!/bin/sh
#
mkchromecast --video --command 'ffmpeg -re -i '"$1"' -map_chapters -1 -vcodec libx264 -preset ultrafast -tune zerolatency -maxrate 10000k -bufsize 20000k -pix_fmt yuv420p -g 60 -f mp4 -max_muxing_queue_size 9999 -movflags frag_keyframe+empty_moov pipe:1'

