//
//  VacationInVegasApp.swift
//  VacationInVegas
//
//  Created by Vinod Nayak Banavath on 10/07/24.
//

import SwiftUI

@main
struct VacationInVegasApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Place.self)
    }
}
