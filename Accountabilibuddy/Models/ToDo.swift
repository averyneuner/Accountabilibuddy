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
    var id: Int
    var isDone: Bool
    var taskName: String
    var remindSchedule: String
    var urgency: Int //1 - 3 less to most
    var repeated: Bool
    var reward: String
    
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
    
    init(id: Int, isDone: Bool, taskName: String, remindSchedule: String, urgency: Int, repeated: Bool, reward: String) {
        self.id = id
        self.isDone = isDone
        self.taskName = taskName
        self.remindSchedule = remindSchedule
        self.urgency = urgency
        self.repeated = repeated
        self.reward = reward
    }
}

