class Barrio {
	const elementos = []
	
	method agregarElementos(listaElementos) {
		elementos.addAll(listaElementos)
	}
	method agregarElemento(unElemento) {
		elementos.add(unElemento)
	}
	
	method eliminarElemento(elemento) {
		elementos.remove(elemento)
	}
	
	method esCopado() = self.cantidadBuenos() > self.cantidadNoBuenos()
	method cantidadBuenos() = elementos.count{e=>e.esBueno()}
	method cantidadNoBuenos() = elementos.count{e=> !e.esBueno()}
}
