//
//  ContentView.swift
//  UI IN-CLASS DEMO
//
//  Created by ellie huang on 2/11/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
            Image(systemName: "circle")
                .resizable()
                .frame(width: 100, height: 100)
            Image(systemName: "triangle")
        
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
