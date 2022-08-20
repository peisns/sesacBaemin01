//
//  HomeViewController.swift
//  sesacBaemin01
//
//  Created by Brother Model on 2022/08/19.
//

import UIKit

class HomeViewController: BaseViewController {

    let mainView = HomeView()
    
    override func loadView() {
        self.view = mainView

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setNav()
    }
    
    func setNav(){
        navi
    }
    
}

