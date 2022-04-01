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
			Text(categoryName).font(.headline).padding(.leading,15).padding(.top,5)
			
			//calling the name
			ScrollView(.horizontal,showsIndicators: false){
				HStack(alignment: .top, spacing:0){
					ForEach(items){
						landmark in Text(landmark.name)
					}
				}
				//frame for the whole name row
			}.frame(height:185)
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

