// Ejercicio 1. Matriz estática y acceso simple 
// Cree una matriz de 2x2. Asigne manualmente un valor diferente a cada una de las 4 posiciones. 
// Luego, imprima los valores ubicados en la diagonal principal (posición [1,1] y [2,2]). 

Algoritmo matrizEstaticaAccesoSimple
	Definir mi_matriz Como Entero;
    Dimension mi_matriz[2, 2];
    
    // Asignación manual
    mi_matriz[1, 1] <- 10;
    mi_matriz[1, 2] <- 20;
    mi_matriz[2, 1] <- 30;
    mi_matriz[2, 2] <- 40;
    
    // Imprimir diagonal principal
    Escribir "Elemento en: ", mi_matriz[1, 1];
    Escribir "Elemento en: ", mi_matriz[2, 2];
FinAlgoritmo
