//
//  ListingImageView.swift
//  AirbnbClone
//
//  Created by MacMini6 on 27/01/25.
//

import SwiftUI

struct ListingImageView: View {
    var Images = [
        "hotel1",
        "hotel2",
        "hotel3",
        "hotel4",
    ]
    var body: some View {
        TabView {
            ForEach(Images, id: \.self) { image in
                Image(image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 320)
                    .clipped()
            }
        }
        //.cornerRadius(10)
        .tabViewStyle(.page(indexDisplayMode: .automatic))
        //.frame(height: 320)
        //.ignoresSafeArea()
    }
}

#Preview {
    ListingImageView()
}
