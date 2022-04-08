//
//  realTimeLocation.swift
//  Landmarks
//
//  Created by ellie huang on 4/1/22.
//  Copyright © 2022 Apple. All rights reserved.
//

//import SwiftUI
//
//struct realTimeLocation: View {
//    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//    }
//}
//
//struct realTimeLocation_Previews: PreviewProvider {
//    static var previews: some View {
//        realTimeLocation()
//    }
//}
import SwiftUI
import CoreLocation
import CoreLocationUI

class LocationManager: NSObject, ObservableObject, CLLocationManagerDelegate {
	let manager = CLLocationManager()
	
	@Published var location: CLLocationCoordinate2D?
	
	override init() {
		super.init()
		manager.delegate = self
	}
	
	func requestLocation() {
		manager.requestLocation()
	}
	
	func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
		location = locations.first?.coordinate
	}
}

struct realTimeLocation: View {
	@StateObject var locationManager = LocationManager()
	
	var body: some View {
		VStack {
			if let location = locationManager.location {
				Text("Your location: \(location.latitude), \(location.longitude)")
			}
			
			LocationButton {
				locationManager.requestLocation()
			}
			.frame(height: 44)
			.padding()
		}
	}
}


struct realTimeLocation_Previews: PreviewProvider {
	static var previews: some View {
		realTimeLocation()
	}
}
