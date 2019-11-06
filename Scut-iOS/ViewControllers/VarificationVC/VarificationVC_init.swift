//Scut-iOS
//
// Created for: WorkSpace InfoTech on 2/14/19
// Copyright (c) 2019. All Rights Reserved. Kayes-Ekram Production
//
// Using Swift 4.0
// Running on 10.14

import UIKit

extension VarificationVC {
    
    func initTransitions(){
        //Fix Here if use any transition
    }
    
    func initElems(){
        self.__initView()
    }
    
    func initActions(){
        self.__initNextButtonAction()
    }

    
    func __initView(){
        self.varificationView = VarificationView.instance()
        self.varificationView?.frame = self.view.frame
        self.view.addSubview(self.varificationView ?? UIView())
    }
    
    func __initNextButtonAction() {
        self.varificationView?.nextButton.addTarget(self, action: #selector(nextButtonAction), for: .touchUpInside)
    }
}
