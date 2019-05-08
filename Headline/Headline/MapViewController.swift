//
//  MapViewController.swift
//  Headline
//
//  Created by Rinaldi-Tierno, Veronica A on 5/7/19.
//  Copyright © 2019 Rinaldi-Tierno, Veronica A. All rights reserved.
//

import UIKit
//import MapKit

class MapViewController: UIViewController
    //MKMapViewDelegate, CLLocationManagerDelegate
{


    //let locationManager = CLLocationManager()
    

    //@IBOutlet var mapkitView: MKMapView!
    
    
    
       // override func viewDidLoad() {
       // super.viewDidLoad()
        
  //     // mapkitView.delegate = self
       // mapkitView.showsScale = true
       // mapkitView.showsCompass = true
       // mapkitView.showsTraffic = true
       // mapkitView.showsBuildings = true
       // mapkitView.showsUserLocation = true
       // mapkitView.showsPointsOfInterest = true
        
       // locationManager.requestAlwaysAuthorization()
       // locationManager.requestWhenInUseAuthorization()
        
       // if CLLocationManager.locationServicesEnabled() {
          //  locationManager.delegate = self
           // locationManager.desiredAccuracy = kCLLocationAccuracyBest
          //  locationManager.startUpdatingLocation()
            
  //      }
        
       // let sourceCoordinates = locationManager.location?.coordinate
      //  let destCoordinates = CLLocationCoordinate2DMake(29.701608, -98.124622)
        
      //  let sourcePlacemark = MKPlacemark(coordinate: sourceCoordinates!)
      //  let destPlacemark = MKPlacemark(coordinate: destCoordinates)
        
      //  let sourceItem = MKMapItem(placemark: sourcePlacemark)
      //  let destItem = MKMapItem(placemark: destPlacemark)
        
      //  let directionRequest = MKDirections.Request()
      //  directionRequest.source = sourceItem
       // directionRequest.destination = destItem
       // directionRequest.transportType = .walking
       // directionRequest.transportType = .automobile
        
       // let directions = MKDirections(request: directionRequest)
       // directions.calculate(completionHandler: {
        //    response, error in
         //   guard let response = response else {
           //     if let error = error {
               //     print("Something Went Wrong")
   //             }
         //   return
   //     }
        
          //  let route = response.routes[0]
          //  self.mapkitView.addOverlay(route.polyline, level: .aboveRoads)
            
         //   let rekt = route.polyline.boundingMapRect
            //self.mapkitView.setRegion(MKCoordinateRegion(rekt), animated: true)
        
        
 //   })
//}

   // func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
     //   let renderer = MKPolylineRenderer(overlay: overlay)
      //  renderer.strokeColor = UIColor.blue
      //  renderer.lineWidth = 5.0
        
      //  return renderer
//}

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }}
