//
//  CategoryItem.swift
//  Landmarks
//
//  Created by ellie huang on 4/1/22.
//  Copyright © 2022 Apple. All rights reserved.
//

import SwiftUI

struct CategoryItem: View {
	var landmark: Landmark
	
    var body: some View {
			VStack(alignment: .leading){
				landmark.image.renderingMode(.original).resizable().frame(width:200,height:155).cornerRadius(1)
				Text(landmark.name).foregroundColor(.primary).font(.caption).bold().padding(.bottom,10)
			}.padding(.leading,15)
        //foregroundcolor for the text
    }
}

struct CategoryItem_Previews: PreviewProvider {
    static var previews: some View {
			CategoryItem(landmark:ModelData().landmarks[0])
    }
}
