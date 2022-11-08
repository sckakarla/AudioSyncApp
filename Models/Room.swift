//
//  Room.swift
//  AudioSync
//
//  Created by Samhith Kakarla on 11/7/22.
//

import Foundation

struct Room: Identifiable {
    let id: UUID;
    var hostName: String;
    var members: [Member];
    var numMembers: Int;
    // Other stream related info
    
    init(id: UUID = UUID(), hostName: String, members: [Member], numMembers: Int) {
        self.id = id;
        self.hostName = hostName;
        self.members = members;
        self.numMembers = numMembers;
    }
}

extension Room {
    let sampleMembers: [Member] = [
        Member(memberName: "Pete"),
        Member(memberName: "Stanley"),
        Member(memberName: "Kevin"),
        Member(memberName: "Oscar"),
    ];
    static let sampleRooms: [Room] = [
        Room(hostName: "Sam", members: sampleMembers, numMembers: 3),
        Room(hostName: "Jim", members: sampleMembers, numMembers: 5),
        Room(hostName: "Dwight", members: sampleMembers, numMembers: 8),
        Room(hostName: "Micheal", members: sampleMembers, numMembers: 7),
    ];
}
