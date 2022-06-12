//
//  TunaguApp.swift
//  Tunagu
//
//  Created by Kosei Ban on 2022-01-09.
//

import SwiftUI
import Firebase

@main
struct TunaguApp: App {
    var body: some Scene {
        WindowGroup {
           let viewModel = AppViewModel()

           MainContentView()
                .environmentObject(viewModel)

        }
    }
}


