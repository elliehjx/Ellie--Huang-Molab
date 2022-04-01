//
//  test.swift
//  Landmarks
//
//  Created by ellie huang on 3/29/22.
//  Copyright © 2022 Apple. All rights reserved.
//

import SwiftUI
struct test: View {
	var body: some View {
		ZStack {
			RadialGradient(gradient: Gradient(colors: [.pink, .white]), center: .center, startRadius: 100, endRadius: 470)
			Text("test").font(.system(size: 83)).fontWeight(.thin).foregroundColor(.white)
		}.edgesIgnoringSafeArea(.all)
	}
}
struct test_Previews: PreviewProvider {
	static var previews: some View {
		test()
	}
}
