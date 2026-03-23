#!/bin/bash

HOME_DIRECTORIO="$HOME/EPNro1"
ENTRADA="entrada"
SALIDA="salida"
PROCESADO="procesado"

# La variable de entorno FILENAME tiene que definirse antes de correr el script
ARCHIVO_FILENAME="$HOME_DIRECTORIO/$SALIDA/$FILENAME.txt"

#El -e es para que el salto de linea se haga correctamente
echo -e "Hola, te damos la bienvenida al Ejercicio Practico de Bash\nTe presentamos nuestro menu de opciones:"
echo "Opcion 1: Crear Entorno"
echo "Opcion 2: Correr Proceso"
echo "Opcion 3: Listar alumnos ordenados por numero de padron"
echo "Opcion 4: Mostrar las 10 notas mas altas"
echo "Opcion 5: Datos de alumno especifico"
echo "Opcion 6: Salir"
read -p "Ingrese el numero de la opcion elegida: " opcion_elegida

case $opcion_elegida in
    1)
        echo "Creando entorno dentro del Home en $HOME_DIRECTORIO"
        # Usamos llaves para crear las tres subcarpetas de una vez
        mkdir -p "$HOME_DIRECTORIO"/{"$ENTRADA","$SALIDA","$PROCESADO"}
        echo "Entorno creado"
        ;;
    2)
        echo "Opción 2 - pendiente"
        ;;
    3)  
        if [ -f "$ARCHIVO_FILENAME" ]; then
            echo "Archivo ordenado por numero de padron"
            sort -n -k1,1 < "$ARCHIVO_FILENAME" 
        else
            echo "Error: El archivo $ARCHIVO_FILENAME no existe."
        fi
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
esac
