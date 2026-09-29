// Ejercicio 10. Cine: Venta de Asientos 
// Diseñe un programa que simule la sala de un cine usando una matriz de 5 filas y 5 columnas, 
// inicializada con ceros (0 = Asiento Libre). 
// El sistema debe permitir al usuario ingresar la fila y columna que desea comprar. 
// Si está en 0, cambiarlo a 1 (Ocupado) y mostrar éxito. Si ya es 1, 
// mostrar un mensaje indicando que el asiento está ocupado. 
// El programa finaliza cuando el usuario lo indique. 

Algoritmo ventaAsientos
	
	Definir sala, f, c, opcion, fila_user, col_user Como Entero;
    Dimension sala[5,5];
    
    // Inicializar la sala con ceros (0 = Asiento Libre)
    Para f <- 1 Hasta 5 Con Paso 1 Hacer
        Para c <- 1 Hasta 5 Con Paso 1 Hacer
            sala[f, c] <- 0;
        FinPara
    FinPara
    
    //opcion <- 1;
    Mientras opcion <> 2 Hacer
        Escribir "";
        Escribir "--- ESTADO DE LA SALA (0=Libre, 1=Ocupado) ---";
        Para f <- 1 Hasta 5 Con Paso 1 Hacer
            Para c <- 1 Hasta 5 Con Paso 1 Hacer
                Escribir sala[f, c], " " Sin Saltar;
            FinPara
            Escribir "";
        FinPara
        
        Escribir "";
        Escribir "1. Comprar Asiento";
        Escribir "2. Salir";
        Escribir "Seleccione una opción: ";
        Leer opcion;
        
        Si opcion = 1 Entonces
            Escribir "Ingrese número de fila (1-5): ";
            Leer fila_user;
            Escribir "Ingrese número de columna (1-5): ";
            Leer col_user;
            
            // Validar límites de la sala
            Si fila_user >= 1 Y fila_user <= 5 Y col_user >= 1 Y col_user <= 5 Entonces
                Si sala[fila_user, col_user] = 0 Entonces
                    sala[fila_user, col_user] <- 1;
                    Escribir "¡Compra realizada con éxito!";
                Sino
                    Escribir "El asiento ya está ocupado. Intente con otro.";
                FinSi
            Sino
                Escribir "Posición inválida. Las filas y columnas van del 1 al 5.";
            FinSi
        FinSi
    FinMientras
    
    Escribir "¡Gracias por usar el sistema de ventas!";
FinAlgoritmo
