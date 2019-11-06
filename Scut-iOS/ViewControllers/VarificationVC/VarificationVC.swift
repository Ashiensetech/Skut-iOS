//Scut-iOS
//
// Created for: WorkSpace InfoTech on 2/13/19
// Copyright (c) 2019. All Rights Reserved. Kayes-Ekram Production
//
// Using Swift 4.0
// Running on 10.14

import UIKit

class VarificationVC: MainViewController {

    var varificationView: VarificationView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //MARK:- Initialize all
        self.initElems()
        self.initActions()
        self.initTransitions()
        
    }
    

}
