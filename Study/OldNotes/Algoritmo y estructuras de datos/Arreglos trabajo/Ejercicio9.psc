Algoritmo Ejercicio9
    Definir vector, i, j, importe Como Entero;
    Dimension vector[1000];
    i <- 1;
	
    Escribir "Ingrese importe (0 para finalizar):";
    Leer importe;
	
    Mientras importe <> 0 Hacer
        vector[i] <- importe;
        i <- i + 1;
        Escribir "Ingrese importe (0 para finalizar):";
        Leer importe;
    FinMientras;
	
    Escribir "Importes ingresados en el vector:";
    Para j <- 1 Hasta i - 1 Con Paso 1 Hacer
        Escribir vector[j];
    FinPara;
FinAlgoritmo