//
//  HomeShoppingListViewController.swift
//  sesacBaemin01
//
//  Created by Brother Model on 2022/08/22.
//

import UIKit

class HomeShoppingListViewController: BaseViewController {

    let mainView = HomeShoppingListView()
    
    override func loadView() {
        self.view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
    }
    
    func configure() {
        view.backgroundColor = Common.backgroundColor
        
        navigationItem.title = "먹킷리스트"
    }
    

}
