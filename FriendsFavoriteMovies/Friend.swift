//
//  Friend.swift
//  FriendsFavoriteMovies
//
//  Created by Jeremy Kim on 5/12/25.
//

import Foundation
import SwiftData

@Model
class Friend {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}
