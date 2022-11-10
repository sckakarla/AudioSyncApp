//
//  SyncView.swift
//  AudioSync
//
//  Created by Samhith Kakarla on 11/7/22.
//

import SwiftUI

struct SyncView: View {
    let rooms: [Room];
    
    var body: some View {
        @State private var showAudioView: Bool = false;
        
        VStack {
//            Text("Audio Sync Logo")
//                .foregroundColor(Color.black)
//                .fontWeight(.bold)
//                .padding()
            Text("Sync your audio with people near you...")
                .fontWeight(.bold)
                .foregroundColor(Color.black)
                .padding()
            List {
                ForEach(rooms) { room in
                    NavigationLink(destination: AudioView()) {
                        RoomInfoView(room: room)
                    }
                    .listRowBackground(Color.gray.opacity(0.1))
                }
            }
            
            NavigationLink(destination: AudioView(), isActive: $showAudioView) {
                Button(action: {}) {
                    ZStack(alignment: .center) {
                        Circle()
                            .fill(Color.red)
                        Text("Sync My Audio")
                            .foregroundColor(Color.white)
                            .fontWeight(.bold)
                    }
                    .frame(width: 100, height: 100)
                    .padding()
                }
            }
        }
        .padding()
        .navigationTitle("Home")
    }
}

struct SyncView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            SyncView(rooms: Room.sampleRooms);
        }
    }
}
