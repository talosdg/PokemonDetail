//
//  ModalViewController.swift
//  PokemonDetail
//
//  Created by Edgar Vargas on 03/03/25.
//



import UIKit

class ModalViewController :  UIViewController{
    
    var textReceived: String?
    var imageReceived: String?
    var descriptionReceived: String?
    var habilityReceived: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func setupUI(){
        view.backgroundColor = .yellowmon
        
        // POKEMON IMAGE
        let pokeImage = UIImage(named: imageReceived!)
        let imageView = UIImageView(image: pokeImage!)
        imageView.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(imageView)
        NSLayoutConstraint.activate([
            imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -160),
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
       
        // POKEMON NAME
        
        let nameLabel = UILabel()
        nameLabel.text = "Modal from main view"
        nameLabel.textColor = .bluemon
        nameLabel.textAlignment = .center
        nameLabel.font = UIFont.systemFont(ofSize: 40, weight: .bold)
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(nameLabel)
        NSLayoutConstraint.activate([
            nameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            nameLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        
        if let text = textReceived{
            print(text)
            nameLabel.text = text
            
        }
        
        // POKEMON DESCRIPTION
        let descriptionLabel: UILabel = {
            let descriptionLabel = PaddingLabel(withInsets: 8, 8, 18, 18)
            descriptionLabel.text = "Description text"
            descriptionLabel.textColor = .bluemon
            descriptionLabel.textAlignment = .center
            descriptionLabel.font = UIFont.systemFont(ofSize: 20, weight: UIFont.Weight.regular)
            descriptionLabel.layer.backgroundColor = UIColor.white.withAlphaComponent(0.9).cgColor
            descriptionLabel.layer.cornerRadius = 24
            descriptionLabel.layer.shadowColor = UIColor.black.cgColor
            descriptionLabel.layer.shadowOffset = CGSize(width: 0, height: 5)
            descriptionLabel.layer.shadowOpacity = 0.5
            descriptionLabel.numberOfLines = 0
            descriptionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
            descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview(descriptionLabel)
            NSLayoutConstraint.activate([
                descriptionLabel.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -40),
                descriptionLabel.heightAnchor.constraint(equalTo: view.widthAnchor, constant: -200),
                descriptionLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                descriptionLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 140)
            ])
            return descriptionLabel
        }()
        
        if let description = descriptionReceived{
            descriptionLabel.text = description
        }
        
        // POKEMON HABILITY
        
        let habilityLabel = UILabel()
        habilityLabel.text = "Modal from main view"
        habilityLabel.textColor = .redmon
        habilityLabel.textAlignment = .center
        habilityLabel.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        habilityLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(habilityLabel)
        NSLayoutConstraint.activate([
            habilityLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            habilityLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -90),
        ])
        
        if let text3 = habilityReceived{
            print(text3)
            habilityLabel.text = "Habilidad: \(text3)"
            
        }
        
        
        
        // CLOSE MODAL BUTTON
        
        let closeButton = UIButton(type: .system)
            closeButton.setTitle("Cerrar", for: .normal)
            closeButton.backgroundColor = .redmon
            closeButton.addTarget(self, action: #selector(closeModal), for: .touchUpInside)
        
            var configuration = UIButton.Configuration.filled()
            configuration.title = title
            configuration.baseBackgroundColor = .redmon
            configuration.contentInsets = NSDirectionalEdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16)
            closeButton.configuration = configuration
            closeButton.translatesAutoresizingMaskIntoConstraints = false
     
            view.addSubview(closeButton)
                NSLayoutConstraint.activate([
                    closeButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -30),
                    closeButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
                ])
        
      }
      
      @objc func closeModal() {
          dismiss(animated: true, completion: nil)
      }

}
