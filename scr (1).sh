#!/bin/bash
echo "Press(1) for High Compress (screen-72 dpi)"
echo "Press (2) for Mid Compress (ebook-150 dpi)"
echo "Press (3) for Low Compress (printer-300 dpi)"
read -p "Enter Compression setting Code: "  uu
read -p "Compressed PDF to be named as: " ff
read -p " PDF to be Compressed : " gg
if [ $uu == 1 ] 
then 
    uuu=screen
fi
if [ $uu == 2 ] 
then 
    uuu=ebook
fi 
if [ $uu == 3 ] 
then 
    uuu=printer
fi 
     
gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/$uuu -dNOPAUSE -dQUIET -dBATCH -sOutputFile=$ff.pdf $gg.pdf
echo "compressed!"
ggg=$(du -h $gg.pdf)
hh=$(du -h $ff.pdf)
echo "original file size was : $ggg"
echo "compressed file size is : $hh"

