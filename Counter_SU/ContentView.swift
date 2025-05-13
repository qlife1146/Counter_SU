//
//  ContentView.swift
//  Counter_SU
//
//  Created by Luca Park on 5/13/25.
//

import SwiftUI

struct ContentView: View {
    let spacing: CGFloat = 60.0
    
    
    @State private var counterValue: Int = 0 {
        didSet {}
    }

    var body: some View {
        GeometryReader { geo in ZStack {
            Text("\(counterValue)")
                .font(.system(size: 33))
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .multilineTextAlignment(.center)
            
            HStack(spacing: spacing) {
                Button(action: {
                    if counterValue > -10 {
                        counterValue -= 1
                    }                }) {
                    Text("-")
                        .font(.system(size: 25))
                }
                .frame(width: 50, height: 50)
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(8)


                Button(action: {
                    counterValue = 0
                }) {
                    Text("0")
                        .font(.system(size: 25))
                }
                .frame(width: 50, height: 50)
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(8)


                Button(action: {
                    if counterValue < 10 {
                        counterValue += 1
                    }
                }) {
                    Text("+")
                        .font(.system(size: 25))
                }
                .frame(width: 50, height: 50)
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(8)
            }
            .position(x: geo.size.width / 2,
                      y: geo.size.height - geo.safeAreaInsets.bottom - 50)

        }}
    }
}

#Preview {
    ContentView()
}
