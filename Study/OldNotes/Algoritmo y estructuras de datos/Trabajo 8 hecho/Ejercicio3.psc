Algoritmo Ejercicio3
    Definir n, i, sexo, cant_presentes, cant_fem_presente Como Entero;
    Definir asistencia Como Caracter;
    Definir porc_presentes, porc_fem_presentes Como Real;
    
    Escribir "Ingrese cantidad de alumnos:";
    Leer n;
    
    cant_presentes <- 0;
    cant_fem_presente <- 0;
    
    Para i <- 1 Hasta n Hacer
        Escribir "Asistencia alumno ", i, " (P-Presente, A-Ausente):";
        Leer asistencia;
        Escribir "Sexo (0-Masculino, 1-Femenino):";
        Leer sexo;
        
        Si asistencia = "P" O asistencia = "p" Entonces
            cant_presentes <- cant_presentes + 1;
            Si sexo = 1 Entonces
                cant_fem_presente <- cant_fem_presente + 1;
            FinSi
        FinSi
    FinPara
    
    Si n > 0 Entonces
        porc_presentes <- (cant_presentes / n) * 100;
        Escribir "Porcentaje de presentes sobre el total: ", porc_presentes, "%";
        
        Si cant_presentes > 0 Entonces
            porc_fem_presentes <- (cant_fem_presente / cant_presentes) * 100;
            Escribir "Porcentaje de femeninos presentes sobre total de presentes: ", porc_fem_presentes, "%";
        Sino
            Escribir "No hubo alumnos presentes.";
        FinSi
    FinSi
FinAlgoritmo