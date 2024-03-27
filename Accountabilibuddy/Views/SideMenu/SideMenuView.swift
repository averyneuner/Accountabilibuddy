//
//  SideMenuView.swift
//  Accountabilibuddy
//
//  Created by Avery Neuner on 3/26/24.
//

import Foundation
import SwiftUI

//this will be a welcome page!! eventually

struct SideMenuView: View {
    @Binding var isShowing: Bool
    
    var body: some View {
       //basically just an example of a home bar
        ZStack {
            if isShowing {
                Rectangle()
                    .opacity(0.3)
                    .ignoresSafeArea()
                    .onTapGesture { isShowing.toggle()}
                HStack{
                    VStack(alignment: .leading, spacing: 32){
                        SideMenuHeader()
                        
                        Spacer()
                    }
                    .padding()
                    .frame(width: 270, alignment: .leading)
                    .background(.white)
                    
                    Spacer()
                }
                
            }
        }
        .transition(.move(edge: .leading))
        .animation(.easeInOut, value: isShowing)
    }
}

#Preview {
    SideMenuView(isShowing: .constant(true))
}
