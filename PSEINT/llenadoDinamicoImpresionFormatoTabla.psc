// Ejercicio 2. Llenado dinámico e impresión en formato tabla 
// Solicite al usuario que ingrese los datos para llenar una matriz de 3 filas y 3 columnas. Luego, 
// imprima la matriz en pantalla respetando el formato de cuadrícula (filas y columnas). 

Algoritmo llenadoDinamicoImpresionFormatoTabla
	Definir tabla, f, c Como Entero;
    Dimension tabla[3, 3];
    
    // Ciclos anidados para solicitar los datos al usuario
    Para f <- 1 Hasta 3 Con Paso 1 Hacer
        Para c <- 1 Hasta 3 Con Paso 1 Hacer
            Escribir "Ingrese valor para la fila ", f, " y columna ", c, ": ";
            Leer tabla[f, c];
        FinPara
    FinPara
    
    // Impresión en pantalla en formato de cuadrícula
    Escribir "";
    Escribir "--- MATRIZ INGRESADA ---";
    Para f <- 1 Hasta 3 Con Paso 1 Hacer
        Para c <- 1 Hasta 3 Con Paso 1 Hacer
            Escribir tabla[f, c], " " Sin Saltar;
        FinPara
        Escribir ""; // Genera un salto de línea al finalizar cada fila
    FinPara
FinAlgoritmo
