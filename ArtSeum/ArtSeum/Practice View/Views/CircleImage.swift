//
//  CircleImage.swift
//  ArtSeum
//
//  Created by ellie huang on 3/14/22.
//

import SwiftUI

struct CircleImage: View {
	var body: some View {
		//clipshape to make the shape 
		Image("0").frame(height:250)
			.clipShape(Circle())
			.overlay {
				Circle().stroke(.white, lineWidth: 4)
			}
			.shadow(radius: 7)
	}
}

struct CircleImage_Previews: PreviewProvider {
	static var previews: some View {
		CircleImage()
	}
}
