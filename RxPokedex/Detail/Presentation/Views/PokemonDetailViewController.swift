//
//  PokemonDetailViewController.swift
//  RxPokedex
//
//  Created by Gardenia Mejia on 03/12/22.
//

import UIKit

class PokemonDetailViewController: UIViewController {
    
    private let pokemonImage: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "bulbasaur"))
        return imageView
    }()
    
    private let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Bulbasaur"
        label.textColor = .label
        return label
    }()
    
    private let idLabel: UILabel = {
        let label = UILabel()
        label.text = "ID: "
        label.textColor = .label
        return label
    }()
    
    private let weightLabel: UILabel = {
        let label = UILabel()
        label.text = "weight: "
        label.textColor = .label
        return label
    }()
    
    private let heightLabel: UILabel = {
        let label = UILabel()
        label.text = "height: "
        label.textColor = .label
        return label
    }()
    
    private let container: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.distribution = .fill
        stack.alignment = .center
        return stack
    }()
    
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("view did load")
        setupUI()
    }
    
    private func setupUI() {
        view.backgroundColor = .systemBackground
        view.addSubview(container)
        container.addArrangedSubview(pokemonImage)
        container.addArrangedSubview(nameLabel)
        container.addArrangedSubview(idLabel)
        container.addArrangedSubview(weightLabel)
        container.addArrangedSubview(heightLabel)
        
        setConstraints()
    }
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            container.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            container.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            container.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
            pokemonImage.heightAnchor.constraint(equalToConstant: 150),
            pokemonImage.widthAnchor.constraint(equalToConstant: 150)
        ])
    }
}