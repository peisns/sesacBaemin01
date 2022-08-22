//
//  HMCategoryDeliveryTableViewCell.swift
//  sesacBaemin01
//
//  Created by Brother Model on 2022/08/22.
//

import UIKit

class HMCategoryDeliveryTableViewCell: UITableViewCell {
    
    var baeminOne: HMainCategoryView =  {
        let view = HMainCategoryView()
        view.backgroundColor = .white
        return view
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .default, reuseIdentifier: HMCategoryDeliveryTableViewCell.reuseIdentifier)
        configure()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func configure() {
        self.contentView.addSubview(baeminOne)
        self.backgroundColor = Common.backgroundColor
    }
    
    func setConstraints() {
        baeminOne.snp.makeConstraints { make in
            make.top.bottom.leading.trailing.equalTo(self).inset(16)
        }
    }
}
