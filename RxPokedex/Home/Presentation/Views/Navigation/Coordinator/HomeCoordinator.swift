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
    private let client: HTTPClient
    
    init(_ navigationController: UINavigationController, client: HTTPClient) {
        self.navigationController = navigationController
        self.client = client
    }
    
    func start() {
        let vc = HomeFactory().makeHomeViewController(client: client)
        vc.coordinator = self
        self.navigationController.pushViewController(vc, animated: true)
    }
    
    
    func showPokemonDetails(_ url: String) {
        let vc = DetailFactory().makeDetailViewController(url, client: client)
        self.navigationController.pushViewController(vc, animated: true)
    }
}
