//
//  ContentView.swift
//  Landmarks
//
//  Created by Lubshad P on 12/07/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView().frame(height: 300)
            CircleImage().offset(y:-150).padding(.bottom, -150)
            VStack(alignment:.leading) {
                Text("Turtle Rock").font(.title)
                HStack{
                    Text("Joshua Tree National Park")
                    Spacer()
                    Text("California")
                }.font(.subheadline)
                    .foregroundColor(.secondary)
                Divider()
                Text("About Turtle Rock").font(.title)
                Text("Descriptive Text Goes here").font(.subheadline).foregroundColor(.secondary)
            }.padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
