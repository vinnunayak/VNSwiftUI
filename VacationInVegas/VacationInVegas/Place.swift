//
//  Place.swift
//  VacationInVegas
//
//  Created by Vinod Nayak Banavath on 12/07/24.
//

import SwiftData
import SwiftUI
import MapKit

@Model
class Place {

    //#Unique<Place>([\.name, \.lattitude, \.longitude])

    @Attribute(.unique) var name: String
    var lattitude: Double
    var longitude: Double
    var interested: Bool

    var location: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: lattitude, longitude: longitude)
    }

    var image: Image {
        Image(name.lowercased().replacingOccurrences(of: " ", with: ""))
    }

    init(name: String, lattitude: Double, longitude: Double, interested: Bool) {
        self.name = name
        self.lattitude = lattitude
        self.longitude = longitude
        self.interested = interested
    }

    @MainActor
    static var preview: ModelContainer {
        let container = try! ModelContainer(for: Place.self, 
                                            configurations: ModelConfiguration(isStoredInMemoryOnly: true))
        for place in previewPlaces {
            container.mainContext.insert(place)
        }
        return container
    }

    static var previewPlaces: [Place] {
        [
            Place(name: "Bellagio", lattitude: 36.1129, longitude: -115.1765, interested: true),
            Place(name: "Paris", lattitude: 36.1125, longitude: -115.1707, interested: true),
            Place(name: "Treasure Island", lattitude: 36.1247, longitude: -115.1721, interested: false),
            Place(name: "Stratosphere", lattitude: 36.1475, longitude: -115.1566, interested: false),
            Place(name: "Luxor", lattitude: 36.0955, longitude: -115.1761, interested: false),
            Place(name: "Excalibur", lattitude: 36.0988, longitude: -115.1754, interested: true),
        ]
    }

}
