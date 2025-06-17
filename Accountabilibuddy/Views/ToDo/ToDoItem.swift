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
 .background(Color(red: 0.98, green: 0.9, blue: 0.92)) // Very light pink
              
                HStack {
                        
                        VStack {
                            Image(systemName: ToDo.isDone ? "checkmark.square.fill" : "checkmark.square")
                                .onTapGesture {
                                    ToDo.isDone = !ToDo.isDone
 if ToDo.isDone {
 userData.buddy.treatCount += 1
 }
                                }
 .foregroundColor(Color(red: 0.6, green: 0.8, blue: 0.6)) // Gentle green
                           
                            
                        }
                        Text(ToDo.taskName)
 .foregroundColor(.gray) // Dark gray
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
