//
//  HomeSearchBarTableViewCell.swift
//  sesacBaemin01
//
//  Created by Brother Model on 2022/08/22.
//

import UIKit

class HomeSearchBarTableViewCell: UITableViewCell {
        
    let searchBar: UISearchBar = {
        let bar = UISearchBar()
        bar.searchBarStyle = .minimal
        bar.placeholder = "배고프니까 일단 검색!!"
        return bar
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .default, reuseIdentifier: HomeSearchBarTableViewCell.reuseIdentifier)
        
        configure()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func configure() {
        self.contentView.addSubview(searchBar)
        searchBar.delegate = self
    }
    
    func setConstraints() {
        searchBar.snp.makeConstraints { make in
            make.top.equalTo(self)
            make.leading.trailing.equalTo(self).inset(16)
            make.height.equalTo(60)
        }
    }
}

extension HomeSearchBarTableViewCell: UISearchBarDelegate {
    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
        print(#function)
    }
}
