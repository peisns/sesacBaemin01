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
        view.backgroundColor = Common.backgroundColor
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        configure()
    }
    
    func configure() {
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
    
//        let navRightconfigs = [navRightMenuBtnConfig, navRightNotiBtnConfig, navRightProfileBtnConfig]
//        var navConfigIndex = 0
//        let navRightImages = ["square.grid.2x2", "bell", "face.smiling"]
//        for config in navRightconfigs {
//            var config = config // 왜 이렇게 해줘야 하는지 잘 모르겠음
//            Common.setNavBarButtonConfiguration(configuration: &config, imageSystemName: navRightImages[navConfigIndex])
//            self.config.contentInsets = NSDirectionalEdgeInsets(top: 8, leading: 4, bottom: 8, trailing: 4)
//            navConfigIndex += 1
//        } // 실행안됨
        
        navigationItem.leftBarButtonItem = navLeftBarBtn
        navigationItem.rightBarButtonItems = [navRightMenuBarBtn, navRightNotiBarBtn, navRightProfileBarBtn].reversed()
        
        let navBarAppearance = UINavigationBarAppearance()
        navBarAppearance.backgroundColor = Common.identityColor
        navBarAppearance.shadowColor = .clear
        self.navigationController?.navigationBar.standardAppearance = navBarAppearance
        self.navigationController?.navigationBar.scrollEdgeAppearance = navBarAppearance
        

    }
    
}

