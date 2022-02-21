import Foundation

// MARK: - Public types

public enum LogType {
    case info
    case success
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
        case .info:
            logInfo(message, file: file, function: function, line: line)
        case .success:
            logSuccess(message, file: file, function: function, line: line)
        case .warning:
            logWarning(message, file: file, function: function, line: line)
        case .error:
            logError(message, file: file, function: function, line: line)
        }
    }

    // MARK: - Private methods

    private static func logInfo(
        _ message: String,
        file: StaticString,
        function: StaticString,
        line: UInt
    ) {
        print("\n⚪️ LOGGING INFO\nLog message: \(message)\nAt file: \(file)\nIn function: \(function).\nAt line: \(line).\nLog time: \(Date()).\n")
    }

    private static func logSuccess(
        _ message: String,
        file: StaticString,
        function: StaticString,
        line: UInt
    ) {
        print("\n🟢 LOGGING SUCCESS\nLog message: \(message)\nAt file: \(file)\nIn function: \(function).\nAt line: \(line).\nLog time: \(Date()).\n")
    }

    private static func logWarning(
        _ message: String,
        file: StaticString,
        function: StaticString,
        line: UInt
    ) {
        print("\n🟡 LOGGING WARNING\nLog message: \(message)\nAt file: \(file)\nIn function: \(function).\nAt line: \(line).\nLog time: \(Date()).\n")
    }

    private static func logError(
        _ message: String,
        file: StaticString,
        function: StaticString,
        line: UInt
    ) {
        print("\n🔴 LOGGING ERROR\nLog message: \(message)\nAt file: \(file)\nIn function: \(function).\nAt line: \(line).\nLog time: \(Date()).\n")
    }

}
