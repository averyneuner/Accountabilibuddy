//
//  UserData.swift
//  Accountabilibuddy
//
//  Created by Avery Neuner on 3/11/24.
//

import Foundation


//This is a model of what user data might look like!! 

@Observable
class UserData{
    var toDos: [ToDo] = load("todo.json") //TODO: eventually we replace this with an empty json that will be populated by a user. these to do items will be saved to our
}

var toDos: [ToDo] = load("todo.json")
//houses a load method that grabs data from the JSON
//It is codable. It takes in a file name and returns T??
func load<T: Decodable>(_ filename: String) -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    } //grabs the file, if that doesn't work it gives a fatal error and stops loading

    do {
        data = try Data(contentsOf: file) //ask Ms. Greyson to EXPLAIN???
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
 

