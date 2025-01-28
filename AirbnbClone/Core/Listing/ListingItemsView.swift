//
//  ListingItemsView.swift
//  AirbnbClone
//
//  Created by MacMini6 on 24/01/25.
//

import SwiftUI

struct ListingItemsView: View {

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            // Image carousel
            ListingImageView()
            .cornerRadius(10)
            .frame(height: 320)
            
            // Listing details
            HStack(alignment: .top){
            VStack(alignment: .leading, spacing: 8) {
                Text("Miami, Florida")
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundStyle(.black)
                
                Text("12 minutes away")
                    .foregroundColor(.gray)
                
                Text("Nov 3 - 10")
                    .foregroundColor(.gray)
                
                HStack(spacing: 4) {
                    Text("$567")
                        .font(.headline)
                        .fontWeight(.bold)
                    Text("per night")
                        .foregroundColor(.gray)
                        .font(.subheadline)
                }
            }
            Spacer()
            // Rating
            HStack{
                Spacer()
                HStack {
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    Text("4.88")
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                }
            }
        }
        }
//        .padding()
//        .background(Color.white)
//        .cornerRadius(12)
//        .shadow(radius: 5)
    }
}

#Preview {
    ListingItemsView()
}
