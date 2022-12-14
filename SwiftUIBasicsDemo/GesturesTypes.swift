//
//  GesturesTypes.swift
//  SwiftUIBasicsDemo
//
//  Created by Apple on 01/10/22.
//

import SwiftUI


struct GesturesView: View {
    @GestureState private var isPressed = false

    @GestureState private var dragOffset = CGSize.zero
    @State private var position = CGSize.zero

    var body: some View {
// MARK: - LongPressGesture and Tragable gestures
        Image(systemName: "star.circle.fill")
            .font(.system(size: 100))
            .opacity(isPressed ? 0.5 : 1.0)
            .offset(x: position.width + dragOffset.width, y: position.height + dragOffset.height)
            .animation(.easeInOut, value: dragOffset)
            .foregroundColor(.green)
            .gesture(
                LongPressGesture(minimumDuration: 1.0)
                    .updating($isPressed, body: { (currentState, state, transaction) in
                        state = currentState
                    })
                    .sequenced(before: DragGesture())
                    .updating($dragOffset, body: { (value, state, transaction) in

                        switch value {
                        case .first(true):
                            print("Tapping")
                        case .second(true, let drag):
                            state = drag?.translation ?? .zero
                        default:
                            break
                        }
                    })
                    .onEnded({ (value) in

                        guard case .second(true, let drag?) = value else {
                            return
                        }

                        self.position.height += drag.translation.height
                        self.position.width += drag.translation.width
                    })
            )
            
    }

}
