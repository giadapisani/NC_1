//
//  TrainList.swift
//  NC1
//
//  Created by Giada Pisani on 21/11/22.
//

import SwiftUI

struct Train: Identifiable {
    let name: String
    let id = UUID()
}

private var trains = [
    
        Train(name: "9:41   Aversa\n10:10 Napoli Centrale"),
        Train(name: "10:13  Aversa\n10:36 Napoli Centrale"),
        Train(name: "10:48 Aversa\n11:10  Napoli Centrale"),
        Train(name: "11:11  Aversa\n11:29 Napoli Centrale"),
        Train(name: "12:09 Aversa\n12:29 Napoli Centrale"),
        Train(name: "12:27 Aversa\n12:55 Napoli Centrale"),
        Train(name: "12:41 Aversa\n13:10 Napoli Centrale"),
        Train(name: "13:13  Aversa\n13:36 Napoli Centrale"),
        Train(name: "13:48 Aversa\n14:10  Napoli Centrale"),
        Train(name: "14:11  Aversa\n14:29 Napoli Centrale"),
        Train(name: "15:09 Aversa\n15:29 Napoli Centrale"),
        Train(name: "15:27 Aversa\n15:55 Napoli Centrale"),
        Train(name: "16:41  Aversa\n17:10 Napoli Centrale")
        
    
]


struct TrainList: View {
    var body: some View {
        NavigationView {
            NavigationLink(destination: TrainDetail()) {
                
                    List(trains) {
                        
                    Text($0.name)
                            .multilineTextAlignment(.leading)
                            .font(.system(size:20, weight:.medium))
                    }
                
            }.navigationTitle("Best matches")
        }
        
    }
}

struct TrainList_Previews: PreviewProvider {
    static var previews: some View {
        TrainList()
    }
}
