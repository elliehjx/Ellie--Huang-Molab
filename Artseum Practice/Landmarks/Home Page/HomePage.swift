//
//  HomePage.swift
//  Landmarks
//
//  Created by ellie huang on 3/25/22.
//  Copyright © 2022 Apple. All rights reserved.
//
import SwiftUI


struct HomePage: View {
	
	var body: some View {
		
		ZStack{
			Image("james").resizable()
				.aspectRatio(contentMode:.fit)
				.clipShape(Circle())
				.shadow(radius: 8) .frame(width: 1000, height: 1500)
			
			VStack{
				Text("ArtSeum").fontWeight(.ultraLight).foregroundColor(.white).font(.system(size:100)).padding(.top,150)
					
					VStack {

						Button(action: {
							Login()
						}) {
							Text("Explore your art journey")
								.font(.system(size:25))
								.fontWeight(.ultraLight)
						}
					}
			
		}
		.foregroundColor(Color.white)
	}
	}
}



struct HomePage_Previews: PreviewProvider {
	static var previews: some View {
		HomePage()
	}
}
