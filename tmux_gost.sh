##! /bin/bash
nohup gost -L="http://maoshiy:msy@:25" -L="http2://maoshiy:msy@:143?cert=/mnt/gost/cert.pem&key=/mnt/gost/key.pem" -L="socks+tls://maoshiy:msy@:587?cert=/mnt/gost/cert.pem&key=/mnt/gost/key.pem" -L="http+tls://maoshiy:msy@:465?cert=/mnt/gost/cert.pem&key=/mnt/gost/key.pem" -logtostderr -v 5 > /dev/null 2>&1 &
