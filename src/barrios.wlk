import elementos.*

class Barrio {
	const elementos = []
	
	method esElementoBueno(elemento) = elementos.contains(elemento) and elemento.esBueno()
	
	method cantElemBuenos() = elementos.count({e => e.esBueno()})
	
	method cantElemMalos() = elementos.count({e => not e.esBueno()})
	
	method esCopado() = self.cantElemBuenos() > self.cantElemMalos()
	
	
	
}
