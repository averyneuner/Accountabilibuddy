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
        
        ZStack {
            /*
            RoundedRectangle(cornerRadius: 10.0)
                .size(width: 365.0, height: 90.0)
                //how to bind rectangles to the to dos.position()
                .fill(ToDo.color)
            
                .padding()
             */
            HStack {
                Button{
                    ToDo.isDone.toggle()
                }label: {
                    Label("Toggle Favorite", systemImage:ToDo.isDone ? "checkmark.square.fill" : "checkmark.square")
                        .labelStyle(.iconOnly)
                        .foregroundStyle(ToDo.isDone ? ToDo.color : .black)
                }
                Text(ToDo.taskName)
                Text("Reminders: \(ToDo.remindSchedule)")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/) //don't know if I like it bold
                 Spacer()
            }
            .padding(.leading)
        }
    }
    }


#Preview{
    ToDoItem(ToDo: UserData().toDos[0])
        .environment(UserData())
    //is this correct??
}
