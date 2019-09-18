#!/bin/sh
if [ -z $1 ]; then
  echo "usage:"
  echo "(1) ./make.sh PROJECT_NAME COUNT_SCREEN WIDTH_MAP HEIGH_MAP"
  echo "Please, input PROJECT_NAME"
  exit 1
else 
  PROJECT_NAME=$1
fi

if [ -z $2 ]; then
  echo "usage:"
  echo "(2) ./make.sh PROJECT_NAME COUNT_SCREEN WIDTH_MAP HEIGH_MAP"
  echo "Please, input COUNT_SCREEN"
  exit 1
else 
  COUNT_SCREEN=$2
fi


if [ -z $3 ]; then
  echo "usage:"
  echo "(3) ./make.sh PROJECT_NAME COUNT_SCREEN WIDTH_MAP HEIGH_MAP"
  echo "Please, input WIDTH_MAP"
  exit 1
else 
  WIDTH_MAP=$3
fi


if [ -z $4 ]; then
  echo "usage:"
  echo "(4) ./make.sh PROJECT_NAME COUNT_SCREEN WIDTH_MAP HEIGH_MAP"
  echo "Please, input HEIGH_MAP"
  exit 1
else 
  HEIGH_MAP=$4
fi

echo "-------------------------------------------------------------------------------"
echo "### COMPILLING SCRIPT ###"
./bin/msc "$PROJECT_NAME.spt" ./bin/msc.h $COUNT_SCREEN
cp ./bin/*.h ./dev/
echo "-------------------------------------------------------------------------------"
echo "### REGENERANDO MAP ###"
../bin/mapcnv ./source/"$PROJECT_NAME.map" $WIDTH_MAP $HEIGH_MAP 15 10 15 packed
cp ./source/"$PROJECT_NAME.h" ./dev/
echo "-------------------------------------------------------------------------------"
echo "### COMPILANDO GUEGO ###"
#zcc +zx -vn "$PROJECT_NAME.c" -o "$PROJECT_NAME.bin" -lndos -lsplib2 -zorg=24200
#echo "-------------------------------------------------------------------------------"
#echo "### CONSTRUYENDO CINTA ###"
#../utils/bas2tap -a10 -sLOADER loader.bas loader.tap
#../utils/bin2tap -o screen.tap -a 16384 loading.bin
#../utils/bin2tap -o main.tap -a 24200 "$PROJECT_NAME.bin"