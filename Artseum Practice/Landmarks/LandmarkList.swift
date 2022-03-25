//
//  LandmarkList.swift
//  Landmarks
//
//  Created by ellie huang on 3/24/22.
//  Copyright © 2022 Apple. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
	
	@State private var showFavoritesOnly=true
	
	var filteredLandmarks: [Landmark]{
		landmarks.filter{
			landmark in (!showFavoritesOnly || landmark.isFavorite)
			
		}
		
	}
	
	var body: some View {
		ZStack{
			
			//listing + ignore safe area
			NavigationView{
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
						LandmarkRow(landmark: landmark) }
					}
					
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
