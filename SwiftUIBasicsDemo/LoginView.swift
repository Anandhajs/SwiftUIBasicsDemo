//
//  LoginView.swift
//  SwiftUIBasicsDemo
//
//  Created by Apple on 01/10/22.
//

import SwiftUI


struct LoginView: View {

@State private var name: String = ""
@State private var password: String = ""
let verticalPaddingForForm = 30.0

var body: some View {
    ZStack {
        RadialGradient(gradient: Gradient(colors: [.blue, .green]), center: .center, startRadius: 100, endRadius: 450)
        VStack(spacing: CGFloat(verticalPaddingForForm)) {
            Text("Welcome To SwiftUI")
                .font(.title)
                .foregroundColor(Color.white)
            HStack {
                Image(systemName: "person")
                    .foregroundColor(.secondary)
                TextField("Enter your name", text: $name)
                    .foregroundColor(Color.black)
            }
            .padding()
            .background(Color.white)
            .cornerRadius(10)

            HStack {
                Image(systemName: "key")
                    .resizable()
                    .frame(width: 13.0, height: 16.0) .foregroundColor(.secondary)
                SecureField("Enter password", text: $password)
                    .foregroundColor(Color.black)

            }
            .padding()
            .background(Color.white)
            .cornerRadius(10)

            Button(action: {
                print("Name:  \(name)")
            }) {
                Text("Login")
                    .padding()

            }
            .background(Color.purple)
            .foregroundColor(Color.white)
            .cornerRadius(30)

        }.padding(.horizontal, CGFloat(verticalPaddingForForm))

    }
}
}

