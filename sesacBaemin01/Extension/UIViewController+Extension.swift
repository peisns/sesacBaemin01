//
//  UIViewController+Extension.swift
//  sesacBaemin01
//
//  Created by Brother Model on 2022/08/22.
//

import UIKit

extension UIViewController {
    func warningAlert(title:String?, message:String?, preferredStyle: UIAlertController.Style, checkWord: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: preferredStyle)
        let check = UIAlertAction(title:checkWord , style: .default)
        
        alert.addAction(check)
        present(alert, animated: true)
    }
}
