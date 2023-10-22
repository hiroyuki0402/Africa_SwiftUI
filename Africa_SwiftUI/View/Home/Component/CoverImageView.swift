//
//  CoverImageView.swift
//  Africa_SwiftUI
//
//  Created by SHIRAISHI HIROYUKI on 2023/10/22.
//

import SwiftUI

struct CoverImageView: View {
    var coverImageData: [CoverImageData]

    var body: some View {
        TabView {
            ForEach(coverImageData) { item in
                let image = item.name
                Image(image)
                     .resizable()
                     .scaledToFit()
            }
        }
        .tabViewStyle(.page)
    }
}

#Preview {
    CoverImageView(coverImageData: CoverImageViewModel().coverImageDatas)
}
