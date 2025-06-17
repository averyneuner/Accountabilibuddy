//
//  SideMenuHeader.swift
//  Accountabilibuddy
//
//  Created by Avery Neuner on 3/27/24.
//

import Foundation
import SwiftUI

struct SideMenuHeader: View {
    
    var body: some View {
        HStack{
            Image(systemName: "checkmark.seal.fill")
                .imageScale(.large)
                .foregroundStyle(.white)
                .frame(width: 48, height: 48) // Use a gentle green color
                .background(Color(red: 0.6, green: 0.8, blue: 0.6)) // Example of a gentle green
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding(.vertical)
            
            VStack(alignment: .leading, spacing: 6) {
                Text("Sort Tasks")
                    .font(.subheadline)
                    .foregroundColor(Color(red: 0.4, green: 0.6, blue: 0.4)) // Example of a gentle green
                
            
            }
                
        }
    }
    
}

#Preview {
    SideMenuHeader()
        .environment(UserData())
}
