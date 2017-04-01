//
//  MapViewController.swift
//  ScenesMaps
//
//  Created by JON SKYNET on 20/03/17.
//  Copyright © 2017 JON SKYNET. All rights reserved.
//

import UIKit
import MapKit

class Annotation : NSObject, MKAnnotation{
    let coordinate: CLLocationCoordinate2D
    let title: String?
    let subtitle: String?
    
    init(latitude: CLLocationDegrees, longitude: CLLocationDegrees,
         title: String?, subtitle: String?){
        self.coordinate = CLLocationCoordinate2D(latitude: latitude,
                                                 longitude: longitude)
        self.title = title
        self.subtitle = subtitle
    }
}

extension Annotation{
    var region: MKCoordinateRegion{
        let span = MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1)
        return MKCoordinateRegion(center: coordinate, span: span)
    }
}

class MapViewController: UIViewController {

    var santPol = (lat: 0.0, long: 0.0)
    @IBOutlet var mapView: MKMapView!
    func display(latitude: CLLocationDegrees,
                 longitude: CLLocationDegrees,
                 title: String? = nil,
                 subtitle: String? = nil){
        
        let annotation = Annotation(latitude: latitude,
                                    longitude: longitude,
                                    title: title,
                                    subtitle: subtitle)
        
        mapView.addAnnotation(annotation)
        
        mapView.setRegion(annotation.region, animated: false)
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
       display(latitude: santPol.lat,
                longitude: santPol.long,
                title: "El meu pais...",
                subtitle: "... és tant petit")  
     
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

