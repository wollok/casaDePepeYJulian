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
		saldo -= dinero
	}
	
}
