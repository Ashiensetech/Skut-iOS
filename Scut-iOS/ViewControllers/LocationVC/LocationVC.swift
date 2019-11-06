//Scut-iOS
//
// Created for: WorkSpace InfoTech on 2/25/19
// Copyright (c) 2019. All Rights Reserved. Kayes-Ekram Production
//
// Using Swift 4.0
// Running on 10.14

import UIKit
import GoogleMaps

class LocationVC: MainViewController, CLLocationManagerDelegate {
    
    @IBOutlet weak var blurView: UIView!
    @IBOutlet weak var accessLocationBtn: UIButton!
    @IBOutlet weak var mapView: GMSMapView!
    
    var isBlurViewHidden: Bool = false
    
    private let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupAccessBtnAction()
        
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
    }
    
    func setupAccessBtnAction() {
        self.accessLocationBtn.addTarget(self, action: #selector(accessLocation), for: .touchUpInside)
    }
    
    func setUpAlertView() {
        AlertView.instance.showAlert()
        AlertView.instance.doneBtn.addTarget(self, action: #selector(transitToVerifiedVC), for: .touchUpInside)
        AlertView.instance.denyBtn.addTarget(self, action: #selector(denyAction), for: .touchUpInside)
    }
    
    func hideBlurView() {
        self.blurView.isHidden = !self.isBlurViewHidden ? false : true
        self.isBlurViewHidden = !self.isBlurViewHidden
    }
    
    //MARK:- Button Actions
    
    @objc func accessLocation() {
        self.setUpAlertView()
        self.hideBlurView()
    }
    
    @objc func transitToVerifiedVC() {
        AlertView.instance.parentView.removeFromSuperview()
        self.blurView.isHidden = true
        isBlurViewHidden = false
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let ivc = storyboard.instantiateViewController(withIdentifier: "Verified")
        ivc.modalTransitionStyle = .partialCurl
        self.present(ivc, animated: true, completion: nil)
    }
    
    @objc func denyAction() {
        AlertView.instance.parentView.removeFromSuperview()
        self.blurView.isHidden = true
        isBlurViewHidden = false
    }
    
    
    // MARK: - CLLocationManagerDelegate
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {

        guard status == .authorizedWhenInUse else {
            return
        }
        locationManager.startUpdatingLocation()
        mapView.isMyLocationEnabled = true
        mapView.settings.myLocationButton = true
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.first else {
            return
        }
        
        mapView.camera = GMSCameraPosition(target: location.coordinate, zoom: 15, bearing: 0, viewingAngle: 0)
        locationManager.stopUpdatingLocation()
    }
}
