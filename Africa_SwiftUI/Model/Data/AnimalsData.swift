//
//  AnimalsData.swift
//  Africa_SwiftUI
//
//  Created by SHIRAISHI HIROYUKI on 2023/10/22.
//

import Foundation

struct AnimalsData: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    let link: String
    let image: String
    let gallery: [String]
    let fact: [String]
}
