// Ejercicio 9. Matriz Transpuesta 
// Cree una matriz A de 2 filas y 3 columnas. 
// Luego, cree una matriz B de 3 filas y 2 columnas y transfiera los datos de A hacia B, 
// de modo que las filas de A se conviertan en las columnas de B. Imprima la matriz resultante B.

#include <iostream>
#include <windows.h>

using namespace std;

int main() {
	
	SetConsoleOutputCP(CP_UTF8);
	
    // Declaración de matrices
    int A[2][3]; // Matriz original
    int B[3][2]; // Matriz transpuesta
    
    // Llenado de la matriz A
    cout << "--- INGRESO DE DATOS PARA LA MATRIZ A ---" << endl;
    for (int f = 0; f < 2; f++) {
        for (int c = 0; c < 3; c++) {
            cout << "Ingrese valor para A[" << (f + 1) << "][" << (c + 1) << "]: ";
            cin >> A[f][c];
        }
    }
    
    // Transferir datos de A hacia B (Transposición)
    for (int f = 0; f < 2; f++) {
        for (int c = 0; c < 3; c++) {
            B[c][f] = A[f][c]; // Las filas de A pasan a ser columnas de B
        }
    }
    
    // Impresión de la matriz resultante B
    cout << endl << "--- MATRIZ RESULTANTE B (TRANSPUESTA) ---" << endl;
    for (int f = 0; f < 3; f++) {
        for (int c = 0; c < 2; c++) {
            cout << B[f][c] << "\t";
        }
        cout << endl; // Salto de línea por cada fila terminada
    }
    
    return 0;
}
