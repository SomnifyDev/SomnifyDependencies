import Foundation

// MARK: - Common

public extension Array {

    static func empty() -> Self {
        return []
    }

}

// MARK: - FloatingPoint

public extension Array where Element: FloatingPoint {

    func sum() -> Element {
        return self.reduce(0, +)
    }

    func meanValue() -> Element {
        return self.sum() / Element(self.count)
    }

    func standardDeviation() -> Element {
        let mean = self.meanValue()
        let v = self.reduce(0, { $0 + ($1-mean)*($1-mean) })
        return sqrt(v / (Element(self.count) - 1))
    }

}
