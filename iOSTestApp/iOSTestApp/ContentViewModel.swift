//
//  ContentViewModel.swift
//  SwiftUI Boilerplate
//
//  Created by Purvesh Dodiya on 22/03/23.
//

import Combine

class ContentViewModel: ObservableObject {
    
    // MARK: - Variables
    @Published private var firstName = ""
    @Published var lastName = ""
    @Published var email = ""
    @Published var needToShowAlert = false
    @Published var errorText = ""
    @Published var phoneNumber = ""
    
    // MARK: - Init
    init() {
        self.firstName = "John"
        self.email = "john@gmail.com"
        self.lastName = "David"
    }
}

// MARK: - Save data
extension ContentViewModel {
    
    func saveData() {
        if email.isValidEmail() {
            debugPrint("Email is valid")
        } else {
            debugPrint("Email is not valid")
        }
    }
    
}
