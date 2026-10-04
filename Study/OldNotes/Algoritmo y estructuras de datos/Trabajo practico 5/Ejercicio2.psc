Algoritmo  Ejercicio2
    // Definir las variables
    Definir dni Como Caracter;
    Definir nota1, nota2 Como Real;
    Definir asistencias, clasesTotales, clasesParaOchenta, clasesFaltantes Como Entero;
    Definir porcentajeAsistencia Como Real;
    
    // Iniciar los datos fijos
    clasesTotales <- 40;
    clasesParaOchenta <- 32; // El 80% de 40 clases son 32 clases
    clasesFaltantes <- 0;
    
    // Pedir datos al usuario
    Escribir "Ingrese DNI del alumno:";
    Leer dni;
    
    Escribir "Ingrese la nota del primer parcial:";
    Leer nota1;
    
    Escribir "Ingrese la nota del segundo parcial:";
    Leer nota2;
    
    Escribir "Ingrese la cantidad de asistencias (sobre un total de 40):";
    Leer asistencias;
    
    // Calcular el porcentaje real de asistencias
    porcentajeAsistencia <- (asistencias / clasesTotales) * 100;
    
    
    
    // Mostrar porcentaje obtenido
    Escribir "Porcentaje de asistencia: ", porcentajeAsistencia, "%";
    
    // Evaluar la situacion del alumno con estructuras Si anidadas
    Si nota1 >= 7 Y nota2 >= 7 Y porcentajeAsistencia >= 80 Entonces
        // Cumple todo: parciales y asistencia
        Escribir "Alumno regular - DNI: ", dni;
    SiNo
        Si nota1 >= 7 Y nota2 >= 7 Y porcentajeAsistencia < 80 Entonces
            // Parciales bien, pero le falta asistencia
            clasesFaltantes <- clasesParaOchenta - asistencias;
            Escribir "Debe realizar clases de apoyo - DNI: ", dni;
            Escribir "Le faltan ", clasesFaltantes, " clases para llegar al 80%";
        SiNo
            Si ((nota1 < 7 Y nota2 >= 7) O (nota1 >= 7 Y nota2 < 7)) Y porcentajeAsistencia >= 80 Entonces
                // Mal en UN SOLO parcial, pero bien en asistencia
                Escribir "Debe recuperar un parcial - DNI: ", dni;
            SiNo
                // Cualquier otra combinacion (dos parciales mal, o uno mal y mala asistencia, etc)
                Escribir "Alumno libre - DNI: ", dni;
            FinSi;
        FinSi;
    FinSi;
    
FinAlgoritmo
