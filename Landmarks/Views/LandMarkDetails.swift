//
//  LandMarkDetails.swift
//  Landmarks
//
//  Created by vaishanavi.sasane on 27/08/24.
//

import SwiftUI

struct LandMarkDetails: View {
    
    @Environment(ModelData.self) var modelData
    var landmark: Landmark
    
    var landmarkIndex: Int {
           modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
       }
    
    var body: some View {
        @Bindable var modelData = modelData
        ScrollView {
            VStack {
                MapView(cordinate: landmark.locationCoordinates)
                    .frame(height: 300)
                CircleImage(image: landmark.image)
                    .offset(y: -130)
                    .padding(.bottom,-130)
                VStack(alignment: .leading) {
                    HStack {
                        Text(landmark.name)
                            .font(.title)
                        FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                    }
                    HStack {
                        Text(landmark.park)
                        Spacer()
                        Text(landmark.state)
                    }.font(.subheadline)
                        .foregroundColor(.secondary)
                        Divider()
                    Text(landmark.name)
                        .font(.title2)
                    Text(landmark.description)
                }.padding()
                Spacer()
            }
            .navigationTitle(landmark.name)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    LandMarkDetails(landmark: ModelData().landmarks[0])
}
