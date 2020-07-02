import plantas.*

class SojaTransgenica inherits Soja{
	override method daNuevasSemillas(){
		return false
	}
}

class MentaPeperinata inherits Menta{
	override method espacioQueOcupa(){
		return (altura+1)*2
	}
}