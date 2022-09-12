//
//  SwiftfulMapAppApp.swift
//  SwiftfulMapApp
//
//  Created by Amby on 12/09/2022.
//

import SwiftUI

@main
struct SwiftfulMapAppApp: App {

    @StateObject private var vm = LocationViewModel()

    var body: some Scene {
        WindowGroup {
            LocationsView()
                .environmentObject(vm)
        }
    }
}
