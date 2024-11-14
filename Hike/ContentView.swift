//
//  ContentView.swift
//  Hike
//
//  Created by Aman on 13/11/24.
//

import SwiftUI

struct ContentView: View {
    let hikes = [
        Hike(name: "Valley of Flowers Trek", photo: "valley_of_flowers", distance: 8),
        Hike(name: "Roopkund Trek", photo: "roopkund", distance: 15),
        Hike(name: "Har Ki Dun Trek", photo: "har_ki_dun", distance: 12)
    ]
    var body: some View {
        VStack{
            List(hikes) { hike in
                HStack{
                    Image(hike.photo).resizable().frame(width: 100, height: 60).clipShape(RoundedRectangle(cornerRadius: 6))
                    VStack(alignment: .leading){
                        Text(hike.name).padding(.bottom, 2)
                        Text("\(hike.distance) km")
                    }.padding(.leading, 10)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
