Algoritmo Ejercicio2
    Definir lluvia, suma, promedio Como Real;
    Definir contador Como Entero;
    
    suma <- 0;
    contador <- 0;
    
    Escribir "Ingrese precipitacion (numero negativo para finalizar):";
    Leer lluvia;
    
    Mientras lluvia >= 0 Hacer
        suma <- suma + lluvia;
        contador <- contador + 1;
        
        Escribir "Ingrese precipitacion (numero negativo para finalizar):";
        Leer lluvia;
    FinMientras
    
    Si contador > 0 Entonces
        promedio <- suma / contador;
        Escribir "El promedio de lluvia caida es: ", promedio;
    Sino
        Escribir "No se ingresaron datos validos para calcular el promedio.";
    FinSi
FinAlgoritmo