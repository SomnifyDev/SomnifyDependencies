import SwiftUI
import Logger
import CommonExtensions

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
            .onAppear {
                Logger.logEvent("Text appeared.", type: .info)
                Logger.logEvent("Text appeared.", type: .success)
                Logger.logEvent("Text appeared.", type: .warning)
                Logger.logEvent("Text appeared.", type: .error)
            }
    }
}
