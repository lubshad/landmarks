//
//  LandmarkDetailView.swift
//  Landmarks
//
//  Created by Lubshad P on 12/07/23.
//

import SwiftUI

struct LandmarkDetailView: View {
    let landmark : Landmark
    var body: some View {
        VStack {
            MapView().frame(height: 300).ignoresSafeArea()
            CircleImage(landmark: landmark).offset(y:-150).padding(.bottom, -150)
            VStack(alignment:.leading) {
                Text(landmark.name).font(.title)
                HStack{
                    Text(landmark.park)
                    Spacer()
                    Text(landmark.state)
                }.font(.subheadline)
                    .foregroundColor(.secondary)
                Divider()
                Text("About \(landmark.name)").font(.title)
                Text(landmark.description).font(.subheadline).foregroundColor(.secondary)
            }.padding()
            Spacer()
        }
    }
}

struct LandmarkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetailView(landmark: landmarks[0])
    }
}
