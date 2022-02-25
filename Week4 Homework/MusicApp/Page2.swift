//
//  ContentView.swift
//  MusicApp
//
//  Created by ellie huang on 2/25/22.


import SwiftUI
import AVKit

struct Page2: View {
		@State var audioPlayer: AVAudioPlayer!
		@State var count = 1
		var body: some View {
				ZStack {
					Color.black.edgesIgnoringSafeArea(.all)
						VStack {
								HStack {
										Text("MusicPlayer").font(.system(size: 45)).fontWeight(.bold)
												.foregroundColor(Color.white)
								}
								HStack {
										Spacer()
										Button(action: {
												self.audioPlayer.play()
										}) {
												Image(systemName: "play.circle.fill").resizable()
														.frame(width: 50, height: 50)
														.aspectRatio(contentMode: .fit)
														.foregroundColor(Color.white)
										}
										Spacer()
										Button(action: {
												self.audioPlayer.pause()
										}) {
												Image(systemName: "pause.circle.fill").resizable()
														.frame(width: 50, height: 50)
														.aspectRatio(contentMode: .fit)
														.foregroundColor(Color.white)
										}
										Spacer()
										Button(action: {
												if self.count < 3 {
														self.count += 1
												} else {
														self.count = 1
												}
												let sound = Bundle.main.path(forResource: "song\(self.count)", ofType: "mp3")
												self.audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
												self.audioPlayer.play()
										}) {
												Image(systemName: "forward.end").resizable()
														.frame(width: 45, height: 45)
														.aspectRatio(contentMode: .fit)
														.foregroundColor(Color.white)
										}
										Spacer()
								}
						}
				}
				.onAppear {
						let sound = Bundle.main.path(forResource: "song1", ofType: "mp3")
						self.audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
				}
		}
}

struct Page2_Previews: PreviewProvider {
		static var previews: some View {
			Page2()
		}
}
