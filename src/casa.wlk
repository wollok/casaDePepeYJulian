import cosas.* 

object casaDePepeYJulian {
	const property cosas = []
	const cuenta = cuentaCorriente
	
	method comprar(cosa) {
		self.gastar(cosa.precio())
		cosas.add(cosa)
	}
		
	method gastar(dinero) {
		cuenta.extraer(dinero)
	}
	
}

object cuentaCorriente {
	var property saldo = 0
	
	method depositar(dinero) {
		saldo += dinero
	}
	
	method extraer(dinero) {
		self.validarExtraccion(dinero) 
		saldo -= dinero
	}
	
	method puedeExtraer(dinero) {
		return dinero <= saldo
	}
	
	method validarExtraccion(dinero) {
		if (not self.puedeExtraer(dinero)) {
			self.error("no se puede extraer " + dinero +  " saldo: " + saldo)
		}
	}
	
}
