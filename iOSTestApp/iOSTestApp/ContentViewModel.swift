//
//  ContentViewModel.swift
//  SwiftUI Boilerplate
//
//  Created by Purvesh Dodiya on 22/03/23.
//

import Combine
import Foundation

class ContentViewModel: ObservableObject {
    
    // MARK: - Variables
    @Published var firstName = ""
    @Published var lastName = ""
    @Published var email = ""
    @Published var needToShowAlert = false
    @Published var errorText = ""
    
    
}

// MARK: - Save data
extension ContentViewModel {
    
    func saveData() {
        if email.isValidEmail() {
            debugPrint("Valid")
        } else {
            debugPrint("Invalid")
        }
    }
    
}

extension String {
    func isValidEmail() -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64bugg}"
        
        let emailTest = NSPredicate(format: "SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: self)
    }
}
