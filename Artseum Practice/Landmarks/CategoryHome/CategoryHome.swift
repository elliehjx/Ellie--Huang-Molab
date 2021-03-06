//
//  CategoryHome.swift
//  Landmarks
//
//  Created by ellie huang on 3/31/22.
//  Copyright © 2022 Apple. All rights reserved.
//

import SwiftUI

struct CategoryHome: View {
//	@EnvironmentObject var modelData: ModelData
	
  @State private var showingLocation = false
	@State private var selection: Tab = .featured
	@State var txt = ""
	enum Tab{
		case featured
		case list
		case account
		
	}
	
	
	var body: some View {
		
		
	//	NavigationView {
						TabView(selection: $selection){
							CategoryList().tabItem{
								Label("Featured",systemImage: "sparkles")
							}.tag(Tab.featured)
			
							LandmarkList().tabItem{Label("List",systemImage:"wand.and.stars")}.tag(Tab.list)
							
							ProfileMain(profile: Profile.`default`).tabItem{Label("account",systemImage: "person.crop.circle")}.tag(Tab.account)
			
						}.toolbar {
							HStack{
							HStack{
								
								Image(systemName: "magnifyingglass").font(.body)
								
								TextField("Search", text: $txt)
								
							}.padding(.trailing,220)
								.background(Color("Color1"))
							.cornerRadius(20)

							Button {
								showingLocation.toggle()
							} label: {
								Label("LocationSearch",systemImage:"location.circle").foregroundColor(Color(.systemPink))
							}
						}.sheet(isPresented: $showingLocation){
							//call out the variable data one more time
							LocationPage()
						} 	
		
						}
			
			
			
	//	}
	}
}

struct CategoryHome_Previews: PreviewProvider {
	static var previews: some View {
		NavigationView {
		CategoryHome()
			.environmentObject(ModelData())
	}
	}
}
