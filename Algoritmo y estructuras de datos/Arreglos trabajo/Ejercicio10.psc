Algoritmo Ejercicio10
    Definir i, j Como Entero;
    Definir matriz, aux Como Caracter;
    Dimension matriz[3,3];
	
    matriz[1,1] <- "Zarate"; matriz[1,2] <- "Luis"; matriz[1,3] <- "33333333";
    matriz[2,1] <- "Alvarez"; matriz[2,2] <- "Ana"; matriz[2,3] <- "22222222";
    matriz[3,1] <- "Perez"; matriz[3,2] <- "Juan"; matriz[3,3] <- "11111111";
	
    Para i <- 1 Hasta 2 Con Paso 1 Hacer
        Para j <- 1 Hasta 3 - i Con Paso 1 Hacer
            Si matriz[j,1] > matriz[j+1,1] Entonces
                // Intercambio fila entera (Apellido, Nombre, DNI)
                aux <- matriz[j,1]; matriz[j,1] <- matriz[j+1,1]; matriz[j+1,1] <- aux;
                aux <- matriz[j,2]; matriz[j,2] <- matriz[j+1,2]; matriz[j+1,2] <- aux;
                aux <- matriz[j,3]; matriz[j,3] <- matriz[j+1,3]; matriz[j+1,3] <- aux;
            FinSi
        FinPara;
    FinPara;
	
    Escribir "Matriz ordenada por apellido:";
    Para i <- 1 Hasta 3 Con Paso 1 Hacer
        Escribir matriz[i,1], ", ", matriz[i,2], " - DNI: ", matriz[i,3];
    FinPara;
FinAlgoritmo