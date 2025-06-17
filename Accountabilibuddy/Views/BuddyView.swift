swift
//
//  BuddyView.swift
//  Accountabilibuddy
//
//  Created by [Your Name] on [Date].
//

import SwiftUI

struct BuddyView: View {
    @EnvironmentObject var userData: UserData

    var body: some View {
        VStack {
            // Placeholder buddy image
            Image(systemName: "cat.fill") // Cartoon orange striped cat
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                .foregroundColor(.orange) // Orange color for the cat

            Text("Treats: \(userData.buddy.treatCount)")
                .font(.title2)
                .foregroundColor(.gentleGreen) // Using the gentle green color
        }
        .padding()
        .background(Color.gentlePink.opacity(0.2)) // Subtle background
        .cornerRadius(10)
        .shadow(radius: 5)
    }
}

#Preview {
    BuddyView()
        .environmentObject(UserData()) // Provide a UserData environment object for preview
}