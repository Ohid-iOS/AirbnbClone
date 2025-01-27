//
//  DestinationSearchView.swift
//  AirbnbClone
//
//  Created by MacMini6 on 27/01/25.
//

import SwiftUI

enum DestinationSearchOption{
    case location
    case dates
    case guests
}

struct DestinationSearchView: View {
    @Binding var isPresented: Bool
    @State private var searchDestination: String = ""
    
    @State private var selectedOption: DestinationSearchOption = .location
    
    @State private var startDate: Date = Date()
    @State private var endDate: Date = Date()
    
    @State private var guestCount: Int = 0
    
    var body: some View {
        VStack {
            HStack {
                Button {
                    withAnimation(.snappy) {
                        isPresented.toggle()
                    }
                    
                } label: {
                    Image(systemName: "xmark.circle")
                        .imageScale(.large)
                        .foregroundStyle(.black)
                }
                Spacer()
                
                if !searchDestination.isEmpty{
                    Button("Clear"){
                        searchDestination = ""
                        
                    }.font(.title3)
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                }
                
            }.padding()
            
            
            VStack(alignment: .leading){
                if selectedOption == .location{
                    Text("Where to?")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                    HStack{
                        Image(systemName: "magnifyingglass")
                        TextField(text: $searchDestination) {
                            Text("search destination")
                                .font(.subheadline)
                        }
                    }.frame(height: 44)
                        .padding(.horizontal)
                        .overlay {
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(lineWidth: 1.0)
                                .foregroundStyle(Color(.systemGray4))
                        }
                }else{
                    GuestSelectorView(title: "Where", description: "Add Destination")
                }
            }
            .padding()
            .frame(height: selectedOption == .location ? 150 : 64)
            .background(.white)
            .cornerRadius(12)
            .padding()
            .shadow(radius: 10)
            .onTapGesture {
                withAnimation(.snappy) {
                    selectedOption = .location
                }
            }
            
            //date
            VStack(alignment: .leading){
                if selectedOption == .dates{
                    Text("When's your trip?")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    VStack{
                        DatePicker("From", selection: $startDate, displayedComponents: .date)
                        
                        Divider()
                        
                        DatePicker("To", selection: $endDate, displayedComponents: .date)
                        
                    }.foregroundStyle(.gray)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                    
                }else{
                    GuestSelectorView(title: "When", description: "Add Dates")
                }
            }
            .padding()
            .frame(height: selectedOption == .dates ? 180 : 64)
            .background(.white)
            .cornerRadius(12)
            .padding()
            .shadow(radius: 10)
            .onTapGesture {
                withAnimation(.snappy) {
                    selectedOption = .dates
                }
            }
            
            //guest
            VStack(alignment: .leading){
                if selectedOption == .guests{
                    Text("Who's Coming?")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    Stepper{
                        Text("\(guestCount) Adults")
                            .fontWeight(.semibold)
                    }onIncrement: {
                        guestCount += 1
                    }onDecrement: {
                        guestCount = max(0, guestCount - 1)
                    }
                    
                }else{
                    GuestSelectorView(title: "Who", description: "Add Guests")
                }
            }
            .padding()
            .frame(height: selectedOption == .guests ? 150 : 64)
            .background(.white)
            .cornerRadius(12)
            .padding()
            .shadow(radius: 10)
            .onTapGesture {
                withAnimation(.snappy) {
                    selectedOption = .guests
                }
            }
            Spacer()
        }
    }
}


#Preview {
    DestinationSearchView(isPresented: .constant(false))
}


struct GuestSelectorView: View {
    let title: String
    let description: String
    var body: some View {
        VStack {
            HStack {
                Text(title)
                    .foregroundStyle(.gray)
                Spacer()
                Text(description)
            }
            .font(.subheadline)
            .fontWeight(.semibold)
        }
       
    }
}
