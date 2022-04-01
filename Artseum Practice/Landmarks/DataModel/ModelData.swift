//
//  ModelData.swift
//  Landmarks
//
//  Created by ellie huang on 3/23/22.
//  Copyright © 2022 Apple. All rights reserved.
//


import Foundation
//adding user storage
import Combine

//ObservableObject declare a new model type
final class ModelData: ObservableObject{
	@Published var landmarks: [Landmark] = load("landmarkData.json")
	
	
	//category names as keys, array pf associated lanmarks for each key
	var categories: [String:[Landmark]]{
		Dictionary(
			grouping:landmarks,
			by: {$0.category.rawValue}
		)
		
	}
}


func load<T: Decodable>(_ filename: String) -> T {
	let data: Data
	
	guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
	else {
		fatalError("Couldn't find \(filename) in main bundle.")
	}
	
	do {
		data = try Data(contentsOf: file)
	} catch {
		fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
	}
	
	do {
		let decoder = JSONDecoder()
		return try decoder.decode(T.self, from: data)
	} catch {
		fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
	}
}
