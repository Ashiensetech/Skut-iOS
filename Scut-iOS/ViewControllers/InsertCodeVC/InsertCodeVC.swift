//Scut-iOS
//
// Created for: WorkSpace InfoTech on 2/13/19
// Copyright (c) 2019. All Rights Reserved. Kayes-Ekram Production
//
// Using Swift 4.0
// Running on 10.14

import UIKit

class InsertCodeVC: MainViewController {

    @IBOutlet weak var resendBtn: UIButton!
    @IBOutlet weak var continueBtn: UIButton!
    @IBOutlet weak var insertCodeView: SwiftyCodeView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Insert Varified Number"
        self.setupButtonUI()
        self.setupButtonActions()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        
    }

}

extension InsertCodeVC: SwiftyCodeViewDelegate {
    func codeView(sender: SwiftyCodeView, didFinishInput code: String) {
        print("Code is: \(code)")
    }
}


extension InsertCodeVC {
    func setupButtonUI() {
        resendBtn.layer.borderColor = UIColor.red.cgColor
        resendBtn.layer.borderWidth = 0.8
    }
    
    func setupButtonActions() {
        self.continueBtn.addTarget(self, action: #selector(continueAction), for: .touchUpInside)
        self.resendBtn.addTarget(self, action: #selector(resendAction), for: .touchUpInside)
    }
    
    //MARK:- Button Actions
    
    @objc func continueAction() {
        print("Continue Verification")
        self.transitToLocationVC()
    }
    
    @objc func resendAction() {
        print("Resend Code")
    }
}

extension InsertCodeVC {
    
    func transitToLocationVC() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let ivc = storyboard.instantiateViewController(withIdentifier: "locationVC")
        ivc.modalTransitionStyle = .partialCurl
        self.present(ivc, animated: true, completion: nil)
    }

}
