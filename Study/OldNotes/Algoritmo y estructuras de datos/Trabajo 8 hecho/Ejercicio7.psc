Algoritmo Ejercicio7
    Definir i, inciso Como Entero;
    Definir nombre, ciudad, hisopado, vacuna, permiso Como Caracter;
    Definir listado_incisos Como Caracter;
    Dimension listado_incisos[11];
    
    // Inicializar el arreglo vacio
    Para i <- 1 Hasta 10 Hacer
        listado_incisos[i] <- "";
    FinPara
    
    Para i <- 1 Hasta 10 Hacer
        Escribir "--- Datos de la Persona ", i, " ---";
        Escribir "Nombre:"; Leer nombre;
        Escribir "Ciudad:"; Leer ciudad;
        Escribir "Hisopado (S/N):"; Leer hisopado;
        Escribir "Vacunado (S/N):"; Leer vacuna;
        Escribir "Permiso (S/N):"; Leer permiso;
        Escribir "Inciso (1 al 10):"; Leer inciso;
        
        // Condicion AND estricta
        Si (hisopado = "S" O hisopado = "s") Y (vacuna = "S" O vacuna = "s") Y (permiso = "S" O permiso = "s") Entonces
            Si inciso >= 1 Y inciso <= 10 Entonces
                // Se concatena el nombre al texto que ya tenia ese inciso guardado
                listado_incisos[inciso] <- listado_incisos[inciso] + nombre + " | ";
            FinSi
        FinSi
    FinPara
    
    Escribir "--- PERSONAS HABILITADAS SEPARADAS POR INCISO ---";
    Para i <- 1 Hasta 10 Hacer
        Si listado_incisos[i] <> "" Entonces
            Escribir "Inciso ", i, ": ", listado_incisos[i];
        FinSi
    FinPara
FinAlgoritmo