// Ejercicio 9. Matriz Transpuesta 
// Cree una matriz A de 2 filas y 3 columnas. 
// Luego, cree una matriz B de 3 filas y 2 columnas y transfiera los datos de A hacia B, 
// de modo que las filas de A se conviertan en las columnas de B. Imprima la matriz resultante B.

Algoritmo matrizTranspuesta
	Definir A, B, f, c Como Entero;
    Dimension A[2, 3]; // Matriz original de 2 filas y 3 columnas
    Dimension B[3, 2]; // Matriz transpuesta de 3 filas y 2 columnas
    
    // Llenado de la matriz A
    Escribir "--- INGRESO DE DATOS PARA LA MATRIZ A ---";
    Para f <- 1 Hasta 2 Con Paso 1 Hacer
        Para c <- 1 Hasta 3 Con Paso 1 Hacer
            Escribir "Ingrese valor para A[", f, ", ", c, "]: ";
            Leer A[f, c];
        FinPara
    FinPara
    
    // Transferir datos de A hacia B (Transposición)
    Para f <- 1 Hasta 2 Con Paso 1 Hacer
        Para c <- 1 Hasta 3 Con Paso 1 Hacer
            B[c, f] <- A[f, c]; // Las filas de A pasan a ser columnas de B
        FinPara
    FinPara
    
    // Impresión de la matriz resultante B
    Escribir "";
    Escribir "--- MATRIZ RESULTANTE B (TRANSPUESTA) ---";
    Para f <- 1 Hasta 3 Con Paso 1 Hacer
        Para c <- 1 Hasta 2 Con Paso 1 Hacer
            Escribir B[f, c], " " Sin Saltar;
        FinPara
        Escribir ""; // Salto de línea por cada fila terminada
    FinPara
FinAlgoritmo
