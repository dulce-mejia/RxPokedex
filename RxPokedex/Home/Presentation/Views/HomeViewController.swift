//
//  HomeViewController.swift
//  RxPokedex
//
//  Created by Z447281 on 23/11/22.
//

import UIKit
import RxSwift

final class HomeViewController: UIViewController {
    
    enum Strings {
        static let title = "Pokedéx"
    }
    
    enum Constants {
        static let stackSpacing: CGFloat = 5
        static let imageViewHeight: CGFloat = 150
        static let imageViewWidth: CGFloat = 150
    }
    
    private let container: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.alignment = .fill
        return stackView
    }()
    
    private let pokemonList: UICollectionView = {
        let collection = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewLayout())
        collection.backgroundColor = .clear
        return collection
    }()
    
    private let disposeBag = DisposeBag()
    private let viewModel: PokemonListViewModel
    weak var coordinator: HomeCoordinator?
    
    init(viewModel: PokemonListViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        bindings()
    }
    
    private func bindings() {
        viewModel.output.pokemonList
            .drive(pokemonList.rx.items(cellIdentifier: PokemonView.reuseIdentifier, cellType: PokemonView.self)) { _,pokemonModel,cell in
                cell.viewModel = PokemonViewViewModel(pokemon: pokemonModel)
            }
            .disposed(by: disposeBag)
        
        pokemonList.rx.modelSelected(Pokemon.self)
            .subscribe(onNext: { [weak self] pokemon in
                self?.coordinator?.showPokemonDetails(pokemon.url)
            })
            .disposed(by: disposeBag)
    }
    
    private func configureUI() {
        view.backgroundColor = .systemBackground
        setupNavigationBar()
        view.addSubview(container)
        container.addArrangedSubview(pokemonList)
        setConstraints()
        configureCollectionView()
    }
    
    private func setupNavigationBar() {
        self.title = Strings.title
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            container.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
            container.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor),
            container.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            container.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor)
        ])
    }
    
    private func configureCollectionView() {
        let collectionFlowLayout = UICollectionViewFlowLayout()
        collectionFlowLayout.scrollDirection = .vertical
        collectionFlowLayout.itemSize = CGSize(width: Constants.imageViewWidth,
                                               height: Constants.imageViewHeight)
        pokemonList.collectionViewLayout = collectionFlowLayout
        pokemonList.register(UINib(nibName: PokemonView.nibName, bundle: .main), forCellWithReuseIdentifier: PokemonView.reuseIdentifier)
    }
}
