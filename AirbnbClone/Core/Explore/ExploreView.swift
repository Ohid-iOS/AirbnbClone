//
//  ExploreView.swift
//  AirbnbClone
//
//  Created by MacMini6 on 24/01/25.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationStack {
            VStack {
                
                ScrollView {
                    SearchAndFilterbar()
                    LazyVStack(spacing: 30) {
                        ForEach(0...10, id: \.self) { listing in
                            NavigationLink(value: listing) {
                                ListingItemsView()
                                    .cornerRadius(10)
                            }
                        }
                    }
                    .padding()
                }
            }
            //.navigationTitle("Explore")
            .navigationDestination(for: Int.self) { listingID in
                Text(" go to details")
            }
        }
    }
}

#Preview {
    ExploreView()
}
