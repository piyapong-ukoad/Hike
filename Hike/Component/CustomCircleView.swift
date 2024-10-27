//
//  CustomCircleView.swift
//  Hike
//
//  Created by Piyapong Ukoad on 3/9/2567 BE.
//

import SwiftUI

struct CustomCircleView: View {
    @State private var isAnimationGradient: Bool = false
    var body: some View {
        ZStack {
            Circle()
                .fill(
                    .linearGradient(colors: [.customIndigoMedium, .customSalmonLight], startPoint: isAnimationGradient ? .topLeading : .bottomLeading, endPoint: isAnimationGradient ? .bottomTrailing : .topTrailing)
                )
                .onAppear {
                    withAnimation(.linear(duration: 3.0).repeatForever(autoreverses: true)) {
                        isAnimationGradient.toggle()
                    }
                }
            MotionAnimationView()
        }
        .frame(width: 256, height: 256)
    }
}

#Preview {
    CustomCircleView()
}
