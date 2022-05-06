//
//  GalleryAll.swift
//  Landmarks
//
//  Created by ellie huang on 5/5/22.
//  Copyright © 2022 Apple. All rights reserved.
//

import SwiftUI

struct GalleryAll: View {
	var body: some View {
		VStack{
		CardView1();
		CardView2();
		CardView3();
		}
	}
}

struct GalleryAll_Previews: PreviewProvider {
	static var previews: some View {
		GalleryAll()
	}
}

//
//import SwiftUI
//
//struct GalleryAll: View {
//    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//    }
//}
//
//struct GalleryAll_Previews: PreviewProvider {
//    static var previews: some View {
//        GalleryAll()
//    }
//}
