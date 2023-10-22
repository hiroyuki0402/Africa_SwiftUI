//
//  AnimalListItemView.swift
//  Africa_SwiftUI
//
//  Created by SHIRAISHI HIROYUKI on 2023/10/22.
//

import SwiftUI

struct AnimalListItemView: View {
    var animalsData: AnimalsData

    var body: some View {
        HStack(alignment: .center, spacing: 16) {
            Image(animalsData.image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 90, height: 90)
                    .clipShape(
                        RoundedRectangle(cornerRadius: 12)
                    )
                VStack(alignment: .leading, spacing: 8) {
                    Text(animalsData.name)
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundColor(.accentColor)

                    Text(animalsData.headline)
                        .font(.footnote)
                        .multilineTextAlignment(.leading)
                        .lineLimit(2)
                        .padding(.trailing, 8)
                }
            }
        }
    }

#Preview {
    AnimalListItemView(animalsData: AnimalsViewModel().getAnimalData(at: 0))
}
