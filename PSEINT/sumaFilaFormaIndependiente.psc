// Ejercicio 5. Suma de cada fila de forma independiente 
// Cree una matriz de 3 filas y 4 columnas con números ingresados por el usuario. 
// Calcule y muestre la suma de los elementos de cada fila por separado 
// (Ej: "La suma de la fila 1 es: X"). 

Algoritmo sumaFilaFormaIndependiente
	Definir matriz, f, c, suma_fila Como Entero;
    Dimension matriz[3, 4];
    
    // Ciclos para solicitar los datos al usuario
    Para f <- 1 Hasta 3 Con Paso 1 Hacer
        Para c <- 1 Hasta 4 Con Paso 1 Hacer
            Escribir "Ingrese valor para la fila ", f, " y columna ", c, ": ";
            Leer matriz[f, c];
        FinPara
    FinPara
    
    Escribir "";
    Escribir "--- RESULTADOS DE LA SUMA POR FILA ---";
    // Cálculo y muestra de la suma por cada fila de forma independiente
    Para f <- 1 Hasta 3 Con Paso 1 Hacer
        suma_fila <- 0; // Reiniciar el acumulador al cambiar de fila
        Para c <- 1 Hasta 4 Con Paso 1 Hacer
            suma_fila <- suma_fila + matriz[f, c];
        FinPara
        Escribir "La suma de la fila ", f, " es: ", suma_fila;
    FinPara
FinAlgoritmo
