object pepe {
	
	var categoria = cadete
	var bonoResultado = resultadoNulo
	var bonoPresentismo = nulo
	var faltas = 0
	
	method sueldo() {
		return self.neto() + self.bonoResultado() + self.presentismo()
	}
	
	method neto() {
		return categoria.neto()
	}
	
	method categoria(_categoria) {
		categoria = _categoria
	}
	
	method bonoResultado() {
		return bonoResultado.valor(self)
		
	}
	
	method bonoResultado(_bonoResultado) {
		bonoResultado = _bonoResultado
	}
	
	method presentismo() {
		return  bonoPresentismo.valor(self)
	}
	
	method bonoPresentismo(_bonoPresentismo) {
		bonoPresentismo = _bonoPresentismo
	}
	
	method faltas(_faltas) {
		faltas = _faltas
	}
	
	method faltas() {
		return faltas
	}
	
}

// CATEGORIAS

object gerente {

	method neto() {
		return 15000
	}

}

object cadete {

	method neto() {
		return 20000
	}

}

object vendedor {
	
	method neto() {
		return 16000
	}
	
}

object medioTiempo {
	
	var categoriaBase = cadete
	
	method neto() {
		return categoriaBase.neto() / 2
	}
	
	method categoriaBase(categoria) {
		categoriaBase = categoria
	}
	
}

// BONOS POR RESULTADO

object porcentual {

	method valor(empleado) {
		return empleado.neto() * 0.10
	}

}

object fijo {

	method valor(empleado) {
		return 800
	}

}

object resultadoNulo {

	method valor(empleado) {
		return 0
	}

}

// BONOS POR PRESENTISMO

object normal {
	
	method valor(empleado) {
		return if (empleado.faltas() == 0) {2000}
		else if (empleado.faltas() == 1) {1000}
		else {0}
		// return (2000 - empleados.faltas() * 1000).max(0)
	}

}

object ajuste {
	
	method valor(empleado) {
		return if (empleado.faltas() == 0) {100}
		else {0}
	}

}

object demagogico {

	method valor(empleado) {
		return if (empleado.neto() < 18000) {500}
		else {300}
	}

}

object nulo {

	method valor(empleado) {
		return 0
	}

}

// BONUS 

object sofia {
	
	var categoria = cadete
	var bonoResultado = resultadoNulo
	
	method sueldo() {
		return self.neto() + self.bonoResultado()
	}
	
	method neto() {
		return categoria.neto() * 1.3
	}
	
	method categoria(_categoria) {
		categoria = _categoria
	}
	
	method bonoResultado() {
		return bonoResultado.valor(self)
		
	}
	
	method bonoResultado(_bonoResultado) {
		bonoResultado = _bonoResultado
	}
	
}

object roque {
	
	var bonoResultado = resultadoNulo
		
	method sueldo() {
		return self.neto() + self.bonoResultado() + 9000
	}
	
	method neto() {
		return 28000
	}
	
	method bonoResultado() {
		return bonoResultado.valor(self)
		
	}
	
	method bonoResultado(_bonoResultado) {
		bonoResultado = _bonoResultado
	}
}

object ernesto {
	
	var companiero = roque
	var bonoPresentismo = nulo
	
	method sueldo() {
		return self.neto() + self.presentismo()
	}
	
	method neto() {
		return companiero.neto()
	}	
	
	method companiero(_companiero) {
		companiero = _companiero
	}
	
	method companiero() {
		return companiero
	}
	
	method presentismo() {
		return  bonoPresentismo.valor(self)
	}
	
	method bonoPresentismo(_bonoPresentismo) {
		bonoPresentismo = _bonoPresentismo
	}
	
	method faltas() {
		return 0
	}
	
}