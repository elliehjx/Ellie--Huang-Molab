/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A view showing the details for a landmark.
*/

import SwiftUI

struct ContentView: View {
	
//	@State private var selection: Tab = .featured
//	enum Tab{
//		case featured
//		case list
//	}
//
	
	
	
    var body: some View {
			
//			TabView(selection: $selection){
//				CategoryHome().tabItem{
//					Label("Featured",systemImage: "star")
//				}.tag(Tab.featured)
//
//				LandmarkList().tabItem{Label("List",systemImage:"list.bullet")}.tag(Tab.list)
//
//			}
			
			//landmarklist is the page
			HomePage()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
			ContentView()
				.environmentObject(ModelData())
    }
}
