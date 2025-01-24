//
//  SearchAndFilterbar.swift
//  AirbnbClone
//
//  Created by MacMini6 on 24/01/25.
//

import SwiftUI

struct SearchAndFilterbar: View {
    var body: some View {
        HStack{
            Image(systemName: "magnifyingglass")
            VStack(alignment: .leading, spacing: 2){
                Text("Where to?")
                    .font(.footnote)
                    .fontWeight(.semibold)
                Text("Anywhere - Anytime - Add guests")
                    .font(.caption2)
                    .foregroundStyle(.gray)
            }
            Spacer()
            
            Button {
                //
            } label: {
                Image(systemName: "gear")
                    .foregroundStyle(.black)
            }
        }.padding(.horizontal)
            .padding(.vertical, 8)
            .overlay {
                Capsule()
                    .stroke(lineWidth: 0.5)
                    .foregroundStyle(Color.gray)
                    .shadow(color: .black, radius:2 )
            }
            .padding()
    }
}

#Preview {
    SearchAndFilterbar()
}
