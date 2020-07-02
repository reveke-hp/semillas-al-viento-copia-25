


class Planta {
	var property anoDeObtencion
	var property altura
	
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
}


class Menta inherits Planta{
	method espacioQueOcupa(){
		return altura + 1
	}
	override method daNuevasSemillas(){
		return super() or altura > 0.4
	}
}

class Soja inherits Planta{
	method espacioQueOcupa(){
		return altura/2
	}
	override method daNuevasSemillas(){
		return super() or anoDeObtencion < 2007 or altura.between(0.75,0.9)
	}
	override method horasDeSolQueTolera(){
		if (altura < 0.3 ) return 6
		else if (altura.between(0.3,0.8)) return 7
		else return 12
	}
}