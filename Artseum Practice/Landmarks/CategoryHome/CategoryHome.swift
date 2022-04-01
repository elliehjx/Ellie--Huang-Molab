//
//  CategoryHome.swift
//  Landmarks
//
//  Created by ellie huang on 3/31/22.
//  Copyright © 2022 Apple. All rights reserved.
//

import SwiftUI

struct CategoryHome: View {
	@EnvironmentObject var modelData: ModelData
	
    var body: some View {
			
			NavigationView {
				//ZStack {
					//Background Color
//					RadialGradient(gradient: Gradient(colors: [.orange, .white]), center: .center, startRadius: 100, endRadius: 470)
				///
					List {
						ForEach(modelData.categories.keys.sorted(), id: \.self) { key in
							Text(key)
						}
					
						
					}
					
				.navigationTitle("Featured")
				//}.edgesIgnoringSafeArea(.all)
				
			}
    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
			CategoryHome().environmentObject(ModelData())
    }
}
