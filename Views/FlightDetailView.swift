//
//  FlightDetailView.swift
//  CSE 335 Class Project
//
//  Created by Justin Miller on 3/30/25.
//

import SwiftUI

struct FlightDetailView: View {
    var body: some View {
        NavigationView{
            
            VStack{
               
                
                
            
                
                //Toolbar
                    Text("")
                    .toolbar
                {
                 
                    //back button
                    ToolbarItem(placement: .navigationBarLeading)
                    {
                        Button(action:
                                {
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

            
            
            
        }.navigationBarBackButtonHidden(true)
    }
}

#Preview {
    FlightDetailView()
}
