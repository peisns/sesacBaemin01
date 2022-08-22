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
    
        configure()
    }
    
    func configure() {
        view.backgroundColor = Common.backgroundColor
        setNav()
    }
    
    func setNav() {
        var navLeftTitle = AttributedString.init("우리집")
        navLeftTitle.font = UIFont.systemFont(ofSize: 22.0, weight: .bold)
        var leftButtonConfig  = UIButton.Configuration.plain()
        Common.setNavBarButtonConfiguration(configuration: &leftButtonConfig, imageSystemName: "arrowtriangle.down.fill", baseForeGroundColor: .white, imagePlacement: .trailing, imagePadding: 8, imageSize: 8, titleAttribute: navLeftTitle)
        let navLeftBtn = UIButton(configuration: leftButtonConfig)
        let navLeftBarBtn = UIBarButtonItem(customView: navLeftBtn)

        var navRightMenuBtnConfig = UIButton.Configuration.plain()
        Common.setNavBarButtonConfiguration(configuration: &navRightMenuBtnConfig, imageSystemName: "square.grid.2x2")
        navRightMenuBtnConfig.contentInsets = NSDirectionalEdgeInsets(top: 8, leading: 4, bottom: 8, trailing: 4)
        let navRightMenuBtn = UIButton(configuration: navRightMenuBtnConfig)
        navRightMenuBtn.addTarget(self, action: #selector(navRightMenuBtnClicked), for: .touchUpInside)
        let navRightMenuBarBtn = UIBarButtonItem(customView: navRightMenuBtn)
//
        var navRightNotiBtnConfig = UIButton.Configuration.plain()
        Common.setNavBarButtonConfiguration(configuration: &navRightNotiBtnConfig, imageSystemName: "bell")
        navRightNotiBtnConfig.contentInsets = NSDirectionalEdgeInsets(top: 8, leading: 4, bottom: 8, trailing: 4)
        let navRightNotiBtn = UIButton(configuration: navRightNotiBtnConfig)
        let navRightNotiBarBtn = UIBarButtonItem(customView: navRightNotiBtn)
//
        var navRightProfileBtnConfig = UIButton.Configuration.plain()
        Common.setNavBarButtonConfiguration(configuration: &navRightProfileBtnConfig, imageSystemName: "face.smiling")
        navRightProfileBtnConfig.contentInsets = NSDirectionalEdgeInsets(top: 8, leading: 4, bottom: 8, trailing: 4)
        let navRightProfileBtn = UIButton(configuration: navRightProfileBtnConfig)
        let navRightProfileBarBtn = UIBarButtonItem(customView: navRightProfileBtn)
        
        navigationItem.leftBarButtonItem = navLeftBarBtn
        navigationItem.rightBarButtonItems = [navRightMenuBarBtn, navRightNotiBarBtn, navRightProfileBarBtn].reversed()
        
        let navBarAppearance = UINavigationBarAppearance()
        navBarAppearance.backgroundColor = Common.identityColor
        navBarAppearance.shadowColor = .clear
        navBarAppearance.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        self.navigationController?.navigationBar.standardAppearance = navBarAppearance
        self.navigationController?.navigationBar.scrollEdgeAppearance = navBarAppearance
        UINavigationBar.appearance().tintColor = Common.backgroundColor
    }
    
    @objc func navRightMenuBtnClicked() {
        let vc = HomeShoppingListViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

