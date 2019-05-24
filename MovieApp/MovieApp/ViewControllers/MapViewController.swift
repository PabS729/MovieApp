//
//  MapViewController.swift
//  MovieApp
//
//  Created by Minjing Shi on 5/18/19.
//  Copyright © 2019 Minjing Shi. All rights reserved.
//

import UIKit
//import PusherSwift
import Alamofire
import GoogleMaps
import Parse

class MapViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
            GMSServices.provideAPIKey("AIzaSyB-RSipfir-QiVRoR22vgH7tdonnjV3CQc")
        
        let camera = GMSCameraPosition.camera(withLatitude: 37, longitude: 122, zoom: 10)
        let mapView = GMSMapView.map(withFrame: CGRect(x: 0, y: 0, width: 100, height: 100), camera: camera)
        // Do any additional setup after loading the view.
        view = mapView
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2DMake(37, 122)
        marker.title = "someplace"
        marker.snippet = "sp"
        marker.map = mapView
    }

    //@IBOutlet weak var MapView: UIView!

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

