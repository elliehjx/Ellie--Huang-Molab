//
//  FeatureCard.swift
//  Landmarks
//
//  Created by ellie huang on 4/8/22.
//  Copyright © 2022 Apple. All rights reserved.
//

import SwiftUI

struct FeatureCard: View {
	var landmark: Landmark
	
	var body: some View {
		landmark.featureImage?
			.resizable()
			.aspectRatio(3 / 2, contentMode: .fit)
			.overlay {
				TextOverlay(landmark: landmark)
			}
	}
}

struct TextOverlay: View {
	var landmark: Landmark
	
	//set up gradient to the frame
	var gradient: LinearGradient {
		.linearGradient(
			Gradient(colors: [.pink.opacity(0.5), .black.opacity(0)]),
			startPoint: .bottom,
			endPoint: .center)
	}
	
	var body: some View {
		ZStack(alignment: .bottomLeading) {
			gradient
			VStack(alignment: .leading) {
				Text(landmark.name)
					.font(.title)
					.bold()
				Text(landmark.park)
			}
			.padding()
		}
		.foregroundColor(.white)
	}
}

struct FeatureCard_Previews: PreviewProvider {
	static var previews: some View {
		FeatureCard(landmark: ModelData().features[0])
	}
}
