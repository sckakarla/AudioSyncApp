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
            Text("(Current person)'s audio:")
                .font(.headline);
            AudioContainerView()
                .padding();
            Button(action: {}) {
                ZStack(alignment: .center) {
                    Circle()
                        .fill(Color.red)
                    Text("UnSync")
                        .foregroundColor(Color.white)
                        .fontWeight(.bold)
                }
                .frame(width: 80, height: 80)
                .padding()
            }
        }
        .padding()
    }
}

struct AudioView_Previews: PreviewProvider {
    static var previews: some View {
        AudioView()
    }
}
