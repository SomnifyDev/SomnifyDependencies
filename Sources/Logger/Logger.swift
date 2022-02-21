import Foundation

// MARK: - Public types

public enum LogType {
    case message
    case warning
    case error
}

// MARK: - Logger

public final class Logger {

    // MARK: - Public methods

    public static func logEvent(
        _ message: String,
        type: LogType,
        file: StaticString = #file,
        function: StaticString = #function,
        line: UInt = #line
    ) {
        switch type {
        case .message:
            logMessage(message, file: file, function: function, line: line)
        case .warning:
            logWarning(message, file: file, function: function, line: line)
        case .error:
            logError(message, file: file, function: function, line: line)
        }
    }

    // MARK: - Private methods

    private static func logMessage(
        _ message: String,
        file: StaticString,
        function: StaticString,
        line: UInt
    ) {
        print("\n🟢 Logging message.\nAt file: \(file)\nIn function: \(function).\nAt line: \(line).\nLog time: \(Date()).\nLog message: \(message)\n")
    }

    private static func logWarning(
        _ message: String,
        file: StaticString,
        function: StaticString,
        line: UInt
    ) {
        print("\n🟡 Logging warning.\nAt file: \(file)\nIn function: \(function).\nAt line: \(line).\nLog time: \(Date()).\nLog message: \(message)\n")
    }

    private static func logError(
        _ message: String,
        file: StaticString,
        function: StaticString,
        line: UInt
    ) {
        print("\n🔴 Logging error.\nAt file: \(file)\nIn function: \(function).\nAt line: \(line).\nLog time: \(Date()).\nLog message: \(message)\n")
    }

}
