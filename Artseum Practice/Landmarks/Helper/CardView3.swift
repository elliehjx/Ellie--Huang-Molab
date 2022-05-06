//
//  CardView3.swift
//  Landmarks
//
//  Created by ellie huang on 5/6/22.
//  Copyright © 2022 Apple. All rights reserved.
//


//
//  CardView2.swift
//  Landmarks
//
//  Created by ellie huang on 5/6/22.
//  Copyright © 2022 Apple. All rights reserved.
//

import SwiftUI

struct CardView3: View {
	var body: some View {
		VStack {
			Image("2").resizable().aspectRatio(contentMode: .fit)
			
			HStack{
				VStack(alignment: .leading){
					//secondarycolor is gray
					//						Text("Dan Flavin").font(.headline).foregroundColor(.secondary)
					Text("2022 TEFAF").font(.title).fontWeight(.black).foregroundColor(.primary).lineLimit(3)
					Text("May.5 - May.9".uppercased()).font(.title3).foregroundColor(.secondary)
					Text("Park Avenue Armory").font(.subheadline).foregroundColor(.secondary)
				}
				.layoutPriority(100)
				Spacer()
			}.padding()
		}.cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color(.sRGB,red:150/255, green: 150/255,blue:150/255,opacity: 0.1),lineWidth: 1)
		).padding([.top,.horizontal])
		//if it change to vertical, it would become full width
	}
}

struct CardView3_Previews: PreviewProvider {
	static var previews: some View {
		CardView3()
	}
}


//import SwiftUI
//
//struct CardView3: View {
//    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//    }
//}
//
//struct CardView3_Previews: PreviewProvider {
//    static var previews: some View {
//        CardView3()
//    }
//}
