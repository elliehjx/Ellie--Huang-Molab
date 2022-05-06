//
//  CategoryRow.swift
//  Landmarks
//
//  Created by ellie huang on 4/1/22.
//  Copyright © 2022 Apple. All rights reserved.
//

//leading: from left to right
//top: from top to bottom

import SwiftUI

struct CategoryRow: View {
	var categoryName: String
	var items:[Landmark]
	
	var body: some View {
		//alignment
		VStack(alignment: .leading){
			HStack{
			Text(categoryName).font(.title).bold().padding(.leading,15).padding(.top,20)
				//Spacer()


					
			}
			//calling the name
			ScrollView(.horizontal,showsIndicators: false){
				HStack(alignment: .top, spacing:0){
					ForEach(items){
						landmark in
						NavigationLink{
							LandmarkDetail(landmark: landmark)
						} label: {
				
						//replace text to landmark item
						CategoryItem(landmark: landmark)
						}
					}
				}
				
			}.frame(height:185)
			NavigationLink{
				GalleryAll()
			} label: {
				
				Text("More >").font(.system(size: 16)).bold().padding(.leading,20).padding(.bottom,10).foregroundColor(.pink)
			}
		}
		}
	}


struct CategoryRow_Previews: PreviewProvider {
	//call out the data
	static var landmarks = ModelData().landmarks
	
	static var previews: some View {
		CategoryRow(
			categoryName:landmarks[0].category.rawValue,
			items:Array(landmarks.prefix(3))
			
		)
	}
}

