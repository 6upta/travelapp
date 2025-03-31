//
//  HomePageView.swift
//  CSE 335 Class Project
//
//  Created by Justin Miller on 3/28/25.
//

import SwiftUI

struct HomePageView: View {
    @State var ShowDestInfoView = false
    var body: some View {
        #if os(iOS)
        NavigationView
        {
            VStack
            {
                HStack
                {
                    Text("Vacation")
                        .font(.custom("verdana", size: 34))
                    Text("GO")
                        .font(.custom("verdana", size: 34))
                        .foregroundColor(Color(red: 250/255, green: 125/255, blue: 125/255))
                        .bold(true)
                    
                }
                Text("Planning made easy!")
                    .font(.custom("verdana", size: 18))
                Image("HomeImage")
                    .resizable()
                    .frame(width: UIScreen.main.bounds.width, height: 385)
                    .clipped(antialiased: true)
                    .padding(.top, 25)
                
                Text("Start planning your next vacation today!")
                    .font(.custom("verdana", size: 18))
                    .padding(.top, 70)
                
                Spacer()
                    .frame(height: 40)
                Button(action: {
                    
                    ShowDestInfoView = true

                }){
                    Text("Add your First Trip!")
                }
                .font(.custom("verdana", size: 17))
                .foregroundColor(Color.white)
                .padding()
                .background(Color(red: 250/255, green: 125/255, blue: 125/255))
                .cornerRadius(10)
                .frame(width:200, height: 50)
                
            }
            .padding(.top, 35)
            .frame(maxHeight: .infinity, alignment: .top)
            .background(NavigationLink(destination: DestInfoView(ShowDestInfoView: $ShowDestInfoView), isActive: $ShowDestInfoView) {
                
            })
        }
            #endif
            }
    

    
            
        }
        



#Preview {
    HomePageView()
}
