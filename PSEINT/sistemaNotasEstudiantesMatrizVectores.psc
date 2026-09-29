// Ejercicio 8. Sistema de Notas por Estudiante (Matriz + Vectores) 
// Un profesor necesita almacenar las notas de 4 estudiantes. 
// Cada estudiante tiene 3 notas. Utilice un vector para los nombres de los estudiantes y una matriz
// de 4x3 para almacenar sus notas. Calcule el promedio de cada estudiante e indíquelo en pantalla. 

Algoritmo sistemaNotasEstudiantesMatrizVectores
	Definir nombres Como Texto;
    Definir notas, f, c Como Real;
    Definir suma_notas, promedio Como Real;
    
    Dimension nombres[4];
    Dimension notas[4, 3];
    
    // Captura de datos de los estudiantes y sus respectivas notas
    Para f <- 1 Hasta 4 Con Paso 1 Hacer
        Escribir "Ingrese el nombre del estudiante ", f, ": ";
        Leer nombres[f];
        
        Para c <- 1 Hasta 3 Con Paso 1 Hacer
            Escribir "  Ingrese la nota ", c, " para ", nombres[f], ": ";
            Leer notas[f, c];
        FinPara
        Escribir ""; // Espacio estético
    FinPara
    
    Escribir "--- REPORTE DE PROMEDIOS ---";
    // Cálculo del promedio e impresión en pantalla
    Para f <- 1 Hasta 4 Con Paso 1 Hacer
        suma_notas <- 0; // Inicializar acumulador para el estudiante actual
        Para c <- 1 Hasta 3 Con Paso 1 Hacer
            suma_notas <- suma_notas + notas[f, c];
        FinPara
        promedio <- suma_notas / 3;
        Escribir "Estudiante: ", nombres[f], " -> Promedio: ", promedio;
    FinPara
FinAlgoritmo
