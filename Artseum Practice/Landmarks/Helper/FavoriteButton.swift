//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by ellie huang on 3/29/22.
//  Copyright © 2022 Apple. All rights reserved.
//

import SwiftUI

struct FavoriteButton: View {
	
	//setting up conditions for checking the button
	@Binding var isSet: Bool
	
    var body: some View {
			Button{isSet.toggle()} label:{
			
			Label("Toggle Favorite",systemImage: isSet ? "star.fill": "star").labelStyle(.iconOnly).foregroundColor(isSet ? .yellow: .gray)
			}
    }
}

struct FavoriteButton_Previews: PreviewProvider {
    static var previews: some View {
			FavoriteButton(isSet: .constant(true))
    }
}
