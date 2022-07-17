//
//  ViewController.swift
//  TSD_AutoLayout
//
//  Created by Anton Zyabkin on 15.07.2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    var viewRed : UIView = {
        let view = UIView ()
        view.backgroundColor = .red
        view.translatesAutoresizingMaskIntoConstraints = false
        view.alpha = 0.4
        return view
    }()
    var viewGreen : UIView = {
        let view = UIView ()
        view.backgroundColor = .green
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(viewRed)
        view.addSubview(viewGreen)
        
        createRedViewConstraint ()
        createGreenViewConstraint ()
        
        
        
        //ниже показано как можно добавить канстрейнты с помощью visual format language
        /*_____________________________________
        let viewVFL = ["viewRed": viewRed, "viewGreen": viewGreen] // тут зададем словарь с вью которые необходимо ограницить. Их отлавливаем по ключу в строке with visual format:
        let metrics = ["height": 100, "width": view.bounds.size.width / 3, "top": view.bounds.size.height / 20]
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-top-[viewRed(height)]|",
                                                           options: [],
                                                           metrics: metrics,
                                                           views: viewVFL))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-top-[viewGreen(height)]|",
                                                           options: [],
                                                           metrics: metrics,
                                                           views: viewVFL))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-[viewGreen(width)]-(50)-[viewRed(width)]-|",
                                                           options: [],
                                                           metrics: metrics,
                                                           views: viewVFL))
        _________________________*/
    }

    
    
    
    //NSLayoutConstraint более не использует (то как показанро в двух функцих ниже). Сам  Эпл не рекомендует такую натсройку канстрейтов
/*
    func creaateView1Constraint () {
        NSLayoutConstraint (item: view1,
                            attribute: .leading,
                            relatedBy: .equal,
                            toItem: view,
                            attribute: .leadingMargin,
                            multiplier: 1,
                            constant: 0).isActive = true
        NSLayoutConstraint (item: view1,
                            attribute: .trailingMargin,
                            relatedBy: .equal,
                            toItem: view,
                            attribute: .trailingMargin,
                            multiplier: 1,
                            constant: 0).isActive = true
        NSLayoutConstraint (item: view1,
                            attribute: .top,
                            relatedBy: .equal,
                            toItem: view,
                            attribute: .topMargin,
                            multiplier: 1,
                            constant: 88).isActive = true
        NSLayoutConstraint (item: view1,
                            attribute: .height,
                            relatedBy: .equal,
                            toItem: view,
                            attribute: .width,
                            multiplier: 1,
                            constant: 10).isActive = true
    }

    func creaateView2Constraint () {
        NSLayoutConstraint (item: view2,
                            attribute: .centerX,
                            relatedBy: .equal,
                            toItem: view1,
                            attribute: .centerX,
                            multiplier: 1,
                            constant: 0).isActive = true
        NSLayoutConstraint (item: view2,
                            attribute: .bottom,
                            relatedBy: .equal,
                            toItem: view1,
                            attribute: .top,
                            multiplier: 1,
                            constant: -8).isActive = true
        NSLayoutConstraint (item: view2,
                            attribute: .width,
                            relatedBy: .equal,
                            toItem: nil,
                            attribute: .notAnAttribute,
                            multiplier: 1,
                            constant: 100).isActive = true
        NSLayoutConstraint (item: view2,
                            attribute: .height,
                            relatedBy: .equal,
                            toItem: nil,
                            attribute: .notAnAttribute,
                            multiplier: 1,
                            constant: 100).isActive = true
    }
 */
    
    
    
    private func createRedViewConstraint () {
        viewRed.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        viewRed.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/3).isActive = true
        viewRed.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5).isActive = true
        viewRed.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    
    private func createGreenViewConstraint () {
        viewGreen.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive = true
//        viewGreen.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/3).isActive = true
        viewGreen.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5).isActive = true
        viewGreen.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        viewGreen.leftAnchor.constraint(lessThanOrEqualTo: viewRed.rightAnchor).isActive = true
    }
}

