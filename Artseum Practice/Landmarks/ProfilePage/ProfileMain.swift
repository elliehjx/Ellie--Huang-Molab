//
//  ProfileMain.swift
//  Landmarks
//
//  Created by ellie huang on 4/29/22.
//  Copyright © 2022 Apple. All rights reserved.
//

import SwiftUI

struct ProfileMain: View {
	var profile: Profile
	
    var body: some View {
			ScrollView {
				VStack(alignment:.leading){
				HStack ( alignment: .center, spacing: 20){
					//Image("whitney").resizable().aspectRatio(contentMode: .fit)
					//Imgae()
					Image("james").resizable().frame(width: 100, height:100).clipShape(Circle()).padding(.leading,15)
					Text(profile.username).font(.title).fontWeight(.bold).foregroundColor(.primary)

					
				}
					Divider()
					VStack(alignment: .leading){
						Text("Collects").fontWeight(.bold).font(.title2).foregroundColor(.black).padding(.leading,15).padding(.top,15)
						CardView()
					}
				
			}
			}
    }
}

struct ProfileMain_Previews: PreviewProvider {
    static var previews: some View {
			ProfileMain(profile:Profile.default)
    }
}
