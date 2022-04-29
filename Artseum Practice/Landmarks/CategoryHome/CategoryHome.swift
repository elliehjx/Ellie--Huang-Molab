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
	
  @State private var showingProfile = false
	@State private var selection: Tab = .featured
	enum Tab{
		case featured
		case list}
	
	
	var body: some View {
	//	NavigationView {
			
						TabView(selection: $selection){
							CategoryList().tabItem{
								Label("Featured",systemImage: "star")
							}.tag(Tab.featured)
			
							LandmarkList().tabItem{Label("List",systemImage:"list.bullet")}.tag(Tab.list)
			
						}.toolbar {
							Button {
								showingProfile.toggle()
							} label: {
								Label("User Profile",systemImage:"person.crop.circle")
							}
						}.sheet(isPresented: $showingProfile){
							//call out the variable data one more time
							ProfileMain(profile: Profile.`default`)
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
