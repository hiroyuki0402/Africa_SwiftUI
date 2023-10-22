//
//  Bundle-Extension.swift
//  Africa_SwiftUI
//
//  Created by SHIRAISHI HIROYUKI on 2023/10/22.
//

import Foundation

extension Bundle {
    func decode<T: Decodable>(_ file: String?, type: T.Type) -> T? {
        guard let url = self.url(forResource: file, withExtension: nil), let data = try? Data(contentsOf: url) else {
            return nil
        }

        let decoder = try? JSONDecoder().decode(type.self, from: data)
        return decoder
    }
}
