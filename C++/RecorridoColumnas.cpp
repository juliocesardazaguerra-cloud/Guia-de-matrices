// Ejercicio 4. Recorrido por columnas 
// Por defecto recorremos las matrices fila por fila. 
// Diseñe un programa que llene una matriz de 2 filas y 3 columnas, pero que la imprima de arriba hacia abajo (columna por columna). 
// (Pista: invierta el orden de los ciclos Para).

#include <iostream>
#include <windows.h>

using namespace std;

int main() {
	
	SetConsoleOutputCP(CP_UTF8);
	
    // Declaración de la matriz de 2 filas y 3 columnas
    int matriz[2][3];
    
    // Llenado de la matriz (fila por fila)
    for (int f = 0; f < 2; f++) {
        for (int c = 0; c < 3; c++) {
            cout << "Ingrese valor para fila " << (f + 1) << ", columna " << (c + 1) << ": ";
            cin >> matriz[f][c];
        }
    }
    
    cout << endl << "--- IMPRESION COLUMNA POR COLUMNA ---" << endl;
    // Impresión invertida (columna por columna)
    for (int c = 0; c < 3; c++) {
        cout << "Columna " << (c + 1) << ": ";
        for (int f = 0; f < 2; f++) {
            cout << matriz[f][c] << " ";
        }
        cout << endl; // Genera un salto de línea al terminar cada columna
    }
    
    return 0;
}
