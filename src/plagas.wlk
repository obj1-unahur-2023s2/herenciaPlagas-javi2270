

class Plaga {
	var property poblacion 
	var property trasmiteEnfermedades = poblacion >= 10
	
}

class Cucarachas inherits Plaga {
	var property pesoPromedio
	
	method nivelDeDanio() = poblacion / 2
	
	override method trasmiteEnfermedades() = super() and pesoPromedio >= 10
	
}

class Pulgas inherits Plaga {
	
	method nivelDeDanio() = poblacion * 2
	
}

class Garrapatas inherits Pulgas {
	
}


class Mosquitos inherits Plaga {
	
	method nivelDeDanio() = poblacion
	
	override method trasmiteEnfermedades() = super() and poblacion % 3 == 0
	
}






