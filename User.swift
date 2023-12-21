//
//  User.swift
//  RoboAdviser
//
import Foundation

struct User: Codable, Identifiable {
    var id: UUID
    var name: String
    var email: String
    var password: String
    var score: Int
    var capitol: Int

    
    
    init(id: UUID, name: String, email: String, password: String, score: Int, capitol: Int) {
        self.id = id
        self.name = name
        self.email = email
        self.password = password
        self.score = score
        self.capitol = capitol
    }
    
    init() {
        self.id = UUID()
        self.name = "Will Garvin"
        self.email = "will@gmail.com"
        self.password = "p"
        self.score = 0;
        self.capitol = 0;
    }
    
}
