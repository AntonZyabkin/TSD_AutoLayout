//
//  ViewController.swift
//  TSD_AutoLayout
//
//  Created by Anton Zyabkin on 15.07.2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    var view1 : UIView = {
        let view = UIView (frame: CGRect (x: 0, y: 0, width: 50, height: 50))
        view.backgroundColor = .red
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        creaateView1Constraint ()
    }

    
    func creaateView1Constraint () {
        
    }

}

