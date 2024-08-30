//
//  MapView.swift
//  Landmarks
//
//  Created by vaishanavi.sasane on 27/08/24.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    var cordinate: CLLocationCoordinate2D
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 21.8380, longitude: 73.7191), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    
    private func setRegion(_ cordinate: CLLocationCoordinate2D) {
        region = MKCoordinateRegion(center: cordinate, span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    }
    
    var body: some View {
        Map(coordinateRegion: $region)
            .onAppear {
                setRegion(cordinate)
            }
    }
}

#Preview {
    MapView(cordinate: CLLocationCoordinate2D(latitude: 21.8380, longitude: 73.7191))
}
