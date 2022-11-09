//
//  AudioContainerView.swift
//  AudioSync
//
//  Created by Samhith Kakarla on 11/8/22.
//

import SwiftUI

struct AudioContainerView: View {
    var body: some View {
        ZStack(alignment: .center) {
            Rectangle()
                .fill(Color.red.opacity(0.5));
            Text("placeholder for audio stuff");
        }
        .frame(width: 250, height: 300);
    }
}

struct AudioContainerView_Previews: PreviewProvider {
    static var previews: some View {
        AudioContainerView()
    }
}
