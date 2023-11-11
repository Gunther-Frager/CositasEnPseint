Algoritmo eaeaea
	MostrarFechaHora
FinAlgoritmo

SubProceso MostrarFechaHora
    // Definir variables
    Definir fecha, hora Como Cadena
    Definir formatoFechaHora Como Cadena
    Definir tiempoEspera Como Entero
    tiempoEspera <- 1000  // Actualizar cada segundo (1000 ms)
    
    // Bucle para mostrar la fecha y hora en tiempo real
    Mientras Verdadero Hacer
        Limpiar Pantalla
        fecha <- ConvertirATexto(fechaActual())
        hora <- ConvertirATexto(horaActual())
        
		Escribir "Este programa es un bucle infinito que"
		Escribir "muestra la hora y fecha actuales, en vivo."
		
        // Formatear la fecha y la hora
        formatoFechaHora <- "|  " + Subcadena(hora, 1, 2)  + ":" + Subcadena(hora, 3, 4) + ":" + Subcadena(hora, 5, 6) + " ~ " + Subcadena(fecha, 7, 8) + "/" + Subcadena(fecha, 5, 6) + "/" + Subcadena(fecha, 1, 4) + "  |"
        
		Escribir ""
		Escribir "+-------------------------+"
        ESCRIBIR formatoFechaHora
		Escribir "+-------------------------+"
		
        Esperar tiempoEspera Milisegundos
		Limpiar Pantalla
    Fin Mientras
FinSubProceso
