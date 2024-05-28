class Plaga {   //solucion con clase abstracta
	var poblacion
	method transmiteEnfermedades() = poblacion >= 10  and self.segundaCondicion()
	method segundaCondicion()   //METODO ABSTRACTO QUE HACE A LA CLASE ABSTRACTA
}

class Cucarachas inherits Plaga {
	var pesoPromedioBicho
	
	method nivelDeDanio() = poblacion * 0.5
	//override method transmiteEnfermedades() = super() and pesoPromedioBicho >= 10
	override method segundaCondicion()= pesoPromedioBicho>=10
}

class Pulgas inherits Plaga {
	
	method nivelDeDanio() = poblacion * 2
	override method segundaCondicion()= true
}

class Garrapatas inherits Pulgas{
	
}

class Mosquito inherits Plaga{
	
	method nivelDeDanio() = poblacion
	//override method transmiteEnfermedades() = super() and poblacion % 3 == 0
	override method segundaCondicion()= poblacion % 3 == 0
}