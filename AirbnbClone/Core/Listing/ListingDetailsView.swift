//
//  ListingDetailsView.swift
//  AirbnbClone
//
//  Created by MacMini6 on 27/01/25.
//

import SwiftUI
import MapKit

struct ListingDetailsView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ScrollView{
            ZStack(alignment: .topLeading){
                ListingImageView()
                    .frame(height: 320)
                    .ignoresSafeArea()
                
                Button {
                    print("back button tapped")
                    dismiss()
                   
                } label: {
                    Image(systemName: "chevron.left")
                        .foregroundStyle(.black)
                        .background{
                            Circle()
                                .fill(.white)
                                .frame(width: 32, height: 32)
                        } .padding(40)
                       
                }

            }
            
            VStack(alignment: .leading, spacing: 8){
                Text("Miani Villa")
                    .font(.title)
                    .fontWeight(.semibold)
                
                VStack(alignment: .leading){
                    HStack{
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                        Text("4.88")
                            .fontWeight(.semibold)
                        
                        Text(" - ")
                        Text("28 reviews")
                            .underline()
                            .fontWeight(.semibold)
                    }.foregroundStyle(.black)
                    
                    Text("Miami Florida")
                }.font(.caption)
                
            }.padding(.leading)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Divider()
            
            HStack{
                VStack(alignment: .leading, spacing: 4){
                    Text("Entire Villa hosted by John Smith")
                        .font(.headline)
                        .frame(width: 250, alignment: .leading)
                    
                    HStack(spacing:2){
                        Text("4 guests - ")
                        Text("4 Bedrooms - ")
                        Text("4 beds - ")
                        Text("3 baths ")
                    } .frame(width: 300, alignment: .leading)
                        .font(.caption)
                }
                
                Spacer()
                
                Image("hotel3")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 64, height: 64)
                    .clipShape(.circle)
            }.padding()
            
            Divider()
            
            VStack(alignment: .leading, spacing: 16){
                ForEach(0..<2){ feature in
                    HStack(spacing:12){
                        Image(systemName: "medal")
                        
                        VStack(alignment: .leading){
                            Text("Superhost")
                                .font(.footnote)
                                .fontWeight(.semibold)
                            Text("John Smith has consistently received great ratings from guests.John Smith has consistently received ")
                                .font(.caption)
                                .foregroundStyle(.gray)
                        }
                        Spacer()
                    }
                }
            }.padding()
            
            Divider()
            
            VStack(alignment: .leading){
                Text("Where You all Sleep")
                    .font(.headline)
                
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(spacing:16){
                        ForEach(1 ..< 5){ bedroom in
                            VStack{
                                Image(systemName: "bed.double")
                                Text("bedroom\(bedroom)")
                            }.frame(width: 132, height: 100)
                                .overlay {
                                    RoundedRectangle(cornerRadius: 16)
                                        .stroke(lineWidth: 1)
                                        .foregroundStyle(.gray)
                                }
                            
                        }
                    }
                    
                }
            }.padding()
            
            Divider()
            
            VStack(alignment: .leading, spacing: 16){
                Text("What this place offers")
                    .font(.headline)
                ForEach(0..<5) { feature in
                    HStack{
                        Image(systemName: "wifi")
                        Text("Wifi")
                            .font(.footnote)
                        Spacer()
                    }
                    
                }
                
            }.padding()
            
            Divider()
            
            VStack(alignment: .leading, spacing: 16){
                Text("Where you'll be")
                    .font(.headline)
                Map()
                    .frame(height: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 16))
            }.padding()
        }
        .ignoresSafeArea()
        .padding(.bottom, 65)
            .overlay(alignment: .bottom) {
                VStack{
                    Divider()
                        .padding(.bottom)
                    
                    HStack{
                        
                        VStack(alignment: .leading){
                    
                            Text("$500")
                                .font(.headline)
                                .fontWeight(.semibold)
                            Text("Total after Texes")
                                .font(.footnote)
                                
                            Text("Feb 5 - 10")
                                .font(.footnote)
                                .fontWeight(.semibold)
                                .underline()
                        }
                        Spacer()
                        Button{
                            
                        } label:{
                            Text("Book Now")
                                .foregroundStyle(.white)
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .frame(width: 140, height: 40)
                                .background(.pink)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                        }
                    }
                    .padding(.horizontal,32)
                }
                .background(.white)
            }
    }
}
#Preview {
    ListingDetailsView()
}
