//
//  YoutubeSearchResponse.swift
//  Netflix Clone
//
//  Created by Seyma on 12.08.2023.
//

import Foundation

struct YoutubeSearchResponse: Codable {
    let items: [VideoElement]
}

struct VideoElement: Codable {
    let id: IdVideoElement
}

struct IdVideoElement: Codable {
    let kind: String
    let videoId: String
}
