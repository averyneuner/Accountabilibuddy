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
            Image(systemName: "person.circle.fill")
                .imageScale(.large)
                .foregroundStyle(.white)
                .frame(width: 48, height: 48)
                .background(.blue)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding(.vertical)
            
            VStack(alignment: .leading, spacing: 6) {
                Text("Avery Neuner")
                    .font(.subheadline)
                
                Text("test@gmail.com")
                    .font(.footnote)
                    .tint(.gray)
            }
                
        }
    }
    
}

#Preview {
    SideMenuHeader()
}
