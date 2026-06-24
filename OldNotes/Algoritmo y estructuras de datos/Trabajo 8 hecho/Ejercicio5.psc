Algoritmo Ejercicio5
    Definir n, i, j Como Entero;
    Definir ciudad Como Caracter;
    Definir ingreso, suma, promedio Como Real;
    
    Escribir "Ingrese cantidad de ciudades a evaluar:";
    Leer n;
    
    Para i <- 1 Hasta n Hacer
        Escribir "Nombre de la ciudad ", i, ":";
        Leer ciudad;
        
        suma <- 0;
        
        Para j <- 1 Hasta 30 Hacer
            Escribir "Ingresos del dia ", j, ":";
            Leer ingreso;
            suma <- suma + ingreso;
        FinPara
        
        promedio <- suma / 30;
        Escribir "-> La ciudad ", ciudad, " tiene un promedio diario de: $", promedio;
    FinPara
FinAlgoritmo
