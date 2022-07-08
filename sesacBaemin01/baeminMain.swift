//
//  baeminMain.swift
//  sesacBaemin01
//
//  Created by Brother Model on 2022/07/05.
//

import UIKit

class baeminMain: UIViewController {

    @IBOutlet weak var category01: UIButton!
    @IBOutlet weak var category02: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        category01.setImage(self.resizeImage(image: UIImage(named: "shop.png")!, width: 70, height: 70), for: UIControl.State.normal)
        
    }
    
    func resizeImage(image: UIImage, width: CGFloat, height: CGFloat) -> UIImage {
        UIGraphicsBeginImageContext(CGSize(width: width, height: height))
        image.draw(in: CGRect(x: 0, y: 0, width: width, height: height))
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return newImage!
    }
    var test = "it's a word for test"
    var test2 = "it's a word for test"

}
