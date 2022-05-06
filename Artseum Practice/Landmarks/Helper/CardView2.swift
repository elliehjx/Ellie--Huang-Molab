//
//  CardView2.swift
//  Landmarks
//
//  Created by ellie huang on 5/6/22.
//  Copyright © 2022 Apple. All rights reserved.
//

import SwiftUI

struct CardView2: View {
    var body: some View {
			VStack {
				Image("biennial").resizable().aspectRatio(contentMode: .fit)
				
				HStack{
					VStack(alignment: .leading){
						//secondarycolor is gray
						//						Text("Dan Flavin").font(.headline).foregroundColor(.secondary)
						Text("Whitney Biennial 2022").font(.title).fontWeight(.black).foregroundColor(.primary).lineLimit(3)
						Text("April.21 - Sep.5".uppercased()).font(.title3).foregroundColor(.secondary)
						Text("Whitney Museum of American Art").font(.subheadline).foregroundColor(.secondary)
					}
					.layoutPriority(100)
					Spacer()
				}.padding()
			}.cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color(.sRGB,red:150/255, green: 150/255,blue:150/255,opacity: 0.1),lineWidth: 1)
			).padding([.top,.horizontal])
			//if it change to vertical, it would become full width
    }
}

struct CardView2_Previews: PreviewProvider {
    static var previews: some View {
        CardView2()
    }
}
