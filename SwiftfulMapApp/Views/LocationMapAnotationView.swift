//
//  LocationMapAnotationView.swift
//  SwiftfulMapApp
//
//  Created by Amby on 12/09/2022.
//

import SwiftUI

struct LocationMapAnotationView: View {

    let accentColor = Color("AccentColor")
    var body: some View {
        VStack(spacing: 0) {
            Image(systemName: "map.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30)
                .font(.headline)
                .foregroundColor(.white)
                .padding(6)
                .background(accentColor)
                .clipShape(Circle())

            Image(systemName: "triangle.fill")
                .resizable()
                .scaledToFit()
                .foregroundColor(accentColor)
                .frame(width: 10, height: 10)
                .rotationEffect(Angle(degrees: 180))
                .offset(y: -3)
                .padding(.bottom, 40)
        }
        //.background(Color.blue)
    }
}

struct LocationMapAnotationView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            LocationMapAnotationView()
        }
    }
}
