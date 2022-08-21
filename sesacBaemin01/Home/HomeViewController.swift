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
//        var testButtonConfig = UIButton.Configuration.plain()
//        testButtonConfig.image = UIImage(systemName: "arrowtriangle.down.fill")
//        testButtonConfig.baseForegroundColor = .white
//        testButtonConfig.imagePlacement = .trailing
//        testButtonConfig.imagePadding = 4
//        testButtonConfig.preferredSymbolConfigurationForImage = UIImage.SymbolConfiguration(pointSize: CGFloat(8))
//        var attText = AttributedString.init("우리집")
//        attText.font = UIFont.systemFont(ofSize: 20.0, weight: .bold)
//        testButtonConfig.attributedTitle = attText
//        let leftBtn = UIButton(configuration: testButtonConfig)
//        let leftBarBtn = UIBarButtonItem(customView: leftBtn)
        
        
            
        var leftButtonConfig  = Common.setNavBarButtonConfiguration(configuration: UIButton.Configuration.plain(), imageSystemName: "arrowtriangle.down.fill", baseForeGroundColor: .white, imagePlacement: .trailing, imagePadding: 4, imageSize: 8, titleAttribute: nil)
        let navLeftButton = UIButton(configuration: leftButtonConfig)
        let navLeftBarButton = UIBarButtonItem(customView: navLeftButton)
        print(leftButtonConfig)

        let rightMenuBtn: UIButton = {
           let btn = UIButton()
            btn.setImage(UIImage(systemName: "square.grid.2x2"), for: .normal)
            btn.tintColor = .white
            return btn
        }()
        let rightMenuBarButton = UIBarButtonItem(customView: rightMenuBtn)

        let rightNotiBtn: UIButton = {
           let btn = UIButton()
            btn.setImage(UIImage(systemName: "bell"), for: .normal)
            btn.tintColor = .white
            return btn
        }()
        let rightNotiBarButton = UIBarButtonItem(customView: rightNotiBtn)
        
        let rightProfileBtn: UIButton = {
           let btn = UIButton()
            btn.setImage(UIImage(systemName: "face.smiling"), for: .normal)
            btn.tintColor = .white
            return btn
        }()
        let rightProfileBarButton = UIBarButtonItem(customView: rightProfileBtn)
        
        let spacer = UIBarButtonItem(barButtonSystemItem: .fixedSpace, target: nil, action: nil)
        spacer.width = 15
    
        navigationItem.leftBarButtonItem = navLeftBarButton
        navigationItem.rightBarButtonItems = [rightMenuBarButton, spacer,  rightNotiBarButton, spacer, rightProfileBarButton].reversed()
        
        let navBarAppearance = UINavigationBarAppearance()
        navBarAppearance.backgroundColor = Common.identityColor
        self.navigationController?.navigationBar.standardAppearance = navBarAppearance
        self.navigationController?.navigationBar.scrollEdgeAppearance = navBarAppearance
    }
    
}

