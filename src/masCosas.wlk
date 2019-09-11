object compu {
	method precio() { return 500 * dolar.precioDeVenta() }	
	method esComida() { return false }
	method esElectrodomestico() { return true }
}

object dolar {
	var property precioDeVenta = 40
}
object dolar_largo {
	var cotizacion = 40
	method precioDeVenta() { return cotizacion }
	method cambiarCotizacion(nuevoValor) { cotizacion = nuevoValor }
}

object packDeComida {
	var plato
	var aderezo
	
	method plato() { return plato }
	method aderezo() { return aderezo }
	method configurar(unPlato, unAderezo) {
		plato = unPlato
		aderezo = unAderezo
	}
 	method precio() { return plato.precio() + aderezo.precio() }
 	
 	// este no esta bien porque plato y postre son cosas, no numeros
 	method precioIncorrecto() { return plato + aderezo }	
	
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object dolarViejo {
	method precioDeVenta() { return 40 }
}
