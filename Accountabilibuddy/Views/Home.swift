//
//  Home.swift
//  Accountabilibuddy
//
//  Created by Avery Neuner on 3/26/24.
//

import Foundation
import SwiftUI


struct Home: View {
    @State private var showMenu = false
    
    var body: some View {
        //example of a side navigation bar
        //figure out how to use this to filter the to dos you have!! 
        NavigationStack {
            ZStack {
                VStack{
                    //button
                    NavigationLink(destination: Creator()) {
                        Image(systemName: "plus.circle.fill")
                            .padding(.init(top: 645.0, leading: 320.0, bottom: 10.0, trailing: 10.0))
                            .background(Color(red: 0.9, green: 0.2, blue: 0.6))

                    }

                }
                
                SideMenuView(isShowing: $showMenu)
            }
            .toolbar(showMenu ? .hidden : .visible, for: .navigationBar)
            .navigationTitle("Accountabilibuddy")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .topBarLeading){
                    Button(action: {
                        showMenu.toggle()
                    }, label: {
                        Image(systemName: "line.3.horizontal")
                    })
                }
            }
            
                
            }
                
            }
        }

    

#Preview {
    Home()
}
