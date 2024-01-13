//
//  ContentView.swift
//  Landmarks
//
//  Created by 指原奈々 on 2024/01/12.
//

import SwiftUI
//デフォルトでは構造とプレビューを宣言する

struct ContentView: View {
    var body: some View {
        //        カスタマイズするには修飾子と呼ばれるメソッドを呼び出す。
        LandmarkList()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
