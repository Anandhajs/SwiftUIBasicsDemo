//
//  ContentView.swift
//  SwiftUIBasicsDemo
//
//  Created by Apple on 01/10/22.
//

import SwiftUI

struct ContentView: View {
    @State private var isPressed = false


    var body: some View {


        //  MARK:- Gestures with animation
//            Image(systemName: "star.circle.fill")
//            .font(.system(size: 200))
//            .scaleEffect(isPressed ? 0.5 : 1.0)
//            .animation(.spring(response: 10.0, dampingFraction: 0.0, blendDuration: 0.0), value: isPressed)
//                .foregroundColor(.green)
//                .gesture(
//                    TapGesture()
//                        .onEnded({
//                            self.isPressed.toggle()
//                        })
//                )

        // MARK: - Text 3D Effect
//Text("**This is a swiftUI demo text** This is a swiftUI demo text This is a swiftUI demo text This is a swiftUI demo text This is a swiftUI demo text This is a swiftUI demo text This is a swiftUI demo text *This is a swiftUI demo text* This is a swiftUI demo text *This is a swiftUI demo text* **This is a swiftUI demo text** ")
//            .lineSpacing(10)
//            .rotation3DEffect(.degrees(60.0), axis: (x: 1, y: 0.0, z: 0.0))
//            .shadow(color: .gray, radius: 2, x: 0, y: 15)

        //MARK: - Markdown text
//        Text("**This is a swiftUI demo text**. *Using Markdown text property.* reference [Click here](https://www.google.com) go to google.com")
//            .font(.title)


        Button(action: {
            print("Hello World tapped!")
        })
        {
            Text("Hello World")
                .fontWeight(.bold)
                .font(.title)
                .padding(.all)
                .background(Color(hue: 0.582, saturation: 0.929, brightness: 0.869))
                .foregroundColor(.white)
                .cornerRadius(40)
                .padding(.all, 10)
                .border(.blue, width: 5)
        }
    }
}


        // MARK: -  List Showing

//        List {
//            AppView(title: "SwiftUI", details: "iOS, macOS, and watchOS")
//            AppView(title: "Android Studio", details: "Android")
//            AppView(title: "React Native", details: "Android and iOS")
//            AppView(title: "Flutter", details: "Android, iOS, and the web")
//            AppView(title: "Xamarin", details: "Android and iOS")
//        }
//    }
//}
//
//struct AppView: View {
//    var title: String
//    var details: String
//    var body: some View {
//        HStack {
//            Image(systemName: "plus")
//                .resizable()
//                .frame(width: 30, height: 30)
//                .foregroundColor(.black)
//                .background(.teal)
//                .cornerRadius(10)
//
//            VStack(alignment: .center){
//                Text(title)
//                    .font(.title)
//                    .italic()
//                Text(details)
//                    .font(.subheadline)
//                    .foregroundColor(.secondary)
//            }
//
//        }
//    }
//}

