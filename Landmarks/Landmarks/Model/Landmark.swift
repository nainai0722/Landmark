//
//  Landmark.swift
//  Landmarks
//
//  Created by 指原奈々 on 2024/01/12.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable, Identifiable {
//    Codable適合性を追加すると、構造とデータファイルの愛でデータを移動しやすくなる。
    var id : Int
    //    データから画像の名前を読取るimageプロパティ
    // Landmark構造体は画像自体を提供するため、プロパティは非公開
    var name: String
    var park: String
    var state: String
    var description: String
    var isFavorite: Bool
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    private var coordinates: Coordinates
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
    
    struct Coordinates: Hashable, Codable{
        var latitude: Double
        var longitude: Double
    }
}
