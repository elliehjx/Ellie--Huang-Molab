//
//  GAME PRACTICE
//
//  Multi-Screen App Practice
//
//  Created by ellie huang on 2/17/22.
//


import SwiftUI


struct Page2: View {
    
    //try to change emojis to museum images
    @State var emojis=["🚴‍♀️","🚢","🚗","🚌","✈️","🚄","🚇","🚒","🚴‍♀️","🚢","🚴","🎿","🏃‍♀️","🏊‍♀️","🏊","⛸️"]
    
    
    @State var emojiCount=4

    
    var body: some View {
			ZStack{
			Color.teal.edgesIgnoringSafeArea(.all)
        VStack{
            
            Text("MEMORY GAME").foregroundColor(Color.white).padding(0.1).font(.largeTitle)
        HStack{
            ScrollView{
LazyVGrid(columns:[GridItem(),GridItem()]){ ForEach(emojis[0..<emojiCount], id: \.self){
                emoji in CardView(content: emoji).aspectRatio(2/3, contentMode: .fit)
            }
                
}}
        }

            Spacer ()
            HStack{
            Button(action:{
                emojiCount += 1
            } ,label:{
                Image(systemName: "plus.circle").resizable()
                    .frame(width:30, height: 30)
                
            })
            Spacer ()
                
            
            Button(action:{emojiCount -= 1},label:{
              Image(systemName: "minus.circle").resizable()
                    .frame(width:30, height: 30)
                
            })
            }
            .padding(.horizontal)
        }
      
        .padding(.horizontal)
        .foregroundColor(.white)
        .background(RoundedRectangle(cornerRadius: 8)
          .foregroundColor(.teal))
			}
    }
    
    
    
    struct  CardView: View {
        var content: String
       @State var isFaceUp: Bool = true
        
        
        var body: some View {
            ZStack{
                let shape=RoundedRectangle(cornerRadius: 20.00)
                if isFaceUp {
                    shape.fill().foregroundColor(.yellow)
                    shape.stroke(lineWidth:2)
                    Text(content).font(.largeTitle)
                         //text content
                } else {
                    shape.fill()
                }
            }
            .onTapGesture {
                isFaceUp = !isFaceUp
            }
            
        }
			
    }



struct Page2_Previews: PreviewProvider {
  static var previews: some View {
    Page2()
  }
}

}
