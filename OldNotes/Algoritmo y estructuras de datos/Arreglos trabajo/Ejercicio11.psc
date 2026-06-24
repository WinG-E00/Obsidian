Algoritmo Ejercicio11
    Definir N, M, i, j Como Entero;
    Definir matriz, sumaFila, sumaCol Como Entero;
    Dimension matriz[100, 100];
    Dimension sumaFila[100], sumaCol[100];
	
    Escribir "Ingrese cantidad de filas (N) y columnas (M):";
    Leer N, M;
	
    Para i <- 1 Hasta N Con Paso 1 Hacer
        sumaFila[i] <- 0;
    FinPara;
    Para j <- 1 Hasta M Con Paso 1 Hacer
        sumaCol[j] <- 0;
    FinPara;
	
    // Carga de la matriz y calculo sumultaneo
    Para i <- 1 Hasta N Con Paso 1 Hacer
        Para j <- 1 Hasta M Con Paso 1 Hacer
            matriz[i,j] <- azar(10) + 1;
            sumaFila[i] <- sumaFila[i] + matriz[i,j];
            sumaCol[j] <- sumaCol[j] + matriz[i,j];
        FinPara;
    FinPara;
	
    Escribir "Suma por filas:";
    Para i <- 1 Hasta N Con Paso 1 Hacer
        Escribir "Fila ", i, ": ", sumaFila[i];
    FinPara;
	
    Escribir "Suma por columnas:";
    Para j <- 1 Hasta M Con Paso 1 Hacer
        Escribir "Columna ", j, ": ", sumaCol[j];
    FinPara;
FinAlgoritmo