//
//  FriendList.swift
//  FriendsFavoriteMovies
//
//  Created by Jeremy Kim on 5/12/25.
//

import SwiftUI
import SwiftData

struct FriendList: View {
    @Query(sort: \Friend.name) private var friends: [Friend]
    @Environment(\.modelContext) private var context
    
    var body: some View {
        List {
            ForEach(friends) { friend in
                Text(friend.name)
            }
        }
        .task {
            if friends.isEmpty {
                context.insert(Friend(name: "Jeremy"))
                context.insert(Friend(name: "Jedo"))
            }
        }
    }
}

#Preview {
    FriendList()
        .modelContainer(for: Friend.self, inMemory: true)
}
