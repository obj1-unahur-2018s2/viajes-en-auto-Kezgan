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
		return 50 + (cliente.precioPorKm() * kms)
	}
}