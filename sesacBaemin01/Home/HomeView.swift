//
//  HomeView.swift
//  sesacBaemin01
//
//  Created by Brother Model on 2022/08/19.
//

import UIKit

class HomeView: BaseView {
    
    let homeTableV: UITableView = {
       let view = UITableView()
        view.backgroundColor = Common.backgroundColor
        view.separatorColor = .clear
        view.allowsSelection = false
        return view
    }()
    
    let topSerachBar: UISearchBar = {
        let bar = UISearchBar()
        bar.layer.cornerRadius = 0
        bar.layer.borderWidth = 0
        return bar
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
        topSerachBar.searchBarStyle = .minimal
    }
    
    override func setConstraints() {
        homeTableV.delegate = self
        homeTableV.dataSource = self
        
        [homeTableV, topSerachBar].forEach {self.addSubview($0)}
        
        super.setConstraints()
        homeTableV.snp.makeConstraints { make in
            make.top.equalTo(self.safeAreaLayoutGuide)
            make.bottom.equalToSuperview()
            make.leading.trailing.equalToSuperview()
        }
    }
}

extension HomeView: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return HomeStructs.structs.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = UITableViewCell()
        if indexPath.section == HomeSection.allCases.firstIndex(of: HomeSection.searchBar) {
            cell = HomeSearchBarTableViewCell()
        } else {
            cell = UITableViewCell()
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return HomeStructs.structs[indexPath.section].height
    }
}
