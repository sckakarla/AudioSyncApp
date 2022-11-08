//
//  Member.swift
//  AudioSync
//
//  Created by Samhith Kakarla on 11/7/22.
//

import Foundation

struct Member: Identifiable {
    let id: UUID;
    var memberName: String;
    // Other stream related info TBD
    
    init(id: UUID = UUID(), memberName: String) {
        self.id = id;
        self.memberName = memberName;
    }
}

extension Member {
    static let sampleMembers: [Member] = [
        Member(memberName: "Sam"),
        Member(memberName: "Jim"),
        Member(memberName: "Micheal"),
        Member(memberName: "Pam")
    ];
}
