//
//  Developer.swift
//  ChannelIslands
//
//  Created by David Cartwright on 2025-02-04.
//

import Foundation

class Developer {
    static let shared = Developer()
    var mapVm: MapViewModel
    
    private init() {
        self.mapVm = MapViewModel()
    }
    
    
}
