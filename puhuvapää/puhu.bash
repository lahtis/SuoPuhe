#!/bin/bash
echo "Tämä teksti muutetaan puheäänitiedostoksi. Nythän tämä parani huomattavasti. Jos minut joskus opetetaan laulamaan. Niin teen teille sitten biiisin. Sitä ennen minun täytyy oppia kirjoittamaan ja puhumaan vielä paremmin. Huomaa minulla on tässä myös pieni ärrä vika. " > minuntekstini.txt
cat minuntekstini.txt | iconv -f UTF-8 -t ISO8859-1 -c | text2wave -otype wav -eval '(language_finnish)' -o /tmp/ttv > /tmp/ttv2 && sox /tmp/ttv luettuaani.flac remix - norm -7 highpass 10 gain -2 treble -40 rate 48k norm -5 dither contrast 4 echos 0.8 0.7 7 0.25 7 0.3
