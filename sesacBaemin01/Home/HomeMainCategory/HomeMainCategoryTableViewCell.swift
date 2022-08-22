//
//  HomeMainCategoryTableViewCell.swift
//  sesacBaemin01
//
//  Created by Brother Model on 2022/08/22.
//

import UIKit

class HomeMainCategoryTableViewCell: UITableViewCell {
    let tableView: UITableView = {
        let view = UITableView()
        view.separatorColor = .clear
        return view
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .default, reuseIdentifier: HomeMainCategoryTableViewCell.reuseIdentifier)
        configure()
        setConstraints()
    }
    
    func configure() {
        tableView.delegate = self
        tableView.dataSource = self
        self.contentView.addSubview(tableView)
    }
    
    func setConstraints() {
        tableView.snp.makeConstraints { make in
            make.top.bottom.leading.trailing.equalTo(self)
        }
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}

extension HomeMainCategoryTableViewCell: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return HMainCategoryStruct.structs.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = HMCategoryDeliveryTableViewCell()
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return HMainCategoryStruct.structs[indexPath.row].height
    }
}
