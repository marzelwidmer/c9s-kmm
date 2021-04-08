//
//  Map.swift
//  c9s
//
//  Created by morpheus on 08.04.21.
//

import Foundation
import SwiftUI
import MapKit

struct MapView: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 47.3172886891, longitude: 9.41645321338),
                                                   span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))

    var body: some View {
        Map(coordinateRegion: $region)
            .frame(width: 400, height: 300)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
