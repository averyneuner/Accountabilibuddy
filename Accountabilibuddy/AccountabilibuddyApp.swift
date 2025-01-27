//
//  AccountabilibuddyApp.swift
//  Accountabilibuddy
//
//  Created by Avery Neuner on 3/7/24.
//

import SwiftUI

@main
struct AccountabilibuddyApp: App {
    @State private var userData = UserData()
    //NOTE: ms. greyson made me add this
    var body: some Scene {
        WindowGroup {
            Home(category: ToDoCategories.all)
                .environment(userData)
        }
    }
}
