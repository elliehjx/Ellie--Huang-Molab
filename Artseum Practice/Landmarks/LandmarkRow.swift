//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by ellie huang on 3/24/22.
//  Copyright © 2022 Apple. All rights reserved.
//

import SwiftUI

struct LandmarkRow: View {
	
	var landmark: Landmark
	
	var body: some View {
		HStack {
			landmark.image
				.resizable()
				.frame(width: 70, height: 70).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
			VStack(alignment: .leading){
			Text(landmark.name).font(.system(size: 18)).bold()
			
			Text(landmark.state).font(.system(size: 12)).bold().foregroundColor(Color.gray)
			}
			Spacer()
			
			if landmark.isFavorite{
				Image(systemName: "star.fill").foregroundColor(.blue)
				
			}
		}
	}
}

struct LandmarkRow_Previews: PreviewProvider {
	static var landmarks = ModelData().landmarks
	
	static var previews: some View {
		Group {
			LandmarkRow(landmark: landmarks[0])
			LandmarkRow(landmark: landmarks[1])
//			LandmarkRow(landmark: landmarks[0])
//				.previewLayout(.fixed(width: 400, height: 70))
//			LandmarkRow(landmark: landmarks[1])
//				.previewLayout(.fixed(width: 400, height: 70))
		} .previewLayout(.fixed(width: 300, height: 70))
	}
}
