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
    var category: ToDoCategories
    
    var body: some View {
        //example of a side navigation bar
        //figure out how to use this to filter the to dos you have!! 
        NavigationStack {
            ZStack {
                //TODO: next. figure out how to display and then filter to do lists 
                
                if category == ToDoCategories.all{
                    ToDoList(showingCategory: 0)
                }else if category == ToDoCategories.general{
                    ToDoList(showingCategory: 1)
                }else if category == ToDoCategories.work{
                    ToDoList(showingCategory: 2)
                }else if category == ToDoCategories.social{
                    ToDoList(showingCategory: 3)
                }else if category == ToDoCategories.creative{
                    ToDoList(showingCategory: 4)
                }
                 //WHY NO WORKYYYYYYY
                VStack{
                    Spacer()
                    HStack {
                        Spacer()
                        NavigationLink(destination: Creator()){
                                Image(systemName: "plus.circle.fill")
 .tint(.green)
                                    .padding()
                                    
                        }
                    }
                }
               
                SideMenuView(isShowing: $showMenu)
            }
 .toolbar(showMenu ? .hidden : .visible, for: .navigationBar)
 .toolbarBackground(Color.pink.opacity(0.2), for: .navigationBar) // Added gentle pink background
 .toolbarBackground(.visible, for: .navigationBar) // Make background visible
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
    Home(category: ToDoCategories.general)
        .environment(UserData())

}
