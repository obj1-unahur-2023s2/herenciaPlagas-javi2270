import elementos.*

class Plaga {
	var property poblacion 
	var property trasmiteEnfermedades = poblacion >= 10
	
	method efectosDelAtaque() {
		poblacion += poblacion * 0.1
	}
}

class Cucarachas inherits Plaga {
	var property pesoPromedio
	
	method nivelDeDanio() = poblacion / 2
	
	override method trasmiteEnfermedades() = super() and pesoPromedio >= 10
	
	override method efectosDelAtaque() {
		super()
		pesoPromedio += 2
		
	}
	
}

class Pulgas inherits Plaga {
	
	method nivelDeDanio() = poblacion * 2
	
}

class Garrapatas inherits Pulgas {
	
	override method efectosDelAtaque() {
		super()
		super()
		
	}
}


class Mosquitos inherits Plaga {
	
	method nivelDeDanio() = poblacion
	
	override method trasmiteEnfermedades() = super() and poblacion % 3 == 0
	
}






