//
//  TrainDetail.swift
//  NC1
//
//  Created by Giada Pisani on 21/11/22.
//

import SwiftUI

struct TrainDetail: View {
    var body: some View {
        
        VStack{
            Text("Thursday, November 24")
                .font(.system(size:28, weight:.medium))
                .offset(x:-36)
            
            
            ZStack{
                Rectangle()
                    .fill(Color("box"))
                    .frame(width: 341, height: 80)
                
                    .shadow(color: Color("Base"), radius: 18)
                VStack{
                    Text("12:27  Aversa\n12:55  Napoli Centrale")
                        .offset(x:-62)
                        .font(.system(size:20, weight:.medium))
                    
                    
                    Text("Duration: 28'")
                        .offset(x:110)
                } .padding(20)
            }
            Spacer()
                    .frame(height: 50)
         
           
            
            
            
            
            Text("Full informations:")
                .offset(x:-66)
                .font(.system(size:30, weight:.medium))
            
            
            Text("REGIONALE 1245678")
                .frame(width: 250, height: 32)
                .foregroundColor(.white)
                .background(Color("spice"))
                .cornerRadius(14)
            
            Image("station")
            
                .padding()
            
            
            HStack{
                
                Button(action: {}) {
                    HStack{
                        Image(systemName: "heart.fill")
                            .padding(.trailing, -15.0)
                        Text("Save")
                            .font(.system(size:20, weight:.medium))
                            .foregroundColor(.black)
                            .padding(.all, 10.0)
                    }
                }
                .frame(width: 96, height: 50)
                .background(Color("box"))
                .cornerRadius(15.0)
                .offset(x:-26)
                
                
                Button(action: {}) {
                    HStack{
                        Image(systemName: "map.fill")
                            .padding(.trailing, -15.0)
                        Text("Map")
                            .font(.system(size:20, weight:.medium))
                            .foregroundColor(.black)
                            .padding(.all, 10.0)
                    }
                }
                .frame(width: 96, height: 50)
                .background(Color("box"))
                .cornerRadius(15.0)
                .offset(x:-5)
                
                Button(action: {}) {
                    HStack{
                        Image(systemName: "cart.fill.badge.plus")
                        
                            .padding(.trailing, -15.0)
                        Text("Buy")
                            .font(.system(size:20, weight:.medium))
                            .foregroundColor(.black)
                            .padding(.all, 10.0)
                    }
                }
                .frame(width: 96, height: 50)
                .background(Color("box"))
                .cornerRadius(15.0)
                .offset(x:18)
            }
            .padding(30)
         
        }
    
        
        
    }
}

struct TrainDetail_Previews: PreviewProvider {
    static var previews: some View {
        TrainDetail()
    }
}
