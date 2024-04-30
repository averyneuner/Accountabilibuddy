//
//  ToDoList.swift
//  Accountabilibuddy
//
//  Created by Avery Neuner on 3/13/24.  
//

import Foundation
import SwiftUI

struct ToDoList: View{
    @Environment(UserData.self) var userData
    
    var ToDoList: [ToDo] {
        userData.toDos
    }
    
    var body: some View{
        List {
            ForEach(ToDoList) { toDo in
                NavigationLink {
                    Editor(ToDo: toDo)
                } label: {
                    ToDoItem(ToDo: toDo)
                }
                
            }
        }
        .navigationTitle("To Do List!")
    }
    
}
     

#Preview {
   ToDoList()
        .environment(UserData())
}
