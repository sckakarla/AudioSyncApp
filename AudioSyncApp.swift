//
//  AudioSyncApp.swift
//  AudioSync
//
//  Created by Samhith Kakarla on 11/3/22.
//

import SwiftUI

@main
struct AudioSyncApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                // Starting Screen
                SyncView(rooms: Room.sampleRooms)
            }
        }
    }
}
