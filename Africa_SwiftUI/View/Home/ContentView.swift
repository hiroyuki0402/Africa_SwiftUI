//
//  ContentView.swift
//  Africa_SwiftUI
//
//  Created by SHIRAISHI HIROYUKI on 2023/10/22.
//

import SwiftUI
import CoreData

struct ContentView: View {

    let animalsViewModel = AnimalsViewModel()
    let coverImageViewModel = CoverImageViewModel()

    var body: some View {
        NavigationView {
            List {
                CoverImageView(coverImageData: coverImageViewModel.coverImageDatas)
                    .scaledToFill()
                    .frame(height: 300)
                    .listRowInsets(
                        EdgeInsets(
                            top: 0,
                            leading: 0,
                            bottom: 0,
                            trailing: 0))
                ForEach(animalsViewModel.animalDatas) { data in
                    AnimalListItemView(animalsData: data)
                }
            }
            .navigationBarTitle("Africa", displayMode: .large)

        }
    }
}

#Preview {
    ContentView()
}
