//
//  Creator.swift
//  Accountabilibuddy
//
//  Created by Avery Neuner on 4/2/24.
//


import Foundation
import SwiftUI

struct Creator: View {
    @Environment (UserData.self) var userData
    @State var isDone = false
    @State var taskName = ""
    @State var remindSchedule = ""
    @State var urgency = 0
    @State var repeated = false
    @State var categoryIndex = 0
    
    private func add(){
        userData.toDos.append(ToDo(isDone: isDone, taskName: taskName, remindSchedule: remindSchedule, urgency: urgency, repeated: repeated, categoryIndex: categoryIndex))
    }
    
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
                    .bold()
                TextField("To Do", text: $taskName)
                
                Text("Urgency")
                    .bold()
                Picker("Urgency", selection: $urgency){
                    Text("Low").tag(urgencyOptions[0])
                    Text("Medium").tag(urgencyOptions[1])
                    Text("High").tag(urgencyOptions[2])
                }
                .pickerStyle(.segmented)
                
                Text("Category")
                    .bold()
                 Picker("Category", selection: $categoryIndex){
                     Text("General").tag(ToDoCategories.general.index)
                     Text("Work").tag(ToDoCategories.work.index)
                     Text("Social").tag(ToDoCategories.social.index)
                     Text("Creative").tag(ToDoCategories.creative.index)
                 }
                 .pickerStyle(.segmented)
                
                Text("Enter Schedule")
                    .bold()
                TextField("Remind Schedule", text: $remindSchedule)
                
                /*
                DatePicker(
                    "Remind Date",
                    selection: $userData.toDos[0].remindSchedule,
                    displayedComponents: [.date, .hourAndMinute]
                )
                */
                
                Toggle(isOn: $repeated){
                    Text("Is this task repeated?")
                }
                .bold()
                
            
            }
            
            
            //how to make this button do things and go places
            
            //HOW GO PLACES 
            
            
                Button("Create", action: add)
                .padding()
                .foregroundColor(.white)
                .background(Color(red: 0, green: 0.7, blue: 0.2))
                .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
            NavigationLink("Escape"){
                Home(category: ToDoCategories.all)
            }
        
            
            

        }
        .navigationTitle("Create To Do!")
        //why is it going here ALL the time
               
              
    }
    
}

#Preview {
    Creator()
        .environment(UserData())
}
