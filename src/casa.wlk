import cosas.* 

object casaDePepeYJulian {
	const property cosas = []
	const cuenta = cuentaCorriente
	
	method comprar(cosa) {
		cosas.add(cosa)
		self.gastar(cosa.precio())
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
		saldo -= dinero
	}
	
}
