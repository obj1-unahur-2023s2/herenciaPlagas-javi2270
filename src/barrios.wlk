import elementos.*

class Barrio {
	const barrio = #{}
	
	method elementoBueno(elemento) = barrio.contains(elemento) and elemento.esBueno()
	
	method cantElemBuenos() = barrio.count({e => e.esBueno()})
	
	method cantElemMalos() = barrio.count({e => not e.esBueno()})
	
	method esCopado() = self.cantElemBuenos() > self.cantElemMalos()
	
	
	
}
