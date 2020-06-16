# ----- Consignas ----- #
# 1-Pedir un número entero y mostrar esa cantidad de elementos de la sucesión de Fibonacci.
# 2-Pedir un número entero y mostrar por pantalla ese número en forma invertida.
# 3-Pedir una cadena de caracteres y evaluar si es palindromo o no.
# 4-Pedir el path a un archivo de texto y mostrar por pantalla la cantidad de líneas que tiene.
# 5-Pedir el ingreso de 5 números enteros y mostrarlos por pantalla en forma ordenada.
# 6-Pedir el path a un directorio y mostrar por pantalla cuantos archivos de cada tipo contiene (No se tenga en cuenta ./ y ../).
# 7-Salir (Saludando al usuario que ejecuto el programa).


#!/bin/bash
# ---------- MENU ---------- #
function show_menu(){
	clear
	echo "1) Sucesión de Fibonacci"
	echo "2) Invertir numero"
	echo "3) ¿Es palidromo o no?"
	echo "4) Cantidad de lineas de un archivo de texto"
	echo "5) Ingresa 5 numeros a ordenar"
	echo "6) Mostrar cantidad y tipo de archivos de un directorio"
	echo "7) Salir"
}
#-----------------------------#
function salir(){
    name=$LOGNAME 
    echo "Hasta luego $name"
    sleep 1
}
option=0
show_menu
while true; do
    read -p "Ingrese una opcion: " option
    case $option in
    
        1)  read -p "Ingrese la cantidad de numeros de la sucesion de fibonacci que desea ver: " contador;
		a=0
		b=1
		for((i=0;i<contador;i++))
		do
		fibonacci=$[$a+$b]
		echo $fibonacci
		a=$b
		b=$fibonacci
		done;;

        2)  read -p "Ingrese un numero:" num;
            echo "El numero invertido es"
	    echo $num | rev;;


        4)  read -p "Ingrese el path completo del archvo para contar sus lineas: " path_01
            	echo 'Lineas | Nombre del archivo '
		wc -l $path_01 2>/dev/null 
			if [ $? -ne 0 ]; then
                	echo "Error: No se encontro el path $path"
            		fi;;


        7)  salir
            break;;

        *)  echo "Opcion incorrecta";;
    esac
done
exit 0
