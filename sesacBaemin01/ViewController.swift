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
        let vc = HomeViewController()
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: false)
    }


}

