//
//  LocationsView.swift
//  SwiftfulMapApp
//
//  Created by Amby on 12/09/2022.
//

import SwiftUI

class LocationViewModel: ObservableObject {
    @Published var locations: [Location]

    init() {
        let locations = LocationsDataService.locations
        self.locations = locations
    }
}

struct LocationsView: View {

    @StateObject private var vm = LocationViewModel()

    var body: some View {
        List {
            ForEach(vm.locations) { location in
                Text(location.name)
            }
        }
    }
}

struct LocationsView_Previews: PreviewProvider {
    static var previews: some View {
        LocationsView()
    }
}
