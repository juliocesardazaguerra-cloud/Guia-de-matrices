// Ejercicio 10. Cine: Venta de Asientos 
// Diseñe un programa que simule la sala de un cine usando una matriz de 5 filas y 5 columnas, 
// inicializada con ceros (0 = Asiento Libre). 
// El sistema debe permitir al usuario ingresar la fila y columna que desea comprar. 
// Si está en 0, cambiarlo a 1 (Ocupado) y mostrar éxito. Si ya es 1, 
// mostrar un mensaje indicando que el asiento está ocupado. 
// El programa finaliza cuando el usuario lo indique.
#include <iostream>
#include <windows.h>

using namespace std;

int main() {
	
	SetConsoleOutputCP(CP_UTF8);
	
    // Matriz de 5x5 inicializada completamente en 0
    int sala[5][5] = {0};
    int opcion;
    int fila_user, col_user;
    
    do {
        cout << endl << "--- ESTADO DE LA SALA (0=Libre, 1=Ocupado) ---" << endl;
        for (int f = 0; f < 5; f++) {
            for (int c = 0; c < 5; c++) {
                cout << sala[f][c] << " ";
            }
            cout << endl;
        }
        
        cout << endl << "1. Comprar Asiento" << endl;
        cout << "2. Salir" << endl;
        cout << "Seleccione una opcion: ";
        cin >> opcion;
        
        if (opcion == 1) {
            cout << "Ingrese numero de fila (1-5): ";
            cin >> fila_user;
            cout << "Ingrese numero de columna (1-5): ";
            cin >> col_user;
            
            // Ajustar indices a base 0 para C++
            int f_idx = fila_user - 1;
            int c_idx = col_user - 1;
            
            // Validar límites de la sala
            if (f_idx >= 0 && f_idx < 5 && c_idx >= 0 && c_idx < 5) {
                if (sala[f_idx][c_idx] == 0) {
                    sala[f_idx][c_idx] = 1;
                    cout << "¡Compra realizada con exito!" << endl;
                } else {
                    cout << "El asiento ya esta ocupado. Intente con otro." << endl;
                }
            } else {
                cout << "Posicion invalida. Las filas y columnas van del 1 al 5." << endl;
            }
        }
        
    } while (opcion != 2);
    
    cout << "¡Gracias por usar el sistema de ventas!" << endl;
    
    return 0;
}
