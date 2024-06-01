import elementos.*

class Plaga {
	var poblacion
	method nivelDeDanio() = poblacion
	//method transmiteEnfermedades() = poblacion >= 10
	method transmiteEnfermedades() = poblacion >= 10 && self.segundaCondicion()
	method segundaCondicion()
	method atacarElemento(unElemento) {
		unElemento.recibeAtaqueDe(self)
		self.efectoAtaque()
	}
	method efectoAtaque() {poblacion *= 1.1}
}

class Cucarachas inherits Plaga {
	var pesoPromedioBicho
	
	override method nivelDeDanio() = super() * 0.5
	override method segundaCondicion() = pesoPromedioBicho >= 10
	override method efectoAtaque() {
		super()
		pesoPromedioBicho += 2
	}
}

class Pulgas inherits Plaga {
	override method nivelDeDanio() = super() * 2
	override method segundaCondicion() = true
}

class Garrapatas inherits Pulgas {
	override method efectoAtaque() {poblacion *= 1.2}
}

class Mosquitos inherits Plaga {
	override method segundaCondicion() = poblacion % 3 == 0
}
