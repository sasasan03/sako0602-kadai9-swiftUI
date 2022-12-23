//
//  PrefecturesSelectedView.swift
//  Kadai9-sako0602-swiftUI
//
//  Created by sako0602 on 2022/12/21.
//

import SwiftUI
//Identifiableはidが必要
//caseIterableはallcaseが使える。enumを配列として扱える。インスタンス化を何度も行う必要がなくなる。
enum Prefectures: CaseIterable, Identifiable {
    case tokyo
    case kanagawa
    case saitama
    case chiba
    
    var id: Self { self }
    
    var name :String {
        switch self {
        case .tokyo: return "東京"
        case .kanagawa: return "神奈川"
        case .saitama: return "埼玉"
        case .chiba: return "千葉"
        }
    }
}

struct PrefectureSelectedView: View {
    
    @Binding var showingSheet: Bool
    @Binding var selectedPrefecture: String
    
    var body: some View {
        NavigationStack {
            VStack{
                ForEach(Prefectures.allCases) { prefecture in
                    Button(prefecture.name){
                        selectedPrefecture = prefecture.name
                        showingSheet = false
                    }
                    .padding()
                }
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Cancel"){
                        showingSheet = false
                    }
                }
            }
        }
    }
}

struct PrefectureSelectedView_Previews: PreviewProvider {
    static var previews: some View {
        //'PrefecturesSelectedView' initializer is inaccessible due to 'private' protection level
        PrefectureSelectedView(showingSheet: Binding<Bool>.constant(false), selectedPrefecture: Binding<String>.constant("未選択"))
    }
}
