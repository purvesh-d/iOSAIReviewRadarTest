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
    var apple = ""
    var banana = ""
    
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
    
    func getMultiplications(firstItem: Int, secondItem: Int, thirdItem: Int) {
        return firstItem * secondItem * thirdItem
    }
}
