//
//  HomeShoppingListTableViewCell.swift
//  sesacBaemin01
//
//  Created by Brother Model on 2022/08/22.
//

import UIKit

import RealmSwift

class HomeShoppingListTableViewCell: UITableViewCell {
    
    var items: Results<ShoppingItem>!
    let localRealm = try! Realm()
    var checkClosure : (() -> Void) = {}
    
    let stackView: UIStackView = {
        let view = UIStackView()
        return view
    }()
    
    let checkIcon: UIButton = {
        let btn = UIButton()
        btn.setImage(UIImage(systemName: "checkmark.square"), for: .normal)
        btn.tintColor = .black
        return btn
    }()

    let favoriteIcon: UIButton = {
        let btn = UIButton()
        btn.setImage(UIImage(systemName: "star"), for: .normal)
        btn.tintColor = .black
        return btn
    }()
    
    let contentLabel: UILabel = {
        let label = UILabel()
        label.text = "contentLabel"
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .default, reuseIdentifier: HomeShoppingListTableViewCell.reuseIdentifier)
        
        configure()
        setConstraints()
        
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func configure() {
        items = localRealm.objects(ShoppingItem.self).sorted(byKeyPath: "item", ascending: false)
        
        self.contentView.addSubview(stackView)
        [checkIcon, contentLabel, favoriteIcon].forEach {self.stackView.addArrangedSubview($0)}
        
        checkIcon.addTarget(self, action: #selector(checkClicked) , for: .touchUpInside)
        favoriteIcon.addTarget(self, action: #selector(favoriteClicked), for: .touchUpInside)
        
    }
    func loadCheckBox(){
        let checkImage = items[checkIcon.tag].check ? "checkmark.square.fill" : "checkmark.square"
        checkIcon.setImage(UIImage(systemName: checkImage), for: .normal)
    }
    
    @objc func checkClicked() {
        try! self.localRealm.write{
//            print(items)
            print(checkIcon.tag)
            print(self.items[checkIcon.tag].check)
            self.items[checkIcon.tag].check = !self.items[checkIcon.tag].check
            print(checkIcon.tag)
            print(self.items[checkIcon.tag].check)
            checkClosure()
        }
        
    }
    
    
    @objc func favoriteClicked() {
        print(favoriteIcon.tag)
    }
    
    func setConstraints() {
        stackView.snp.makeConstraints { make in
            make.top.bottom.leading.trailing.equalTo(self.contentView)
        }
        
        checkIcon.snp.makeConstraints { make in
            make.top.leading.bottom.equalTo(stackView)
            make.width.equalTo(60)
        }
        
        favoriteIcon.snp.makeConstraints { make in
            make.top.trailing.bottom.equalTo(stackView)
            make.width.equalTo(60)
        }
        
        contentLabel.snp.makeConstraints { make in
            make.top.bottom.equalTo(stackView)
            make.leading.equalTo(checkIcon.snp.trailing)
            make.trailing.equalTo(favoriteIcon.snp.leading)
        }
        
        
    }


}
