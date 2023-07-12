//
//  CircleImage.swift
//  Landmarks
//
//  Created by Lubshad P on 12/07/23.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("dashboard")
            .resizable()
            .frame(width:200, height: 200)
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .overlay{
                Circle().stroke(.white, lineWidth: 10)
            }
            .shadow(radius: 10)
        
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
