//
//  TabBarTest01ViewController.swift
//  sesacBaemin01
//
//  Created by Brother Model on 2022/07/20.
//

import UIKit

class TabBarTest01ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func buttonClicked(_ sender: UIButton) {
        let sb = UIStoryboard(name: "TabBarTest01", bundle: nil)
        
        let vc = sb.instantiateViewController(withIdentifier: "TabBarTest01_2_ViewController") as! TabBarTest01_2_ViewController
        vc.modalPresentationStyle = .fullScreen
        
        present(vc, animated: true)
    }
    

    
}
