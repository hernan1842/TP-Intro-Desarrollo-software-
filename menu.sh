#!/bin/bash

HOME_DIRECTORIO="$HOME/EPNro1"
ENTRADA_DIR="entrada"
SALIDA_DIR="salida"
PROCESADO_DIR="procesado"

echo "Hola, te damos la bienvenida al Ejercicio Practico de Bash\nTe presentamos nuestro menu de opciones:"
echo "Opcion 1: Crear Entorno"
echo "Opcion 2: Correr Proceso"
echo "Opcion 3: Listar alumnos ordenados por numero de padron"
echo "Opcion 4: Mostrar las 10 notas mas altas"
echo "Opcion 5: Datos de alumno especifico"
echo "Opcion 6: Salir"

read -p "Ingrese el numero de la opcion elegida: " opcion_elegida


case $opcion_elegiga in
    1)
        echo "Creando entorno dentro del Home"
        mkdir -p "$HOME_DIRECTORIO"/{"$ENTRADA_DIR","$SALIDA_DIR","$PROCESADO_DIR"}
        echo "Entorno creado";;
    2)
        echo "Opción 2 - pendiente"
        ;;
    3)
        echo "Opción 3 - pendiente"
        ;;
    4)
        echo "Opción 4 - pendiente"
        ;;
    5)
        echo "Opción 5 - pendiente"
        ;;
    6)
        echo "Saliendo..."
        exit 0
        ;;
    *)
        echo "Opción inválida."
        ;;
esac