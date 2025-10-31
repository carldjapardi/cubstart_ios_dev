//
//  imageAPI.swift
//  photoApp
//
//  Created by Carl on 10/31/25.
//

// https:(double slash)picsum.photos/

import Foundation

struct PhotosAPI: Codable {
    var id: String
    var author: String
    var width: Int
    var height: Int
    var url: String
    var download_url: String
}
