//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Lubshad P on 18/07/23.
//

import SwiftUI

struct LandmarkList: View {
    let landmarks : [Landmark]
    var body: some View {
        NavigationView {
            List(landmarks, id : \.id) { landmark in
                NavigationLink {
                    LandmarkDetailView(landmark: landmark)
                } label: {
                    LandmarkItem(landmark: landmark)
                }
                    
                
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList(landmarks: landmarks)
    }
}
