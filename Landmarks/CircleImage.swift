//
//  CircleImage.swift
//  Landmarks
//
//  Created by Lubshad P on 12/07/23.
//

import SwiftUI

struct CircleImage: View {
    let landmark: Landmark
    var body: some View {
        landmark.image
            .resizable()
            .frame(width:200, height: 200)
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .overlay{
                Circle().stroke(.white, lineWidth: 2)
            }
            .shadow(radius: 10)
        
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(landmark: landmarks[0])
    }
}
