import cosas.* 

object casaDePepeYJulian {
	const cosas = []

	method comprar(cosa) { cosas.add(cosa) }
	method cantidadDeCosasCompradas() { return cosas.size() }
	method tieneComida() { 
		return cosas.any { cosa => cosa.esComida() }
	}
	method vieneDeEquiparse() {
		return cosas.last().esElectrodomestico() or
			cosas.last().precio() > 5000
	}
	
	
	method esDerrochona() {
		return (cosas.sum{elemento => elemento.precio()}) >= 9000
	}
	
	
	
	method compraMasCara() {
		return cosas.max {cosa => cosa.precio()}
	}
	method electrodomesticosComprados() {		
		return cosas.filter { cosa => cosa.esElectrodomestico() }
	}
	method queFaltaComprarEmiliano(lista) {
		// leer en la guia la explicacion del difference
		return (lista.asSet()).difference(cosas.asSet())
	}
	method queFaltaComprar(lista) {
		return lista.filter { deseo => not cosas.contains(deseo) }
	}
	
	method faltaComida() {
		const queCompramosDeComida = cosas.filter {cosa => cosa.esComida() }
		return queCompramosDeComida.size() < 2
	}
	
	method faltaComidaCheto() {
		return cosas.count {cosa => cosa.esComida() } < 2
	}
	
	
}






