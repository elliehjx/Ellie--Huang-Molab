//
//  SignUp.swift
//  Landmarks
//
//  Created by ellie huang on 3/25/22.
//  Copyright © 2022 Apple. All rights reserved.
//

import SwiftUI

struct SignUp: View {
	@State var email=""
	@State var password=""
	@State var confirmPassword=""
	
	var body: some View {
		VStack{
			//kerning is the space between text
			//			Text("ArtSeum").font(.system(size: 80)).frame(maxWidth:.infinity, alignment: .leading).foregroundColor(.gray)
			Text("Sign Up").font(.title).fontWeight(.bold).foregroundColor(.black).kerning(1.4).frame(maxWidth:.infinity, alignment: .leading)
			//(alignment: . leading makes text go to the left side)
			
			//Email and password
			VStack(alignment: .leading, spacing: 8, content :{
				Text("User Name").fontWeight(.bold).foregroundColor(.gray)
				
				//preview text
				TextField("artseum@gmail.com", text: $email).foregroundColor(.blue).font(.system(size:15)).padding(.top,5)
				//Increasing Font size and changing text
				
				
				Divider()
			}
			).padding(.top,25)
			
			/**---------------------------------------------------------------------------------------**/
			
			//Email and password
			VStack(alignment: .leading, spacing: 8, content :{
				Text("Password").fontWeight(.bold).foregroundColor(.gray)
				
				//preview text
				SecureField("artseum123", text: $password).foregroundColor(.blue).font(.system(size:15)).padding(.top,5)
				//Increasing Font size and changing text
				
				
				Divider()
			}
			).padding(.top,25)
			
			VStack(alignment: .leading, spacing: 8, content :{
				Text("Confirm Password").fontWeight(.bold).foregroundColor(.gray)
				
				//preview text
				SecureField("artseum123", text: $confirmPassword).foregroundColor(.blue).font(.system(size:15)).padding(.top,5)
				//Increasing Font size and changing text
				
				
				Divider()
			}
			).padding(.top,25)
			
			/**-----------------------------------------Button----------------------------------------------**/
			
			//Forget password
			
				
				.frame(maxWidth: . infinity, alignment: .trailing).padding(.top,10)
			
			//Next
			Button(action:{}, label: {
				Image(systemName:"arrow.right").font(.system(size:24)).foregroundColor(.white).padding().background(Color(.orange)).clipShape(Circle())//.shadow(radius: 7)
				//?Q: HOW TO CHANGE SHADOW COLOR
			})
			.frame(maxWidth:.infinity, alignment: .leading)
			
		}
		.padding()
	}
}

struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUp()
    }
}
