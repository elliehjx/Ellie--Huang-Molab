//
//  MuseumPage3.swift
//  Multi-Screen App Practice
//
//  Created by ellie huang on 2/18/22.
//

import SwiftUI

struct newYorkMuseums: View {
    var body: some View {
        ScrollView{
        VStack{
            Text("New York").foregroundColor(Color.blue).padding(0.1).font(.largeTitle)
            Spacer()
            ZStack{
                let shape=RoundedRectangle(cornerRadius: 20.00).padding(.horizontal)
                    shape.foregroundColor(.white)
                         //text content
            //Text("Roome").foregroundColor(Color.pink).padding(0.1)
                        
                        //IMAGE TEST
            Image("david") .resizable()
            .frame(width:300, height: 300) .aspectRatio(contentMode:.fit)
            .clipShape(Circle())
                Text("David Swirner").foregroundColor(Color.white).padding(0.1).font(.title)
                }
            
            ZStack{
                let shape=RoundedRectangle(cornerRadius: 20.00).padding(.horizontal)
                    shape.foregroundColor(.white)
                         //text content
            //Text("Roome").foregroundColor(Color.pink).padding(0.1)
                        
                        //IMAGE TEST
            Image("guggeiheim") .resizable()
            .frame(width:300, height: 300) .aspectRatio(contentMode:.fit)
            .clipShape(Circle())
                Text("Guggeiheim").foregroundColor(Color.white).padding(0.1).font(.title)
                }
            
            ZStack{
                let shape=RoundedRectangle(cornerRadius: 20.00).padding(.horizontal)
                    shape.foregroundColor(.white)
                         //text content
            //Text("Roome").foregroundColor(Color.pink).padding(0.1)
                        
                        //IMAGE TEST
            Image("moma") .resizable()
            .frame(width:300, height: 300) .aspectRatio(contentMode:.fit)
            .clipShape(Circle())
                Text("Moma").foregroundColor(Color.white).padding(0.1).font(.title)
                }
            ZStack{
                let shape=RoundedRectangle(cornerRadius: 20.00).padding(.horizontal)
                    shape.foregroundColor(.white)
                         //text content
            //Text("Roome").foregroundColor(Color.pink).padding(0.1)
                        
                        //IMAGE TEST
            Image("newMeseum") .resizable()
            .frame(width:300, height: 300) .aspectRatio(contentMode:.fit)
            .clipShape(Circle())
                Text("New Meseum").foregroundColor(Color.white).padding(0.1).font(.title)
                }
            
            ZStack{
                let shape=RoundedRectangle(cornerRadius: 20.00).padding(.horizontal)
                    shape.foregroundColor(.white)
                         //text content
            //Text("Roome").foregroundColor(Color.pink).padding(0.1)
                        
                        //IMAGE TEST
            Image("pace") .resizable()
            .frame(width:300, height: 300) .aspectRatio(contentMode:.fit)
            .clipShape(Circle())
                Text("Pace").foregroundColor(Color.white).padding(0.1).font(.title)
                }
    }
        .padding(.vertical)
        .foregroundColor(.white)
        }
    }
    


    
    struct newYorkMuseums_Previews: PreviewProvider {
        static var previews: some View {
            newYorkMuseums()

        }
    }
}
