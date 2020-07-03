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
		return conjuntoDeParcelas.map({parcelas => parcelas.cantidadDePlantas()>4}) and 
		self.mayorPorcentajeDeAsociadasBien()
	}
	method mayorPorcentajeDeAsociadasBien(){
		return conjuntoDeParcelas.max({parcela => parcela.totalAsociados()})
	}
	
	

}
