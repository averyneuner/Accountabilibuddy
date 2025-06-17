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
        ZStack {
            Color.pink.opacity(0.2) // Gentle pink background
                .ignoresSafeArea()

            VStack {
                Text("Welcome to Accountabilibuddy!")
                    .foregroundColor(.green.opacity(0.6)) // Gentle green text
            }
        }
    }

           // ToDo(isDone: false, taskName: "laundry",remindSchedule: "tomorrow", urgency: 3)
    

#Preview {
    ContentView()
        .environment(UserData())
}
