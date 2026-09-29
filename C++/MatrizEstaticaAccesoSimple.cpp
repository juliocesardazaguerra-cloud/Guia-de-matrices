// Ejercicio 1. Matriz estática y acceso simple 
// Cree una matriz de 2x2. Asigne manualmente un valor diferente a cada una de las 4 posiciones. 
// Luego, imprima los valores ubicados en la diagonal principal (posición [1,1] y [2,2]).

#include <iostream>
#include <windows.h>

using namespace std;

int main() {
	
	SetConsoleOutputCP(CP_UTF8);
	
	int f,c;
    // Declaración de la matriz de 2 filas y 2 columnas
    int mi_matriz[2][2];
    
    // Asignación manual de valores
    mi_matriz[0][0] = 10; // Equivalente a la Fila 1, Columna 1
    mi_matriz[0][1] = 20; // Equivalente a la Fila 1, Columna 2
    mi_matriz[1][0] = 30; // Equivalente a la Fila 2, Columna 1
    mi_matriz[1][1] = 40; // Equivalente a la Fila 2, Columna 2
    
    cout << "Matriz Actual" << endl;
    
    // Mostrar valores de la matriz actual
    for(int f = 0; f < 2; f++ ){
    	for(int c = 0; c < 2; c++){
    		cout << mi_matriz[f][c] << "\t"; // Imprime el número y tabula
		}
		cout << endl; // Da un salto de línea al terminar cada fila
	}
	cout << "---------------------" << endl;
    
    // Imprimir los elementos de la diagonal principal
    cout << "Elemento en la posicion [0][0] (Diagonal principal): " << mi_matriz[0][0] << endl;
    cout << "Elemento en la posicion [1][1] (Diagonal principal): " << mi_matriz[1][1] << endl;
    
    return 0;
}
