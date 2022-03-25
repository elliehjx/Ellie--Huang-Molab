//
//  Login.swift
//  Landmarks
//
//  Created by ellie huang on 3/24/22.
//  Copyright © 2022 Apple. All rights reserved.
//

import SwiftUI

struct Login: View {
	//	@State var maxCircleHeight: CGFloat=0
	@State var showSignUp = false
	
	var body: some View {
		
		VStack{
			//Top Rings View:
			GeometryReader{proxy -> AnyView in
				let height = proxy.frame(in:.global).height
				
				//set up variable for showing sign up
				
				//				DispatchQueue.main.async{
				//					if  maxCircleHeight ==0
				//							maxCircleHeight=height
				//				}
				
				return AnyView(
					ZStack{
						Circle().fill(Color.pink).offset(x:getRect().width/2,y:-height/2)
						
						Circle().fill(Color.blue).offset(x:-getRect().width/4,y:-height/1.5)
						
					}
					
				)
				
			}
			.frame(maxHeight:getRect().width)
			
			//for sign up and sign in condition
			ZStack{
				
			//Transitions
				
				if showSignUp{
					SignUp()
						.transition(.move(edge:.trailing))
				} else {
					_SignIn()
						.transition(.move(edge:.trailing))
				}
			}
			
			//		//padding for removing other spaces
			.padding(.top,-200).frame(maxHeight: . infinity, alignment: .top)
			//		.padding(.top,-maxCircleHeight/1.5).frame(maxHeight: .infinity, alignment: .top)
		}
		.overlay(
			HStack{
				Text(showSignUp ? "New Member" : "Already Member").fontWeight(.bold).foregroundColor(.gray)
				Button(action: {withAnimation{showSignUp.toggle()
					
				}
					
				}, label: {
					
					Text(showSignUp ? "sign in" : "sign up").fontWeight(.bold).foregroundColor(.black)
					
					
				})
			}
			, alignment: .bottom
		)
		.background(
			HStack{
				
				
			}
			,alignment: .bottom
		)
	}
}

struct Login_Previews: PreviewProvider {
	static var previews: some View {
		Login()
	}
}
//extending view to get screen size

extension View{
	func getRect() ->CGRect{
		return UIScreen.main.bounds
		
	}
	
}
