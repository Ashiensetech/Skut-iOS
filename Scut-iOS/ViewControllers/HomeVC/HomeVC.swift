//Scut-iOS
//
// Created for: WorkSpace InfoTech on 2/18/19
// Copyright (c) 2019. All Rights Reserved. Kayes-Ekram Production
//
// Using Swift 4.0
// Running on 10.14

import UIKit

class HomeVC: CommonVC {

    @IBOutlet weak var scanToRideView: UIView!
    //Mark: All Properties
    var button:UIButton!
    var buttonSize:CGFloat = 40
    var myLabel:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
         self.initElement()
         self.addedElementToView()
        
    }

}

extension HomeVC {
    func initElement() {
        setUpGestureRecognizer()
    }
    func addedElementToView() {
    }
    
    //gesture setup
    func setUpGestureRecognizer() {
        let gesture = UITapGestureRecognizer(target: self, action:  #selector(self.scanAction))
        self.scanToRideView.addGestureRecognizer(gesture)
    }
}
