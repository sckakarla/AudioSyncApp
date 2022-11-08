//
//  SyncView.swift
//  AudioSync
//
//  Created by Samhith Kakarla on 11/7/22.
//

import SwiftUI

struct SyncView: View {
    var body: some View {
        VStack {
            Text("Audio Sync Logo")
                .foregroundColor(Color.black)
                .fontWeight(.bold)
                .padding()
            Text("Sync your audio with people near you...")
                .fontWeight(.bold)
                .foregroundColor(Color.black)
                .padding()
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
        .padding()
    }
}

struct SyncView_Previews: PreviewProvider {
    static var previews: some View {
        SyncView()
    }
}
