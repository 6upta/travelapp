//
//  DestInfoView.swift
//  CSE 335 Class Project
//
//  Created by Justin Miller on 3/28/25.
//

import SwiftUI

struct DestInfoView: View {
    @Binding var ShowDestInfoView: Bool
    @State var ShowTripDashView = false
    var body: some View {
        #if os(iOS)
        NavigationView{
            

            VStack {
                VStack{
                    Rectangle()
                        .frame(height:1)
                        .padding(.bottom, 140)
                }
                .frame(height: 1)

                //Current Location
                Text("Where are you comming from?")
                    .font(.custom("verdana", size: 19))
                    .padding(.trailing, 45)
                
                TextField("Current Location", text: .constant(""))
                    .padding(5)
                    .overlay(
                        RoundedRectangle(cornerRadius: 1)
                            .stroke(Color(.black), lineWidth: 1)
                    )
                    .padding(.trailing, 70)
                    .frame(width: 340 )
                
                Spacer().frame(height: 70)
                
                //Destination
                Text("Where do you want to go?")
                    .font(.custom("verdana", size: 19))
                    .padding(.trailing, 87)
                
                TextField("Destination", text: .constant(""))
                    .padding(5)
                    .overlay(
                        RoundedRectangle(cornerRadius: 1)
                            .stroke(Color(.black), lineWidth: 1)
                    )
                    .padding(.trailing, 70)
                    .frame(width: 340 )
                    
                Spacer().frame(height: 70)
                
                //Departure Date
                Text("Departure Data")
                    .font(.custom("verdana", size: 19))
                    .padding(.trailing, 190)
                
                TextField("dd-mm-yyyy", text: .constant(""))
                    .padding(5)
                    .overlay(
                        RoundedRectangle(cornerRadius: 1)
                            .stroke(Color(.black), lineWidth: 1)
                    )
                    .padding(.trailing, 70)
                    .frame(width: 340 )
                
                Spacer().frame(height: 70)
                
                //Return Date
                Text("Return Date")
                    .font(.custom("verdana", size: 19))
                    .padding(.trailing, 225)
                
                TextField("dd-mm-yyyy", text: .constant(""))
                    .padding(5)
                    .overlay(
                        RoundedRectangle(cornerRadius: 1)
                            .stroke(Color(.black), lineWidth: 1)
                    )
                    .padding(.trailing, 70)
                    .frame(width: 340 )
                
                Spacer().frame(height: 100)
                
                //Toolbar
                    Text("")
                    .toolbar
                {
                    //save button
                    ToolbarItem(placement: .navigationBarTrailing)
                    {
                        Button(action:
                                {
                            ShowTripDashView = true
                            
                
                        },
                               label:
                                {
                            Text("Save")
                        })
                        .foregroundColor(Color(red: 250/255, green: 125/255, blue: 125/255))
                    }
                    
                    //back button
                    ToolbarItem(placement: .navigationBarLeading)
                    {
                        Button(action:
                                {
                            ShowDestInfoView = false
                        },
                               label:
                                {
                            Text("Back")
                        })
                        .foregroundColor(Color(red: 250/255, green: 125/255, blue: 125/255))
                    }
                }
                .navigationTitle("Destination Information")
                .navigationBarTitleDisplayMode(.inline)
            }
            .background(NavigationLink(destination: TripDashBoardView(ShowTripDashView: $ShowTripDashView), isActive: $ShowTripDashView) {
                
            })
            
            
        } .navigationBarBackButtonHidden(true)
           
        
#endif
    }
}


#Preview {
    DestInfoView( ShowDestInfoView: .constant(true))
}
