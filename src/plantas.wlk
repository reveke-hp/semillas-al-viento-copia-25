import parcelas.*

class Planta {
	var property anoDeObtencion
	var property altura
	var property horasDeSolQueTolera = 7
	method horasDeSol(){
		return self.horasDeSolQueTolera()
	}
	
	method esFuerte(){
		return self.horasDeSolQueTolera() > 9
	}
	
	method daNuevasSemillas(){
		return self.esFuerte()
	}
	
	method horasDeSolQueTolera(){
		return 7
	}
	
	method parcelaEsIdeal()
	
	method seAsociaConParcelaEcologica(){
		return parcela.tieneSangreJoven() and self.parcelaEsIdeal()
	}
	method seAsociaConParcelaIndrustrial(){
		return parcela.cantidadMaximaQueTolera() > 2 and self.esFuerte()
	}
	
}


class Menta inherits Planta{
	method espacioQueOcupa(){
		return altura + 1
	}
	override method daNuevasSemillas(){
		return super() or altura > 0.4
	}
	override  method parcelaEsIdeal(){
		return parcela.superficie()>6
	}
}

class Soja inherits Planta{
	method espacioQueOcupa(){
		return altura/2
	}
	override method daNuevasSemillas(){
		return super() or (anoDeObtencion < 2007) or (altura.between(0.75,0.9))
	}
	override method horasDeSolQueTolera(){
		if (altura < 0.3 ) return 6
		else if (altura.between(0.3,0.8)) return 7
		else return 12
	}
	override method parcelaEsIdeal(){
		return self.horasDeSolQueTolera() == parcela.horasDeSol()
	}
}

class Quinoa inherits Planta{
	method espacioQueOcupa(){
		return altura/2
	}
	override method horasDeSolQueTolera(){
		if (self.espacioQueOcupa() < 0.3) return 10
		else return 7
	}
	override method daNuevasSemillas(){
		return super() or anoDeObtencion.between(2001,2008)
	}
	override method parcelaEsIdeal(){
	 return parcela.contieneMayorA(1.5)
	}
	
}





