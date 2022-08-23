//
//  KobisViewController.swift
//  sesacBaemin01
//
//  Created by Brother Model on 2022/08/23.
//

import UIKit

class KobisViewController: BaseViewController {

    let mainView = KobisView()
    
    override func loadView() {
        self.view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    func configure() {
    }
}
