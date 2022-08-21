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
    
    static func setNavBarButtonConfiguration(configuration: UIButton.Configuration, imageSystemName: String?, baseForeGroundColor: UIColor?, imagePlacement: NSDirectionalRectEdge?, imagePadding: CGFloat?, imageSize: CGFloat?, titleAttribute: AttributedString?) -> UIButton.Configuration {
        var config: UIButton.Configuration = configuration
        if let image = imageSystemName { config.image = UIImage(systemName: image) }
        if let baseForeGroundColor = baseForeGroundColor { config.baseForegroundColor = baseForeGroundColor }
        if let imagePlacement = imagePlacement { config.imagePlacement = imagePlacement }
        if let imagePadding = imagePadding { config.imagePadding = imagePadding }
        if let imageSize = imageSize { config.preferredSymbolConfigurationForImage = UIImage.SymbolConfiguration(pointSize: imageSize) }
        if let titleAttribute = titleAttribute { config.attributedTitle = titleAttribute }
        return config
    }
}
        
            
        
    
    

