Algoritmo Ejercicio6
    Definir dni, cargo Como Entero;
    Definir c1, c2, c3, c4, c5 Como Entero;
    
    c1 <- 0; c2 <- 0; c3 <- 0; c4 <- 0; c5 <- 0;
    
    Escribir "Ingrese DNI (0 para finalizar):";
    Leer dni;
    
    Mientras dni <> 0 Hacer
        cargo <- 0;
        
        // Validacion estricta del codigo
        Mientras cargo < 1 O cargo > 5 Hacer
            Escribir "Ingrese cargo (1 al 5):";
            Leer cargo;
            Si cargo < 1 O cargo > 5 Entonces
                Escribir "Codigo de cargo incorrecto. Vuelva a intentar.";
            FinSi
        FinMientras
        
        Segun cargo Hacer
            1: c1 <- c1 + 1;
            2: c2 <- c2 + 1;
            3: c3 <- c3 + 1;
            4: c4 <- c4 + 1;
            5: c5 <- c5 + 1;
        FinSegun
        
        Escribir "Ingrese DNI (0 para finalizar):";
        Leer dni;
    FinMientras
    
    Escribir "--- Cantidad de entidades por cargo ---";
    Escribir "1- Operadores: ", c1;
    Escribir "2- Programadores: ", c2;
    Escribir "3- Supervisores informaticos: ", c3;
    Escribir "4- Supervisores funcionales: ", c4;
    Escribir "5- Responsables del area: ", c5;
FinAlgoritmo