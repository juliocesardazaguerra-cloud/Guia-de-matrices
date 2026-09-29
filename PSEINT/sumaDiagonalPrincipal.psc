// Ejercicio 7. Suma de la diagonal principal 
// Cree una matriz cuadrada de 3x3. Un elemento pertenece a la diagonal principal 
// si su número de fila es exactamente igual a su número de columna (ej. [1,1], [2,2]). 
// Sume únicamente los elementos de esta diagonal. 
Algoritmo sumaDiagonalPrincipal
	Definir matriz, f, c, suma_diagonal Como Entero;
    Dimension matriz[3, 3];
    
    // Ciclos para solicitar los datos al usuario
    Para f <- 1 Hasta 3 Con Paso 1 Hacer
        Para c <- 1 Hasta 3 Con Paso 1 Hacer
            Escribir "Ingrese valor para la fila ", f, " y columna ", c, ": ";
            Leer matriz[f, c];
        FinPara
    FinPara
    
    suma_diagonal <- 0;
    
    // Sumar únicamente los elementos de la diagonal principal (donde f == c)
    Para f <- 1 Hasta 3 Con Paso 1 Hacer
        suma_diagonal <- suma_diagonal + matriz[f, f];
    FinPara
    
    Escribir "";
    Escribir "La suma de los elementos de la diagonal principal es: ", suma_diagonal;
FinAlgoritmo
