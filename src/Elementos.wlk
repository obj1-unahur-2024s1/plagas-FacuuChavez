object nivelDeProduccion{
	var property nivelProduccion = 1000
}

class Hogar{
	var nivelDeMugre
	var confort
	
	method esBueno() = nivelDeMugre<= confort * 0.5
}


class Huerta {
	var produccion
	method esBueno() = produccion >nivelDeProduccion.nivelProduccion()
}

class Mascota {
	var salud
	method esBueno() = salud > 250
}
