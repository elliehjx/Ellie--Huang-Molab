
//  Multi-Screen App Practice
//MUSEUM APP LIST PAGE
//  Created by ellie huang on 2/18/22.
//

import SwiftUI


struct listPage: View {
   
    var body: some View {
            
        NavigationView{
                   List{
                       Text("New York") .font(.headline)
                      Text("London").font(.headline)
                       Text("Shanghai").font(.headline)
                   }
                   .navigationTitle("Locations").foregroundColor(.blue)
}
}
}
    
    
struct listPage_Previews: PreviewProvider {
    static var previews: some View {
        listPage()
    }
}
