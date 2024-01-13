//
//  Model.swift
//  Landmarks
//
//  Created by 指原奈々 on 2024/01/13.
//

import Foundation

//Observable()マクロを使用する
@Observable
class ModelData {
    var landmarks: [Landmark] = load("landmarkData.json")
}
//アプリのメインバンドルから指定された名前のJsonデータを手に入れるload(_:)メソッドが必要

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("\(filename)は見つけられなかった")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("\(filename)はロードできなかった")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("\(filename)は\(T.self):\n\(error)として解析できなかった")
    }
}
