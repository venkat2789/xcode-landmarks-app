//
//  Landmark.swift
//  Landmarks
//
//  Created by Venkatachalapathy Sivaprakasam on 5/15/22.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    
    //image
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    //coordinates
    private var coordinates: Coordinates
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
    }
}