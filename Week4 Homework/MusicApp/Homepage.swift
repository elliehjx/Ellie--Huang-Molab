//
//  Homepage.swift
//  MusicApp
//
//  Created by ellie huang on 3/3/22.
//

import SwiftUI
import AVFoundation


struct Homepage: View {
	var body: some View {
		//----------------CONTENT--------------
		TabView {
			//HOMEPAGE TAB
			ZStack{
				Color.black.edgesIgnoringSafeArea(.all)
				
				HStack{
					VStack(alignment: .leading, spacing: 10){
						//						NavigationLink (destination: Homepage()) {
						//
						//
						//							Text("Explore ")
						//								.font(.system(size: 20))
						//								.frame(width: 150, height: 40)
						//								.background(Color.white)
						//								.foregroundColor(Color.black)
						//								.cornerRadius(30)
						//
						//						}
						//						Text("Random Playing").foregroundColor(Color.white).font(.title).fontWeight(.bold)
						Text("Top Picks").foregroundColor(Color.white).font(.title).fontWeight(.bold)
						ForEach(0 ..< albumCover.count) { index in
							let song=songName[index]
							let singer=artistName[index]
							let year=songYear[index]
							HStack{
								Image(albumCover[index]).resizable()
									.aspectRatio(contentMode:.fit)
									.clipShape(Circle()).frame(width: 150, height: 150).shadow(color: .gray, radius: 8.0)
								
								VStack(alignment: .leading, spacing: 6) {
									Text(song).font(.system(size: 16))
									Text(singer).font(.system(size: 10)).foregroundColor(Color.gray)
									HStack{
										Text(year).font(.system(size: 12))
										
										Image(systemName: "play.circle.fill")
										Image(systemName: "pause.circle.fill")
										Image(systemName: "heart")
										Image(systemName: "arrow.down.circle")
										//
										
									}
								}.padding()
								
								//								VStack(alignment: .leading, spacing: 6) {
								//									Image(systemName: "music.note.list")
								//								}.padding()
								
								
							}.foregroundColor(Color.white)
						}.padding()
					}
				}
				
				
			}
			.tabItem {
				Image(systemName: "music.note.house.fill")
				Text("Home")
			}
			
			//SECOND PAGE TAB
			Text("Bookmark Tab")
				.font(.system(size: 30, weight: .bold, design: .rounded))
				.tabItem {
					Image(systemName: "music.note.list")
					Text("Playlist")
				}
			
			//SECOND PAGE TAB
			Text("Video Tab")
				.font(.system(size: 30, weight: .bold, design: .rounded))
				.tabItem {
					Image(systemName: "music.quarternote.3")
					Text("Community")
				}.foregroundColor(Color.black)
			
		} .accentColor(.red)
		
		//--------------------------------------
		
		
	}
}

struct Homepage_Previews: PreviewProvider {
	static var previews: some View {
		Homepage()
	}
}


//button (action:) {label:, systemImage}
