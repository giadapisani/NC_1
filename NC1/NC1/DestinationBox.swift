//
//  DestinationBox.swift
//  NC1
//
//  Created by Giada Pisani on 18/11/22.
//

import SwiftUI

struct DestinationBox: View {
    @State private var from: String = ""
    @State private var to: String = ""
    @State private var num = 1
    @State private var date: String = "Nov. 24, 9:41 AM"
    
    var body: some View {
        VStack {
            HStack{
                TextField("When:", text: $date)
                    .padding()
                    .font(.system(size:22, weight:.medium))
                    .frame(width: 234, height: 80)
                    .background(Color("box"))
                    .cornerRadius(14)
                
                
                TextField("👤:", value: $num, format: .number)
                    .padding()
                    .font(.system(size:24, weight:.medium))
                    .frame(width: 54, height: 80)
                    .background(Color("box"))
                    .cornerRadius(14)
            }
            
            
            TextField("From: ", text: $from)
                .padding()
                .font(.system(size:20, weight:.medium))
                .frame(width: 300, height: 82)
                .background(Color("box"))
                .cornerRadius(14)
            
            Button(action: {}) {
                HStack(alignment: .center, spacing: 5.0) {
                    Image(systemName: "arrow.up.arrow.down")
                        .padding()
                }
            }
            .frame(width: 100, height: 50)
            .background(Color("box"))
            .cornerRadius(14)
            
                TextField("To:", text: $to)
                    .padding()
                    .font(.system(size:20, weight:.medium))
                    .frame(width: 300, height: 82)
                    .background(Color("box"))
                    .cornerRadius(14)
                
               
            
        }
    }
}

struct DestinationBox_Previews: PreviewProvider {
    static var previews: some View {
        DestinationBox()
    }
}
