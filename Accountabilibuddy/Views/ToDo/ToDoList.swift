//
//  ToDoList.swift
//  Accountabilibuddy
//
//  Created by Avery Neuner on 3/13/24.  
//

import Foundation
import SwiftUI

struct ToDoList: View{
    @Environment (UserData.self) var userData
    var showingCategory: Int
    
    //insert array filtering for if done here! 
    var filteredToDos: [ToDo]{
        userData.toDos.filter { ToDo in
            (ToDo.isDone == false)
        }
    }
    
    
    var body: some View{
        
        NavigationView{
            List {
                ForEach(filteredToDos) { toDo in
                    if(toDo.categoryIndex == showingCategory){
                        ToDoItem(ToDo: toDo)
                    }else if showingCategory == 0{
                        ToDoItem(ToDo: toDo)
                    }
                    
                }
            }
            .navigationTitle("To Do List!")
        }
        }
       
}
     

#Preview {
   ToDoList(showingCategory: 0)
        .environment(UserData())
}
