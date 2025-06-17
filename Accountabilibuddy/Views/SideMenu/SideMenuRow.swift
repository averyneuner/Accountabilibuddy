//
//  SideMenuRow.swift
//  Accountabilibuddy
//
//  Created by Avery Neuner on 3/28/24.
//

import Foundation
import SwiftUI

struct SideMenuRow: View{
@State var category: ToDoCategories

    var body: some View {

        HStack {
            Image(systemName: category.imageName)
                .imageScale(.small)
                .foregroundColor(Color.green.opacity(0.7)) // Gentle green for icon
            
            Text(category.title)
                .font(.subheadline)
                .foregroundColor(Color.green.opacity(0.7)) // Gentle green for text
            
            Spacer()
        }
        .padding(.leading)
        .frame(height: 44)
        
    }
}

 #Preview {
     SideMenuRow(category: ToDoCategories.social)
         .environment(UserData())
 }
 
