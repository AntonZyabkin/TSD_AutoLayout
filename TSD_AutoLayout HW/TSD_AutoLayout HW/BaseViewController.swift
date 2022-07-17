//
//  BaseViewController.swift
//  TSD_AutoLayout HW
//
//  Created by Anton Zyabkin on 17.07.2022.
//

import UIKit

class BaseViewController: UIViewController {
    
    
    var redView : UIView = {
        var view = UIView ()
        view.backgroundColor = .red
        view.translatesAutoresizingMaskIntoConstraints = false
        view.frame = CGRect (x: 0, y: 0, width: 150, height: 150)
        return view
    }()
    
    var yellowView : UIView = {
        var view = UIView ()
        view.backgroundColor = .yellow
        view.translatesAutoresizingMaskIntoConstraints = false
        view.frame = CGRect (x: 0, y: 0, width: 150, height: 150)
        return view
    }()

    var greenView : UIView = {
        var view = UIView ()
        view.backgroundColor = .green
        view.translatesAutoresizingMaskIntoConstraints = false
        view.frame = CGRect (x: 0, y: 0, width: 150, height: 150)
        return view
    }()

    var grayView : UIView = {
        var view = UIView ()
        view.backgroundColor = .gray
        view.translatesAutoresizingMaskIntoConstraints = false
        view.frame = CGRect (x: 0, y: 0, width: 150, height: 150)
        return view
    }()


    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(redView)
        view.addSubview(yellowView)
        view.addSubview(greenView)
        view.addSubview(grayView)

    }
}
