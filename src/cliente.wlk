object ludmila {
	method precioPorKm() {
		return (18)
	}
}

object anaMaria {
	method precioPorKm() {
		return (30)
	}
}

object teresa {
	method precioPorKm() {
		return (22)
	}
}

object melina {
	var _cliente = null
	
	method trabajaPara(cliente) {
		_cliente = cliente
	}
	
	method precioPorKm() {
		return _cliente.precioPorKm() - 3
	}
}
