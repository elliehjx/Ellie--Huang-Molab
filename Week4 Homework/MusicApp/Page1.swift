////
////  Homepage.swift
////  MusicApp
////
////  Created by ellie huang on 2/25/22.
////
//
import SwiftUI
import AVFoundation


//0,1,2
let bundleAudio = [
	"song1.mp3",
	"song2.mp3",
	"song3.mp3"
];

//0,1,2
let albumCover=[
	"cover1.png",
	"cover2.jpg",
	"cover3.png",

];

func loadBundleAudio(_ fileName:String) -> AVAudioPlayer? {
	let path = Bundle.main.path(forResource: fileName, ofType:nil)!
	let url = URL(fileURLWithPath: path)
	do {
		return try AVAudioPlayer(contentsOf: url)
	} catch {
		print("loadBundleAudio error", error)
	}
	return nil
}

struct Page1: View {
	//state for sound file
	@State private var soundIndex = 0
	@State private var soundFile = bundleAudio[0]
	@State private var player: AVAudioPlayer? = nil

	//state for image file

		var body: some View {

				ZStack{
					Color.black.edgesIgnoringSafeArea(.all)
				Image("cover1").resizable()
						.aspectRatio(contentMode:.fit)
						.clipShape(Circle())


		VStack{
				Text("Photograph").padding(0.1).font(.largeTitle).foregroundColor(Color.white)
				HStack{
					Text("Ed Sheeran").font(.body).foregroundColor(Color.white)

				}

			HStack{
				Button("Play") {
					print("Button Play")
					player = loadBundleAudio(soundFile)
					print("player", player as Any)
					// Loop indefinitely
					//player?.numberOfLoops = -1
					player?.play()

				}
				Button("Stop") {
					print("Button Stop")
					player?.stop()
				}
		}

		}


			}
		}
}



struct Page1_Previews: PreviewProvider {
		static var previews: some View {
			Page1()
		}
}
