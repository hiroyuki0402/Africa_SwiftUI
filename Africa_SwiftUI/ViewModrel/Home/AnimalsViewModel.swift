//
//  AnimalsViewModel.swift
//  Africa_SwiftUI
//
//  Created by SHIRAISHI HIROYUKI on 2023/10/22.
//

import Foundation

class AnimalsViewModel {
    var animalDatas: [AnimalsData] = []

    init() {
        loadData()
    }

    private func loadData() {
        if let decodeData = Bundle.main.decode("animals.json", type: [AnimalsData].self) {
            self.animalDatas = decodeData
        }
    }

    func getAnimalData(at index: Int) -> AnimalsData {
        return animalDatas[index]
    }
}
