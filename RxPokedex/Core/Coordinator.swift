//
//  Coordinator.swift
//  RxPokedex
//
//  Created by Z447281 on 25/11/22.
//

import UIKit

protocol Coordinator {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    
    func start()
}
