//
//  utils.swift
//  psychbase-patientapp
//
//  Created by Linton Charles on 28/8/2024.
//
import SwiftUI

class ActionPlanForm: CustomStringConvertible {
    private var _selectedSituations: [String] = []
    private var _selectedMoods: [String] = []
    private var _thoughtTxt: String = ""
    private var _selectedDistortions: [String] = []
    private var _evidenceForTxt: String = ""
    private var _evidenceAgainstTxt: String = ""
    private var _balancedThoughtTxt: String = ""
    private var _outcomeRating: String = ""

    var selectedSituations: [String] {
        get { return _selectedSituations }
        set { _selectedSituations = newValue }
    }

    var selectedMoods: [String] {
        get { return _selectedMoods }
        set { _selectedMoods = newValue }
    }

    var thoughtTxt: String {
        get { return _thoughtTxt }
        set { _thoughtTxt = newValue }
    }

    var selectedDistortions: [String] {
        get { return _selectedDistortions }
        set { _selectedDistortions = newValue }
    }

    var evidenceForTxt: String {
        get { return _evidenceForTxt }
        set { _evidenceForTxt = newValue }
    }

    var evidenceAgainstTxt: String {
        get { return _evidenceAgainstTxt }
        set { _evidenceAgainstTxt = newValue }
    }

    var balancedThoughtTxt: String {
        get { return _balancedThoughtTxt }
        set { _balancedThoughtTxt = newValue }
    }

    var outcomeRating: String {
        get { return _outcomeRating }
        set { _outcomeRating = newValue }
    }
    
    var description: String {
        return """
            Selected Situations: \(_selectedSituations)
            Selected Moods: \(_selectedMoods)
            Thought Text: \(_thoughtTxt)
            Selected Distortions: \(_selectedDistortions)
            Evidence For: \(_evidenceForTxt)
            Evidence Against: \(_evidenceAgainstTxt)
            Balanced Thought: \(_balancedThoughtTxt)
            Outcome Rating: \(_outcomeRating)
            """
    }
}


extension View {
    /// Applies the given transform if the given condition evaluates to `true`.
    /// - Parameters:
    ///   - condition: The condition to evaluate.
    ///   - transform: The transform to apply to the source `View`.
    /// - Returns: Either the original `View` or the modified `View` if the condition is `true`.
    @ViewBuilder func `if`<Content: View>(_ condition: Bool, transform: (Self) -> Content) -> some View {
        if condition {
            transform(self)
        } else {
            self
        }
    }
}

extension String {

    var length: Int {
        return count
    }

    subscript (i: Int) -> String {
        return self[i ..< i + 1]
    }

    func substring(fromIndex: Int) -> String {
        return self[min(fromIndex, length) ..< length]
    }

    func substring(toIndex: Int) -> String {
        return self[0 ..< max(0, toIndex)]
    }

    subscript (r: Range<Int>) -> String {
        let range = Range(uncheckedBounds: (lower: max(0, min(length, r.lowerBound)),
                                            upper: min(length, max(0, r.upperBound))))
        let start = index(startIndex, offsetBy: range.lowerBound)
        let end = index(start, offsetBy: range.upperBound - range.lowerBound)
        return String(self[start ..< end])
    }
}
