//
//  Clamped.swift
//
//
//  Created by Jun Meng on 4/9/2022.
//

import Foundation

// MARK: - Clamped

@propertyWrapper
struct Clamped<Value: Comparable> {
    // MARK: Lifecycle

    fileprivate init(wrappedValue: Value, minVal: Value?, maxVal: Value?) {
        if let minVal, let maxVal {
            precondition(minVal <= maxVal, "Min should <= than Max")
        }
        minValue = minVal
        maxValue = maxVal

        adjustedValue = adjust(value: wrappedValue, min: minVal, max: maxVal)
        _wrappedValue = wrappedValue
    }

    // MARK: Internal

    var wrappedValue: Value {
        get {
            return adjust(value: _wrappedValue, min: minValue, max: maxValue)
        }
        set {
            _wrappedValue = newValue
        }
    }

    // MARK: Private

    private let minValue: Value?
    private let maxValue: Value?
    private var adjustedValue: Value
    private var _wrappedValue: Value
}

private func adjust<Value: Comparable>(value: Value, min: Value?, max: Value?) -> Value {
    if let min, let max {
        precondition(min <= max, "Min should <= than Max")
    }

    var adjustedWrappedValue = value

    if let min {
        adjustedWrappedValue = Swift.max(min, adjustedWrappedValue)
    }

    if let max {
        adjustedWrappedValue = Swift.min(max, adjustedWrappedValue)
    }

    return adjustedWrappedValue
}

extension Clamped {
    init(wrappedValue: Value, min: Value, max: Value) {
        self.init(wrappedValue: wrappedValue, minVal: min, maxVal: max)
    }

    init(wrappedValue: Value, min: Value) {
        self.init(wrappedValue: wrappedValue, minVal: min, maxVal: nil)
    }

    init(wrappedValue: Value, max: Value) {
        self.init(wrappedValue: wrappedValue, minVal: nil, maxVal: max)
    }

    init(wrappedValue: Value, _ range: ClosedRange<Value>) {
        self.init(wrappedValue: wrappedValue, minVal: range.lowerBound, maxVal: range.upperBound)
    }

    init(wrappedValue: Value, _ range: PartialRangeFrom<Value>) {
        self.init(wrappedValue: wrappedValue, min: range.lowerBound)
    }

    init(wrappedValue: Value, _ range: PartialRangeThrough<Value>) {
        self.init(wrappedValue: wrappedValue, max: range.upperBound)
    }
}

// MARK: - Test

struct Test {
//    @Clamped( min: 0, max: 10)
    var a: Float

    func doSomeTest(@Clamped(max: 12) x: Int)
    {}
}

// MARK: - NewClamped

@propertyWrapper
struct NewClamped<Value> {
    var wrappedValue: Value

    var min: Value
    var max: Value
}
