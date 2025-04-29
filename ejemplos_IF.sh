# Ejemplos sobre sentencias IF. MOdificado 3


#!/bin/bash

# --------------------------------------------
# 1. DECISIÓN CON IF-ELIF-ELSE (BÁSICO)
# --------------------------------------------
echo "---- Ejemplo 1: IF-ELIF-ELSE ----"

read -p "Ingresa un número: " numero

if [ "$numero" -gt 10 ]; then
    echo "El número es mayor que 10."
elif [ "$numero" -eq 10 ]; then
    echo "El número es igual a 10."
else
    echo "El número es menor que 10."
fi

# --------------------------------------------
# 2. IF CON OPERADORES LÓGICOS (-a, -o, !)
# --------------------------------------------
echo -e "\n---- Ejemplo 2: IF con operadores lógicos ----"

read -p "Ingresa tu edad: " edad

if [ "$edad" -ge 0 -a "$edad" -lt 18 ]; then
    echo "Eres menor de edad."
elif [ "$edad" -ge 18 -a "$edad" -lt 65 ]; then
    echo "Eres un adulto."
else
    echo "Eres un adulto mayor."
fi

# --------------------------------------------
# 3. CASE (PARA MÚLTIPLES OPCIONES)
# --------------------------------------------
echo -e "\n---- Ejemplo 3: CASE ----"

read -p "Ingresa un comando (start/stop/restart): " comando

case "$comando" in
    start)
        echo "Iniciando el servicio..."
        ;;
    stop)
        echo "Deteniendo el servicio..."
        ;;
    restart)
        echo "Reiniciando el servicio..."
        ;;
    *)
        echo "Comando no reconocido. Usa: start, stop o restart."
        ;;
esac

# --------------------------------------------
# 4. IF CON CONDICIONES DE CADENAS
# --------------------------------------------
echo -e "\n---- Ejemplo 4: IF con cadenas ----"

read -p "¿Te gusta Bash? (si/no): " respuesta

if [ "$respuesta" = "si" ]; then
    echo "¡Genial! A mí también."
elif [ "$respuesta" = "no" ]; then
    echo "Oh, ¿qué lenguaje prefieres?"
else
    echo "Respuesta no válida."
fi

# --------------------------------------------
# 5. IF CON CONDICIONES DE ARCHIVOS
# --------------------------------------------
echo -e "\n---- Ejemplo 5: IF con archivos ----"

archivo="/tmp/ejemplo.txt"

if [ -f "$archivo" ]; then
    echo "El archivo $archivo existe."
else
    echo "El archivo $archivo no existe."
fi

# --------------------------------------------
# 6. OPERADOR TERNARIO (CON EXPRESIONES)
# --------------------------------------------
echo -e "\n---- Ejemplo 6: Operador ternario ----"

read -p "Ingresa un número: " num

resultado=$((num % 2 == 0 ? 1 : 0))
[ "$resultado" -eq 1 ] && echo "Es par." || echo "Es impar."

# --------------------------------------------
# 7. DECISIÓN CON EXPRESIONES ARITMÉTICAS
# --------------------------------------------
echo -e "\n---- Ejemplo 7: IF con expresiones aritméticas ----"

read -p "Ingresa otro número: " num2

if ((num2 > 0)); then
    echo "El número es positivo."
elif ((num2 < 0)); then
    echo "El número es negativo."
else
    echo "El número es cero."
fi

echo -e "\n¡Fin de los ejemplos!"