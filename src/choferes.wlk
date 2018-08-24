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
		if (cliente.precioPorKm(kms)*kms < 50) {
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
	var chofer = null
	
	method reemplazarChofer(nombre) {
		chofer = nombre
	}
	
	method precioViaje(cliente,kms) {
		return chofer.precioViaje(cliente,kms)
	}
}