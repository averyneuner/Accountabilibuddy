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
                .frame(width: 48, height: 48)
                .background(.green)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding(.vertical)
            
            VStack(alignment: .leading, spacing: 6) {
                Text("Sort Tasks")
                    .font(.subheadline)
                
            
            }
                
        }
    }
    
}

#Preview {
    SideMenuHeader()
        .environment(UserData())
}
