//
//  LandmarkItem.swift
//  Landmarks
//
//  Created by Lubshad P on 18/07/23.
//

import SwiftUI

struct LandmarkItem: View {
    let landmark: Landmark
    var body: some View {
        HStack {
            landmark.image.resizable().frame(width: 50 , height: 50)
            Text(landmark.name)
            Spacer()
        }
    }
}

struct LandmarkItem_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkItem(landmark: landmarks[0])
            LandmarkItem(landmark: landmarks[1])
        }.previewLayout(.fixed(width: 300, height: 70))
    }
}
