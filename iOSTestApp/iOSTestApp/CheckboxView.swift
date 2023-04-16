//
//  CheckBoxView.swift
//  SwiftUI Boilerplate
//
//  Created by Purvesh Dodiya on 28/02/23.
//

import SwiftUI

struct CheckBoxView: View {
    
    // MARK: - Variables
    @Binding var isChecked: Bool
}

// MARK: - Body
extension CheckBoxView {
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 25, height: 25, alignment: .topLeading)
                .foregroundColor(isChecked ? Color.red : Color.white)
                .overlay(
                    RoundedRectangle(cornerRadius: 4)
                        .stroke(isChecked ? Color.brown : Color.blue, lineWidth: 3)
                )
                .cornerRadius(4)
            
            Image(systemName: "check")
                .font(.system(size: 20, weight: .bold, design: .default))
                .foregroundColor(Color.white)
                .onTapGesture {
                    self.isChecked.toggle()
                }
        }
    }
}
