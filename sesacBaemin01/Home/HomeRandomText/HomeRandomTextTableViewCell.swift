//
//  HomeRandomTextTableViewCell.swift
//  sesacBaemin01
//
//  Created by Brother Model on 2022/08/22.
//

import UIKit

class HomeRandomTextTableViewCell: UITableViewCell {

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .default, reuseIdentifier: HomeRandomTextTableViewCell.reuseIdentifier)
        configure()
    }
    
    func configure() {
        backgroundColor = Common.identityColor
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
