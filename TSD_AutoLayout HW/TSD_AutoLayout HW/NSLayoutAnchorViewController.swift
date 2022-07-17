//
//  NSLayoutAnchorViewController.swift
//  TSD_AutoLayout HW
//
//  Created by Anton Zyabkin on 17.07.2022.
//

import UIKit

class NSLayoutAnchorViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        createNSLayoutAnchorYellowView ()
        createNSLayoutAnchorRedView ()
        createNSLayoutAnchorGreenView ()
        createNSLayoutAnchorGrayView ()
        grayView.layer.zPosition = -1

    }
    
    private func createNSLayoutAnchorYellowView () {
        yellowView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.1).isActive = true
        yellowView.widthAnchor.constraint(equalTo: yellowView.heightAnchor).isActive = true
        yellowView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        yellowView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    private func createNSLayoutAnchorRedView () {
        redView.heightAnchor.constraint(equalTo: yellowView.heightAnchor).isActive = true
        redView.widthAnchor.constraint(equalTo: yellowView.widthAnchor).isActive = true
        redView.bottomAnchor.constraint(equalTo: yellowView.topAnchor, constant: -yellowView.frame.height/5).isActive = true
        redView.centerXAnchor.constraint(equalTo: yellowView.centerXAnchor).isActive = true
    }
    
    private func createNSLayoutAnchorGreenView () {
        greenView.heightAnchor.constraint(equalTo: yellowView.heightAnchor).isActive = true
        greenView.widthAnchor.constraint(equalTo: yellowView.widthAnchor).isActive = true
        greenView.topAnchor.constraint(equalTo: yellowView.bottomAnchor, constant: yellowView.frame.height/5).isActive = true
        greenView.centerXAnchor.constraint(equalTo: yellowView.centerXAnchor).isActive = true
    }
    
    private func createNSLayoutAnchorGrayView () {
        grayView.leadingAnchor.constraint(equalTo: redView.leadingAnchor, constant: -yellowView.frame.height/5).isActive = true
        grayView.trailingAnchor.constraint(equalTo: redView.trailingAnchor, constant: yellowView.frame.height/5).isActive = true
        grayView.topAnchor.constraint(equalTo: redView.topAnchor, constant: -yellowView.frame.height/5).isActive = true
        grayView.bottomAnchor.constraint(equalTo: greenView.bottomAnchor, constant: yellowView.frame.height/5).isActive = true
    }

}
