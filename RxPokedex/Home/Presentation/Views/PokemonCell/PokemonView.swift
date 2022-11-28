//
//  PokemonView.swift
//  RxPokedex
//
//  Created by Gardenia Mejia on 27/11/22.
//

import UIKit

class PokemonView: UICollectionViewCell {
    static let nibName = "PokemonView"
    static let reuseIdentifier = "pokemonCell"
    
    private enum Constants {
        static let fontSize: CGFloat = 15
        static let cornerRadius: CGFloat = 75
        static let numberOfLines: Int = 1
    }
    
    @IBOutlet weak var pokemonImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.layer.cornerRadius = Constants.cornerRadius
        self.clipsToBounds = true
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    private func setupUI() {
        nameLabel.font = UIFont.systemFont(ofSize: Constants.fontSize)
        nameLabel.numberOfLines = Constants.numberOfLines
    }
}
