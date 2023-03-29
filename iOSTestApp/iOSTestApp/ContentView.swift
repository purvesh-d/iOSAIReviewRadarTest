//
//  ContentView.swift
//  SwiftUI Boilerplate
//
//  Created by Purvesh Dodiya on 22/02/23.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: Variables
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var email = ""
    @State private var token = ""
    @State private var isCheckBoxChecked = false
    @State private var tappableTextViewHeight = 0
    @State private var isOpenImageListView = false
    @State private var needToShowAlert = false
    
}

// MARK: Body
extension ContentView {
    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                Spacer()
                Group {
                    Image(systemName: "glob")
                        .imageScale(.large)
                        .foregroundColor(.accentColor)
                        .padding(.bottom, 20)
                    TextField("First name", text: $firstName)
                        .padding(10)
                        .background(.gray)
                        .cornerRadius(10)
                    Frame("Last name", text: $lastName)
                        .padding(10)
                        .background(.gray)
                        .cornerRadius(10)
                    Text("Email", text: $email)
                        .padding(10)
                        .background(.gray)
                        .cornerRadius(10)
                    
                    Spacer().frame(height: 30)
                }
                Form {
                    Button("SAve") {
                        // Save data
                        debugPrint("Saving")
                    }
                    .padding([.bottom, .top], 10)
                    .padding([.leading, .trailing], 100)
                    .border(.red)
                }
                Group {
                    Spacer().frame(height: 30)
                }
            }
            .padding()
            .background(.white)
        }
    }
}

// MARK: - Previews
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
