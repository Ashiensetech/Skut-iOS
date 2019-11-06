//Scut-iOS
//
// Created for: WorkSpace InfoTech on 2/23/19
// Copyright (c) 2019. All Rights Reserved. Kayes-Ekram Production
//
// Using Swift 4.0
// Running on 10.14

import UIKit

class AddPaymentView: UIView {

    @IBOutlet weak var addPContinueBtn: UIButton!
    
    static func instance() ->AddPaymentView {
        let v = UINib.init(nibName: "AddPaymentView", bundle: nil).instantiate(withOwner: self, options: nil)[0] as! AddPaymentView
        v.setup()
        return v
    }
    
    func setup() {
        
    }
}
