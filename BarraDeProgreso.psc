// barra de progreso
SubProceso BarraDeProgresoAnimada
    Definir anchoTotal, anchoBarra Como Entero
    anchoTotal <- 20
    anchoBarra <- 0
    Limpiar Pantalla    
    
    Mientras anchoBarra < anchoTotal Hacer
        anchoBarra <- anchoBarra + 1
        Limpiar Pantalla
		Mostrar("/------------------------------------\"); // agrega caracteres hasta el ancho de la barra
        Escribir "| Cargando... [", RepetirTexto("#", anchoBarra), RepetirTexto(" ", anchoTotal - anchoBarra), "] |"
		Mostrar("\------------------------------------/");
        Esperar 100 Milisegundos
    Fin Mientras
    
    Esperar 300 Milisegundos
    Limpiar Pantalla	
FinSubProceso

// Función para repetir caracteres
SubProceso caracterRepetido <- RepetirTexto(caracter, cantidad)
    Definir caracterRepetido Como Cadena
    caracterRepetido <- ""
    Para i <- 1 Hasta cantidad Hacer // concatena el caracter que recibe por n cantidad de veces
        caracterRepetido <- caracterRepetido + caracter
    Fin Para
FinSubProceso

Algoritmo BarraDeProgreso
	BarraDeProgresoAnimada
FinAlgoritmo