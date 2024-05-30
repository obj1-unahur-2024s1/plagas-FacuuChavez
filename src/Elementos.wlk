import plagas.*
import barrios.*

object nivelDeProduccion{
	var property nivelProduccion = 1000
}

class Hogar{
	var property nivelDeMugre = 0
	var property confort = 0
	
	method esBueno() = nivelDeMugre <= confort * 0.5
	method recibirAtaque(unaPlaga) {
		nivelDeMugre += unaPlaga.nivelDeDanio()
	}
}

class Huerta {
	var produccion
	method esBueno() = produccion > nivelDeProduccion.nivelProduccion()
	method recibirAtaque(unaPlaga){
		if 
			(unaPlaga.transmiteEnfermedades()) produccion = produccion - (unaPlaga.nivelDeDanio() * 0.1) - 10 
		else 
			produccion = produccion - unaPlaga.nivelDeDanio() * 0.1
	}
} 


class Mascota {
	var salud
	method esBueno() = salud > 250
	method recibirAtaque(unaPlaga) {
		if (unaPlaga.transmiteEnfermedades()) salud = salud - unaPlaga.nivelDeDanio()
	}
}
