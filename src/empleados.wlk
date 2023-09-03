
object galvan {
	var totalDinero = 0
	var deuda = 0
	
	method sueldo() = 150000
	
	method cobrarSueldo() {
		totalDinero += 0.max(self.sueldo() - deuda)
		deuda = 0.max(deuda - self.sueldo())
	}
	
	method gastar(cuanto) {
		deuda += cuanto - totalDinero
		totalDinero = 0.max(totalDinero - deuda)
	} 
	
	method totalDeuda() = deuda
	
	method totalDinero() = totalDinero
		
}

object baigorria {
	var property empanadasVendidas = 600
	var totalDinero = 0
	
	method totalDinero() = totalDinero
	
	method sueldo() = 150 * empanadasVendidas
	
	method cobrarSueldo() {
		totalDinero += self.sueldo()
	}
}
