Algoritmo Ejercicio4
    Definir i, j, sumaTrimes2, mayorNota, contMenor6, notasTotales, aprobadas, desaprobadas Como Entero;
    Definir promTrimes2, porcAprobadas, porcDesaprobadas, sumaMateria, promMateria Como Real;
    Definir materias, materiaMayor Como Caracter;
    Definir notas Como Entero;
	
    Dimension materias[5];
    Dimension notas[5, 3];
	
    materias[1] <- "LENGUA"; notas[1,1]<-8; notas[1,2]<-8; notas[1,3]<-5;
    materias[2] <- "MATEMATICA"; notas[2,1]<-9; notas[2,2]<-9; notas[2,3]<-10;
    materias[3] <- "INGLES"; notas[3,1]<-7; notas[3,2]<-6; notas[3,3]<-8;
    materias[4] <- "CS. NATURALES"; notas[4,1]<-4; notas[4,2]<-6; notas[4,3]<-6;
    materias[5] <- "CS. SOCIALES"; notas[5,1]<-5; notas[5,2]<-5; notas[5,3]<-5;
	
    Escribir "a) Boletin:";
    Para i <- 1 Hasta 5 Con Paso 1 Hacer
        Escribir materias[i], ": ", notas[i,1], " - ", notas[i,2], " - ", notas[i,3];
    FinPara;
	
    sumaTrimes2 <- 0;
    mayorNota <- 0;
    contMenor6 <- 0;
    aprobadas <- 0;
    desaprobadas <- 0;
    notasTotales <- 15;
	
    Para i <- 1 Hasta 5 Con Paso 1 Hacer
        sumaTrimes2 <- sumaTrimes2 + notas[i,2];
        Para j <- 1 Hasta 3 Con Paso 1 Hacer
            Si notas[i,j] > mayorNota Entonces
                mayorNota <- notas[i,j];
                materiaMayor <- materias[i];
            FinSi
            Si notas[i,j] < 6 Entonces
                contMenor6 <- contMenor6 + 1;
                desaprobadas <- desaprobadas + 1;
            Sino
                aprobadas <- aprobadas + 1;
            FinSi
        FinPara;
    FinPara;
	
    promTrimes2 <- sumaTrimes2 / 5;
    Escribir "b) Promedio 2do trimestre: ", promTrimes2;
    Escribir "c) Mayor calificacion: ", mayorNota, " en ", materiaMayor;
    Escribir "d) Notas inferiores a 6: ", contMenor6;
	
    porcAprobadas <- (aprobadas / notasTotales) * 100;
    porcDesaprobadas <- (desaprobadas / notasTotales) * 100;
    Escribir "e) Aprobadas: ", porcAprobadas, "% - Desaprobadas: ", porcDesaprobadas, "%";
	
    Escribir "f) Promedios por materia:";
    Para i <- 1 Hasta 5 Con Paso 1 Hacer
        sumaMateria <- notas[i,1] + notas[i,2] + notas[i,3];
        promMateria <- sumaMateria / 3;
        Escribir materias[i], ": ", promMateria;
    FinPara;
FinAlgoritmo