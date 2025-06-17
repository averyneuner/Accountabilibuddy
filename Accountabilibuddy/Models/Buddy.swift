swift
//
//  Buddy.swift
//  Accountabilibuddy
//
//  Created by Your Name on Date.
//

import Foundation

struct Buddy: Identifiable, Codable {
    let id: UUID
    var name: String
    var type: String
    var treatCount: Int = 0

    init(id: UUID = UUID(), name: String, type: String, treatCount: Int = 0) {
        self.id = id
        self.name = name
        self.type = type
        self.treatCount = treatCount
    }
}