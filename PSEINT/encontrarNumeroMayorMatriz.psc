//  Ejercicio 6. Encontrar el número mayor en la matriz 
// Llene una matriz de 4x4. 
// Determine mediante un algoritmo cuál es el número más grande almacenado en toda la matriz y 
// muestre en qué fila y columna se encuentra. 

Algoritmo encontrarNumeroMayorMatriz
	Definir matriz, f, c, mayor, fila_mayor, col_mayor Como Entero;
    Dimension matriz[4, 4];
    
    // Ciclos para solicitar los datos al usuario
    Para f <- 1 Hasta 4 Con Paso 1 Hacer
        Para c <- 1 Hasta 4 Con Paso 1 Hacer
            Escribir "Ingrese valor para la fila ", f, " y columna ", c, ": ";
            Leer matriz[f, c];
        FinPara
    FinPara
    
    // Inicializar el mayor con el primer elemento de la matriz
    mayor <- matriz[1, 1];
    fila_mayor <- 1;
    col_mayor <- 1;
    
    // Recorrer la matriz para comparar y encontrar el número más grande
    Para f <- 1 Hasta 4 Con Paso 1 Hacer
        Para c <- 1 Hasta 4 Con Paso 1 Hacer
            Si matriz[f, c] > mayor Entonces
                mayor <- matriz[f, c];
                fila_mayor <- f;
                col_mayor <- c;
            FinSi
        FinPara
    FinPara
    
    Escribir "";
    Escribir "El número más grande almacenado es: ", mayor;
    Escribir "Se encuentra en la fila: ", fila_mayor, " y columna: ", col_mayor;
FinAlgoritmo
