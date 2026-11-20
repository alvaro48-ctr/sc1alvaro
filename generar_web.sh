#!/bin/bash

ARCHIVO_COLOR="$HOME/sc1alvaro/color.txt"
ARCHIVO_HTML="$HOME/web_nginx/index.html"

if [ ! -f "$ARCHIVO_COLOR" ]; then
    echo "Error: no se encuentra $ARCHIVO_COLOR"
    exit 1
fi

COLOR_FONDO=$(tr -d '[:space:]' < "$ARCHIVO_COLOR")

cat << HTML > "$ARCHIVO_HTML"
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Práctica Bash, Git y Docker</title>
</head>
<body style="background-color: $COLOR_FONDO; color: #111111; font-family: Arial, sans-serif; padding: 40px;">
    <h1>Segunda versión del proyecto (rama feature/desde_fichero)</h1>
    <p>Color de fondo leído desde fichero: $COLOR_FONDO</p>
</body>
</html>
HTML

echo "Archivo $ARCHIVO_HTML generado correctamente con color de fondo: $COLOR_FONDO"
