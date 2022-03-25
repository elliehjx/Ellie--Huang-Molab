//
//  Landmark.swift
//  ArtSeum
//
//  Created by ellie huang on 3/23/22.
//Landmark.swift to handle the json file

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable, Identifiable {
	//Int stands for number. String stands for text
	var id: Int
	var name: String
	var park: String
	var state: String
	var description: String
	
	private var imageName: String
	//call out image
	var image: Image{
		Image(imageName)
		
	}
	
	
	//for location information, needs to use coordination
	private var coordinates: Coordinates
	var locationCoordinate: CLLocationCoordinate2D {
		CLLocationCoordinate2D(
			latitude: coordinates.latitude,
			longitude: coordinates.longtitude)
	}
	
	struct Coordinates: Hashable, Codable {
		var latitude: Double
		var longtitude: Double
		
	}

}
