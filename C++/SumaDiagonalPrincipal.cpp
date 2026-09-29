// Ejercicio 7. Suma de la diagonal principal 
// Cree una matriz cuadrada de 3x3. Un elemento pertenece a la diagonal principal 
// si su número de fila es exactamente igual a su número de columna (ej. [1,1], [2,2]). 
// Sume únicamente los elementos de esta diagonal. 

#include <iostream>
#include <windows.h>

using namespace std;

int main() {
	
	SetConsoleOutputCP(CP_UTF8);
	
    // Declaración de la matriz de 3x3 y acumulador
    int matriz[3][3];
    int suma_diagonal = 0;
    
    // Ciclos para solicitar los datos al usuario
    for (int f = 0; f < 3; f++) {
        for (int c = 0; c < 3; c++) {
            cout << "Ingrese valor para la fila " << (f + 1) << " y columna " << (c + 1) << ": ";
            cin >> matriz[f][c];
        }
    }
    
    // Sumar únicamente los elementos de la diagonal principal (donde f == c)
    for (int f = 0; f < 3; f++) {
        suma_diagonal += matriz[f][f];
    }
    
    cout << endl;
    cout << "La suma de los elementos de la diagonal principal es: " << suma_diagonal << endl;
    
    return 0;
}
