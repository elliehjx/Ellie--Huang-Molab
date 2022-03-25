//
//  LandmarkList.swift
//  Landmarks
//
//  Created by ellie huang on 3/24/22.
//  Copyright © 2022 Apple. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
	var body: some View {
		ZStack{
		
		//listing + ignore safe area
		NavigationView{
			List(landmarks) {landmark in
				NavigationLink{
					LandmarkDetail(landmark: landmark)
				}
				
			label: {
				//call out all the landmarks
				LandmarkRow(landmark: landmark) }
				
				
			}
			.navigationTitle("Galleries")
		}
	
		}
	}
}

struct LandmarkList_Previews: PreviewProvider {
	static var previews: some View {
		LandmarkList()
	}
}
