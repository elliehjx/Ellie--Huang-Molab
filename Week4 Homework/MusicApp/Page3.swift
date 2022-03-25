//
//  Page3.swift
//  MusicApp
//
//  Created by ellie huang on 3/4/22.
//

//

import SwiftUI

struct Page3: View {
	var body: some View {
		VStack{
			TabView {
				//TabOne()
				Text("The First Tab")
					.badge(10)
					.tabItem {
						Image(systemName: "1.square.fill")
						Text("First")
					}
				page4().tabItem {
								Image(systemName: "2.square.fill")
								Text("Second")
							}
				

				Text("The Last Tab")
					.tabItem {
						Image(systemName: "3.square.fill")
						Text("Third")
					}
			}
			.font(.headline)
		}
	}
}

struct Page3_Previews: PreviewProvider {
	static var previews: some View {
		Page3()
	}
}

//!!! start a new struct here to view
//struct TabOne: View {
//	var body: some view{}

//}


//start a new Page1


