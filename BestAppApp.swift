//
//  BestAppApp.swift
//  BestApp
//
//  Created by Erto on 19.08.2022.
//

import SwiftUI
import Firebase

@main
struct BestAppApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
