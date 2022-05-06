/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A view that clips an image to a circle and adds a stroke and shadow.
*/

import SwiftUI

struct CircleImage: View {
	//call out image through var image: Image
	var  image: Image
	
    var body: some View {
        image.frame(width: 500)
            .clipShape(Rectangle())
            .overlay {
               Rectangle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
			CircleImage(image: Image("turtlerock"))
    }
}
