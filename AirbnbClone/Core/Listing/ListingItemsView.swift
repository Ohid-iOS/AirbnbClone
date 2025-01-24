//
//  ListingItemsView.swift
//  AirbnbClone
//
//  Created by MacMini6 on 24/01/25.
//
//
//import SwiftUI
//
//struct ListingItemsView: View {
//    
//    var Images = [
//        "hotel1",
//        "hotel2",
//        "hotel3",
//        "hotel4",
//    ]
//    
//    var body: some View {
//        //image
//        VStack(spacing: 8){
//            TabView {
//                ForEach(Images, id: \.self) { images in
//                    Image(images)
//                        .resizable()
//                        .aspectRatio(contentMode: .fill)
//                }
//            }
//            .frame(height:320)
//            .cornerRadius(10)
//            .tabViewStyle(.page)
//        }
//        //listing items
//        HStack(alignment: .top){
//            VStack(alignment: .leading){
//                Text("Miami, Florida")
//                    .fontWeight(.semibold)
//                Text("12 mint away")
//                    .foregroundStyle(.gray)
//                Text("Nov, 3 - 10")
//                    .foregroundStyle(.gray)
//                HStack{
//                    Text("$567")
//                        .fontWeight(.semibold)
//                    Text("Night")
//                }
//            }
//            Spacer()
//            
//            HStack{
//                Text(Image(systemName: "star.fill"))
//                Text("4.88")
//            }
//        }.font(.footnote)
//
//    }
//}
//
//#Preview {
//    ListingItemsView()
//}
import SwiftUI

struct ListingItemsView: View {
    
    var Images = [
        "hotel1",
        "hotel2",
        "hotel3",
        "hotel4",
    ]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            // Image carousel
            TabView {
                ForEach(Images, id: \.self) { image in
                    Image(image)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(height: 320)
                        .clipped()
                }
            }
            .cornerRadius(10)
            .tabViewStyle(.page(indexDisplayMode: .automatic))
            .frame(height: 320)
            
            // Listing details
            VStack(alignment: .leading, spacing: 8) {
                Text("Miami, Florida")
                    .font(.headline)
                    .fontWeight(.bold)
                
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
