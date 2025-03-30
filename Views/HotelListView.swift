//
//  HotelListView.swift
//  CSE 335 Class Project
//
//  Created by Justin Miller on 3/30/25.
//

import SwiftUI

struct HotelListView: View {
    @Binding var ShowHotelListView : Bool
    var body: some View {
        NavigationView{
            
            VStack{
                Image("HotelListImage")
                    .resizable()
                    .frame(width: UIScreen.main.bounds.width, height: 290)
                    .clipped(antialiased: true)
                
                Spacer().frame(height: 20)
                
                Text("We Found hotels for you!")
                    .font(.custom("verdana", size: 19))
                    .padding(.trailing, 100)
                    .foregroundColor(.gray)
                
                
                List
                {
                    NavigationLink(destination: HotelDetailView())
                    {
                        HStack{
                            Text("Hotel Info")
                        }
                    }
                    

                }.scrollContentBackground(.hidden)
                
                //Toolbar
                    Text("")
                    .toolbar
                {
                 
                    //back button
                    ToolbarItem(placement: .navigationBarLeading)
                    {
                        Button(action:
                                {
                            ShowHotelListView = false
                        },
                               label:
                                {
                            Text("Back")
                        })
                        .foregroundColor(Color(red: 250/255, green: 125/255, blue: 125/255))
                    }
                }
                .navigationTitle("Hotel Finder")
                .navigationBarTitleDisplayMode(.inline)
            }

            
            
            
        }.navigationBarBackButtonHidden(true)
        
    }
}

#Preview {
    HotelListView(ShowHotelListView: .constant(true))
}
