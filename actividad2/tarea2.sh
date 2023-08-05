#!/bin/bash
GITHUB_TOKEN="marcstu2007"
# Verificar que se proporcionó un token de acceso a la API de GitHub
if [ -z "$GITHUB_TOKEN" ]; then
  echo "Error: Debes proporcionar un token de acceso a la API de GitHub en la variable de entorno GITHUB_TOKEN."
  exit 1
fi

# URL de la API de GitHub para obtener información del usuario autenticado
api_url="https://api.github.com/users/$GITHUB_TOKEN"

# Realizar la solicitud GET a la API de GitHub
response=$(curl -s $api_url)

# Verificar si la solicitud fue exitosa
if [ $? -ne 0 ]; then
  echo "Error: No se pudo obtener la información del usuario desde la API de GitHub."
  exit 1
fi

# Obtener la información
username=$(echo "$response" | grep -oP '"login": "\K[^"]+')
user_id=$(echo "$response" | grep -oP '"id": \K\d+')
fecha_creacion=$(echo "$response" | grep -oP '"created_at": "\K[^"]+')
fecha_actual=$(date +%Y-%m-%d)

# Directorio de destino
DIRECTORIO_DESTINO="/tmp/$fecha_actual"
mkdir -p "$DIRECTORIO_DESTINO"

# Muestra la información del usuario obtenida.
echo "Hola $username User Id $user_id. Cuenta creada $fecha_creacion" > "$DIRECTORIO_DESTINO/registro.txt"
echo "El archivo se creo en: $DIRECTORIO_DESTINO/registro.txt con el siguiente contenido:  Hola $username User Id $user_id. Cuenta creada $fecha_creacion"