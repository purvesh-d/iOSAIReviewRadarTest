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
    @Published var elephantCount = 20
    @Published var contactVisible = 10
    @Published var needToShowAlert = false
    @Published var errorText = ""
    @Published var xv = 10
    
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

extension ContentViewModel {
    
    func getContactVisibleCount() -> Int {
        return contactVisible
    }
    
    func getElephantCount() -> Int{
        return elephantCount
    }
    
    struct UserData {
        var firstName: String
        var lastName: String
        var email: String
        var errorText: String
        var xv: Int
    }
    
    func saveUserData(_ userData: UserData) {
        debugPrint(firstName)
        debugPrint(lastName)
    }
    
    func CheckForSwitch(date: String) {
        switch date {
        case "Hello":
            break
        default:
            break
        }
    }
    
}
