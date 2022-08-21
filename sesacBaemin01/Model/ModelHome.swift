//
//  EnumHome.swift
//  sesacBaemin01
//
//  Created by Brother Model on 2022/08/22.
//
import Foundation
import UIKit

enum HomeSection:String, CaseIterable {
    case randomString
    case searchBar
    case mainCategory
    case eventCollection
    case footerMenu
    case restaurantAd
}

struct HomeStruct {
    let name: HomeSection
    var backgroundColor: UIColor
    var height: CGFloat = CGFloat(92)
}

let mainCategoryHeight: CGFloat = (UIScreen.main.bounds.width - ((16 * 3) + (8 * 2)))/2 + (16 * 6) + (92 * 3) + (92 * 1.2)

struct HomeStructs {
    static let structs: [HomeStruct] = [
        HomeStruct(name: HomeSection.randomString, backgroundColor: Common.identityColor),
        HomeStruct(name: HomeSection.searchBar, backgroundColor: Common.identityColor, height: 72),
        HomeStruct(name: HomeSection.mainCategory, backgroundColor: Common.backgroundColor, height: mainCategoryHeight),
        HomeStruct(name: HomeSection.eventCollection, backgroundColor: Common.backgroundColor),
        HomeStruct(name: HomeSection.footerMenu, backgroundColor: Common.backgroundColor),
        HomeStruct(name: HomeSection.restaurantAd, backgroundColor: Common.backgroundColor)
    ]
}


