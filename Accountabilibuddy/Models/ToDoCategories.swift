//
//  ToDoCategories.swift
//  Accountabilibuddy
//
//  Created by Avery Neuner on 3/28/24.
//

import Foundation

enum ToDoCategories: Int, CaseIterable{
    case all
    case general
    case work
    case social
    case creative
    
    var title: String {
        switch self{
        case .all: return "All"
        case .general: return "General"
        case .work: return "Work"
        case .social: return "Social"
        case .creative: return "Creative"
        }
    }
    
    var imageName: String {
        switch self{
        case .all: return "moonphase.new.moon"
        case .general: return "checkmark.seal"
        case .work: return "list.number"
        case .social: return "party.popper"
        case .creative: return "sparkles"
        }
    }
    
    var index: Int{
        switch self{
        case .all: return 0
        case .general: return 1
        case .work: return 2
        case .social: return 3
        case .creative: return 4
        }
    }
    
}

extension ToDoCategories: Identifiable{
    var id: Int {
        return self.rawValue
    }
    
}
