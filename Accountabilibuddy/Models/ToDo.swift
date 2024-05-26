//
//  ToDo.swift
//  Accountabilibuddy
//
//  Created by Avery Neuner on 3/7/24.
//

import Foundation
import SwiftUI

struct ToDo: Identifiable, Codable{
    //how to make this properly take arguments??
    let id: UUID
    var isDone: Bool
    var taskName: String
    var remindSchedule: String
    var urgency: Int //1 - 3 less to most
    var repeated: Bool
    var categoryIndex: Int //1-4 for general, work, social, creative
    
    var category: String{
        if self.categoryIndex == 1{
            return ToDoCategories.general.title
        }else if self.categoryIndex == 2{
           return ToDoCategories.work.title
        }else if self.categoryIndex == 3{
            return ToDoCategories.social.title
        }else if self.categoryIndex == 4{
          return ToDoCategories.creative.title
        }else{
            return "UNDEFINED"
        }
    }
    
    var imageName: String{
        if self.categoryIndex == 1{
            return ToDoCategories.general.imageName
        }else if self.categoryIndex == 2{
           return ToDoCategories.work.imageName
        }else if self.categoryIndex == 3{
            return ToDoCategories.social.imageName
        }else if self.categoryIndex == 4{
          return ToDoCategories.creative.imageName
        }else{
            return "UNDEFINED"
        }
    }
    
    var color: Color{
        if self.urgency == 1{
            return .green
        }else if self.urgency == 2{
            return .orange
        }else if self.urgency == 3{
            return .red
        }else{
            print("UNDEFINED COLOR")
            return .gray
        }
    }
    
    init(isDone: Bool, taskName: String, remindSchedule: String, urgency: Int, repeated: Bool, categoryIndex: Int) {
        self.id = UUID()
        self.isDone = isDone
        self.taskName = taskName
        self.remindSchedule = remindSchedule
        self.urgency = urgency
        self.repeated = repeated
        self.categoryIndex = categoryIndex
    }
    
}

