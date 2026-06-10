Algoritmo Ejercicio4
    Definir n, contador Como Entero;
    Definir nota, mejor_nota Como Real;
    Definir nombre, mejor_nombre Como Caracter;
    Definir finalizado Como Logico;
    
    Escribir "Ingrese cantidad de alumnos:";
    Leer n;
    
    mejor_nota <- -1;
    mejor_nombre <- "";
    contador <- 1;
    finalizado <- Falso;
    
    Mientras contador <= n Y No finalizado Hacer
        Escribir "Nombre alumno ", contador, ":";
        Leer nombre;
        Escribir "Nota:";
        Leer nota;
        
        // >= garantiza que, si hay empate, se sobreescribe y queda el ultimo
        Si nota >= mejor_nota Entonces
            mejor_nota <- nota;
            mejor_nombre <- nombre;
        FinSi
        
        Si nota = 10 Entonces
            finalizado <- Verdadero;
        FinSi
        
        contador <- contador + 1;
    FinMientras
    
    Si mejor_nota <> -1 Entonces
        Escribir "Mejor alumno: ", mejor_nombre, " con un ", mejor_nota;
    FinSi
FinAlgoritmo