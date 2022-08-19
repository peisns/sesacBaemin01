//
//  BaseView.swift
//  sesacBaemin01
//
//  Created by Brother Model on 2022/08/19.
//

import UIKit

class BaseView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configure()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func configure() {
        self.backgroundColor = .brown
    }
}
