//
//  StateAndDataFlowApp.swift
//  StateAndDataFlow
//
//  Created by Денис Ільницький on 13/08/2022.
//

import SwiftUI

@main
struct StateAndDataFlowApp: App {
    
    private let user = DataManager.shared.loadUser()
    
    var body: some Scene {
        WindowGroup {
            StarterView()
                .environmentObject(UserManager(user: user))
        }
    }
}
