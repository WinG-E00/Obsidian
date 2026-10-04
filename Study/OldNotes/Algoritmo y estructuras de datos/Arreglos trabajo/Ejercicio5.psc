Algoritmo Ejercicio5
    Definir talles, i, j, aux, suma, mayores30, mayorTalle Como Entero;
    Definir promedio Como Real;
    Dimension talles[12];
	
    talles[1]<-37; talles[2]<-38; talles[3]<-40; talles[4]<-42; talles[5]<-27; talles[6]<-29;
    talles[7]<-30; talles[8]<-25; talles[9]<-41; talles[10]<-39; talles[11]<-41; talles[12]<-33;
	
    suma <- 0;
    mayores30 <- 0;
    mayorTalle <- 0;
	
    Para i <- 1 Hasta 12 Con Paso 1 Hacer
        suma <- suma + talles[i];
        Si talles[i] > 30 Entonces
            mayores30 <- mayores30 + 1;
        FinSi
        Si talles[i] > mayorTalle Entonces
            mayorTalle <- talles[i];
        FinSi
    FinPara;
	
    promedio <- suma / 12;
    Escribir "1) Promedio de talles: ", promedio;
    Escribir "2) Talles mayores a 30: ", mayores30;
    Escribir "3) Mayor talle: ", mayorTalle;
	
    Para i <- 1 Hasta 11 Con Paso 1 Hacer
        Para j <- 1 Hasta 12 - i Con Paso 1 Hacer
            Si talles[j] > talles[j+1] Entonces
                aux <- talles[j];
                talles[j] <- talles[j+1];
                talles[j+1] <- aux;
            FinSi
        FinPara;
    FinPara;
	
    Escribir "4) Vector ordenado de manera Ascendente:";
    Para i <- 1 Hasta 12 Con Paso 1 Hacer
        Escribir talles[i];
    FinPara;
FinAlgoritmoAlgoritmo Ejercicio5
Definir talles, i, j, aux, suma, mayores30, mayorTalle Como Entero;
Definir promedio Como Real;
Dimension talles[12];

talles[1]<-37; talles[2]<-38; talles[3]<-40; talles[4]<-42; talles[5]<-27; talles[6]<-29;
talles[7]<-30; talles[8]<-25; talles[9]<-41; talles[10]<-39; talles[11]<-41; talles[12]<-33;

suma <- 0;
mayores30 <- 0;
mayorTalle <- 0;

Para i <- 1 Hasta 12 Con Paso 1 Hacer
	suma <- suma + talles[i];
	Si talles[i] > 30 Entonces
		mayores30 <- mayores30 + 1;
	FinSi
	Si talles[i] > mayorTalle Entonces
		mayorTalle <- talles[i];
	FinSi
FinPara;

promedio <- suma / 12;
Escribir "1) Promedio de talles: ", promedio;
Escribir "2) Talles mayores a 30: ", mayores30;
Escribir "3) Mayor talle: ", mayorTalle;

Para i <- 1 Hasta 11 Con Paso 1 Hacer
	Para j <- 1 Hasta 12 - i Con Paso 1 Hacer
		Si talles[j] > talles[j+1] Entonces
			aux <- talles[j];
			talles[j] <- talles[j+1];
			talles[j+1] <- aux;
		FinSi
	FinPara;
FinPara;

Escribir "4) Vector ordenado de manera Ascendente:";
Para i <- 1 Hasta 12 Con Paso 1 Hacer
	Escribir talles[i];
FinPara;
FinAlgoritmo