//
//  ChannelIslandsApp.swift
//  ChannelIslands
//
//  Created by David Cartwright on 2025-02-04.
//

import SwiftUI

@main
struct ChannelIslandsApp: App {
    
    @State var mapViewModel = MapViewModel()
    
    var body: some Scene {
        WindowGroup {
            MapView(vm: $mapViewModel)
                .environment(mapViewModel)
        }
    }
}
