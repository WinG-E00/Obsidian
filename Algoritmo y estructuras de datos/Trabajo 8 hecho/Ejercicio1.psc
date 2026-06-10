Algoritmo Ejercicio1
    Definir n, i, duracion, contador Como Entero;
    Definir nombre Como Caracter;
    
    Escribir "Ingrese cantidad de peliculas:";
    Leer n;
    
    contador <- 0;
    
    Para i <- 1 Hasta n Hacer
        Escribir "Nombre de la pelicula ", i, ":";
        Leer nombre;
        Escribir "Duracion en minutos:";
        Leer duracion;
        
        Si duracion > 60 Entonces
            contador <- contador + 1;
        FinSi
    FinPara
    
    Escribir "Cantidad de peliculas que superan los 60 minutos: ", contador;
FinAlgoritmo