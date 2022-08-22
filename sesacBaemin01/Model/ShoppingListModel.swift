//
//  ShoppingListModel.swift
//  sesacBaemin01
//
//  Created by Brother Model on 2022/08/23.
//

import UIKit
import RealmSwift

class ShoppingItem: Object {
    @Persisted var item: String
    @Persisted var check: Bool
    @Persisted var favorite: Bool
    
    @Persisted(primaryKey: true) var objectId: ObjectId
    
    convenience init(item: String, check: Bool, favorite: Bool) {
        self.init()
        self.item = item
        self.check = false
        self.favorite = false
    }


}
