//  Ejercicio 6. Encontrar el número mayor en la matriz 
// Llene una matriz de 4x4. 
// Determine mediante un algoritmo cuál es el número más grande almacenado en toda la matriz y 
// muestre en qué fila y columna se encuentra. 

#include <iostream>
#include <windows.h>

using namespace std;

int main() {
	
	SetConsoleOutputCP(CP_UTF8);
	
    // Declaración de la matriz de 4x4 y variables de control
    int matriz[4][4];
    int mayor, fila_mayor, col_mayor;
    
    // Ciclos para solicitar los datos al usuario
    for (int f = 0; f < 4; f++) {
        for (int c = 0; c < 4; c++) {
            cout << "Ingrese valor para la fila " << (f + 1) << " y columna " << (c + 1) << ": ";
            cin >> matriz[f][c];
        }
    }
    
    // Inicializar el mayor con el primer elemento de la matriz (posición [0][0])
    mayor = matriz[0][0];
    fila_mayor = 0;
    col_mayor = 0;
    
    // Recorrer la matriz para comparar y encontrar el número más grande
    for (int f = 0; f < 4; f++) {
        for (int c = 0; c < 4; c++) {
            if (matriz[f][c] > mayor) {
                mayor = matriz[f][c];
                fila_mayor = f;
                col_mayor = c;
            }
        }
    }
    
    cout << endl << "--- Matriz Actual ---" << endl;
        for (int f = 0; f < 4; f++) {
            for (int c = 0; c < 4; c++) {
                cout << matriz[f][c] << " ";
            }
            cout << endl;
        }
    
    cout << endl;
    cout << "El numero mas grande almacenado es: " << mayor << endl;
    cout << "Se encuentra en la fila: " << (fila_mayor + 1) << " y columna: " << (col_mayor + 1) << endl;
    
    return 0;
}
