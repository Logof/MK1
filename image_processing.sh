#!/bin/sh
if [ -z $1 ]; then
  echo "usage:"
  echo "(1) image_processing.sh PROJECT_NAME"
  echo "Please, input PROJECT_NAME"
  exit 1
else 
  PROJECT_NAME=$1
fi


echo "input tileset PNG file name (without extension):"
read TILESET  #ожидать ввода, сохранить результат в переменную TILESET


if [ -z $TILESET ]; then
  exit 1
else 
  echo "./bin/reordenator ./$PROJECT_NAME/graphics/$TILESET.png ./gfx/$TILESET.png"
  ./bin/reordenator ./"$PROJECT_NAME"/graphics/"$TILESET".png ./gfx/"$TILESET".png
fi