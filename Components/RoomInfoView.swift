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
                Button(action: {}) {
                    ZStack(alignment: .center) {
                        Circle()
                            .fill(Color.red)
                        Image(systemName: "mic.fill")
                            .foregroundColor(Color.white)
                    }
                    .frame(width: 70, height: 30)
                };
            }.font(.caption)
        }
    }
}

struct RoomInfoView_Previews: PreviewProvider {
    static var room = Room.sampleRooms[0];
    static var previews: some View {
        RoomInfoView(room: room)
    }
}
