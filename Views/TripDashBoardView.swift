//
//  TripDashBoardView.swift
//  CSE 335 Class Project
//
//  Created by Justin Miller on 3/29/25.
//

import SwiftUI

struct TripDashBoardView: View {
    @Binding var ShowTripDashView: Bool
    @State var ShowHotelListView: Bool = false
    @State var ShowFlightListView: Bool = false
    var body: some View {
        #if os(iOS)
        NavigationView{
            
            VStack {
                VStack{
                    Rectangle()
                        .frame(height:1)
                        .padding(.bottom, 170)
                }
                .frame(height: 1)
               
                Text("Looks Like you Don't have a flight set up. Press the button below to find one!")
                    .font(.custom("verdana", size: 19))
                    .multilineTextAlignment(.center)
                    .frame(width: 300, height: 100)
                Button(action: {
                    ShowFlightListView = true

                }){
                    Text("Find Flight!            ")
                }
                .font(.custom("verdana", size: 17))
                .foregroundColor(Color.white)
                .padding()
                .background(Color(red: 250/255, green: 125/255, blue: 125/255))
                .cornerRadius(10)
                .frame(width:200, height: 50)
                
                Spacer().frame(height: 130)
                
                Text("Looks Like you Don't have a hotel set up. Press the button below to find one!")
                    .font(.custom("verdana", size: 19))
                    .multilineTextAlignment(.center)
                    .frame(width: 300, height: 100)
                
                Button(action: {
                    ShowHotelListView = true

                }){
                    Text("Find Hotel!             ")
                }
                .font(.custom("verdana", size: 17))
                .foregroundColor(Color.white)
                .padding()
                .background(Color(red: 250/255, green: 125/255, blue: 125/255))
                .cornerRadius(10)
                .frame(width:200, height: 50)

                Spacer().frame(height: 100)
               
                
                //Toolbar
                    Text("")
                    .toolbar
                {
                 
                    //back button
                    ToolbarItem(placement: .navigationBarLeading)
                    {
                        Button(action:
                                {
                            ShowTripDashView = false
                        },
                               label:
                                {
                            Text("Back")
                        })
                        .foregroundColor(Color(red: 250/255, green: 125/255, blue: 125/255))
                    }
                }
                .navigationTitle("Trip Dashboard")
                .navigationBarTitleDisplayMode(.inline)
            }
            .background(NavigationLink(destination: FlightListView(ShowFlightistView: $ShowFlightListView), isActive: $ShowFlightListView) {
                
            })
            .background(NavigationLink(destination: HotelListView(ShowHotelListView: $ShowHotelListView), isActive: $ShowHotelListView) {
                
            })
            
           
            
            
        } .navigationBarBackButtonHidden(true)
#endif
    }
}

#Preview {
    TripDashBoardView(ShowTripDashView: .constant(true) )
}
