// Ejercicio 8. Sistema de Notas por Estudiante (Matriz + Vectores) 
// Un profesor necesita almacenar las notas de 4 estudiantes. 
// Cada estudiante tiene 3 notas. Utilice un vector para los nombres de los estudiantes y una matriz
// de 4x3 para almacenar sus notas. Calcule el promedio de cada estudiante e indíquelo en pantalla.

#include <iostream>
#include <string>
#include <windows.h>

using namespace std;

int main() {
	
	SetConsoleOutputCP(CP_UTF8);
	
    // Definición de estructuras de datos
    string nombres[4];
    double notas[4][3];
    
    // Captura de datos de los estudiantes y sus respectivas notas
    for (int f = 0; f < 4; f++) {
        cout << "Ingrese el nombre del estudiante " << (f + 1) << ": ";
        cin >> nombres[f];
        
        for (int c = 0; c < 3; c++) {
            cout << "  Ingrese la nota " << (c + 1) << " para " << nombres[f] << ": ";
            cin >> notas[f][c];
        }
        cout << endl;
    }
    
    cout << "--- REPORTE DE PROMEDIOS ---" << endl;
    // Cálculo del promedio e impresión en pantalla
    for (int f = 0; f < 4; f++) {
        double suma_notas = 0; // Inicializar acumulador para el estudiante actual
        for (int c = 0; c < 3; c++) {
            suma_notas += notas[f][c];
        }
        double promedio = suma_notas / 3.0;
        cout << "Estudiante: " << nombres[f] << " -> Promedio: " << promedio << endl;
    }
    
    return 0;
}
