import plantas.*
import variedades.*
import parcelas.*

object inta {
	var property parcelas = #{}
	
	method promedioDePlantas(){
		return parcela.cantidadDePlantas() / parcelas.size()
	}
	
	method parcelaMasAutosustentable(){
		return parcela.cantidadDePlantas() > 4 and parcelas.promedioDePlantas().max()
	}

}
