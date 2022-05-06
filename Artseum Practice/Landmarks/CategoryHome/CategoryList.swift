//
//  CategoryList.swift
//  Landmarks
//
//  Created by ellie huang on 4/8/22.
//  Copyright © 2022 Apple. All rights reserved.
//

import SwiftUI

struct CategoryList: View {
	@EnvironmentObject var modelData: ModelData
	//@State private var showingProfile = false
	
	
    var body: some View {

			List {
				PageView(pages: modelData.features.map { FeatureCard(landmark: $0) })
					.aspectRatio(3 / 2, contentMode: .fit)
					.listRowInsets(EdgeInsets())
				
				ForEach(modelData.categories.keys.sorted(), id: \.self) { key in
					CategoryRow(categoryName: key, items: modelData.categories[key]!)
				}
				.listRowInsets(EdgeInsets())
			}
			.listStyle(.inset)
    }
}

struct CategoryList_Previews: PreviewProvider {
    static var previews: some View {
        CategoryList().environmentObject(ModelData())
    }
}
