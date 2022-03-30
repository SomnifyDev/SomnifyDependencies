import Foundation

public extension DateInterval {

    func stringFromDateInterval(type: StringFormatType) -> String {
        return "\(start.getFormattedDate(format: type)) - \(end.getFormattedDate(format: type))"
    }
    
}
