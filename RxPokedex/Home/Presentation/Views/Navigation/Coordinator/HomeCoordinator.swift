//
//  HomeCoordinator.swift
//  RxPokedex
//
//  Created by Z447281 on 25/11/22.
//
import UIKit

final class HomeCoordinator: Coordinator {
    var childCoordinators: [Coordinator] = []
    
    var navigationController: UINavigationController
    
    init(_ navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = HomeFactory().makeHomeViewController()
        vc.coordinator = self
        self.navigationController.pushViewController(vc, animated: true)
    }
    
    
    func showPokemonDetails(_ pokemon: Pokemon) {
        let vc = DetailFactory().makeDetailViewController(pokemon)
        self.navigationController.pushViewController(vc, animated: true)
    }
}
