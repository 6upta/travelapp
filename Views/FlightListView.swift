//
//  FlightListView.swift
//  CSE 335 Class Project
//
//  Created by Justin Miller on 3/30/25.
//

import SwiftUI

struct FlightListView: View {
    @Binding var ShowFlightistView : Bool
    var body: some View {
        NavigationView{
            
            VStack{
                Image("FlightListImage")
                    .resizable()
                    .frame(width: UIScreen.main.bounds.width, height: 290)
                    .clipped(antialiased: true)
                
                Spacer().frame(height: 20)
                
                Text("We Found Flights for you!")
                    .font(.custom("verdana", size: 19))
                    .padding(.trailing, 100)
                    .foregroundColor(.gray)
                
                
                List
                {
                    NavigationLink(destination: FlightDetailView())
                    {
                        HStack{
                            Text("Flight Info")
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
                            ShowFlightistView = false
                        },
                               label:
                                {
                            Text("Back")
                        })
                        .foregroundColor(Color(red: 250/255, green: 125/255, blue: 125/255))
                    }
                }
                .navigationTitle("Flight Finder")
                .navigationBarTitleDisplayMode(.inline)
            }

            
            
            
        }.navigationBarBackButtonHidden(true)
        
    }
    
    
}


#Preview {
    FlightListView(ShowFlightistView: .constant(true))
}
