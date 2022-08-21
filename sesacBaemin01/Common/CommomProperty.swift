//
//  CommomProperty.swift
//  sesacBaemin01
//
//  Created by Brother Model on 2022/08/21.
//

import UIKit

enum Common {
    static let backgroundColor = UIColor(red: CGFloat(246/255.0), green: CGFloat(246/255.0), blue: CGFloat(246/255.0), alpha: CGFloat(1.0))
    
    static let identityColor = UIColor(red: CGFloat(40/255.0), green: CGFloat(193/255.0), blue: CGFloat(188/255.0), alpha: CGFloat(1.0))
    
    
    static func setNavBarButtonConfiguration(configuration: inout UIButton.Configuration, imageSystemName: String?, baseForeGroundColor: UIColor? = .white, imagePlacement: NSDirectionalRectEdge? = .leading, imagePadding: CGFloat? = 0, imageSize: CGFloat? = 0, titleAttribute: AttributedString? = nil) {
        if let imageSystemName = imageSystemName { configuration.image = UIImage(systemName: imageSystemName) }
        if let baseForeGroundColor = baseForeGroundColor { configuration.baseForegroundColor = baseForeGroundColor }
        if let imagePlacement = imagePlacement { configuration.imagePlacement = imagePlacement }
        if let imagePadding = imagePadding { configuration.imagePadding = imagePadding }
        if let imageSize = imageSize { configuration.preferredSymbolConfigurationForImage = UIImage.SymbolConfiguration(pointSize: imageSize) }
        if let titleAttribute = titleAttribute { configuration.attributedTitle = titleAttribute }
    }
    
}
            
        
    
    

