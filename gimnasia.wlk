class ABC {}

class Rutina {
    method descanso(tiempo)

    method intensidad()

  method caloriasQuemadas(tiempo) {return 100 * (tiempo - self.descanso(tiempo)) * self.intensidad()}
}

//1. Rutinas

class Running inherits Rutina(){
    const property intensidad  

    override method descanso(tiempo) = if (tiempo > 20) 5 else 2
}

class Maraton inherits Running  {
  override method caloriasQuemadas(tiempo) = tiempo * 2
}

class Remo inherits Rutina{
    override method intensidad() = 1.3
    override method descanso(tiempo) = tiempo / 5
}

class RemoCompeticion inherits Remo() {
    override method intensidad() =  1.7
    override method descanso(tiempo) = (super(tiempo) - 3).max(2)
}


//2. Personas

class Persona {
    var property peso = 0

    method puedeHacerRutina(rutina)

    method tiempoDeEjercicio(rutina)
    method kilosPorCalorias()
    method tiempoEjercicio(rutina)  

    method hacerRutina(rutina) {if (!self.puedeHacerRutina(rutina)) self.error(rutina.toString() + "no se pude practicar")}

}


class PersonaSedentaria inherits Persona{
    const property nombre = ""
    const property tiempoDeEjercicio = 0

    override method puedeHacerRutina(rutina) {
        return peso > 50
    }

    override method tiempoEjercicio(rutina){
        return tiempoDeEjercicio

    }
    
}

class PersonaAtleta inherits Persona {

}


class Club {
  
}

class Predio inherits Club {
  
}