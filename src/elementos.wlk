import plagas.*

class Elemento {
	method recibirAtaque(unaPlaga) {
		unaPlaga.efectosDelAtaque()
	}
}

class Hogar inherits Elemento {
	var property nivelDeMugre // int
	const confort	   // int	
	
	method esBueno() = nivelDeMugre <= (confort / 2)
	
	override method recibirAtaque(unaPlaga) {
		nivelDeMugre += unaPlaga.nivelDeDanio()
		super(unaPlaga)
	}

}

class Huerta inherits Elemento {
	var property capacidadDeProduccion // int
	var nivel 
	
	method esBueno() = capacidadDeProduccion > nivel
	
	override method recibirAtaque(unaPlaga) {
		capacidadDeProduccion = if (unaPlaga.trasmiteEnfermedades()) 
									{0.max(capacidadDeProduccion - (unaPlaga.nivelDeDanio() * 0.1 + 10)) }
								else 
									{0.max(capacidadDeProduccion - unaPlaga.nivelDeDanio() * 0.1)}
		super(unaPlaga)
	}
	
}

class Mascota inherits Elemento {
	var property nivelDeSalud // int
	
	method esBueno() = nivelDeSalud > 250
	
	override method recibirAtaque(unaPlaga) {
		nivelDeSalud = if (unaPlaga.trasmiteEnfermedades())
					   		{0.max(nivelDeSalud - unaPlaga.nivelDeDanio())} 
					   else {0}
		super(unaPlaga)	
	}

}


