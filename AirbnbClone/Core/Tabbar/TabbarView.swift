//
//  TabbarView.swift
//  AirbnbClone
//
//  Created by MacMini6 on 28/01/25.
//

import SwiftUI

struct TabbarView: View {
    var body: some View {
        TabView{
            ExploreView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Explore")
                }
            
            WishListView()
                .tabItem {
                    Image(systemName: "heart")
                    Text("Whishlist")
                }
            
            ProfileView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Profile")
                }
        }.tint(.pink)
    }
}

#Preview {
    TabbarView()
}
