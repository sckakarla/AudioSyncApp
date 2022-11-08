//
//  AudioView.swift
//  AudioSync
//
//  Created by Samhith Kakarla on 11/7/22.
//

import SwiftUI

struct AudioView: View {
    var body: some View {
        VStack {
            Text("Audio Sync Logo")
            Text("Sync your audio with people near you...")
                .padding(50)
        }
    }
}

struct AudioView_Previews: PreviewProvider {
    static var previews: some View {
        AudioView()
    }
}
