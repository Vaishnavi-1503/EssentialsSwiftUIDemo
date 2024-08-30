//
//  CircleImage.swift
//  Landmarks
//
//  Created by vaishanavi.sasane on 27/08/24.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    var body: some View {
       image
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white))
            .shadow(radius: 7)
    }
}

#Preview {
    CircleImage(image: Image("svp"))
}
