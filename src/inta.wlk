import plantas.*
import variedades.*
import parcelas.*

object inta {
	var property parcelas = #{}
	
	method promedioDePlantas(){
		return parcelas.cantidadDePlantas() / parcelas.size()
	}
	
	method parcelaMasAutosustentable(){
		return parcelas.cantidadDePlantas() > 4 and parcelas.promedioDePlantas().max()
	}

}
