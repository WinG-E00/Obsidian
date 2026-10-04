Algoritmo Ejercicio6_y_7
    Definir arr, i, num, sumaPares Como Entero;
    Dimension arr[12];
    num <- 11;
    sumaPares <- 0;
	
    // Ejercicio 6
    Para i <- 1 Hasta 12 Con Paso 1 Hacer
        arr[i] <- num;
        num <- num + 1;
    FinPara;
	
    // Ejercicio 7
    Para i <- 1 Hasta 12 Con Paso 1 Hacer
        Si i MOD 2 = 0 Entonces
            sumaPares <- sumaPares + arr[i];
        FinSi
    FinPara;
	
    Escribir "Suma de elementos en posiciones pares (2, 4, 6...): ", sumaPares;
FinAlgoritmo