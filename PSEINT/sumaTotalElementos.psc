// Ejercicio 3. Suma total de los elementos 
// Modifique el ejercicio anterior para que, después de imprimir la matriz 3x3, 
// el programa calcule y muestre la suma total de todos los números ingresados en la matriz. 

Algoritmo sumaTotalElementos
	Definir tabla, f, c, suma_total Como Entero;
    Dimension tabla[3, 3];
    
    suma_total <- 0; // Inicializar el acumulador en cero
    
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
            suma_total <- suma_total + tabla[f, c]; // Se acumula cada elemento
        FinPara
        Escribir ""; // Genera un salto de línea al finalizar cada fila
    FinPara
    
    // Mostrar el resultado de la suma total
    Escribir "";
    Escribir "La suma total de todos los números ingresados es: ", suma_total;
FinAlgoritmo
