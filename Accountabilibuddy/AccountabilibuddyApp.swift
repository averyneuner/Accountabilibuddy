//
//  AccountabilibuddyApp.swift
//  Accountabilibuddy
//
//  Created by Avery Neuner on 3/7/24.
//

import UserNotifications
import SwiftUI

@main
struct AccountabilibuddyApp: App {
    @State private var userData = UserData()
    //NOTE: ms. greyson made me add this
    
    init() {
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) { granted, error in
            if granted {
                print("Notification permissions granted.")
            } else {
                print("Notification permissions denied.")
            }
        }
    }
    var body: some Scene {
        WindowGroup {
            Home(category: ToDoCategories.all)
                .environment(userData)
        }
    }
}
