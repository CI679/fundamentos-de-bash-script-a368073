#!/bin/bash

#Tipos de variables: universal -> Numero, Bool o universal
n1=10 #debe de estar pegado no puede ser n1 = 10
n2=7
echo "El valor de n1 es $n1"
 
#Estructuras de control condicionales
#Operadores condicionales <(-lt) >(-gt)  <=(-le) =>(-ge)
# == (-eq) !=(-ne)
if [[ $n1 -gt $n2 ]]; then
    echo "La sentencia es verdadera $n1 $n2" 
else
    echo "La sentencia es falsa $n1 $n2"
fi

#todo programa regresa un valor, si es exitoso es 0
res=$?
echo "El resultado de la ejecusion es $res" 

#probar con ls y con lsx
ls
if [[ $? -eq 0 ]]; then
    echo "la sentencia se ejecuto correctamente"
else
    echo "la sentencia fallo"
fi

# operadores para manipular archivos
# -e si un archivo o carpeta existe.
# -d si es una carpeta
# -r -w -x si puede leer, escribir y ejecutar
# -s si el archivo esta vacio.

file="./file-demo"

if [[ -s $file ]]; then
    echo "el archivo esta vacio"
else
    echo "el archivo contiene algo"
fi
#debe de decir que el archivo contiene algo

#operadores logicos AND (&&) OR (||)

if [[ -r $file ]] && [[ -x $file ]]; then
    echo "El archivo se puede leer y ejecutar"
else    
    echo "El archivo no se puede leer ni ejcutar"
fi

# Estructura de control case

# $ = array donde $# ($1, $2, $3 .. $n) -h hola
case $1 in
    hola )
        echo "Bienvenido"
    ;;
    adios )
        echo "Adios"
    ;;
     *)
        echo "No entiendo lo que dices"
esac

# Estructuras iterativas

# While
user=""
while [[ $user != "admin" ]]; do
    read -p "¿Cual es tu usuario?" user
done 

# For
for i in {1..5}; do
    echo "el numero es $1"
done

for ((i=0; i<5; i++)); do
    echo "* el numero es $i"
done

invitados=(pedro juan david maria lulu ivan)
for invitado in ${invitados[@]}; do
    echo "Hola $invitado"
done 

# Funciones
suma(){
    echo "Hola desde la funcion sumar."
}

resta(){
    echo $(( $1 - $2 ))
}

suma
total=$(resta 9 4)
echo "El total es $total"