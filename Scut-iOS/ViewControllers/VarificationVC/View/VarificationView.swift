//Scut-iOS
//
// Created for: WorkSpace InfoTech on 2/14/19
// Copyright (c) 2019. All Rights Reserved. Kayes-Ekram Production
//
// Using Swift 4.0
// Running on 10.14

import UIKit

class VarificationView: UIView {
    
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var wrapperView: WrapperView!
    
//    @IBOutlet weak var dropDownView: DropDown!
    
    
    static func instance() -> VarificationView {
        let v = UINib.init(nibName: "VarificationView", bundle: nil).instantiate(withOwner: self, options: nil)[0] as! VarificationView
        v.setup()
        return v
    }
    
    func setup(){
        let option =  Options()
        wrapperView.optionArray = option.countries
        wrapperView.optionIds = option.ids
    }
}
