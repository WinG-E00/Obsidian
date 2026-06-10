Algoritmo Ejercicio2
    Definir i Como Entero;
    Definir parcial1, parcial2, promedios Como Real;
    Dimension parcial1[10], parcial2[10], promedios[10];
	
    // Carga notas Parcial 1
    parcial1[1]<-6; parcial1[2]<-7; parcial1[3]<-8; parcial1[4]<-6; parcial1[5]<-8;
    parcial1[6]<-9; parcial1[7]<-10; parcial1[8]<-10; parcial1[9]<-9; parcial1[10]<-8;
	
    // Carga notas Parcial 2
    parcial2[1]<-10; parcial2[2]<-6; parcial2[3]<-9; parcial2[4]<-8; parcial2[5]<-8;
    parcial2[6]<-7; parcial2[7]<-9; parcial2[8]<-9; parcial2[9]<-8; parcial2[10]<-7;
	
    Escribir "Vector Promedio:";
    Para i <- 1 Hasta 10 Con Paso 1 Hacer
        promedios[i] <- (parcial1[i] + parcial2[i]) / 2;
        Escribir promedios[i];
    FinPara;
FinAlgoritmo