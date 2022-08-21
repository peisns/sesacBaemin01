//
//  BaseView.swift
//  sesacBaemin01
//
//  Created by Brother Model on 2022/08/19.
//

import UIKit

import SnapKit

class BaseView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func configure() {
        print("BaseVC", #function)
        self.backgroundColor = Common.backgroundColor
        print(String(describing: type(of: self)), #function)

    }
    
    func setConstraints() {
        print("BaseVC", #function)
    }
}
