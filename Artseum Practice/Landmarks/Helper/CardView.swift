//
//  CardView.swift
//  Landmarks
//
//  Created by ellie huang on 4/29/22.
//  Copyright © 2022 Apple. All rights reserved.
//
//mode for category page or account page

import SwiftUI

struct CardView: View {
    var body: some View {
			VStack {
				Image("whitney").resizable().aspectRatio(contentMode: .fit)
				
				HStack{
				VStack(alignment: .leading){
					//secondarycolor is gray
					Text("Dan Flavin").font(.headline).foregroundColor(.secondary)
					Text("Dia:Beacon").font(.title).fontWeight(.black).foregroundColor(.primary).lineLimit(3)
					Text("Written by Simon Ng".uppercased()).font(.caption).foregroundColor(.secondary)
				}
				.layoutPriority(100)
				Spacer()
				}.padding()
			}.cornerRadius(10).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color(.sRGB,red:150/255, green: 150/255,blue:150/255,opacity: 0.1),lineWidth: 1)
			).padding([.top,.horizontal])
			//if it change to vertical, it would become full width
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
