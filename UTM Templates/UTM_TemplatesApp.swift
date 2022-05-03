//
//  UTM_TemplatesApp.swift
//  UTM Templates
//
//  Created by Christopher Mattar on 3/25/22.
//

import SwiftUI
import Version

@main
struct UTM_TemplatesApp: App {
    let persistenceController = PersistenceController.shared
    
    var body: some Scene {
        WindowGroup {
            MainView()
                .onAppear {
                    print(Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String)
                }
        }
        Settings {
            Button("Check for updates... (not working yet)") {
                VersionController.shared.check()
            }
            .padding()
        }
    }
}
