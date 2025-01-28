//
//  ProfileView.swift
//  AirbnbClone
//
//  Created by MacMini6 on 27/01/25.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            //upto sign up
            VStack(alignment: .leading, spacing: 32){
                VStack(alignment: .leading, spacing: 8){
                    Text("Profile")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                    Text("Log in to start planning your trip")
                }
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
                  
                HStack{
                    Text("Don't have an account?")
                        .font(.subheadline)
                    
                    Button {
                        
                    } label: {
                        Text("Sign up")
                            .fontWeight(.semibold)
                            .foregroundStyle(.pink)
                    }
                    
                }
                
            }
            
            //listing
            VStack(spacing:24){
                PorfieOptionRowView(imageName: "gear", title: "System")
                PorfieOptionRowView(imageName: "gear", title: "Accesscibility")
                PorfieOptionRowView(imageName: "gear", title: "Heling Center")
            }.padding(.vertical)
            
        }.padding()
    }
}

#Preview {
    ProfileView()
}
