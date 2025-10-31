//
//  PhotosViewModel.swift
//  photoApp
//
//  Created by Carl on 10/31/25.
//

import Foundation
import Observation

@Observable
class PhotosViewModel {
    var photos: [PhotosAPI] = []
    func fetchPhotos() async -> [PhotosAPI] {
        // 1. Create a swift url
        guard let url = URL(string: "https://picsum.photos/v2/list") else {
            return []
        }
        // 2. Get data via URL through URLSession.shared.data
        do {
            let (data, response) = try await URLSession.shared.data(from: url)
            let images = try JSONDecoder().decode([PhotosAPI].self, from: data)
        } catch {
            print("Error thrown: \(error)")
        }
            
        // 3. Decode data into [PhotosAPI]
        return []
    }
}


