//
//  RoomInfoView.swift
//  AudioSync
//
//  Created by Samhith Kakarla on 11/8/22.
//

import SwiftUI

struct RoomInfoView: View {
    let room: Room;
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(room.hostName)
                    .font(.headline)
                    .accessibilityAddTraits(.isHeader)
                    .foregroundColor(Color.black)
                Spacer();
                Label("\(room.numMembers)", systemImage: "person")
                    .accessibilityLabel("\(room.numMembers) members")
                    .foregroundColor(Color.black);
                Button(action: {}) {
                    ZStack(alignment: .center) {
                        Rectangle()
                            .fill(Color.red)
                        Label("Sync!", systemImage: "mic.fill")
                            .accessibilityLabel("Sync!")
                            .foregroundColor(Color.white)
                            .font(.caption)
                    }
                    .frame(width: 70, height: 30)
                };
            }.font(.caption)
        }
        .foregroundColor(Color.gray.opacity(0.6))
    }
}

struct RoomInfoView_Previews: PreviewProvider {
    static var room = Room.sampleRooms[0];
    static var previews: some View {
        RoomInfoView(room: room)
    }
}
