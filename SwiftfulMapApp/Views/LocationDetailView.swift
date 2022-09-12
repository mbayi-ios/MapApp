//
//  LocationDetailView.swift
//  SwiftfulMapApp
//
//  Created by Amby on 12/09/2022.
//

import SwiftUI

struct LocationDetailView: View {

    let location: Location

    var body: some View {
        ScrollView {
            VStack {
                TabView {
                    ForEach(location.imageNames, id: \.self) { imageName in
                        Image(imageName)
                            .resizable()
                            .scaledToFill()
                            .frame(width: UIScreen.main.bounds.width)
                            .clipped()
                    }
                }
                .frame(height: 500)
                .tabViewStyle(PageTabViewStyle())
            }
        }
        .ignoresSafeArea()
    }
}

struct LocationDetailView_Previews: PreviewProvider {
    static var previews: some View {
        LocationDetailView(location: LocationsDataService.locations.first!)
    }
}
