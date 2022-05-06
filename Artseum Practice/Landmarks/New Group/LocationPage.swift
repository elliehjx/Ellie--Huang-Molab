//
//  LocationPage.swift
//  Landmarks
//
//  Created by ellie huang on 5/3/22.
//  Copyright © 2022 Apple. All rights reserved.
//

import SwiftUI

struct LocationPage: View {
    var body: some View {
			ZStack{
				
				Image("blueLocation").resizable()
					.aspectRatio(contentMode:.fit).frame(width: 700, height: 900)
				
				VStack{
					
					//TEXT FOR GETTING LOCATION
					Text("Check your nearby art events").fontWeight(.ultraLight).foregroundColor(.white).font(.system(size:30)).frame(width:400)
					
					//VStack {
						realTimeLocation()
					//BUTTON FOR GET LOCATION
//							Text("Current Location Button")
//								.font(.system(size:25))
//								.fontWeight(.ultraLight)
						//}
					
				}
				.foregroundColor(Color.white)
			}.edgesIgnoringSafeArea(.all)
    }
}


struct LocationPage_Previews: PreviewProvider {
    static var previews: some View {
        LocationPage()
    }
}
