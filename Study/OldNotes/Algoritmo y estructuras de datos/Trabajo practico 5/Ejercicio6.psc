Algoritmo Ejercicio6
    // definir variables para la materia 1
    Definir mat1, dia1 Como Caracter;
    Definir carga1 Como Entero;
    
    // definir variables para la materia 2
    Definir mat2, dia2 Como Caracter;
    Definir carga2 Como Entero;
    
    // definir variables para la materia 3
    Definir mat3, dia3 Como Caracter;
    Definir carga3 Como Entero;
    
    // pedir los datos de la primera materia
    Escribir "Ingrese nombre de la materia 1:";
    Leer mat1;
    Escribir "Ingrese carga horaria de la materia 1:";
    Leer carga1;
    Escribir "Ingrese dia de dictado de la materia 1:";
    Leer dia1;
    
    // pedir los datos de la segunda materia
    Escribir "Ingrese nombre de la materia 2:";
    Leer mat2;
    Escribir "Ingrese carga horaria de la materia 2:";
    Leer carga2;
    Escribir "Ingrese dia de dictado de la materia 2:";
    Leer dia2;
    
    // pedir los datos de la tercera materia
    Escribir "Ingrese nombre de la materia 3:";
    Leer mat3;
    Escribir "Ingrese carga horaria de la materia 3:";
    Leer carga3;
    Escribir "Ingrese dia de dictado de la materia 3:";
    Leer dia3;
    
    Escribir "----------------------------------------";
    Escribir "LISTADO DE MATERIAS ORDENADAS:";
    Escribir "----------------------------------------";
    
    // evaluacion logica para ordenar las 3 materias de forma alfabetica
    // hay 6 combinaciones posibles en total
    
    Si mat1 <= mat2 Y mat2 <= mat3 Entonces
        // orden: 1, 2, 3
        Escribir "Materia: ", mat1, " | Carga: ", carga1, "hs | Dia: ", dia1;
        Escribir "Materia: ", mat2, " | Carga: ", carga2, "hs | Dia: ", dia2;
        Escribir "Materia: ", mat3, " | Carga: ", carga3, "hs | Dia: ", dia3;
    SiNo
        Si mat1 <= mat3 Y mat3 <= mat2 Entonces
            // orden: 1, 3, 2
            Escribir "Materia: ", mat1, " | Carga: ", carga1, "hs | Dia: ", dia1;
            Escribir "Materia: ", mat3, " | Carga: ", carga3, "hs | Dia: ", dia3;
            Escribir "Materia: ", mat2, " | Carga: ", carga2, "hs | Dia: ", dia2;
        SiNo
            Si mat2 <= mat1 Y mat1 <= mat3 Entonces
                // orden: 2, 1, 3
                Escribir "Materia: ", mat2, " | Carga: ", carga2, "hs | Dia: ", dia2;
                Escribir "Materia: ", mat1, " | Carga: ", carga1, "hs | Dia: ", dia1;
                Escribir "Materia: ", mat3, " | Carga: ", carga3, "hs | Dia: ", dia3;
            SiNo
                Si mat2 <= mat3 Y mat3 <= mat1 Entonces
                    // orden: 2, 3, 1
                    Escribir "Materia: ", mat2, " | Carga: ", carga2, "hs | Dia: ", dia2;
                    Escribir "Materia: ", mat3, " | Carga: ", carga3, "hs | Dia: ", dia3;
                    Escribir "Materia: ", mat1, " | Carga: ", carga1, "hs | Dia: ", dia1;
                SiNo
                    Si mat3 <= mat1 Y mat1 <= mat2 Entonces
                        // orden: 3, 1, 2
                        Escribir "Materia: ", mat3, " | Carga: ", carga3, "hs | Dia: ", dia3;
                        Escribir "Materia: ", mat1, " | Carga: ", carga1, "hs | Dia: ", dia1;
                        Escribir "Materia: ", mat2, " | Carga: ", carga2, "hs | Dia: ", dia2;
                    SiNo
                        // orden: 3, 2, 1
                        Escribir "Materia: ", mat3, " | Carga: ", carga3, "hs | Dia: ", dia3;
                        Escribir "Materia: ", mat2, " | Carga: ", carga2, "hs | Dia: ", dia2;
                        Escribir "Materia: ", mat1, " | Carga: ", carga1, "hs | Dia: ", dia1;
                    FinSi;
                FinSi;
            FinSi;
        FinSi;
    FinSi;
    
FinAlgoritmo