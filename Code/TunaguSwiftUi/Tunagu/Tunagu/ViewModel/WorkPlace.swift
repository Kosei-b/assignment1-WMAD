//
//  WorkPlace.swift
//  Tunagu
//
//  Created by Kosei Ban on 2022-01-26.
//

import SwiftUI

struct WorkPlaceDetailPhoto: Identifiable {
    
    var id = UUID()
    var name: String
    
}

struct WorkPlace: Identifiable {
    
    var id = UUID()
    var image: String
    var workPlaceDetailPhotos: [WorkPlaceDetailPhoto] = []
   
}

let sampleWorkPlace: [WorkPlace] = {
    
    var workPlaces = (1...18).map { WorkPlace(image: "workPlace-\($0)")}
    
    for index in workPlaces.indices {
        let randomNumber = Int.random(in: (2...12))
        workPlaces[index].workPlaceDetailPhotos = (1...randomNumber).map { WorkPlaceDetailPhoto(name: "workPlaceDetail-\($0)") }
    }

    return workPlaces

}()
