//
//  ContentView.swift
//  PlaneDetection
//
//  Created by sho yoneda on 2021/07/25.
//

import SwiftUI
import RealityKit
import ARKit
import MetalKit

struct MainView : View {
    var body: some View {
        TabView () {
            HomeView().tabItem {
                Image(systemName: "list.bullet")
                Text("ホーム")
            }
            ContentView().tabItem {
                Image(systemName: "arkit")
                Text("メッシュ")
            }
            MetalDepthView().tabItem {
                Image(systemName: "arkit")
                Text("点群")
            }
        }.font(.headline)
        
    }
}

struct HomeView: View {
    var body: some View {
        Text("Hello AR world!")
    }
}

#if DEBUG
struct MainView_Previews : PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
#endif
