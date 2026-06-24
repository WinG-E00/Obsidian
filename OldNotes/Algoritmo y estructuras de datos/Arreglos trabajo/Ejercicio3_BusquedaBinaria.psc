Algoritmo Ejercicio3_BusquedaBinaria
    // Se cambió 'fin' por 'final' para evitar conflictos con palabras reservadas
    Definir vector, buscado, inicio, final, medio Como Entero;
    Definir encontrado Como Logico;
    Dimension vector[10];
    
    vector[1] <- 17; vector[2] <- 22; vector[3] <- 35; vector[4] <- 40; vector[5] <- 52;
    vector[6] <- 72; vector[7] <- 80; vector[8] <- 88; vector[9] <- 102; vector[10] <- 103;
    
    Escribir "Ingrese el elemento a buscar:";
    Leer buscado;
    
    inicio <- 1;
    final <- 10;
    encontrado <- Falso;
    
    Mientras inicio <= final Y No encontrado Hacer
        medio <- trunc((inicio + final) / 2);
        
        Si vector[medio] = buscado Entonces
            encontrado <- Verdadero;
        Sino
            Si vector[medio] < buscado Entonces
                inicio <- medio + 1;
            Sino
                final <- medio - 1;
            FinSi
        FinSi
    FinMientras;
    
    Si encontrado Entonces
        Escribir "Elemento encontrado en la posicion: ", medio;
    Sino
        Escribir "Elemento NO encontrado.";
    FinSi
FinAlgoritmo