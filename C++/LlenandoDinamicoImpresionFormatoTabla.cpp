// Ejercicio 2. Llenado dinámico e impresión en formato tabla 
// Solicite al usuario que ingrese los datos para llenar una matriz de 3 filas y 3 columnas. 
// Luego, imprima la matriz en pantalla respetando el formato de cuadrícula (filas y columnas). 

#include <iostream>
#include <windows.h>

using namespace std;

int main() {
	
	SetConsoleOutputCP(CP_UTF8);
	
    // Declaración de la matriz 3x3
    int tabla[3][3];
    
    // Ciclos anidados para solicitar los datos al usuario
    for (int f = 0; f <= 2; f++) {
        for (int c = 0; c <= 2; c++) {
            cout << "Ingrese valor para la fila " << (f + 1) << " y columna " << (c + 1) << ": ";
            cin >> tabla[f][c];
        }
    }
    
    // Impresión en formato de cuadrícula
    cout << endl << "--- MATRIZ INGRESADA ---" << endl;
    for (int f = 0; f <= 2; f++) {
        for (int c = 0; c <= 2; c++) {
            cout << tabla[f][c] << "\t"; // \t agrega una tabulación para alinear visualmente las columnas
        }
        cout << endl; // Salto de línea al terminar cada fila
    }
    
    return 0;
}
