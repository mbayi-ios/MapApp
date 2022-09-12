//
//  LocationsView.swift
//  SwiftfulMapApp
//
//  Created by Amby on 12/09/2022.
//

import SwiftUI

struct LocationsView: View {

    @EnvironmentObject private var vm: LocationsViewModel

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
            .environmentObject(LocationsViewModel())
    }
}