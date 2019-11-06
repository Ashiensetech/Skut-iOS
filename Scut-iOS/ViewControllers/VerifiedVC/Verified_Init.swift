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
    
    func initElems() {
        self.initView()
    }
   
    func initActions() {
        
    }
    
    func initTransitions() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            // your code here
            self.transitToContainerVC()
        }
    }
    
    func initView() {
        self.verifiedView = VerifiedView.instance()
        self.verifiedView.frame = self.view.frame
        self.view.addSubview(verifiedView)
    }
}
