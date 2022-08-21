//
//  HomeView.swift
//  sesacBaemin01
//
//  Created by Brother Model on 2022/08/19.
//

import UIKit

class HomeView: BaseView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configure()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func configure() {
        super.configure()
        print("HomeV", #function)
        
        backgroundColor = Common.backgroundColor
    }
    
    override func setConstraints() {
        super.setConstraints()
        
    }
    
    
}
