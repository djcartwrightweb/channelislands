//
//  LocationViewModel.swift
//  ChannelIslands
//
//  Created by David Cartwright on 2025-02-04.
//

import Foundation
import MapKit
import SwiftUI

@Observable
class MapViewModel {
    
    var manager = DataServiceManager()
    
    var locations: [LocationModel] = []
    var mapLocation: LocationModel {
        didSet {
            updateMapPosition(location: mapLocation)
        }
    }
    var mapPosition: MapCameraPosition = MapCameraPosition.region(MKCoordinateRegion())
    let mapSpan = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
    
    init() {
        mapLocation = LocationModel(name: "temp", parishName: "temp", islandName: "temp", description: "temp", coordinates: CLLocationCoordinate2D())
        loadData()
    }
    
    func loadData() {
        locations = manager.getData()
        mapLocation = locations.first!
    }
    
    func updateMapPosition(location: LocationModel) {
        mapPosition = MapCameraPosition.region(MKCoordinateRegion(center: location.coordinates, span: mapSpan))
    }
    
}
