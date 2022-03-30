 echo $* > /tmp/ttv && iconv -f UTF-8 -t ISO8859-1 /tmp/ttv > /tmp/ttv2 &&festival --tts /tmp/ttv2 >/dev/null 2> /dev/null
