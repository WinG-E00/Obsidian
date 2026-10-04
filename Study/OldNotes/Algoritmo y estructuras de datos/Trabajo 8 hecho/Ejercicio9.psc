Algoritmo Ejercicio9
    Definir c, cant_ciudades, i, inciso Como Entero;
    Definir nombre, ciudad_actual, hisopado, vacuna, permiso Como Caracter;
    Definir listado_incisos Como Caracter;
    Dimension listado_incisos[11];
    
    Escribir "Cuantas ciudades desea procesar?:";
    Leer cant_ciudades;
    
    Para c <- 1 Hasta cant_ciudades Hacer
        Escribir "Nombre de la Ciudad ", c, ":";
        Leer ciudad_actual;
        
        // Vacio el arreglo en cada iteracion para que sea local a esta ciudad
        Para i <- 1 Hasta 10 Hacer
            listado_incisos[i] <- "";
        FinPara
        
        Escribir "--- Procesando 10 personas para ", ciudad_actual, " ---";
        
        Para i <- 1 Hasta 10 Hacer
            Escribir "Nombre:"; Leer nombre;
            Escribir "Hisopado (S/N):"; Leer hisopado;
            Escribir "Vacunado (S/N):"; Leer vacuna;
            Escribir "Permiso (S/N):"; Leer permiso;
            Escribir "Inciso (1 al 10):"; Leer inciso;
            
            Si (hisopado = "S" O hisopado = "s") Y (vacuna = "S" O vacuna = "s") Y (permiso = "S" O permiso = "s") Entonces
                Si inciso >= 1 Y inciso <= 10 Entonces
                    listado_incisos[inciso] <- listado_incisos[inciso] + nombre + " | ";
                FinSi
            FinSi
        FinPara
        
        // Imprimo el resultado inmediatamente terminada la ciudad actual
        Escribir "--- LISTADO DE HABILITADOS EN: ", ciudad_actual, " ---";
        Para i <- 1 Hasta 10 Hacer
            Si listado_incisos[i] <> "" Entonces
                Escribir "Inciso ", i, ": ", listado_incisos[i];
            FinSi
        FinPara
        Escribir "--------------------------------------------------";
        
    FinPara
FinAlgoritmo