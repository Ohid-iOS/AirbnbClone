//
//  PorfieOptionRowView.swift
//  AirbnbClone
//
//  Created by MacMini6 on 27/01/25.
//

import SwiftUI

struct PorfieOptionRowView: View {
    let imageName: String
    let title: String
    var body: some View {
        VStack{
            HStack{
                Image(systemName: imageName)
                Text(title)
                    .font(.subheadline)
                
                Spacer()
                
                Image(systemName: "chevron.right")
                
               
            }
            Divider()
            
        }
    }
}

#Preview {
    PorfieOptionRowView(imageName: "gear", title: "system")
}
