//
//  LoginViewModel.swift
//  BestApp
//
//  Created by Erto on 25.08.2022.
//

import SwiftUI
import Firebase

class LoginViewModel: ObservableObject {
//    Mark: View Properties
    @Published var email: String = ""
    @Published var password: String = ""
    
//    func loginUser()->async throws{
//        let result = try await Auth.auth().signIn(withEmail:email, password:password)
//    }
}
