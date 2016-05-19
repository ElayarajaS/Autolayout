//
//  User.swift
//  Autolayout
//
//  Created by Apple3 on 12/05/16.
//  Copyright © 2016 Apple3. All rights reserved.
//

import Foundation

struct User {
    let name: String
    let company: String
    let logIn: String
    let password: String
    
    static func login(login: String, password: String) -> User? {
        if let user = database[login] {
            if user.password == password {
                return user
            }
        }
        return nil
    }
    
    static let database: Dictionary<String, User> = {
        var theDatabase = Dictionary<String, User>()
        for user in [
            User(name: "John Appleseed", company: "Apple", logIn: "japple", password: "foo"),
            User(name: "Madison Bumgarner", company: "World Champion", logIn: "San Francisco Giants", password: "foo"),
            User(name: "John Hennessy", company: "Stanford", logIn: "hennessy", password: "foo"),
            User(name: "Bad Guy", company: "Criminals, Inc.", logIn: "baddie", password: "foo")
            ] {
                theDatabase[user.logIn] = user
        }
        return theDatabase
        }()
    }
    
















    
    
    
