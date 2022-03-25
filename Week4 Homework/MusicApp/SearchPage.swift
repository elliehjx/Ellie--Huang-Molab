// Created for MyFruits in 2021
// Using Swift 5.0
// Running on macOS 11.2
// VISIT BLCKBIRDS.COM FOR MORE TUTORIALS

import SwiftUI

struct SearchPage: View {
	
	@State var searchText = ""
	@State var searching = false
	

	var body: some View {
	
		
			NavigationView {
				VStack(alignment: .leading) {
					SearchBar(searchText: $searchText, searching: $searching)
					List {
						ForEach(songName.filter({ (song: String) -> Bool in
							return song.hasPrefix(searchText) || searchText == ""
						}), id: \.self) { song in
							Text(song)
						}
					}
					.listStyle(GroupedListStyle())
					.navigationTitle(searching ? "Searching" : "Songs")
					.toolbar {
						if searching {
							Button("Cancel") {
								searchText = ""
								withAnimation {
									searching = false
									UIApplication.shared.dismissKeyboard()
								}
							}
						}
					}
					.gesture(DragGesture()
										.onChanged({ _ in
						UIApplication.shared.dismissKeyboard()
					})
					)
				}
			}
		}
	}


struct SearchPage_Previews: PreviewProvider {
	static var previews: some View {
		SearchPage()
	}
}

struct SearchBar: View {
	
	@Binding var searchText: String
	@Binding var searching: Bool
	
	var body: some View {
		ZStack {
			Rectangle()
				.foregroundColor(Color("LightGray"))
			HStack {
				Image(systemName: "magnifyingglass")
				TextField("Search ..", text: $searchText) { startedEditing in
					if startedEditing {
						withAnimation {
							searching = true
						}
					}
				} onCommit: {
					withAnimation {
						searching = false
					}
				}
			}
			.foregroundColor(.gray)
			.padding(.leading, 13)
		}
		.frame(height: 40)
		.cornerRadius(13)
		.padding()
	}
}


extension UIApplication {
	func dismissKeyboard() {
		sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
	}
}
