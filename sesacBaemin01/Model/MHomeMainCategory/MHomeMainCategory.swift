//
//  MHomeMainCategory.swift
//  sesacBaemin01
//
//  Created by Brother Model on 2022/08/22.
//

import Foundation
import UIKit

enum HMainSection:String, CaseIterable {
    case delivery
    case takeout
    case bMartAndMealkit
    case baeminStore
}

struct HMainCategory {
    let name: HMainSection
    var height: CGFloat = CGFloat(92)
}

let deliveryHeight: CGFloat = 16 + 8 + ((UIScreen.main.bounds.width - 32)/2)

struct HMainCategoryStruct {
    static let structs: [HMainCategory] = [
        HMainCategory(name: HMainSection.delivery, height: deliveryHeight),
        HMainCategory(name: HMainSection.takeout, height: 92),
        HMainCategory(name: HMainSection.bMartAndMealkit, height: 92 * 1.2),
        HMainCategory(name: HMainSection.baeminStore, height: 92)
    ]
}
