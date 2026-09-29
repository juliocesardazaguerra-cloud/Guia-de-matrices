// Ejercicio 4. Recorrido por columnas 
// Por defecto recorremos las matrices fila por fila. 
// Diseñe un programa que llene una matriz de 2 filas y 3 columnas, pero que la imprima de arriba hacia abajo (columna por columna). 
// (Pista: invierta el orden de los ciclos Para). 

Algoritmo recorridoColumnas
	Definir matriz, f, c Como Entero;
    Dimension matriz[2, 3];
    
    // Llenado de la matriz (fila por fila)
    Para f <- 1 Hasta 2 Con Paso 1 Hacer
        Para c <- 1 Hasta 3 Con Paso 1 Hacer
            Escribir "Ingrese valor para fila ", f, ", columna ", c, ": ";
            Leer matriz[f, c];
        FinPara
    FinPara
    
    Escribir "";
    Escribir "--- IMPRESIÓN COLUMNA POR COLUMNA ---";
    // Impresión invertida (columna por columna)
    Para c <- 1 Hasta 3 Con Paso 1 Hacer
        Escribir "Columna ", c, ": " Sin Saltar;
        Para f <- 1 Hasta 2 Con Paso 1 Hacer
            Escribir matriz[f, c], " " Sin Saltar;
        FinPara
        Escribir ""; // Genera un salto de línea al terminar cada columna
    FinPara
FinAlgoritmo
