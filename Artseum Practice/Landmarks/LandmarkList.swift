//
//  LandmarkList.swift
//  Landmarks
//
//  Created by ellie huang on 3/24/22.
//  Copyright © 2022 Apple. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
	
	@EnvironmentObject var modelData:ModelData
	@State private var showFavoritesOnly=true
	
	var filteredLandmarks: [Landmark]{
		//cannot find landmarks in scope??
		modelData.landmarks.filter{
			landmark in
			(!showFavoritesOnly || landmark.isFavorite)
			
		}
		
	}
	
	var body: some View {
		
		ZStack{
			
			//listing + ignore safe area
		//	NavigationView{
				List{
					
					Toggle(isOn:$showFavoritesOnly){
						Text("Favorites Only")
					}
					
					ForEach(filteredLandmarks) {landmark in
						NavigationLink{
							LandmarkDetail(landmark: landmark)
						}
						
					label: {
						//call out all the landmarks
						LandmarkRow(landmark: landmark)
							.frame(height:100)
						
						
					}
					}
					
					
				}.background(Color.orange)
				
				.navigationTitle("Galleries")
			}
			
		//}
	}
}

struct LandmarkList_Previews: PreviewProvider {
	static var previews: some View {
		//for preview the navigation
		NavigationView{
		LandmarkList().environmentObject(ModelData())
		}
	}
}
