//
//  NSLayoutConstrainViewController.swift
//  TSD_AutoLayout HW
//
//  Created by Anton Zyabkin on 17.07.2022.
//

import UIKit

class NSLayoutConstrainViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        createLayoutConstraintYellowView ()
        createLayoutConstraintRedView ()
        createLayoutConstraintGreenView ()
        createLayoutConstraintGrayView ()
        createLayoutConstraintGrayView ()
        grayView.layer.zPosition = -1
    }

    private func createLayoutConstraintYellowView () {
        //задает ограничение для Х
        NSLayoutConstraint (item: yellowView,
                            attribute: .centerX,
                            relatedBy: .equal,
                            toItem: view,
                            attribute: .centerX,
                            multiplier: 1,
                            constant: 0).isActive = true
        
        //задает ограничение для Y
        NSLayoutConstraint (item: yellowView,
                            attribute: .centerY,
                            relatedBy: .equal,
                            toItem: view,
                            attribute: .centerY,
                            multiplier: 1,
                            constant: 0).isActive = true
        
        //задает ограничение для height
        NSLayoutConstraint (item: yellowView,
                            attribute: .height,
                            relatedBy: .equal,
                            toItem: view,
                            attribute: .height,
                            multiplier: 0.1,
                            constant: 0).isActive = true
        
        //задает ограничение для width
        NSLayoutConstraint (item: yellowView,
                            attribute: .width,
                            relatedBy: .equal,
                            toItem: yellowView,
                            attribute: .height,
                            multiplier: 1,
                            constant: 0).isActive = true
    }
    
    private func createLayoutConstraintRedView () {
        //задает ограничение для Х
        NSLayoutConstraint (item: redView,
                            attribute: .centerX,
                            relatedBy: .equal,
                            toItem: yellowView,
                            attribute: .centerX,
                            multiplier: 1,
                            constant: 0).isActive = true
        
        //задает ограничение для Y
        NSLayoutConstraint (item: redView,
                            attribute: .bottom,
                            relatedBy: .equal,
                            toItem: yellowView,
                            attribute: .top,
                            multiplier: 1,
                            constant: -yellowView.frame.height/5).isActive = true
        
        //задает ограничение для height
        NSLayoutConstraint (item: redView,
                            attribute: .height,
                            relatedBy: .equal,
                            toItem: yellowView,
                            attribute: .height,
                            multiplier: 1,
                            constant: 0).isActive = true
        
        //задает ограничение для width
        NSLayoutConstraint (item: redView,
                            attribute: .width,
                            relatedBy: .equal,
                            toItem: redView,
                            attribute: .height,
                            multiplier: 1,
                            constant: 0).isActive = true

    }
    
    private func createLayoutConstraintGreenView () {
        //задает ограничение для Х
        NSLayoutConstraint (item: greenView,
                            attribute: .centerX,
                            relatedBy: .equal,
                            toItem: yellowView,
                            attribute: .centerX,
                            multiplier: 1,
                            constant: 0).isActive = true
        
        //задает ограничение для Y
        NSLayoutConstraint (item: greenView,
                            attribute: .top,
                            relatedBy: .equal,
                            toItem: yellowView,
                            attribute: .bottom,
                            multiplier: 1,
                            constant: yellowView.frame.height/5).isActive = true
        
        //задает ограничение для height
        NSLayoutConstraint (item: greenView,
                            attribute: .height,
                            relatedBy: .equal,
                            toItem: yellowView,
                            attribute: .height,
                            multiplier: 1,
                            constant: 0).isActive = true
        
        //задает ограничение для width
        NSLayoutConstraint (item: greenView,
                            attribute: .width,
                            relatedBy: .equal,
                            toItem: greenView,
                            attribute: .height,
                            multiplier: 1,
                            constant: 0).isActive = true

    }
    
    private func createLayoutConstraintGrayView () {
        //задает отступ влево от крайно вью
        NSLayoutConstraint (item: grayView,
                            attribute: .leading,
                            relatedBy: .equal,
                            toItem: redView,
                            attribute: .leading,
                            multiplier: 1,
                            constant: -yellowView.frame.height/5).isActive = true
        
        //задает отступ вверх от красной вью
        NSLayoutConstraint (item: grayView,
                            attribute: .top,
                            relatedBy: .equal,
                            toItem: redView,
                            attribute: .top,
                            multiplier: 1,
                            constant: -yellowView.frame.height/5).isActive = true
        
        //задает отступ вниз от зеленой вью
        NSLayoutConstraint (item: grayView,
                            attribute: .bottom,
                            relatedBy: .equal,
                            toItem: greenView,
                            attribute: .bottom,
                            multiplier: 1,
                            constant: yellowView.frame.height/5).isActive = true
        
        //задает отступ вправо от красной вью
        NSLayoutConstraint (item: grayView,
                            attribute: .trailing,
                            relatedBy: .equal,
                            toItem: redView,
                            attribute: .trailing,
                            multiplier: 1,
                            constant: yellowView.frame.height/5).isActive = true

    }
    
}
