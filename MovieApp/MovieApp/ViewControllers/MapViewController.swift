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
        
        let camera = GMSCameraPosition.camera(withLatitude: 32.8684, longitude: -117.234, zoom: 10)
        let mapView = GMSMapView.map(withFrame: CGRect(x: 0, y: 0, width: 100, height: 100), camera: camera)
        // Do any additional setup after loading the view.
        view = mapView
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2DMake(32.8648945, -117.2343057)
        marker.title = "AMC"
        marker.snippet = "me"
        marker.map = mapView
        let marker2 = GMSMarker()
        marker2.position = CLLocationCoordinate2DMake(32.8711202, -117.2138628)
        marker2.title = "ArcLight"
        marker2.snippet = "Bob"
        marker2.map = mapView
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

