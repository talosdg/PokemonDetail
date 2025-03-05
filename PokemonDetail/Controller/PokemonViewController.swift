//
//  PokemonViewController.swift
//  PokemonDetail
//
//  Created by Edgar Vargas on 03/03/25.
//

import UIKit


class PokemonViewController: UIViewController {

    let dataManager = PokemonDataManager()

    @IBOutlet weak var pokemonTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        pokemonTable.dataSource = self
        pokemonTable.delegate = self
        
        dataManager.fetch()
    }
}

extension PokemonViewController : UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
          
        return dataManager.count()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "pokemonCell", for: indexPath) as! PokemonCell
        if let pokemon = dataManager.getPokemon(at: indexPath.row){
            cell.pokemonImage.image = UIImage(named: pokemon.image)
            cell.pokemonLabel.text = pokemon.name

            return cell
        }
        else{
            cell.pokemonImage.image = UIImage(named: "defaulImage")
            cell.pokemonLabel.text = "Default text"
            
            return cell
        }
    }

    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return UIImageView(image: UIImage(named: "PokemonHeader"))
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
           
        tableView.deselectRow(at: indexPath, animated: true)
        let pokemon = dataManager.getPokemon(at: indexPath.row)

        launchModal(name: pokemon!.name, image: pokemon!.image, description: dataManager.getDescription(forPokemonNamed: pokemon!.name)!, hability: dataManager.getHability(forPokemonNamed: pokemon!.name)!, movement: dataManager.getMovement(forPokemonNamed: pokemon!.name)!)
    }
    
    func launchModal( name: String, image: String, description: String, hability: String, movement: String ){

        let modalViewController = ModalViewController()
        modalViewController.modalPresentationStyle = .fullScreen
        modalViewController.modalTransitionStyle = .flipHorizontal
        modalViewController.textReceived = String(name)
        modalViewController.imageReceived = image
        modalViewController.descriptionReceived = description
        modalViewController.habilityReceived = hability
        modalViewController.movementReceived = movement
        
        present(modalViewController, animated: true)
    }
    
   
    
}
