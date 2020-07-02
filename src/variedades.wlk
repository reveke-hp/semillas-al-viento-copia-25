import plantas.*

class SojaTransgenica inherits Soja{
	override method daNuevasSemillas(){
		return false
	}
	override method parcelaEsIdeal(){
		return parcela.cantidadMaximaQueTolera() = 1
	}
}

class MentaPeperinata inherits Menta{
	override method espacioQueOcupa(){
		return (altura+1)*2
	}
}