Algoritmo  Ejercicio4
    // Definir variables para las notas y la asistencia
    Definir nota1, nota2, notaRecu Como Real;
    Definir asistencia Como Real;
    
    // Definir variables logicas para guardar los resultados de cada inciso
    Definir condicionA, condicionB, condicionC, condicionD Como Logico;
    
    // Pedir los datos al usuario
    Escribir "Ingrese la nota del primer parcial:";
    Leer nota1;
    
    Escribir "Ingrese la nota del segundo parcial:";
    Leer nota2;
    
    Escribir "Ingrese la nota del recuperatorio:";
    Leer notaRecu;
    
    Escribir "Ingrese el porcentaje de asistencia (0 a 100):";
    Leer asistencia;
    
    Escribir "----------------------------------------";
    
    // a) Asistencia entre 80% y 100% y aprueba al menos 1 parcial
    condicionA <- (asistencia >= 80 Y asistencia <= 100) Y (nota1 >= 7 O nota2 >= 7);
    
    // b) Aprueba los 2 parciales y asistencia menor al 60%
    condicionB <- (nota1 >= 7 Y nota2 >= 7) Y (asistencia < 60);
    
    // c) Aprueba al menos un parcial, aprueba el recuperatorio y asistencia entre 50% y 100%
    condicionC <- (nota1 >= 7 O nota2 >= 7) Y (notaRecu >= 7) Y (asistencia >= 50 Y asistencia <= 100);
    
    // d) No aprueba ninguno de los parciales y asistencia entre 10% y 30%
    condicionD <- (nota1 < 7 Y nota2 < 7) Y (asistencia >= 10 Y asistencia <= 30);
    
    // Mostrar si cada situacion se cumple (Verdadero) o no (Falso)
    Escribir "Resultado situacion A: ", condicionA;
    Escribir "Resultado situacion B: ", condicionB;
    Escribir "Resultado situacion C: ", condicionC;
    Escribir "Resultado situacion D: ", condicionD;
	
FinAlgoritmo
