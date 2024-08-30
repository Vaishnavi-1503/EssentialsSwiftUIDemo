//
//  ContentView.swift
//  Landmarks
//
//  Created by vaishanavi.sasane on 14/08/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandMarkList()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environment(ModelData())
    }
}
