//
//  kakaoUItestViewController.swift
//  sesacBaemin01
//
//  Created by Brother Model on 2022/07/08.
//

import UIKit

class kakaoUItestViewController: UIViewController {

    @IBOutlet weak var profileImageButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        profileImageButton.setImage(self.resizeImage(image: UIImage(named: "kakaoProfile.jpeg")!, width: 150, height: 150), for: UIControl.State.normal)
        
    }
    
    
    func resizeImage(image: UIImage, width: CGFloat, height: CGFloat) -> UIImage {
    UIGraphicsBeginImageContext(CGSize(width: width, height: height))
    image.draw(in: CGRect(x: 0, y: 0, width: width, height: height))
    let newImage = UIGraphicsGetImageFromCurrentImageContext()
    UIGraphicsEndImageContext()
    return newImage!
    }


}
