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
            
            Text(category.title)
                .font(.subheadline)
            
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
 
