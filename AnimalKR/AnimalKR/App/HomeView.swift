//
//  HomeView.swift
//  AnimalKR
//
//  Created by Bokyung on 2023/04/24.
//

import SwiftUI

struct HomeView: View {
    /**
     HomeView가 최상단의 페이지라고 생각하면 됨
     HomeVIew에서 TapView를 만들어서 모든 페이지를 연결시킴
     */

    var body: some View {
        TabView {
            // 1. ContentView
            ContentView()
                .tabItem {
                Image(systemName: "house.fill")
                Text("홈")
            }
            
            // 2. VideoView
            VideoView()
                .tabItem {
                    Image(systemName: "play.rectangle")
                    Text("비디오")
                }
            
            // 3. GallaryView
            GallaryView()
                .tabItem {
                    Image(systemName: "photo")
                    Text("갤러리")
                }
            
            // 4. AppInfoView
            AppInfoView()
                .tabItem {
                    Image(systemName: "gear")
                    Text("앱정보")
                }
        } //: TabView
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
