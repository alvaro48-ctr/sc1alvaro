#!/bin/bash

# Color de fondo definido directamente en el script
COLOR_FONDO="lightblue"

# Ruta del archivo HTML en el directorio compartido con NGINX
ARCHIVO_HTML="$HOME/web_nginx/index.html"

cat << HTML > "$ARCHIVO_HTML"
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Práctica Bash, Git y Docker</title>
</head>
<body style="background-color: $COLOR_FONDO; color: #111111; font-family: Arial, sans-serif; padding: 40px;">
    <h1>Primera versión del proyecto (rama main)</h1>
    <p>Esta página web ha sido generada automáticamente mediante un script en Bash y servida con NGINX en Docker.</p>
</body>
</html>
HTML

echo "Archivo $ARCHIVO_HTML generado correctamente con color de fondo: $COLOR_FONDO"
