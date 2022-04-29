//
//  ProfileHost.swift
//  Landmarks
//
//  Created by ellie huang on 4/29/22.
//  Copyright © 2022 Apple. All rights reserved.
//

import SwiftUI

struct ProfileHost: View {
	@State private var draftProfile=Profile.default
	
    var body: some View {
			VStack(alignment: .leading, spacing: 10){
				Text("Profile for: \(draftProfile.username)")}.padding()
    }
}

struct ProfileHost_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHost()
    }
}
