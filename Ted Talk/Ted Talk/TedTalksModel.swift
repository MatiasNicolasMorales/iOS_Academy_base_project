//
//  TedTalksModel.swift
//  TedTalksModel
//
//  Created by Matias Nicolas Morales on 05/08/2022.
//

import Foundation

 // MARK: - TedTalksModel

struct TedTalksModel: Codable {
    let comments: Int
    let tedTalksModelDescription: String
    let duration: Int
    let event: String
    let filmDate, languages: Int
    let mainSpeaker, name: String
    let numSpeaker, publishedDate: Int
    let speakerOccupation: String
    let tags: [String]
    let title: String
    let url: String
    let views: Int

    enum CodingKeys: String, CodingKey {
        case comments
        case tedTalksModelDescription = "description"
        case duration, event
        case filmDate = "film_date"
        case languages
        case mainSpeaker = "main_speaker"
        case name
        case numSpeaker = "num_speaker"
        case publishedDate = "published_date"
        case speakerOccupation = "speaker_occupation"
        case tags, title, url, views
    }
}
 


