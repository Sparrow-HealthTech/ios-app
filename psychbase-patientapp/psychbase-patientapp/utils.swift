//
//  utils.swift
//  psychbase-patientapp
//
//  Created by Linton Charles on 28/8/2024.
//
import SwiftUI

enum moduleType {
    case actionPlan
    case assessment
}

class ModuleTileData: ObservableObject {
    let type: moduleType
    let tileHeading: String
    let tileSubtitle: String
    let tilePicture: String
    let moduleHeading: String
    let moduleSubtitle: String
    var buttonLabel: String
    var isButtonDisabled: Bool
    
    init(type: moduleType) {
        self.type = type
        if self.type == .actionPlan {
            self.tileHeading = "Assigned Action Plan"
            self.tileSubtitle = "Your psychologist has assigned this activity to complete as part of your treatment plan."
            self.tilePicture = "action-plans"
            self.moduleHeading = "Thought Recording & Challenging"
            self.moduleSubtitle = "Having an unhelpful thought? Do this 1 min exercise to help rewire your brain!"
            self.buttonLabel = "Start Exercise!"
            self.isButtonDisabled = false
        } else {
            self.tileHeading = "Assigned Assessment"
            self.tileSubtitle = "To see how you’re progressing your psychologist needs you to complete the following assessment."
            self.tilePicture = "assessments-tile"
            self.moduleHeading = "DASS-10 Questionaire"
            self.moduleSubtitle = "This 2 min survey measures your depression, anxiety & stress levels."
            self.buttonLabel = "Complete Survey"
            self.isButtonDisabled = false
        }
    }
    
    func markAssessmentAsComplete() {
        isButtonDisabled = true
        buttonLabel = "Already Done!"
    }
}

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

class DASSQuestionData: Identifiable, Hashable, Equatable, CustomStringConvertible {
    
    var id = UUID()
    private var _questionNumber: Int
    private var _questionText: String
    private var _questionImg: String
    private var _answer: String
    
    init(questionNumber: Int, questionText: String, questionImg: String) {
        self._questionNumber = questionNumber
        self._questionText = questionText
        self._questionImg = questionImg
        self._answer = ""
    }
    
    var answer: String {
        get { return _answer }
        set { _answer = newValue }
    }
    
    var description: String {
        return "\(_questionNumber). \(_questionText): \(answer)"
    }
    
    var questionNumber: Int {
        return _questionNumber
    }
    
    var questionText: String {
        return _questionText
    }
    
    var questionImg: String {
        return _questionImg
    }
    
    // Conform to Hashable
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
        hasher.combine(_questionNumber)
    }
    
    // Conform to Equatable
    static func == (lhs: DASSQuestionData, rhs: DASSQuestionData) -> Bool {
        if lhs._questionNumber == rhs._questionNumber {
            return true
        } else {
            return false
        }
    }
}

class AssessmentForm: CustomStringConvertible {
    var DASSQuestionnaireData = [
        DASSQuestionData(questionNumber: 1, questionText: "I felt I was close to panic", questionImg: "dass-q1"),
        DASSQuestionData(questionNumber: 2, questionText: "I found it difficult to work up the initiative to do things", questionImg: "dass-q2"),
        DASSQuestionData(questionNumber: 3, questionText: "I felt down hearted and blue", questionImg: "dass-q3"),
        DASSQuestionData(questionNumber: 4, questionText: "I was intolerant of anything that kept me from getting on with what I was doing", questionImg: "dass-q4"),
        DASSQuestionData(questionNumber: 5, questionText: "I felt that I had nothing to look forward to", questionImg: "dass-q5"),
        DASSQuestionData(questionNumber: 6, questionText: "I felt scared without any good reason", questionImg: "dass-q6"),
        DASSQuestionData(questionNumber: 7, questionText: "I tended to over react to situations", questionImg: "dass-q7"),
        DASSQuestionData(questionNumber: 8, questionText: "I was worried about situations in which I might panic and make a fool of myself", questionImg: "dass-q8"),
        DASSQuestionData(questionNumber: 9, questionText: "I found it difficult to relax", questionImg: "dass-q9"),
        DASSQuestionData(questionNumber: 10, questionText: "I couldn’t seem to experience any positive feelings at all", questionImg: "dass-q10"),
        DASSQuestionData(questionNumber: 11, questionText: "I felt annoyed by people that criticised my drinking/drug use", questionImg: "dass-q11"),
        DASSQuestionData(questionNumber: 12, questionText: "I have thoughts of ending my life", questionImg: "dass-q12")]
    
    var description: String {
        return DASSQuestionnaireData.map{ $0.description }.joined(separator: "\n")
    }
    
    func isAnyAnswerEmpty() -> Bool {
        for question in DASSQuestionnaireData {
            if question.answer == "" {
                return true
            }
        }
        return false
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
