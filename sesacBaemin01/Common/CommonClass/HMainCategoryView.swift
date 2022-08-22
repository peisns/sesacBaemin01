//
//  HMainCategoryView.swift
//  sesacBaemin01
//
//  Created by Brother Model on 2022/08/22.
//

import UIKit

class HMainCategoryView: UIView {
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "label"
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func configure() {
        self.backgroundColor = .white
        self.layer.cornerRadius = 15
        
        [titleLabel].forEach { self.addSubview($0) }
    }
    
    func setConstraints() {
        titleLabel.snp.makeConstraints { make in
            make.leading.top.equalTo(self).inset(16)
        }
    }
}
