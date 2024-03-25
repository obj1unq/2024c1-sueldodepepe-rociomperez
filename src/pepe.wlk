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
	
}

// categorias
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

// bonos por resultados
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

// bonos por presentismo

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