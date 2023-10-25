//
//  ContentView.swift
//  Africa_SwiftUI
//
//  Created by SHIRAISHI HIROYUKI on 2023/10/22.
//

import SwiftUI
import CoreData

struct ContentView: View {

    // MARK: - プロパティー

    /// ワイルドアニマルの情報を管理するViewModel。
    let animalsViewModel = AnimalsViewModel()

    /// カバーイメージに関する情報を管理するViewModel。
    let coverImageViewModel = CoverImageViewModel()

    // MARK: - Body セクション

    var body: some View {
        /// NavigationViewを使用して、リストを含む画面を表示
        NavigationView {
            /// アニマルのリストを表示
            List {
                /// ヘッダとしてカバーイメージを表示
                CoverImageView(coverImageData: coverImageViewModel.coverImageDatas)
                    .scaledToFill()
                    .frame(height: 300)
                    .listRowInsets(
                        EdgeInsets(
                            top: 0,
                            leading: 0,
                            bottom: 0,
                            trailing: 0))

                /// 各アニマルのデータをループして、リストアイテムとして表示
                ForEach(animalsViewModel.animalDatas) { data in
                    /// アニマルの詳細画面へのナビゲーションリンク
                    NavigationLink(destination: AnimalDetailView(animalData: data)) {
                        /// アニマルのリストアイテムを表示
                        AnimalListItemView(animalsData: data)
                    }
                }
            }
            .navigationBarTitle("Africa", displayMode: .large)

        }//: NavigationView
    }
}


#Preview {
    ContentView()
}
