//
//  ContentView.swift
//  Kadai9-sako0602-swiftUI
//
//  Created by sako0602 on 2022/12/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showingSheet = false
    @State private var selectedPrefecture = "未選択"
    
    var body: some View {
        HStack {
            Text("都道府県")
                .padding()
            Text(selectedPrefecture)
                .padding()
            Button("入力"){
                showingSheet = true
            }
            .padding()
        }
        .sheet(isPresented: $showingSheet) {
            PrefecturesSelectedView(showingSheet: $showingSheet, selectedPrefecture: $selectedPrefecture)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
