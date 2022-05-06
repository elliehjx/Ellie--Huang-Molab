/*
 See LICENSE folder for this sample’s licensing information.
 
 Abstract:
 A view showing the details for a landmark.
 */

import SwiftUI

struct LandmarkDetail: View {
	@EnvironmentObject var modelData:ModelData
	var landmark: Landmark
	
	
	//question
	var landmarkIndex: Int{
		modelData.landmarks.firstIndex(where: {$0.id == landmark.id})!
	}
	
	var body: some View {
		ZStack {
			RadialGradient(gradient: Gradient(colors: [.white, .white]), center: .center, startRadius: 10, endRadius: 700)
		ScrollView {
			
			CircleImage(image: landmark.image)
				.offset(y: 70)
				.padding(.bottom, -130)
			
			VStack(alignment: .leading) {
				
				HStack{
				Text(landmark.name)
					.font(.title).fontWeight(.black)
					FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
					
				}.padding(.top,220).padding(.leading,80)
				
				HStack {
					Text(landmark.park).padding(.leading,80)
					Spacer()
					Text(landmark.state).padding(.trailing,100)
				}
				.font(.subheadline)
				.foregroundColor(.secondary)
				
				Divider()
				
				Text("About \(landmark.name)")
					.font(.title2).padding(.leading,80).padding(.top,10).padding(.bottom,10)
				Text(landmark.description).fontWeight(.light).padding(.leading,80).padding(.trailing,100).padding(.top,5).padding(.bottom,20)
				
				Divider()
				Text("Location")
					.font(.title2).fontWeight(.bold).padding(.leading,80)
				MapView(coordinate: landmark.locationCoordinate)
					.ignoresSafeArea(edges: .top)
					.frame(height: 200)
				
				Divider()
			}
		}.padding(.top,50).padding(.leading,50).padding(.trailing,20)
		}.edgesIgnoringSafeArea(.all)
		.navigationTitle(landmark.name)
		.navigationBarTitleDisplayMode(.inline)
	}
}

struct LandmarkDetail_Previews: PreviewProvider {
	static let modelData = ModelData()
	
	static var previews: some View {
		LandmarkDetail(landmark: ModelData().landmarks[0]).environmentObject(modelData)
	}
}
