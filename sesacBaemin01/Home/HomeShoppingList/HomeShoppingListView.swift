//
//  HomeShoppingListView.swift
//  sesacBaemin01
//
//  Created by Brother Model on 2022/08/22.
//

import UIKit

import RealmSwift

class HomeShoppingListView: BaseView {
    
    var items: Results<ShoppingItem>!
    let localRealm = try! Realm()
    
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
        
        items = localRealm.objects(ShoppingItem.self).sorted(byKeyPath: "item", ascending: true)
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
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = HomeShoppingListTableViewCell()
        cell.backgroundColor = .systemGray6
        let row = items[indexPath.row]
        cell.contentLabel.text = row.item
        cell.favoriteIcon.tag = indexPath.row
        cell.checkIcon.tag = indexPath.row
        cell.loadCheckBox()
        cell.checkClosure = {
            print("why")
            self.tableView.reloadData()
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
}

extension HomeShoppingListView: UISearchBarDelegate {
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        let localRealm = try! Realm()

        let content = ShoppingItem(item: searchBar.text ?? "", check: false, favorite: false)
        try! localRealm.write({
            localRealm.add(content)
        })
        searchBar.text = ""
        tableView.reloadData()
    }
}
