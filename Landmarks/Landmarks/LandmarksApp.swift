//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by 指原奈々 on 2024/01/12.
//

import SwiftUI

@main
struct LandmarksApp: App {
//    ↑Appプロトコルに準拠している・構造はbodyプロパティ　@mainでアプリのエントリポイントを識別する。
//    エントリポイントとは？
//    エントリポイント（entry point）とは、コンピュータプログラムを実行する際に、一番最初に実行することになっている箇所のこと。プログラミング言語の仕様やオペレーティングシステム（OS）の実行ファイルの形式などで定められている。
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
