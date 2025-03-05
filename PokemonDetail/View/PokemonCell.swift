//
//  PokemonCell.swift
//  PokemonDetail
//
//  Created by Edgar Vargas on 03/03/25.
//

import UIKit

class PokemonCell: UITableViewCell {
    
    @IBOutlet weak var pokemonImage: UIImageView!
    
    @IBOutlet weak var pokemonLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }


}
