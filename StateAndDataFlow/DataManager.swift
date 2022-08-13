//
//  DataManager.swift
//  StateAndDataFlow
//
//  Created by Денис Ільницький on 13/08/2022.
//

import SwiftUI

class DataManager {
    
    static let shared = DataManager()
    
    @AppStorage("user") private var userData: Data?
    
    private init() {}
    
    func saveUser() {
        
    }
}
