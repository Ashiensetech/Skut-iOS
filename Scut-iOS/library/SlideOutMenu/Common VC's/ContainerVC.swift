//Scut-iOS
//
// Created for: WorkSpace InfoTech on 3/3/19
// Copyright (c) 2019. All Rights Reserved. Kayes-Ekram Production
//
// Using Swift 4.0
// Running on 10.14

import UIKit

class ContainerVC: UIViewController {

    @IBOutlet weak var slideOutView: UIView!
    @IBOutlet weak var slideMenuLeadingConstraint: NSLayoutConstraint!
    @IBOutlet weak var contentViewLeadingConstraint: NSLayoutConstraint!
    var menuVisible = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        slideMenuLeadingConstraint.constant = 0 - self.slideOutView.frame.size.width - 32
    }
    
    @objc func toggleSideMenu(fromViewController: UIViewController) {
        if(menuVisible){
            UIView.animate(withDuration: 0.5, animations: {
                // hide the side menu to the left
                self.slideMenuLeadingConstraint.constant = 0 - self.slideOutView.frame.size.width
                // move the content view (tab bar controller) to original position
                self.contentViewLeadingConstraint.constant = 0
                self.view.layoutIfNeeded()
            })
        } else {
            
            self.view.layoutIfNeeded()
            UIView.animate(withDuration: 0.5, animations: {
                // move the side menu to the right to show it
                self.slideMenuLeadingConstraint.constant = 0
                // move the content view (tab bar controller) to the right
                self.contentViewLeadingConstraint.constant = self.slideOutView.frame.size.width
                self.view.layoutIfNeeded()
            })
        }
        
        menuVisible = !menuVisible
    }
    
    func hideSideMenu() {
        if(menuVisible){
            UIView.animate(withDuration: 0.5, animations: {
                self.slideMenuLeadingConstraint.constant = 0 - self.slideOutView.frame.size.width
                self.contentViewLeadingConstraint.constant = 0
                self.view.layoutIfNeeded()
            })
            
            menuVisible = !menuVisible
        }
    }

}
