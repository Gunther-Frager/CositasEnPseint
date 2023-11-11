Algoritmo DibujarArbol
    DibujarArbolAnimado
FinAlgoritmo

SubProceso DibujarArbolAnimado
    Definir altura, i, fps Como Entero
    altura <- 11  //      Altura del tronco del árbol
	fps <- 15 // <------- cuadros por segundo, puede editarse
    Definir tiempoEntreCuadros Como Real
	tiempoEntreCuadros = 1000 / fps
	
	Definir duracionTotalSegundos Como Entero // duración total de la animación, en segundos
	duracionTotalSegundos <- 6 //  <------------  Se puede ajustar este valor
	
    // Definir las tres variaciones de la copa del árbol
    Dimension arbolLinea1[11]
    Dimension arbolLinea2[11]
    Dimension arbolLinea3[11]
    
    arbolLinea1[11] <- "        cCee88oo"	
	arbolLinea1[10] <- "     C8O8O8Q8DoOb o8oo"	
	arbolLinea1[9] <-  "    dOB69QO8PdUOpugoO9bD"	
	arbolLinea1[8] <- "  CgggbU8OU qOp qOd0UOdc@"	
	arbolLinea1[7] <- "    6OuU /p u gcOupdPp"	
	arbolLinea1[6] <- "      \\/\\// /doUuP"	
	arbolLinea1[5] <- "        \\\\\\////"
	arbolLinea1[4] <- "         |||/\\"
	arbolLinea1[3] <- "         |||\\/"
	arbolLinea1[2] <- "         |||||"
	arbolLinea1[1] <- "   .....//||||\\....."
	
	// Líneas para la variación 2 de la copa
	arbolLinea2[11] <- "        CcEe88oO"	
	arbolLinea2[10] <- "     c8O8o8Q8DoObOo8oo"	
	arbolLinea2[9] <- "    DoB69oO8PduOpUgoO9Bd"	
	arbolLinea2[8] <- "  cGGGbU8OuoqOp qOdOuOdcb"	
	arbolLinea2[7] <- "    6oUu /p u GcOupDpp"	
	arbolLinea2[6] <- "      \\/\\/J /DoUup"	
	arbolLinea2[5] <- "        \\\\\\////"
	arbolLinea2[4] <- "         |||/\\"
	arbolLinea2[3] <- "         |||\\/"
	arbolLinea2[2] <- "         |||||"
	arbolLinea2[1] <- "   .....//||||\\....."
	
	// Líneas para la variación 3 de la copa
	arbolLinea3[11] <- "        ccEE88Oo"	
	arbolLinea3[10] <- "     C8o8O8Q8DOOboo8Oo"	
	arbolLinea3[9] <- "    DoB69QO8pdUOpuGoO9BD"	
	arbolLinea3[8] <- "  cgGGBU8ou0qOp qOdoUodCb"	
	arbolLinea3[7] <- "    6oUu /P u GcouDdpP"	
	arbolLinea3[6] <- "      \\/\\// /DOuUp"	
	arbolLinea3[5] <- "        \\\\\\////"
	arbolLinea3[4] <- "         |||/\\"
	arbolLinea3[3] <- "         |||\\/"
	arbolLinea3[2] <- "         |||||"
	arbolLinea3[1] <- "   .....//||||\\....."
	
	// Define una variable para controlar las variaciones de la copa
    Definir variacionCopa Como Entero
    variacionCopa <- 1
	
	// Dibuja el árbol línea por línea de abajo hacia arriba
    Para i <- 1 Hasta altura Hacer
        // Mostrar espacio vacío en los renglones superiores
        Para j <- 1 Hasta (altura - i) Hacer
            ESCRIBIR ""
        Fin Para
        // Mostrar el árbol desde la última línea hasta la línea actual
        Para j <- i Hasta 1 Con Paso -1 Hacer
            ESCRIBIR arbolLinea1[j]
        Fin Para
        Esperar tiempoEntreCuadros Milisegundos
        Limpiar Pantalla
    Fin Para
	
	// Dibuja el tronco estático y alterna entre las variaciones de la copa
	Para i <- 1 Hasta (duracionTotalSegundos * fps) Hacer
		Limpiar Pantalla
		
		// Dibuja la copa del árbol (líneas 6 a 11) con la variación actual
		Para j <- 11 Hasta 6 Con Paso -1 Hacer
			Segun variacionCopa Hacer
				Caso 1:
					ESCRIBIR arbolLinea1[j]
				Caso 2:
					ESCRIBIR arbolLinea2[j]
				Caso 3:
					ESCRIBIR arbolLinea3[j]
			Fin Segun
		Fin Para
		
		// Dibuja el tronco (líneas 1 a 5)
		Para j <- 5 Hasta 1 Con Paso -1 Hacer
			ESCRIBIR arbolLinea1[j]
		Fin Para
		
		Esperar tiempoEntreCuadros Milisegundos
		
		// Alterna entre las variaciones de la copa
		variacionCopa <- variacionCopa + 1
		Si variacionCopa > 3 Entonces
			variacionCopa <- 1
		Fin Si
	Fin Para
  
FinSubProceso