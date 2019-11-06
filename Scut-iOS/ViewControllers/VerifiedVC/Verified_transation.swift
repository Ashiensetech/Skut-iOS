//Scut-iOS
//
// Created for: WorkSpace InfoTech on 2/20/19
// Copyright (c) 2019. All Rights Reserved. Kayes-Ekram Production
//
// Using Swift 4.0
// Running on 10.14


import Foundation
import UIKit

extension VerifiedVC {
    func transitToMainTabBarVC(){
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let tabbarVC = storyboard.instantiateViewController(withIdentifier: "mainTabBar") as! MainTabBarVC
        tabbarVC.modalTransitionStyle = .flipHorizontal
        self.present(tabbarVC, animated: true, completion: nil)
    }
    
    func transitToContainerVC() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let containerVC = storyboard.instantiateViewController(withIdentifier: "ContainerVC") as! ContainerVC
        containerVC.modalTransitionStyle = .crossDissolve
        self.present(containerVC, animated: true, completion: nil)
    }
}
