//
//  ContentView.swift
//  VacationInVegas
//
//  Created by Vinod Nayak Banavath on 10/07/24.
//

import SwiftUI

struct Symbols: View {

    @State private var  shouldIBounce = false
    @State private var shouldIRotate = false

    var body: some View {
        VStack {
            Image(systemName: "globe")
                .font(.largeTitle)
                .imageScale(.large)
                .foregroundStyle(.tint)
                .symbolEffect(.pulse)

            Image(systemName: "airplane")
                .font(.largeTitle)
                .imageScale(.large)
                .foregroundStyle(.teal)
                .symbolEffect(.wiggle)

            Image(systemName: "wifi")
                .font(.largeTitle)
                .imageScale(.large)
                .foregroundStyle(.purple)
                .symbolEffect(.variableColor.reversing)

            Image(systemName: "person.crop.circle.badge.plus")
                .font(.largeTitle)
                .imageScale(.large)
                .foregroundStyle(.tint)
                .symbolRenderingMode(.multicolor)
                .symbolEffect(.bounce, value: shouldIBounce)
                .onTapGesture {
                    shouldIBounce.toggle()
                }

            Image(systemName: "cloud.sun.rain.fill")
                .font(.largeTitle)
                .imageScale(.large)
                .foregroundStyle(.gray, .yellow, .mint)
                .symbolEffect(.pulse, value: shouldIBounce)
                .onTapGesture {
                    shouldIBounce.toggle()
                }

            Image(systemName: "arrow.counterclockwise.square")
                .font(.largeTitle)
                .imageScale(.large)
                .foregroundStyle(.blue.mix(with: .red, by: 0.25))
                .symbolEffect(.rotate, value: shouldIRotate)
                .onTapGesture {
                    shouldIRotate.toggle()
                }

            Image(systemName: "sun.max.fill")
                .font(.largeTitle)
                .imageScale(.large)
                .foregroundStyle(.yellow)
                .symbolEffect(.breathe)
        }
        .padding()
    }
}

#Preview {
    Symbols()
}
