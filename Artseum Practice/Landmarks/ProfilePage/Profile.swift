//
//  Profile.swift
//  Landmarks
//
//  Created by ellie huang on 4/29/22.
//  Copyright © 2022 Apple. All rights reserved.
//

import Foundation

struct Profile {
	var username: String
	var prefersNotifications = true
	
	//store profile name/image
	static let `default` = Profile(username: "Ellie")
	
}
