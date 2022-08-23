//
//  ViewController.swift
//  sesacBaemin01
//
//  Created by Brother Model on 2022/07/05.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        presentFirstScene()
    }
    
    func presentFirstScene() {
        let navController = UINavigationController(rootViewController: HomeViewController())
        navController.modalPresentationStyle = .fullScreen
        present(navController, animated: false)
    }
}

