//
//  ContentView.swift
//  ArtSeum
//
//  Created by ellie huang on 3/11/22.
//

import SwiftUI

struct ContentView: View {
	var body: some View {
		//can diretly call out function from the page ex: CircleImage()
		
		VStack(){
			//frame; height; width
			MapView().ignoresSafeArea().frame(height:300)
			
			//give image offset to make it go on top of the map
			CircleImage().offset(y:-130).padding(.bottom,-130)
			
			//alignment leading, make the text start from the left lead
			VStack(alignment:.leading){
				Text("Turtle Rock").font(.title)
				HStack(){
					Text("Joshua Tree National Park")
						.font(.subheadline)
					Spacer()
					Text("California")
						.font(.subheadline)
					
				}.font(.subheadline).foregroundColor(.secondary)
				
				//dividing line
				Divider()
				
				Text("About Turtle Rock").font(.title2)
				Text("Descriptive text goes here")
			}
			
			//padding makes all sides having distance
			.padding();
			Spacer();
		}
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}
