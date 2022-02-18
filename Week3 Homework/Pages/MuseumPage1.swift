
//  Multi-Screen App Practice
//MUSEUM APP HOMEPAGE
//  Created by ellie huang on 2/18/22.
//

import SwiftUI


struct homePage: View {
   
    var body: some View {
  
        ZStack{
        Image("james").resizable()
            .aspectRatio(contentMode:.fit)
            .clipShape(Circle())
           .shadow(radius: 8) .frame(width: 1000, height: 1500)
           
    VStack{
        Text("ARTYLE").padding(0.1).font(.largeTitle)
        HStack{
        Text("Explore").font(.body)
        Image(systemName: "arrow.right").resizable()
            .frame(width:15, height: 15)
        //if change the arrow to button
          /*  Button(action:{},label:{
              Image(systemName: "arrow.right").resizable()
                    .frame(width:15, height: 15)
   })*/
            
            
        }
    }
                    
    }
        .foregroundColor(Color.white)
    }
}

    
    
struct homePage_Previews: PreviewProvider {
    static var previews: some View {
        homePage()
    }
}
