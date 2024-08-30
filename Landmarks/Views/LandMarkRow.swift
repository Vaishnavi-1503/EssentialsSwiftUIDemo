//
//  LandMarkRow.swift
//  Landmarks
//
//  Created by vaishanavi.sasane on 27/08/24.
//

import SwiftUI

struct LandMarkRow: View {
    var landmark: Landmark
    var body: some View {
        HStack{
            landmark.image
                .resizable()
                .frame(width: 50,height: 50)
            Text(landmark.name)
            Spacer()
            
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}



struct LandMarkRow_Previews: PreviewProvider {
    static var previews: some View {
        LandMarkRow(landmark: ModelData().landmarks[0])
            .previewLayout(.fixed(width: 300, height: 70))
    }
}

