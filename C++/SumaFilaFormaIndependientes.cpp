// Ejercicio 5. Suma de cada fila de forma independiente 
// Cree una matriz de 3 filas y 4 columnas con números ingresados por el usuario. 
// Calcule y muestre la suma de los elementos de cada fila por separado 
// (Ej: "La suma de la fila 1 es: X").

#include <iostream>
#include <windows.h>

using namespace std;

int main() {
	
	SetConsoleOutputCP(CP_UTF8);
	
    // Declaración de la matriz de 3 filas y 4 columnas
    int matriz[3][4];
    int suma_fila;
    
    // Ciclos para solicitar los datos al usuario
    for (int f = 0; f < 3; f++) {
        for (int c = 0; c < 4; c++) {
            cout << "Ingrese valor para la fila " << (f + 1) << " y columna " << (c + 1) << ": ";
            cin >> matriz[f][c];
        }
    }
    
    cout << endl << "--- RESULTADOS DE LA SUMA POR FILA ---" << endl;
    // Cálculo y muestra de la suma por cada fila de forma independiente
    for (int f = 0; f < 3; f++) {
        suma_fila = 0; // Reiniciar el acumulador al cambiar de fila
        for (int c = 0; c < 4; c++) {
            suma_fila += matriz[f][c];
        }
        cout << "La suma de la fila " << (f + 1) << " es: " << suma_fila << endl;
    }
    
    return 0;
}
