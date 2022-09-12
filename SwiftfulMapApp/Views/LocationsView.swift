//
//  LocationsView.swift
//  SwiftfulMapApp
//
//  Created by Amby on 12/09/2022.
//

import SwiftUI
import MapKit

struct LocationsView: View {

    @EnvironmentObject private var vm: LocationsViewModel

    var body: some View {
        ZStack {
            Map(coordinateRegion: $vm.mapRegion)
                .ignoresSafeArea()
        }
    }
}

struct LocationsView_Previews: PreviewProvider {
    static var previews: some View {
        LocationsView()
            .environmentObject(LocationsViewModel())
    }
}
