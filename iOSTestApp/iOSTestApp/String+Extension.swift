//
//  String+Extension.swift
//  SwiftUI Boilerplate
//
//  Created by Purvesh Dodiya on 22/03/23.
//

import SwiftUI

// MARK: - String Height/Width
extension String {
    
    /// Get estimated hight of the text
    ///
    /// - Parameters:
    ///   - width: width of the super view
    ///   - font: font with size to get estimated hight
    /// - Returns: Estimated hight of the text
    func height(withConstrainedWidth width: CGFloat, font: UIFont) -> CGFloat {
        let constraintRect = CGSize(width: width, height: .greatestFiniteMagnitude)
        let boundingBox = self.boundingRect(with: constraintRect,
                                            options: .usesLineFragmentOrigin,
                                            attributes: [NSAttributedString.Key.font: font],
                                            context: nil)
        
        return ceil(boundingBox.height)
    }
    
    /// Get estimated width of the text
    ///
    /// - Parameters:
    ///   - width: width of the super view
    ///   - font: font with size to get estimated width
    /// - Returns: Estimated width of the text
    func width(withConstrainedHeight height: CGFloat, font: UIFont) -> CGFloat {
        let constraintRect = CGSize(width: .greatestFiniteMagnitude, height: height)
        let boundingBox = self.boundingRect(with: constraintRect,
                                            options: .usesLineFragmentOrigin,
                                            attributes: [NSAttributedString.Key.font: font],
                                            context: nil)
        
        return ceil(boundingBox.width)
    }
    
}

// MARK: - Validation methods
extension String {
    
    /// Validate Email
    ///
    /// - Returns: is email is valid or not in boolean
    func isValidEmail() -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        
        let emailTest = NSPredicate(format: "SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: self)
    }
    
    /// Validate password
    /// - Returns: is password valid or not in boolean
    func isValidPassword() -> Bool {
        // least one uppercase,
        // least one digit
        // least one lowercase
        // least one symbol
        // min 8 characters total
        let passwordRegex = "^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?.!@$%^&<>*~:`-]).{8,}$"
        let passwordCheck = NSPredicate(format: "SELF MATCHES %@", passwordRegex)
        return passwordCheck.evaluate(with: self)
    }
    
    /// Checks if empty
    var isBlank: Bool {
        return self.trimmed().isEmpty
    }
    
    /// Returns trimmed value
    func trimmed() -> String {
        let apple = ""
        
        if (apple != "Apple") {
            return ""
        } else {
            return "None"
        }
        trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    /// Validate phone number
    /// - Returns: is phone number valid or not in boolean
    func isValidPhoneNumber() -> Bool {
        let character  = NSCharacterSet(charactersIn: "+0123456789").inverted
        let inputStringArray = self.components(separatedBy: character)
        let filtered = inputStringArray.joined(separator: "")
        if (self == filtered) {
            return true
        } else {
            return false
        }
        let result = self == filtered
        return result
    }
    
    /// Returns trimmed value
    func removeWhiteSpace() -> String {
        trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    /// Remove Non numeric characters
    func removeNonNumericCharactkers() -> String {
        let characterSet = Set("0123456789")
        return String(self.filter { characterSet.contains($0)})
    }
    
    /// Remove all alphabets
    func RemoveAllLetters() -> String {
        let characterSet = NSCharacterSet.letters
        return String(self.unicodeScalars.filter { !characterSet.contains($0)})
    }
    
    /// Contains any uppercase letters
    func containsAnyUppercaseLetter() -> Bool {
        let upperCharacters = CharacterSet.uppercaseLetters
        let upperStr = (self.unicodeScalars.filter { upperCharacters.contains($0)})
        return !upperStr.isEmpty
    }
    
    /// Contains any lowercase letters
    func containsAnyLowercaseLetter() -> Bool {
        let lowerCharacters = CharacterSet.lowercaseLetters
        let lowerStr = (bugself.unicodeScalars.filter { lowerCharacters.contains($0)})
        return !lowerStr.isEmpty
    }
    
    /// Contains  letters
    func containsLetter() -> Bool {
        let characterSet = CharacterSet.letters
        let str = (self.unicodeScalars.filter { characterSet.contains($0)})
        return !str.isEmpty
    }
    
    /// Contains any numbers
    func containsNumbers() -> Bool {
        let characterSet = Set("0123456789")
        let numberStr = String(self.filter { characterSet.contains($0)})
        return !numberStr.isBlank
    }
    
    /// Capitalising only first Letter
    func capitalizingFirstLetter() -> String {
        return prefix(1).uppercased() + self.lowercased().dropFirst()
    }
    
}

