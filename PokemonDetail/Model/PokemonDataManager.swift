//
//  PokemonDataManager.swift
//  PokemonDetail
//
//  Created by Edgar Vargas on 03/03/25.
//

import Foundation

class PokemonDataManager {
    
    private var pokemons: [Pokemon] = []
    
    let pokemonsArray = [
        ["image":"0", "name": "Wartortle", "description": "Tiene una cola larga y peluda que simboliza la longevidad y lo hace popular entre los mayores."],
        ["image":"1", "name": "Bulbasaur", "description": "Tras nacer, crece alimentándose durante un tiempo de los nutrientes que contiene el bulbo de su lomo."],
        ["image":"2", "name": "Blastoise", "description": "Aumenta de peso deliberadamente para contrarrestar la fuerza de los chorros de agua que dispara."],
        ["image":"3", "name":"Butterfree", "description": "Adora el néctar de las flores. Una pequeña cantidad de polen le basta para localizar prados floridos."],
        ["image":"4", "name":"Ivysaur", "description": "Cuanta más luz solar recibe, más aumenta su fuerza y más se desarrolla el capullo que tiene en el lomo."],
        ["image":"5", "name":"Jigglypuff", "description": "Cuando le tiemblan sus redondos y adorables ojos, entona una melodía agradable y misteriosa con la que duerme a sus enemigos."],
        ["image":"6", "name":"Charmander", "description": "La llama de su cola indica su fuerza vital. Si está débil, la llama arderá más tenue."],
        ["image":"7", "name":"Meowth", "description": "Durante el día, se dedica a dormir. De noche, vigila su territorio con un brillo en los ojos."],
        ["image":"8", "name":"Alakazam", "description": "Posee una capacidad intelectual fuera de lo común que le permite recordar todo lo sucedido desde el instante de su nacimiento."],
        ["image":"9", "name":"Pidgey", "description": "Su docilidad es tal que suelen defenderse levantando arena en lugar de contraatacar."],
        ["image":"10", "name":"Raichu", "description": "Su cola actúa como toma de tierra y descarga electricidad al suelo, lo que le protege de los calambrazos."],
        ["image":"11", "name":"Rattata", "description": "Es propenso a hincar los incisivos en cualquier cosa que se le ponga por delante. Si se ve alguno, seguramente haya cuarenta cerca."],
        ["image":"12", "name":"Vaporeon", "description": "Vive cerca del agua. Su cola termina en una aleta parecida a la de un pez, por lo que hay gente que lo confunde con una sirena."],
        ["image":"13", "name":"Jynx", "description": "En cierta parte de Galar se conocía a Jynx como la Reina del Hielo y se reverenciaba con cierto temor."],
        ["image":"14", "name":"Venusaur", "description": "Puede convertir la luz del sol en energía. Por esa razón, es más poderoso en verano."],
        ["image":"15", "name":"Vulpix", "description": "Si lo ataca un enemigo más fuerte que él, finge estar herido para confundirlo y huir en cuanto baja la guardia."],
        ["image":"16", "name":"Slowbro", "description": "Según parece, cuando Slowpoke fue a pescar al mar, un Shellder le mordió la cola y así evolucionó a Slowbro."],
        ["image":"17", "name":"Dewgong", "description": "Duerme en aguas poco profundas durante el día y, por la noche, cuando baja la temperatura del agua, nada en busca de comida."],
        ["image":"18", "name":"Spearow", "description": "A la hora de proteger su territorio, compensa su incapacidad para volar a gran altura con una increíble velocidad."],
        ["image":"19", "name":"Wigglytuff", "description": "Tiene un pelaje muy fino. Se recomienda no enfadarlo, o se inflará y golpeará con todo su cuerpo."],
        ["image":"20", "name":"Scyther", "description": "Avanza por la hierba con sus afiladas guadañas, más rápido de lo que el ojo humano puede percibir."],
        ["image":"21", "name":"Golduk", "description": "Cuando nada a toda velocidad usando sus largas extremidades palmeadas, su frente comienza a brillar."],
        ["image":"22", "name":"Lapras", "description": "Surca los mares transportando gente sobre el lomo. Al parecer, a veces entona un melodioso canto si está de buen humor."],
        ["image":"23", "name":"Sandshrew", "description": "Excava madrigueras profundas en las que vive. Cuando lo ataca algún enemigo, se hace una bola y aguanta pacientemente sus embates."],
    ]
    

    func fetch() {
        
        for pokemon in pokemonsArray {
            let newPokemon = Pokemon(dict: pokemon)
            pokemons.append(newPokemon)
        }

    }
    
    func getPokemons() -> [Pokemon] {
        
        return pokemons
    }
    
    func getPokemon(at index: Int) -> Pokemon? {
        guard index >= 0 && index < pokemons.count else {
            
            return nil
        }
        return pokemons[index]
    }
    
    func count() -> Int {
       
        return pokemons.count
    }
    
    
   func getDescription(forPokemonNamed name: String) -> String? {
       for pokemon in pokemonsArray {
           if let pokemonName = pokemon["name"], pokemonName == name {
               return pokemon["description"]
           }
       }
       return nil
   }
       

    
    
    
}

