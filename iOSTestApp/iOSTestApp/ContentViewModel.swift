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
    private var totalCount: Int?
    var Price = 10
    private var no_of_vehicles = 22
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
    
    func GetTotalPrice() -> Int {
        let result =  Price * (no_of_vehicles + totalCount!)
        return result
    }
}
