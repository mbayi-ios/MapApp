//
//  LocationsViewModel.swift
//  SwiftfulMapApp
//
//  Created by Amby on 12/09/2022.
//

import Foundation

class LocationsViewModel: ObservableObject {
    @Published var locations: [Location]

    init() {
        let locations = LocationsDataService.locations
        self.locations = locations
    }
}
