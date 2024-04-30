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
        
            Text("Hello World")
        
        }
    }

           // ToDo(isDone: false, taskName: "laundry",remindSchedule: "tomorrow", urgency: 3)
    

#Preview {
    ContentView()
        .environment(UserData())
}
