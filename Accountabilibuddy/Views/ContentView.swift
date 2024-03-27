//
//  ContentView.swift
//  Accountabilibuddy
//
//  Created by Avery Neuner on 3/7/24.
//

import SwiftUI

//this will be a welcome page!! eventually 

struct ContentView: View {
    var body: some View {
        //basically just an example of a home bar
        //TODO: MS. GREYSON QUESTION, WHY ISN'T THIS GIVING ME ANYTHING 
        TabView{
            ContentView()
                .tabItem{
                    Label("Home", systemImage: "house")
                }
            ToDoList()
                .tabItem{
                    Label("To Dos", systemImage: "checkmark.square")
                }
            ToDoList() //TODO: this is filler, it becomes something else
                .tabItem{
                    Label("Dealines", systemImage: "sparkles")
                }
            ToDoList()//TODO: this is filler, it goes somewhere else
                .tabItem{
                    Label("Pet Store", systemImage: "cat.circle")
                }
            Text("Hello World")
        }
    }
}
           // ToDo(isDone: false, taskName: "laundry",remindSchedule: "tomorrow", urgency: 3)
    

#Preview {
    ContentView()
        .environment(UserData())
}
