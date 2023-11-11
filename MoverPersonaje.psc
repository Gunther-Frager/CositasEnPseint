Algoritmo MoverPersonaje
    // Definir dimensiones del mapa
    Definir ancho, alto Como Entero
    ancho <- 40
    alto <- 8
    
    // Posición inicial del personaje en el centro del mapa
    personajeX <- ancho / 2
    personajeY <- alto / 2
    
    // Bucle principal
    Repetir
        // Limpiar la pantalla
        Limpiar Pantalla
        
        // Dibujar borde superior del mapa
        Escribir "+", RepetirTexto("-", ancho - 2), "+"
        
        // Dibujar contenido del mapa
        Para i <- 1 Hasta alto - 2 Hacer
            Si i = personajeY Entonces
                // Dibujar fila con el personaje
                Escribir "|", RepetirTexto(" ", personajeX - 1), "P", RepetirTexto(" ", ancho - personajeX - 2), "|"
            Sino
                // Dibujar fila sin el personaje
                Escribir "|", RepetirTexto(" ", ancho - 2), "|"
            Fin Si
        Fin Para
        
        // Dibujar borde inferior del mapa
        Escribir "+", RepetirTexto("-", ancho - 2), "+"
        
		// Mostrar instrucciones al usuario
		Escribir "|   Presiona la TECLA y luego ENTER:   |"
		Escribir "|     Arriba = W       Abajo = S       |"
		Escribir "|     Izquierda = A    Derecha = D     |"
		Escribir "+--------------------------------------+"
		
        // Leer la tecla del usuario
        Leer teclaUsuario
        
        // Mover el personaje hacia arriba si la tecla es 'w' y no está en el borde superior
        Si teclaUsuario = "w" y personajeY > 2 Entonces
            personajeY <- personajeY - 1
        Fin Si
        
        // Mover el personaje hacia abajo si la tecla es 's' y no está en el borde inferior
        Si teclaUsuario = "s" y personajeY < alto - 3 Entonces
            personajeY <- personajeY + 1
        Fin Si
        
        // Mover el personaje hacia la izquierda si la tecla es 'a' y no está en el borde izquierdo
        Si teclaUsuario = "a" y personajeX > 2 Entonces
            personajeX <- personajeX - 1
        Fin Si
        
        // Mover el personaje hacia la derecha si la tecla es 'd' y no está en el borde derecho
        Si teclaUsuario = "d" y personajeX < ancho - 3 Entonces
            personajeX <- personajeX + 1
        Fin Si
    Hasta Que teclaUsuario = "q" // Salir del bucle cuando se presiona la tecla 'q'
    
    Limpiar Pantalla // Limpiar la pantalla al salir del bucle
FinAlgoritmo

// Subproceso para repetir un texto una cierta cantidad de veces
SubProceso resultado <- RepetirTexto(texto, cantidad)
    Definir resultado Como Cadena
    resultado <- ""
    Para i <- 1 Hasta cantidad Hacer
        resultado <- resultado + texto
    Fin Para
FinSubProceso
