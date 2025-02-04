//
//  ContentView.swift
//  ChannelIslands
//
//  Created by David Cartwright on 2025-02-04.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    @Binding var vm: MapViewModel
    @State var showLocationList: Bool = true
    
    var item: Int = 0
    
    var body: some View {
        ZStack {
            map
                .ignoresSafeArea()
            
            
            VStack(spacing: 0) {
                header
                
                if showLocationList {
                    Text("test")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(.thinMaterial)
                }
                
                Spacer()
            }
            .shadow(radius: 10)
            .frame(maxWidth: .infinity)
            .padding()
        }
    }
    
}


extension MapView {
    
    //MARK: Map Section:
    private var map: some View {
        Map(position: $vm.mapPosition)
            .mapStyle(.imagery)
    }
    
    //MARK: Header Section:
    private var header: some View {
        VStack {
            Text(vm.mapLocation.name)
                .font(.title2)
                .fontWeight(.semibold)
                .fontDesign(.serif)
        }
        .frame(height: 55)
        .frame(maxWidth: .infinity)
        .background(.thinMaterial)
        .overlay(alignment: .leading) {
            Image(systemName: "chevron.down")
                .padding()
                .rotationEffect(.degrees(showLocationList ? -180 : 0))
                .onTapGesture {
                    withAnimation {
                        showLocationList.toggle()
                    }
                }
        }
        .overlay(alignment: .trailing) {
            Image(systemName: "plus.magnifyingglass")
                .padding()
        }
        
    }
    
}



#Preview {
    MapView(vm: .constant(Developer.shared.mapVm))
        .environment(Developer.shared.mapVm)
}
