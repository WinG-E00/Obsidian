Algoritmo Ejercicio1
    Definir vector, i, j, aux, suma, menor, mayor, cantMayores Como Entero;
    Definir promedio Como Real;
    Dimension vector[10];
	
    // Carga de datos
    vector[1] <- 17; vector[2] <- 10; vector[3] <- 5; vector[4] <- 20; vector[5] <- 12;
    vector[6] <- 72; vector[7] <- 100; vector[8] <- 14; vector[9] <- 53; vector[10] <- 7;
	
    suma <- 0;
    cantMayores <- 0;
    menor <- vector[1];
    mayor <- vector[1];
	
    Para i <- 1 Hasta 10 Con Paso 1 Hacer
        suma <- suma + vector[i];
        Si vector[i] < menor Entonces
            menor <- vector[i];
        FinSi
        Si vector[i] > mayor Entonces
            mayor <- vector[i];
        FinSi
        Si vector[i] > 30 Entonces
            cantMayores <- cantMayores + 1;
        FinSi
    FinPara;
	
    promedio <- suma / 10;
	
    Escribir "a) Suma: ", suma;
    Escribir "b) Promedio: ", promedio;
    Escribir "c) Menor: ", menor, ", Mayor: ", mayor;
    Escribir "d) Cantidad mayores a 30: ", cantMayores;
	
    // e) Ordenamiento Burbuja
    Para i <- 1 Hasta 9 Con Paso 1 Hacer
        Para j <- 1 Hasta 10 - i Con Paso 1 Hacer
            Si vector[j] > vector[j+1] Entonces
                aux <- vector[j];
                vector[j] <- vector[j+1];
                vector[j+1] <- aux;
            FinSi
        FinPara;
    FinPara;
	
    Escribir "e) Vector ordenado:";
    Para i <- 1 Hasta 10 Con Paso 1 Hacer
        Escribir vector[i];
    FinPara;
FinAlgoritmoAlgoritmo Ejercicio1
Definir vector, i, j, aux, suma, menor, mayor, cantMayores Como Entero;
Definir promedio Como Real;
Dimension vector[10];

// Carga de datos
vector[1] <- 17; vector[2] <- 10; vector[3] <- 5; vector[4] <- 20; vector[5] <- 12;
vector[6] <- 72; vector[7] <- 100; vector[8] <- 14; vector[9] <- 53; vector[10] <- 7;

suma <- 0;
cantMayores <- 0;
menor <- vector[1];
mayor <- vector[1];

Para i <- 1 Hasta 10 Con Paso 1 Hacer
	suma <- suma + vector[i];
	Si vector[i] < menor Entonces
		menor <- vector[i];
	FinSi
	Si vector[i] > mayor Entonces
		mayor <- vector[i];
	FinSi
	Si vector[i] > 30 Entonces
		cantMayores <- cantMayores + 1;
	FinSi
FinPara;

promedio <- suma / 10;

Escribir "a) Suma: ", suma;
Escribir "b) Promedio: ", promedio;
Escribir "c) Menor: ", menor, ", Mayor: ", mayor;
Escribir "d) Cantidad mayores a 30: ", cantMayores;

// e) Ordenamiento Burbuja
Para i <- 1 Hasta 9 Con Paso 1 Hacer
	Para j <- 1 Hasta 10 - i Con Paso 1 Hacer
		Si vector[j] > vector[j+1] Entonces
			aux <- vector[j];
			vector[j] <- vector[j+1];
			vector[j+1] <- aux;
		FinSi
	FinPara;
FinPara;

Escribir "e) Vector ordenado:";
Para i <- 1 Hasta 10 Con Paso 1 Hacer
	Escribir vector[i];
FinPara;
FinAlgoritmoAlgoritmo Ejercicio1
Definir vector, i, j, aux, suma, menor, mayor, cantMayores Como Entero;
Definir promedio Como Real;
Dimension vector[10];

// Carga de datos
vector[1] <- 17; vector[2] <- 10; vector[3] <- 5; vector[4] <- 20; vector[5] <- 12;
vector[6] <- 72; vector[7] <- 100; vector[8] <- 14; vector[9] <- 53; vector[10] <- 7;

suma <- 0;
cantMayores <- 0;
menor <- vector[1];
mayor <- vector[1];

Para i <- 1 Hasta 10 Con Paso 1 Hacer
	suma <- suma + vector[i];
	Si vector[i] < menor Entonces
		menor <- vector[i];
	FinSi
	Si vector[i] > mayor Entonces
		mayor <- vector[i];
	FinSi
	Si vector[i] > 30 Entonces
		cantMayores <- cantMayores + 1;
	FinSi
FinPara;

promedio <- suma / 10;

Escribir "a) Suma: ", suma;
Escribir "b) Promedio: ", promedio;
Escribir "c) Menor: ", menor, ", Mayor: ", mayor;
Escribir "d) Cantidad mayores a 30: ", cantMayores;

// e) Ordenamiento Burbuja
Para i <- 1 Hasta 9 Con Paso 1 Hacer
	Para j <- 1 Hasta 10 - i Con Paso 1 Hacer
		Si vector[j] > vector[j+1] Entonces
			aux <- vector[j];
			vector[j] <- vector[j+1];
			vector[j+1] <- aux;
		FinSi
	FinPara;
FinPara;

Escribir "e) Vector ordenado:";
Para i <- 1 Hasta 10 Con Paso 1 Hacer
	Escribir vector[i];
FinPara;
FinAlgoritmo