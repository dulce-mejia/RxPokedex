//
//  HomeViewController.swift
//  RxPokedex
//
//  Created by Z447281 on 23/11/22.
//

import UIKit

final class HomeViewController: UIViewController {
    
    enum Strings {
        static let title = "Pokedéx"
    }
    
    private let container: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.alignment = .fill
        return stackView
    }()
    
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    weak var coordinator: HomeCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    private func configureUI() {
        view.backgroundColor = .systemBackground
        setupNavigationBar()
        view.addSubview(container)
        setConstraints()
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
}
