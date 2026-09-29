// Ejercicio 3. Suma total de los elementos 
// Modifique el ejercicio anterior para que, después de imprimir la matriz 3x3, 
// el programa calcule y muestre la suma total de todos los números ingresados en la matriz.

#include <iostream>
#include <windows.h>

using namespace std;

int main() {
	
	SetConsoleOutputCP(CP_UTF8);
	
    // Declaración de la matriz 3x3 y acumulador
    int tabla[3][3];
    int suma_total = 0; // Inicializar la suma en cero
    
    // Ciclos anidados para solicitar los datos al usuario
    for (int f = 0; f < 3; f++) {
        for (int c = 0; c < 3; c++) {
            cout << "Ingrese valor para la fila " << (f + 1) << " y columna " << (c + 1) << ": ";
            cin >> tabla[f][c];
        }
    }
    
    // Impresión en cuadrícula y cálculo de la suma
    cout << endl << "--- MATRIZ INGRESADA ---" << endl;
    for (int f = 0; f < 3; f++) {
        for (int c = 0; c < 3; c++) {
            cout << tabla[f][c] << "\t";
            suma_total += tabla[f][c]; // Suma acumulativa de cada elemento
        }
        cout << endl; // Salto de línea al terminar cada fila
    }
    
    // Mostrar el resultado final
    cout << endl;
    cout << "La suma total de todos los números ingresados es: " << suma_total << endl;
    
    return 0;
}
