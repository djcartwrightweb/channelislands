//
//  DataServiceManager.swift
//  ChannelIslands
//
//  Created by David Cartwright on 2025-02-04.
//

import Foundation
import MapKit

class DataServiceManager {
    
    init() {}
    
    func getData() -> [LocationModel] {
        [
            LocationModel(
                name: "Mont Orgueil Castle",
                parishName: "Gorey",
                islandName: "Jersey",
                description: "Mont Orgueil is a castle in Jersey that overlooks the harbour of Gorey; a port on the east coast of the Island. It is known as Gorey Castle by English-speakers, and the \"Old Castle\" by Jèrriais-speakers",
                coordinates: CLLocationCoordinate2D(latitude: 49.1997, longitude: -2.0191)
            ),
        ]
    }
}
