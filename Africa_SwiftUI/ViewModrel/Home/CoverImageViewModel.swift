//
//  CoverImageViewModel.swift
//  Africa_SwiftUI
//
//  Created by SHIRAISHI HIROYUKI on 2023/10/22.
//

import Foundation

class CoverImageViewModel {
    var coverImageDatas: [CoverImageData] = []

    init() {
        loadData()
    }

    private func loadData() {
        if let decodeData = Bundle.main.decode("covers.json", type: [CoverImageData].self) {
            self.coverImageDatas = decodeData
        }
    }

    func getAnimalData(at index: Int) -> CoverImageData {
        return coverImageDatas[index]
    }
}
