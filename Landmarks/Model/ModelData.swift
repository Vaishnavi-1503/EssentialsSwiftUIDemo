//
//  ModelData.swift
//  Landmarks
//
//  Created by vaishanavi.sasane on 27/08/24.
//

import SwiftUI

@Observable
class ModelData {
    var landmarks: [Landmark] = load("landmarkData.json")
}

func load<T: Decodable>(_ fileName: String) -> T {
    let data: Data
    guard let file = Bundle.main.url(forResource: fileName, withExtension: nil)
    else {
        fatalError("Couldn't load \(fileName) in bundle")
    }
    
    do {
        data = try Data(contentsOf: file)
    }catch {
        fatalError("Couldn't load \(fileName) in bundle")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    }catch {
        fatalError("Couldn't load \(fileName) in bundle")
    }
    
}
