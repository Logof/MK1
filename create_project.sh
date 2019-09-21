#!/bin/sh
if [ -z $1 ]; then
  echo "usage:"
  echo "(1) ./create_project.sh PROJECT_NAME"
  echo "Please, input PROJECT_NAME"
  exit 1
else 
  PROJECT_NAME=$1
fi

if [ -d "./$PROJECT_NAME" ]; then
  echo "$PROJECT_NAME exists"
  exit 1
else
  mkdir -p ./$PROJECT_NAME/graphics ./$PROJECT_NAME/music ./$PROJECT_NAME/maps
fi

#copy General files
cp ./dev/churromain.c ./$PROJECT_NAME/$PROJECT_NAME.c
#CREATE TILESETS BLANK FILE


echo "tileset (256 x 48 px)=> ./$PROJECT_NAME/graphics"

