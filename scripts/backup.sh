#!/bin/bash

DIRECTORIO_ORIGEN="/home/mohamed/tasca"
DIRECTORIO_BACKUP="/home/mohamed/pac3/pac3_3/semana2"
REPOSITORIO_GIT="$DIRECTORIO_BACKUP"

rsync -a --delete "$DIRECTORIO_ORIGEN/" "$DIRECTORIO_BACKUP/"


cd "$REPOSITORIO_GIT"

git add .

git commit -m "Backup diario $(date '+%Y-%m-%d %H:%M:%S')"

git push origin main
