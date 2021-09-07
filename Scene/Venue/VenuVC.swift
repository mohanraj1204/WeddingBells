//
//  VenuVC.swift
//  WeddingBells
//
//  Created by Mohanraj on 06/09/21.
//

import UIKit
import CoreLocation
import MapKit

class VenuVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func onClkDirection(_ sender: Any) {
        let source = MKMapItem(coordinate: .init(latitude: 13.0827, longitude: 13.0827), name: "Source")
        let destination = MKMapItem(coordinate: .init(latitude: 11.9416, longitude: 79.8083), name: "Destination")

        MKMapItem.openMaps(
          with: [source, destination],
          launchOptions: [MKLaunchOptionsDirectionsModeKey: MKLaunchOptionsDirectionsModeDriving]
        )
    }
    
}


extension MKMapItem {
  convenience init(coordinate: CLLocationCoordinate2D, name: String) {
    self.init(placemark: .init(coordinate: coordinate))
    self.name = name
  }
}
