Algoritmo Ejercicio2_Matriz
    Definir tabla, f, c Como Entero;
    Dimension tabla[3,3];
    
    // Ciclos anidados para solicitar los datos al usuario (índices 0 al 2)
    Para f <- 0 Hasta 2 Con Paso 1 Hacer
        Para c <- 0 Hasta 2 Con Paso 1 Hacer
            Escribir "Ingrese valor para la fila ", f + 1, " y columna ", c + 1, ": ";
            Leer tabla[f, c];
        FinPara
    FinPara
    
    // Impresión en pantalla en formato de cuadrícula
    Escribir "";
    Escribir "--- MATRIZ INGRESADA ---";
    Para f <- 0 Hasta 2 Con Paso 1 Hacer
        Para c <- 0 Hasta 2 Con Paso 1 Hacer
            Escribir tabla[f, c], " " Sin Saltar;
        FinPara
        Escribir ""; // Genera un salto de línea al finalizar cada fila
    FinPara
FinAlgoritmo

