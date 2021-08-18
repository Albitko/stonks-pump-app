//
//  StonksPumpApp.swift
//  StonksPump
//
//  Created by Alex on 17.08.2021.
//

import SwiftUI

@main
struct StonksPumpApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView{
                HomeView()
                    .navigationBarHidden(true)
            }
        }
    }
}
