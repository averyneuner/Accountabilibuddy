//
//  Editor.swift
//  Accountabilibuddy
//
//  Created by Avery Neuner on 3/17/24.
//

import Foundation
import SwiftUI

struct Editor: View {
    @Environment (UserData.self) var userData
    var toDo = ToDo(id: 0, isDone: false, taskName: "", remindSchedule: Date(), urgency: 1, repeated: false, reward: "")
    //can I create an empty to do that will be filled out here??
    
    //TODO: for now this is just a static option since buddies don't exist yet
   @State private var rewards = ["Yogurt", "Seeds", "Fruit"]
    
    //this is just a translation of urgency/colors in the to do struct
    let  urgencyOptions = [1, 2, 3]
    //let date = Calendar.date(from: toDo.remindSchedule)
    //TODO: figure out calendar object?
    
    var body: some View{
        @Bindable var userData = userData
        
        NavigationStack{
            Form{
                Text("Enter To Do")
                TextField("To Do", text: $userData.toDos[0].taskName)
                
                Picker("Urgency", selection: $userData.toDos[0].urgency){
                    Text("Low").tag(urgencyOptions[0])
                    Text("Medium").tag(urgencyOptions[1])
                    Text("High").tag(urgencyOptions[2])
                }
                .pickerStyle(.segmented)
                
                DatePicker(
                    "Remind Date",
                    selection: $userData.toDos[0].remindSchedule,
                    displayedComponents: [.date, .hourAndMinute]
                )
                
                Toggle(isOn: $userData.toDos[0].repeated){
                    Text("Is this task repeated?")
                }
               
                Picker("Reward", selection: $userData.toDos[0].reward){
                    ForEach(rewards, id: \.self){ reward in
                        Text(reward)
                    }
                }
                .pickerStyle(.segmented)
            
            }
        }
        .navigationTitle("Create a To Do!")
               
               //BASICALLY: this is the button to take you back. not sure if it does that. g ghg 
        NavigationLink {
            ToDoList()
        } label: {
            Label("Done", systemImage: "checklist")
        }
        //.buttonStyle(Button<<#Label: View#>>)
        //TODO: unsure about buttons 
    }
}

#Preview {
    ContentView()
}
