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
    //NOTE: ms. greyson made me add thisgjgjgjh
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(userData)
        }
    }
}
