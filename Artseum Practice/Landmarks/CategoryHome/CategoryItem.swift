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
				landmark.image.renderingMode(.original).resizable().frame(width:155,height:155).cornerRadius(5)
				Text(landmark.name).foregroundColor(.primary).font(.caption)
			}.padding(.leading,15)
        //foregroundcolor for the text
    }
}

struct CategoryItem_Previews: PreviewProvider {
    static var previews: some View {
			CategoryItem(landmark:ModelData().landmarks[0])
    }
}
