//
//  Editor.swift
//  Accountabilibuddy
//
//  Created by Avery Neuner on 3/17/24.
//

import Foundation
import SwiftUI
import UserNotifications

// Define gentle green and pink colors
extension Color {
    static let gentleGreen = Color(red: 0.6, green: 0.8, blue: 0.6) // Example gentle green
    static let gentlePink = Color(red: 0.95, green: 0.7, blue: 0.75) // Example gentle pink
}

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
        // Cancel existing notifications for this ToDo
        UNUserNotificationCenter.current().removePendingNotificationRequests(withIdentifiers: [ToDo.id.uuidString])

        // Schedule a new notification if remindSchedule is not nil
        if let reminderDate = userData.toDos[toDoIndex].remindSchedule {
            let content = UNMutableNotificationContent()
            content.title = "Accountabilibuddy Reminder"
            content.body = "Don't forget: \(userData.toDos[toDoIndex].taskName)"
            content.sound = .default

            let calendar = Calendar.current
            let components = calendar.dateComponents([.year, .month, .day, .hour, .minute], from: reminderDate)
            let trigger = UNCalendarNotificationTrigger(dateMatching: components, repeats: false)
            let request = UNNotificationRequest(identifier: userData.toDos[toDoIndex].id.uuidString, content: content, trigger: trigger)
            UNUserNotificationCenter.current().add(request)
        }
        wasEditted = true
    }
    var body: some View{
        @Bindable var userData = userData
        
        NavigationStack{
            Form{
                Section(header: Text("Task Details").font(.headline).foregroundColor(.gentleGreen)) {
                    Text("Enter To Do")
                        .bold()
                        .foregroundColor(.gentleGreen)
                }
                TextField("To Do", text: $userData.toDos[toDoIndex].taskName)
                
                Text("Urgency")
                    .bold().foregroundColor(.gentleGreen)
                Picker("Urgency", selection: $userData.toDos[toDoIndex].urgency){
                    Text("Low").tag(urgencyOptions[0])
                    Text("Medium").tag(urgencyOptions[1])
                    Text("High").tag(urgencyOptions[2])
                }
                .pickerStyle(.segmented)
                
                Text("Category")
                    .bold().foregroundColor(.gentleGreen)
                Picker("Category", selection: $userData.toDos[toDoIndex].categoryIndex){
                    Text("General").tag(ToDoCategories.general.index)
                    Text("Work").tag(ToDoCategories.work.index)
                    Text("Social").tag(ToDoCategories.social.index)
                    Text("Creative").tag(ToDoCategories.creative.index)
                }
                .pickerStyle(.segmented)
                
                Text("Enter Schedule")
                    .bold().foregroundColor(.gentleGreen)
                DatePicker(
                    "Remind Date",
                    selection: Binding(get: { userData.toDos[toDoIndex].remindSchedule ?? Date() }, set: { userData.toDos[toDoIndex].remindSchedule = $0 }),
                    displayedComponents: [.date, .hourAndMinute]
                )
                
                Toggle(isOn: $userData.toDos[toDoIndex].repeated){
                    Text("Is this task repeated?")
                }.foregroundColor(.gentleGreen)
                .bold()
                
                
                
            }
            
           
               
                Button("Finish", action: edit)
                    .padding()
                    .foregroundColor(.gentlePink)
                    .background(Color.gentleGreen)
                    .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
                NavigationLink("Escape"){
                    Home(category: ToDoCategories.all)
                }
                .foregroundColor(.gentlePink)
            
          
        }
        .navigationTitle("Edit To Do!").foregroundColor(.gentleGreen)

        
        
        
    }
        
    }

    


#Preview {
    Editor(ToDo: UserData().toDos[0])
        .environment(UserData())
}
