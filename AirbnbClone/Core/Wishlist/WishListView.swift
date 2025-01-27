//
//  WishListView.swift
//  AirbnbClone
//
//  Created by MacMini6 on 27/01/25.
//

import SwiftUI

struct WishListView: View {
    var body: some View {
        NavigationStack {
            VStack (alignment: .leading, spacing: 32) {
                VStack(alignment: .leading) {
                    Text( "Log in to view your wishlists")
                        . font ( . headline)
                    Text ( "You can create, view or edit wishlists once you've logged in")
                }
                
                VStack{
                Button {
                    
                } label: {
                    Text("Log in ")
                        .foregroundColor(.white)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(width: 360, height: 44)
                        .background(.pink)
                        .cornerRadius(8)
                }
                    
                }
            }
        }
    }
}
#Preview {
    WishListView()
}
