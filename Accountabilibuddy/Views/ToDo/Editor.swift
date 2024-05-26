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
    var ToDo: ToDo
    var toDoIndex: Int{
        userData.toDos.firstIndex(where: {$0.id == ToDo.id})!
    }
    
    
    @State private var rewards = ["Yogurt", "Seeds", "Fruit"]
    let urgencyOptions = [1, 2, 3]
    
    @State private var wasEditted = false
    
    private func edit(){
        toDos[toDoIndex] = ToDo
        wasEditted = true
    }
    
    var body: some View{
        @Bindable var userData = userData
        
        NavigationStack{
            Form{
                Text("Enter To Do")
                    .bold()
                TextField("To Do", text: $userData.toDos[toDoIndex].taskName)
                
                Text("Urgency")
                    .bold()
                Picker("Urgency", selection: $userData.toDos[toDoIndex].urgency){
                    Text("Low").tag(urgencyOptions[0])
                    Text("Medium").tag(urgencyOptions[1])
                    Text("High").tag(urgencyOptions[2])
                }
                .pickerStyle(.segmented)
                
                Text("Category")
                    .bold()
                Picker("Category", selection: $userData.toDos[toDoIndex].categoryIndex){
                    Text("General").tag(ToDoCategories.general.index)
                    Text("Work").tag(ToDoCategories.work.index)
                    Text("Social").tag(ToDoCategories.social.index)
                    Text("Creative").tag(ToDoCategories.creative.index)
                }
                .pickerStyle(.segmented)
                
                Text("Enter Schedule")
                    .bold()
                TextField("Remind Schedule", text: $userData.toDos[toDoIndex].remindSchedule)
                
                /*
                 DatePicker(
                 "Remind Date",
                 selection: $userData.toDos[0].remindSchedule,
                 displayedComponents: [.date, .hourAndMinute]
                 )
                 */
                
                Toggle(isOn: $userData.toDos[toDoIndex].repeated){
                    Text("Is this task repeated?")
                }
                .bold()
                
                
                
            }
            
           
               
                Button("Finish", action: edit)
                    .padding()
                    .foregroundColor(.white)
                    .background(Color(red: 0, green: 0.7, blue: 0.2))
                    .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
                NavigationLink("Escape"){
                    Home(category: ToDoCategories.all)
                }
            
          
        }
        .navigationTitle("Edit To Do!")

        
        
        
    }
        
    }

    


#Preview {
    Editor(ToDo: UserData().toDos[0])
        .environment(UserData())
}
