//
//  ContentView.swift
//  NC1
//
//  Created by Giada Pisani on 17/11/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            ZStack {
                VStack{
                    HStack{
                        Text("Where\ndo you need\nto go?")
                            .multilineTextAlignment(.trailing)
                            .font(.system(size:24, weight:.medium))
                        Image("train")
                        
                    }
                    .padding(40)
                    
                    DestinationBox()
                    
                    NavigationLink(destination: TrainList())
                        {
                            Text("Go")
                       
                    }.buttonStyle(.bordered)
                        .font(.system(size:25, weight:.medium))
                        .frame(width: 100, height: 50)
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(14)
                    
                    
                    
                    TabView(selection: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Selection@*/.constant(1)/*@END_MENU_TOKEN@*/) {
                        Text("").tabItem {
                            Image(systemName: "train.side.front.car")
                            Text("Find train") }.tag(1)
                        Text("Favourites").tabItem {
                            Image(systemName: "heart.fill")
                            Text("Favourites") }.tag(2)
                        Text("Strikes").tabItem {
                            Image(systemName: "exclamationmark.triangle.fill")
                            Text("Strikes") }.tag(3)
                        Text("About").tabItem {
                            Image(systemName: "info.circle.fill")
                            Text("About") }.tag(4)
                    }
                    
                    
                }
                
            }
            .toolbar {
                Button(action: {}) {
                    HStack{
                        Image(systemName: "gearshape.fill")
                    }
                }
            }
        }
        
        
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
