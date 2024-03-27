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
        NavigationStack {
            ZStack {
                VStack{
                    Text("Welcome to Accountabilibuddy")
                }
                
                SideMenuView(isShowing: $showMenu)
            }
            .toolbar(showMenu ? .hidden : .visible, for: .navigationBar)
            .navigationTitle("Home")
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
