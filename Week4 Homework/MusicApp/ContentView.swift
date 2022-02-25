//
//  ContentView.swift
//  MusicApp
//
//  Created by ellie huang on 2/25/22.

import SwiftUI


struct ContentView: View {
	 
		var body: some View {

					NavigationView {
						
						VStack{
							ZStack{
						Color.black.edgesIgnoringSafeArea(.all)
						Text("Sonify").padding(.top, -380).foregroundColor(Color.white).font(.system(size:80))
						Image("logo2").resizable()
								.aspectRatio(contentMode:.fit)
								.clipShape(Circle()) .padding(.top, -150)
								VStack{
									HStack{
										
									NavigationLink (destination: Page1()) {
	
										
										Text("Explore ")
											.font(.system(size: 20))
											.frame(width: 150, height: 40)
											.background(Color.white)
											.foregroundColor(Color.black)
											.cornerRadius(30)
											.padding(.top,350)
									
									}
										
									}}
						}
							}
						}
						
					}
		}


		
		
struct ContentView_Previews: PreviewProvider {
		static var previews: some View {
				ContentView()
		}
}
