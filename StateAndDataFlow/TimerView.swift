//
//  TimerView.swift
//  StateAndDataFlow
//
//  Created by Денис Ільницький on 14/08/2022.
//

import SwiftUI

struct TimerView: View {
    
    @StateObject private var timer = TimeCounter()
    @EnvironmentObject private var userManager: UserManager
    
    var body: some View {
        VStack{
            Text("Hi, \(userManager.user.name)")
                .font(.largeTitle)
                .offset(x: 0, y: 200)
            
            Spacer()
            
            VStack {
                Spacer()
                
                ButtonView(title: timer.buttonTitle, color: .red) {
                    timer.startTimer()
                }
                Spacer()
                
                ButtonView(title: "LougOut", color: .blue) {
                    DataManager.shared.clear(userManager: userManager)
                }
            }
        }
    }
}

struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView()
    }
}
