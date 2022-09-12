//
//  LocationsViewModel.swift
//  SwiftfulMapApp
//
//  Created by Amby on 12/09/2022.
//

import Foundation
import MapKit
import SwiftUI

class LocationsViewModel: ObservableObject {
    // all loaded locations
    @Published var locations: [Location]

    //current location on map
    @Published var mapLocation: Location {
        didSet {
            updateMapRegion(location: mapLocation)
        }
    }

    //current region on map
    @Published var mapRegion: MKCoordinateRegion = MKCoordinateRegion()
    let mapSpan = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)

    //show list of locations
    @Published var showLocationsList: Bool = false

    init() {
        let locations = LocationsDataService.locations
        self.locations = locations
        self.mapLocation = locations.first!

        self.updateMapRegion(location: locations.first!)
    }

    private func updateMapRegion(location: Location) {
        withAnimation(.easeInOut) {
            mapRegion = MKCoordinateRegion(
                center: location.coordinates,
                span: mapSpan)
        }
    }

    func toggleLocationsList () {
        withAnimation(.easeInOut) {
            showLocationsList = !showLocationsList
        }
    }

    func showNextLocation(location: Location) {
        withAnimation(.easeInOut) {
            mapLocation = location
            showLocationsList = false
        }
    }

    func nextButtonPressed() {
        // get the current index
//        let currentIndex = locations.firstIndex { location in
//            return location == mapLocation
//        }

        guard let currentIndex = locations.firstIndex(where: {$0 == mapLocation }) else {
            print("could not find current index in locaitons array!")
            return
        }
        //check if the current index is valid
        let nextIndex = currentIndex + 1
        guard locations.indices.contains(nextIndex) else {
            // next index is not valid
            // restart from 0
            guard let firstLocation = locations.first else { return }
            showNextLocation(location: firstLocation)
            return
        }

        // next index is Valid
        let nextLocation = locations[nextIndex]
        showNextLocation(location: nextLocation)
    }
}
