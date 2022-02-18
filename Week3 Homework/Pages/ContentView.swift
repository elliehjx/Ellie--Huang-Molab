//
//
//  Multi-Screen App Practice
//
//  Created by ellie huang on 2/17/22.

//LIST PRACTICE

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack{
            Text("ICONS").foregroundColor(Color.blue).padding(0.1).font(.largeTitle)
            
            MenuView(isFaceUp: false)
            MenuView(isFaceUp: false)
            MenuView()
            MenuView()
    }
        .padding(.vertical)
        .foregroundColor(.yellow)
        
    }
    
    
    struct MenuView: View {
       @State var isFaceUp: Bool = true
        
        
        var body: some View {
            ZStack{
                let shape=RoundedRectangle(cornerRadius: 20.00).padding(.horizontal)
                if isFaceUp {
                    shape.foregroundColor(.black)
                         //text content
            //Text("Roome").foregroundColor(Color.pink).padding(0.1)
                        
                        //IMAGE TEST
            Image(systemName:"moon.stars") .resizable()
            .frame(width:100, height: 100)
                } else {
                    shape.foregroundColor(.orange)
                    Image(systemName:"sun.dust") .resizable()
                    .frame(width:100, height: 100)
                    .foregroundColor(.white)
                }
            }
            .onTapGesture {
                isFaceUp = !isFaceUp
            }
            
        }
    }

    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
                //.previewDevice("iPhone 12 Pro")
               // .preferredColorScheme(.dark)
        }
    }
}
