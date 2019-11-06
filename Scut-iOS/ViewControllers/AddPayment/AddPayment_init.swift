//
// Created for: WorkSpace InfoTech on 2/23/19
// Copyright (c) 2019. All Rights Reserved. Kayes-Ekram Production
//
// Using Swift 4.0
// Running on 10.14

import Foundation

extension AddPaymentVC {
    func initElems() {
        self.initView()
    }
    func initActions() {
        
    }
    func initTransitions() {
        
    }
    
    func initView() {
        self.addPaymentView = AddPaymentView.instance()
        addPaymentView.frame = self.view.frame
        self.view.addSubview(addPaymentView)
    }
}
