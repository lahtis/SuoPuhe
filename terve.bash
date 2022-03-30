#!/bin/bash
kayttaja=`whoami`
viikonpaiva=`date +%A`
kuukausi=`date +%Bta`
pv=`date +%d`
tunti=`date +%k`
minuutti=`date +%M`

vrkaika="yötä"
if [ $tunti -ge 5 ]
then vrkaika="huomenta"
fi
if [ $tunti -ge 11 ]
then vrkaika="päivää"
fi
if [ $tunti -ge 17 ]
then vrkaika="iltaa"
fi
if [ $tunti -ge 22 ]
then vrkaika="yötä"
fi

if [ $pv = "1" ]
then pv="ensimmäinen"
elif [ $pv = "2" ]
then pv="toinen"
elif [ $pv = "3" ]
then pv="kolmas"
elif [ $pv = "4" ]
then pv="neljäs"
elif [ $pv = "5" ]
then pv="viides"
elif [ $pv = "6" ]
then pv="kuudes"
elif [ $pv = "7" ]
then pv="seitsemäs"
elif [ $pv = "8" ]
then pv="kahdeksas"
elif [ $pv = "9" ]
then pv="yhdeksäs"
elif [ $pv = "10" ]
then pv="kymmenes"
elif [ $pv = "11" ]
then pv="yhdestoista"
elif [ $pv = "12" ]
then pv="kahdestoista"
elif [ $pv = "13" ]
then pv="kolmastoista"
elif [ $pv = "14" ]
then pv="neljästoista"
elif [ $pv = "15" ]
then pv="viidestoista"
elif [ $pv = "16" ]
then pv="kuudestoista"
elif [ $pv = "17" ]
then pv="seitsemästoista"
elif [ $pv = "18" ]
then pv="kahdeksastoista"
elif [ $pv = "19" ]
then pv="yhdeksästoista"
elif [ $pv = "20" ]
then pv="kahdeskymmenes"
elif [ $pv = "21" ]
then pv="kahdeskymmenesensimmäinen"
elif [ $pv = "22" ]
then pv="kahdeskymmenestoinen"
elif [ $pv = "23" ]
then pv="kahdeskymmeneskolmas"
elif [ $pv = "24" ]
then pv="kahdeskymmenesneljäs"
elif [ $pv = "25" ]
then pv="kahdeskymmenesviides"
elif [ $pv = "26" ]
then pv="kahdeskymmeneskuudes"
elif [ $pv = "27" ]
then pv="kahdeskymmenesseitsemäs"
elif [ $pv = "28" ]
then pv="kahdeskymmeneskahdeksas"
elif [ $pv = "29" ]
then pv="kahdeskymmenesyhdeksäs"
elif [ $pv = "30" ]
then pv="kolmaskymmenes"
elif [ $pv = "31" ]
then pv="kolmaskymmenesensimmäinen"

fi

lause="Hyvää "$vrkaika" "$kayttaja". Tänään on "$viikonpaiva" "$pv" päivä "$kuukausi". Kello on "$tunti" "$minuutti

echo $lause > /tmp/ttv && iconv -f UTF-8 -t ISO8859-1 /tmp/ttv > /tmp/ttv2 &&festival --tts /tmp/ttv2 >/dev/null
