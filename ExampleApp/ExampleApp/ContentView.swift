//
//  ContentView.swift
//  ExampleApp
//
//  Created by Анас Бен Мустафа on 2/21/22.
//

import SwiftUI
import Logger

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
            .onAppear {
                Logger.logEvent("Text appeared.", type: .message)
                Logger.logEvent("Text appeared.", type: .warning)
                Logger.logEvent("Text appeared.", type: .error)
            }
    }
}
