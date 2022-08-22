//
//  HomeShoppingListView.swift
//  sesacBaemin01
//
//  Created by Brother Model on 2022/08/22.
//

import UIKit

class HomeShoppingListView: BaseView {
    let searchBar: UISearchBar = {
        let bar = UISearchBar()
        bar.searchBarStyle = .minimal
        return bar
    }()
    
    let tableView: UITableView = {
        let view = UITableView()
        view.separatorColor = .clear
        view.allowsSelection = false
        return view
    }()

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
        print("BaseVC", #function)
        print(String(describing: type(of: self)), #function)

        self.addSubview(searchBar)
        searchBar.delegate = self
        
        tableView.delegate = self
        tableView.dataSource = self
        
        self.addSubview(tableView)
    }
    
    override func setConstraints() {
        super.setConstraints()
        print("BaseVC", #function)
        
        searchBar.snp.makeConstraints { make in
            make.top.leading.trailing.equalTo(self.safeAreaLayoutGuide)
            make.height.equalTo(76)
        }
        
        tableView.snp.makeConstraints { make in
            make.top.equalTo(searchBar.snp.bottom)
            make.leading.trailing.bottom.equalToSuperview()
        }
    }

}

extension HomeShoppingListView: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 30
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = HomeShoppingListTableViewCell()
        cell.backgroundColor = .systemGray6
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 76
    }
}

extension HomeShoppingListView: UISearchBarDelegate {
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        print(#function)
    }
}
