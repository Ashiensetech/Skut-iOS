//Scut-iOS
//
// Created for: WorkSpace InfoTech on 3/3/19
// Copyright (c) 2019. All Rights Reserved. Kayes-Ekram Production
//
// Using Swift 4.0
// Running on 10.14

import UIKit

class CommonVC: MainViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // gesture recognizer, to detect the gesture and perform action
        let panGestureRecognizser = UIPanGestureRecognizer(target: self, action: #selector(handlePan(_:)) )
        view.addGestureRecognizer(panGestureRecognizser)
    }
    
    @objc func handlePan(_ recognizer: UIPanGestureRecognizer){
        let translation = recognizer.translation(in: self.view)
        
        // the main view controller that have two container view
        guard let mainVC = self.navigationController?.tabBarController?.parent as? ContainerVC else {
            return
        }
        
        // when user lift up finger / end drag
        if(recognizer.state == .ended || recognizer.state == .failed || recognizer.state == .cancelled){
            
            if(mainVC.menuVisible){
                // user finger moved to left before ending drag
                if(translation.x < 0){
                    // toggle side menu (to fully hide it)
                    mainVC.toggleSideMenu(fromViewController: self)
                }
            } else {
                // user finger moved to right and more than 100pt
                if(translation.x > 100.0){
                    // toggle side menu (to fully show it)
                    mainVC.toggleSideMenu(fromViewController: self)
                } else {
                    // user finger moved to right but too less
                    // hide back the side menu (with animation)
                    mainVC.view.layoutIfNeeded()
                    UIView.animate(withDuration: 0.5, animations: {
                        mainVC.slideMenuLeadingConstraint.constant = 0 - mainVC.slideOutView.frame.size.width
                        mainVC.contentViewLeadingConstraint.constant = 0
                        mainVC.view.layoutIfNeeded()
                    })
                }
            }
            
            // early return so code below won't get executed
            return
        }
        
        
        if(!mainVC.menuVisible && translation.x > 0.0 && translation.x <= mainVC.slideOutView.frame.size.width) {
            mainVC.slideMenuLeadingConstraint.constant = 0 - mainVC.slideOutView.frame.size.width + translation.x
            
            mainVC.contentViewLeadingConstraint.constant = 0 + translation.x
        }
        
        if(mainVC.menuVisible && translation.x >= 0 - mainVC.slideOutView.frame.size.width && translation.x < 0.0) {
            mainVC.slideMenuLeadingConstraint.constant = 0 + translation.x
            
            mainVC.contentViewLeadingConstraint.constant = mainVC.slideOutView.frame.size.width + translation.x
        }
    }
}
