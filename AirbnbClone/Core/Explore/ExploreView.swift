//
//  ExploreView.swift
//  AirbnbClone
//
//  Created by MacMini6 on 24/01/25.
//

import SwiftUI

struct ExploreView: View {
    
    @State private var GoToDestinationSearchView = false
    var body: some View {
        
        NavigationStack {
            
            if GoToDestinationSearchView{
                DestinationSearchView(isPresented: $GoToDestinationSearchView)
            }else{
                
                ScrollView {
                    SearchAndFilterbar()
                        .onTapGesture {
                            withAnimation(.snappy) {
                                GoToDestinationSearchView.toggle()
                            }
                        }
                    
                    
                    LazyVStack(spacing: 32) {
                        ForEach(0 ... 10, id: \.self) { listing in
                            NavigationLink(value: listing) {
                                ListingItemsView()
                                    .frame(height: 400)
                                    .cornerRadius(10)
                            }
                        }
                    }
                    .padding()
                }
                .navigationDestination(for: Int.self) { listingID in
                    ListingDetailsView()
                        .navigationBarHidden(true) // Hides the back button
                }

            }
        }
    }
}

#Preview {
    ExploreView()
}

