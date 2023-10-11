import plagas.*

class Hogar {
	var property nivelDeMugre // int
	const confort	   // int	
	
	method esBueno() = nivelDeMugre <= (confort / 2)
	
	method recibirAtaque(plaga) {
		nivelDeMugre += plaga.nivelDeDanio()
		plaga.ataqueDePlaga()
	}

}

class Huerta {
	var property capacidadDeProduccion // int
	var nivel 
	
	method esBueno() = capacidadDeProduccion > nivel
	
	method recibirAtaque(plaga) {
		capacidadDeProduccion = if (plaga.trasmiteEnfermedades()) 
									{0.max(capacidadDeProduccion - (plaga.nivelDeDanio() * 0.1 + 10)) }
								else 
									{0.max(capacidadDeProduccion - plaga.nivelDeDanio() * 0.1)}
		plaga.ataqueDePlaga()
	}
	
}

class Mascota {
	var property nivelDeSalud // int
	
	method esBueno() = nivelDeSalud > 250
	
	method recibirAtaque(plaga) {
		nivelDeSalud = if (plaga.trasmiteEnfermedades())
					   		{0.max(nivelDeSalud - plaga.nivelDeDanio())} 
					   else {0}
		plaga.ataqueDePlaga()
	}

}


