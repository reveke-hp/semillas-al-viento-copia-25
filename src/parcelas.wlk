

class Parcela{
	var property ancho
	var property largo
	var property horasDeSol 
	var property plantas = #{}
	
	
	method superficie(){
		return ancho * largo
	}
	
	method cantidadMaximaQueTolera(){
		if (ancho > largo) return self.superficie() / 5
		else return (self.superficie()/3) + largo
	}
	
	method tieneSangreJoven(){
		return plantas.any({semillas => semillas.anoDeObtencion()< 2012})
	}
	method plantarUnaPlanta(unaPlanta){
		if (plantas.add(unaPlanta) return 
		else return self.error("no cumple los requisitos")
	}
}
