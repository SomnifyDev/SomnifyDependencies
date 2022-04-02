import Foundation

public enum StringFormatType: String {
    case days = "dd.MM"
    case monthYear = "MMMM yyyy"
    case time = "HH:mm"
}

public extension Date {

    var startOfDay: Date {
        return Calendar.current.startOfDay(for: self)
    }

    var startOfMonth: Date {
        let calendar = Calendar(identifier: .gregorian)
        let components = calendar.dateComponents([.year, .month], from: self)
        return calendar.date(from: components)!
    }

    var endOfDay: Date {
        var components = DateComponents()
        components.day = 1
        components.second = -1
        return Calendar.current.date(byAdding: components, to: self.startOfDay)!
    }

    var endOfMonth: Date {
        var components = DateComponents()
        components.month = 1
        components.second = -1
        return Calendar(identifier: .gregorian).date(byAdding: components, to: self.startOfMonth)!
    }

    var twoWeeksBefore: Date {
        var components = DateComponents()
        components.day = -14
        return Calendar.current.date(byAdding: components, to: self)!
    }

    var monthBefore: Date {
        var components = DateComponents()
        components.month = -1
        return Calendar.current.date(byAdding: components, to: self)!
    }

    func isToday() -> Bool {
        return self.startOfDay == Date().startOfDay
    }

    func years(from date: Date) -> Int {
        return Calendar.current.dateComponents([.year], from: date, to: self).year ?? 0
    }

    /// Returns the amount of months from another date
    func months(from date: Date) -> Int {
        return Calendar.current.dateComponents([.month], from: date, to: self).month ?? 0
    }

    /// Returns the amount of weeks from another date
    func weeks(from date: Date) -> Int {
        return Calendar.current.dateComponents([.weekOfMonth], from: date, to: self).weekOfMonth ?? 0
    }

    /// Returns the amount of days from another date
    func days(from date: Date) -> Int {
        return Calendar.current.dateComponents([.day], from: date, to: self).day ?? 0
    }

    /// Returns the amount of hours from another date
    func hours(from date: Date) -> Int {
        return Calendar.current.dateComponents([.hour], from: date, to: self).hour ?? 0
    }

    /// Returns the amount of minutes from another date
    func minutes(from date: Date) -> Int {
        return Calendar.current.dateComponents([.minute], from: date, to: self).minute ?? 0
    }

    /// Returns the amount of seconds from another date
    func seconds(from date: Date) -> Int {
        return Calendar.current.dateComponents([.second], from: date, to: self).second ?? 0
    }

    func getMonthString() -> String {
        let df = DateFormatter()
        df.setLocalizedDateFormatFromTemplate("MMM")
        return df.string(from: self)
    }

    func getYearString() -> String {
        let df = DateFormatter()
        df.setLocalizedDateFormatFromTemplate("YYYY")
        return df.string(from: self)
    }

    /// Returns date in some special string format
    func getFormattedDate(format: StringFormatType) -> String {
        let dateformat = DateFormatter()
        dateformat.dateFormat = format.rawValue
        return dateformat.string(from: self)
    }
    
}
