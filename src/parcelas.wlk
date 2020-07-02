import plantas.*
import variedades.*

class Parcela{
	var property ancho 
	var property largo 
	var property horasDeSol
	var property plantas = #{}
	
	
	method superficie(){ return ancho * largo }
	
	method cantidadMaximaQueTolera() {
		if (ancho > largo) return self.superficie() / 5
		else return self.superficie()/3 + largo
	}
	
	method tieneSangreJoven(){
		return plantas.any({semillas => semillas.anoDeObtencion()< 2012})
	}
	method plantarUnaPlanta(unaPlanta){
		if (not self.tieneCupo()) self.agregarPlanta(unaPlanta)
		else if(not self.diferenciaDeSol(unaPlanta)) self.agregarPlanta(unaPlanta)
		else self.error("No cumple los requisitos")
	}
	method agregarPlanta(unaPlanta){
		plantas.add(unaPlanta)
	}
	method tieneCupo(){
		return plantas.size()- 1 < self.cantidadMaximaQueTolera()
	}
	method diferenciaDeSol(unaPlanta){
		return horasDeSol - unaPlanta.horasDeSol() > 2
	}
	
	method contieneMayorA(medida){
		return plantas.contains({plants => plants.altura()>1.5})
	}
	
	method cantidadDePlantas(){
		return plantas.size()
	}
	method promedioPlantasBienAsociadas(){
		
	}
}

class ParcelaEcologica inherits Parcela{
	method seAsociaBien(unaPlanta){
		return self.tieneSangreJoven() and unaPlanta.parcelaEsIdeal()
	}
}

class ParcelaIndustrial inherits Parcela{
	method seAsociaBien(unaPlanta){
		return self.cantidadDePlantas() > 2 and unaPlanta.esFuerte()
	}
		
}