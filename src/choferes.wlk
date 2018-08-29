import cliente.*

object roxana {
	method precioViaje(cliente,kms) {
		return cliente.precioPorKm() * kms
	}
}

object gabriela {
	method precioViaje(cliente,kms) {
		return cliente.precioPorKm() * kms * 1.2
	}
}

object mariela {
	method precioViaje(cliente,kms) {
		if (cliente.precioPorKm()*kms < 50) {
			return 50
		} else {
			return cliente.precioPorKm()*kms
		}
	}
}

object juana {
	method precioViaje(cliente,kms) {
		if (kms <= 8) {
			return 100
		} else {
			return 200
		}
	}
}

object lucia {
	var _chofer = null
	
	method reemplazarChofer(chofer) {
		_chofer = chofer
	}
	
	method precioViaje(cliente,kms) {
		return _chofer.precioViaje(cliente,kms)
	}
}

object oficina {
	var _chofer1 = null
	var _chofer2 = null
	var _aux = null
	
	method asignarChoferes(chofer1, chofer2) {
		_chofer1 = chofer1
		_chofer2 = chofer2
	}
	
	method cambiarPrimerChoferPor(chofer) {
		_chofer1 = chofer
	}
	
	method cambiarSegundoChoferPor(chofer) {
		_chofer2 = chofer
	}
	
	method intercambiarChoferes() {
		_aux = _chofer1
		_chofer1 = _chofer2
		_chofer2 = _aux
	}
	
	method choferElegidoParaViaje(cliente, kms) {
		
	}
}
