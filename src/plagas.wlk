import elementos.*

class Plaga {
	var property poblacion 
	var property trasmiteEnfermedades = poblacion >= 10
	
	method efectosDelAtaque() {
		poblacion += poblacion * 0.1
	}
	
	method nivelDeDanio()
	
}

class Cucarachas inherits Plaga {
	var property pesoPromedio
	
	override method nivelDeDanio() = poblacion / 2
	override method trasmiteEnfermedades() = super() and pesoPromedio >= 10
	
	override method efectosDelAtaque() {
		super()
		pesoPromedio += 2
		
	}
	
}

class Mosquitos inherits Plaga {
	
	override method nivelDeDanio() = poblacion
	override method trasmiteEnfermedades() = super() and poblacion % 3 == 0
}

class Pulgas inherits Plaga {
	
	override method nivelDeDanio() = poblacion * 2
}

class Garrapatas inherits Pulgas {
	
	override method efectosDelAtaque() {
		super()
		super()	
	}
}







