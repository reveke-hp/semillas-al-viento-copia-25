import plantas.*
import variedades.*
import parcelas.*

object inta {
	var property conjuntoDeParcelas = #{}
	
	method promedioDePlantas(){
		return conjuntoDeParcelas.sum({parcelas => parcelas.cantidadDePlantas()}) / 
		conjuntoDeParcelas.size()
	}
	
	method parcelaMasAutosustentable(){
		return parcela.cantidadDePlantas() > 4 and parcelas.promedioDePlantas().max()
	}
	
	method mayorPorcentajeDeAsociadasBien(){
		
	}
	
	

}
