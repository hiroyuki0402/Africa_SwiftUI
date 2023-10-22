//
//  Home.swift
//  Africa_SwiftUI
//
//  Created by SHIRAISHI HIROYUKI on 2023/10/22.
//

import SwiftUI

struct Home: View {
    var body: some View {
        TabView {
            ContentView()
              .tabItem {
                Image(systemName: "square.grid.2x2")
                Text("Browse")
              }

            VideoListView()
              .tabItem {
                Image(systemName: "play.rectangle")
                Text("Watch")
              }

            MapView()
              .tabItem {
                Image(systemName: "map")
                Text("Locations")
              }

            GalleryView()
              .tabItem {
                Image(systemName: "photo")
                Text("Gallery")
              }
        }
    }
}

#Preview {
    Home()
}
