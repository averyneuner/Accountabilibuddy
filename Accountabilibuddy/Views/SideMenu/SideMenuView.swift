//
//  SideMenuView.swift
//  Accountabilibuddy
//
//  Created by Avery Neuner on 3/26/24.
//

import Foundation
import SwiftUI

//this will be a welcome page!! eventually

struct SideMenuView: View {
    @Binding var isShowing: Bool
    
    var body: some View {
       //basically just an example of a home bar
        ZStack {
            if isShowing {
                Rectangle()
                    .opacity(0.3)
                    .ignoresSafeArea()
                    .onTapGesture { isShowing.toggle()}
                HStack{
                    VStack(alignment: .leading, spacing: 32){
                        SideMenuHeader()
                        
                        
                        VStack{
                            NavigationLink{
                                Home(category: ToDoCategories.all)
                            } label: {
                                SideMenuRow(category: ToDoCategories.all)
                            }
                            NavigationLink{
                                Home(category: ToDoCategories.general)
                            } label: {
                                SideMenuRow(category: ToDoCategories.general)
                            }
                            NavigationLink{
                                Home(category: ToDoCategories.work)
                            } label: {
                                SideMenuRow(category: ToDoCategories.work)
                            }
                            NavigationLink{
                                Home(category: ToDoCategories.social)
                            } label: {
                                SideMenuRow(category: ToDoCategories.social)
                            }
                            NavigationLink{
                                Home(category: ToDoCategories.creative)
                            } label: {
                                SideMenuRow(category: ToDoCategories.creative)
                            }
                
                        }
                        
                        Spacer()
                    }
                    .padding()
                    .frame(width: 270, alignment: .leading)
                    .background(.white)
                    
                    Spacer()
                }
                
            }
        }
        .transition(.move(edge: .leading))
        .animation(.easeInOut, value: isShowing)
    }
}

#Preview {
    SideMenuView(isShowing: .constant(true))
        .environment(UserData())

}
