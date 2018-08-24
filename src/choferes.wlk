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
