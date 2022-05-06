//
//  CardView1.swift
//  Landmarks
//
//  Created by ellie huang on 5/6/22.
//  Copyright © 2022 Apple. All rights reserved.
//

import SwiftUI

struct CardView1: View {
    var body: some View {
			VStack {
				Image("exhibition").resizable().aspectRatio(contentMode: .fit)
				
				HStack{
					VStack(alignment: .leading){
						//secondarycolor is gray
//						Text("Dan Flavin").font(.headline).foregroundColor(.secondary)
						Text("Exhibitions").font(.title).fontWeight(.black).foregroundColor(.primary).lineLimit(3)
//						Text("See the latest Exhibitions".uppercased()).font(.caption).foregroundColor(.secondary)
					}
					.layoutPriority(100)
					Spacer()
				}.padding()
			}.cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color(.sRGB,red:150/255, green: 150/255,blue:150/255,opacity: 0.1),lineWidth: 1)
			).padding([.top,.horizontal])
			//if it change to vertical, it would become full width
    }
}

struct CardView1_Previews: PreviewProvider {
    static var previews: some View {
        CardView1()
    }
}
