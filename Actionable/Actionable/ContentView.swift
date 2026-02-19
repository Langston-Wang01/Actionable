//
//  ContentView.swift
//  Actionable
//
//  Created by Dhanush Eashwar on 2/19/26.
//

import SwiftUI

struct ContentView: View {
    @State private var count = 0

    var body: some View {
        VStack(spacing: 24) {
            Text("Counter")
                .font(.largeTitle.bold())

            Text("\(count)")
                .font(.system(size: 64, weight: .semibold, design: .rounded))
                .monospacedDigit()

            HStack(spacing: 16) {
                Button("-1") {
                    count -= 1
                }
                .buttonStyle(.borderedProminent)

                Button("+1") {
                    count += 1
                }
                .buttonStyle(.borderedProminent)
            }

            Button("Reset") {
                count = 0
            }
            .buttonStyle(.bordered)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
