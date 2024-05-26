//
//  ToDoList.swift
//  Accountabilibuddy
//
//  Created by Avery Neuner on 3/11/24.
//

import Foundation
import SwiftUI

//rename this, utilize the aspects of TO DO  
struct ToDoItem: View{
    @Environment(UserData.self) var userData
    @State var ToDo: ToDo
    
    var body: some View{
        @Bindable var userData = userData
        
        NavigationStack{
            ZStack{
              
                HStack {
                        
                        VStack {
                            Image(systemName: ToDo.isDone ? "checkmark.square.fill" : "checkmark.square")
                                .onTapGesture {
                                    ToDo.isDone = !ToDo.isDone
                                }
                           
                            
                        }
                        Text(ToDo.taskName)
                        Text("Reminders: \(ToDo.remindSchedule)")
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/) //don't know if I like it bold
                      
                     Spacer()
                        VStack {
                            NavigationLink {
                                    Editor(ToDo: ToDo)
                                } label: {
                                    Label("Edit To Do", systemImage: "arrow.right")
                                        .labelStyle(.iconOnly)
                                        .foregroundStyle(.black)
                            }
                        }
                       
                         Spacer()
                    
                    
                }
                .padding(.leading)
                .background(ToDo.color)
            }
        }
    }
    }


#Preview{
    ToDoItem(ToDo: UserData().toDos[0])
        .environment(UserData())
    //is this correct??
}
